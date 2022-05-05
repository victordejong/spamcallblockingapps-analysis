package zendesk.support.request;

import android.content.Context;
import android.support.annotation.VisibleForTesting;
import com.squareup.picasso.Picasso;
import com.zendesk.util.CollectionUtils;
import com.zendesk.util.StringUtils;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import zendesk.commonui.UiConfig;
import zendesk.suas.Dispatcher;
import zendesk.support.RequestStatus;
import zendesk.support.ZendeskDeepLinkHelper;
import zendesk.support.request.CellSystemMessages;
import zendesk.support.request.CellType;
import zendesk.support.request.DocumentRenderer;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:zendesk/support/request/CellFactory.class */
public class CellFactory {
    private final DocumentRenderer documentRenderer;
    private final DocumentRenderer.HtmlParser htmlParser;
    private final CellBindHelper utils;

    /* JADX INFO: Access modifiers changed from: package-private */
    public CellFactory(Context context, Picasso picasso, ActionFactory actionFactory, Dispatcher dispatcher, ZendeskDeepLinkHelper zendeskDeepLinkHelper, UiConfig uiConfig) {
        this.utils = new CellBindHelper(context, picasso, actionFactory, dispatcher);
        this.htmlParser = new DocumentRenderer.HtmlParser();
        this.documentRenderer = new DocumentRenderer(context, zendeskDeepLinkHelper, uiConfig);
    }

    @VisibleForTesting
    CellFactory(CellBindHelper cellBindHelper, DocumentRenderer.HtmlParser htmlParser, DocumentRenderer documentRenderer) {
        this.utils = cellBindHelper;
        this.htmlParser = htmlParser;
        this.documentRenderer = documentRenderer;
    }

    private CharSequence generateRichText(String str, String str2) {
        return this.documentRenderer.render(this.htmlParser.parse(str, str2));
    }

    private List<CellType.Base> markMessagesAsErrored(Collection<CellType.Stateful> collection, Collection<StateMessage> collection2) {
        ArrayList arrayList = new ArrayList(collection.size());
        Iterator<CellType.Stateful> it = collection.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().markAsErrored(new ArrayList(collection2), !it.hasNext()));
        }
        return arrayList;
    }

    @VisibleForTesting
    List<CellType.Base> calculatePositionTypes(List<CellType.Base> list) {
        if (CollectionUtils.isEmpty(list)) {
            return list;
        }
        ArrayList arrayList = new ArrayList(list.size());
        long j = -1;
        for (int i = 0; i < list.size(); i++) {
            CellType.Base base = list.get(i);
            if (i == 0 || base.getGroupId() != j) {
                base.setPositionType(2);
            }
            if (base instanceof CellType.Stateful) {
                CellType.Stateful stateful = (CellType.Stateful) base;
                if (stateful.isMarkedAsDelivered() || stateful.isLastErrorCellOfBlock()) {
                    base.setPositionType(8);
                }
            }
            j = base.getGroupId();
            arrayList.add(base);
        }
        ((CellType.Base) arrayList.get(arrayList.size() - 1)).setPositionType(16);
        return arrayList;
    }

    @VisibleForTesting
    StateMessage findFirstDelivered(List<StateMessage> list) {
        for (StateMessage stateMessage : list) {
            if (stateMessage.getState().getStatus() == 2) {
                return stateMessage;
            }
        }
        return null;
    }

    @VisibleForTesting
    StateRequestUser findUserForId(List<StateRequestUser> list, long j) {
        for (StateRequestUser stateRequestUser : list) {
            if (stateRequestUser.getId() == j) {
                return stateRequestUser;
            }
        }
        return null;
    }

    public List<CellType.Base> generateCells(List<StateMessage> list, List<StateRequestUser> list2, RequestStatus requestStatus, String str) {
        ArrayList arrayList = new ArrayList();
        StateMessage findFirstDelivered = findFirstDelivered(list);
        for (StateMessage stateMessage : list) {
            StateRequestUser findUserForId = findUserForId(list2, stateMessage.getUserId());
            arrayList.addAll(insertSystemMessage(findFirstDelivered, stateMessage, getViewModelsForMessage(stateMessage, isUserAgent(findUserForId), findUserForId), str));
        }
        return calculatePositionTypes(markAgentCells(insertRequestStatus(insertDateCells(markLastDeliveredCell(markCellsErrored(arrayList))), requestStatus)));
    }

    @VisibleForTesting
    CellType.Base getAgentAttachment(StateRequestAttachment stateRequestAttachment, StateRequestUser stateRequestUser, Date date) {
        return UtilsAttachment.isImageAttachment(stateRequestAttachment) ? new CellAgentAttachmentImage(this.utils, stateRequestAttachment, stateRequestUser, date) : new CellAgentAttachmentGeneric(this.utils, stateRequestAttachment, stateRequestUser, date);
    }

    @VisibleForTesting
    CellType.Base getAgentMessage(StateMessage stateMessage, StateRequestUser stateRequestUser) {
        return new CellAgentMessage(this.utils, stateMessage, generateRichText(stateMessage.getHtmlBody(), stateMessage.getPlainBody()), stateRequestUser);
    }

    @VisibleForTesting
    CellType.Base getUserAttachment(StateMessage stateMessage, StateRequestAttachment stateRequestAttachment, Date date) {
        return UtilsAttachment.isImageAttachment(stateRequestAttachment) ? new CellUserAttachmentImage(this.utils, stateMessage, stateRequestAttachment, date, false, false, new ArrayList(0), false) : new CellUserAttachmentGeneric(this.utils, stateMessage, stateRequestAttachment, date, false, false, new ArrayList(0), false);
    }

    @VisibleForTesting
    List<CellType.Base> getUserMessage(StateMessage stateMessage) {
        if (UtilsAttachment.hasAttachmentBody(stateMessage)) {
            return new ArrayList();
        }
        return Collections.singletonList(new CellUserMessage(this.utils, stateMessage, false, false, generateRichText(stateMessage.getHtmlBody(), stateMessage.getPlainBody()), new ArrayList(0), false));
    }

    List<CellType.Base> getViewModelsForMessage(StateMessage stateMessage, boolean z, StateRequestUser stateRequestUser) {
        List<StateRequestAttachment> attachments = stateMessage.getAttachments();
        ArrayList arrayList = new ArrayList();
        if (z) {
            arrayList.add(getAgentMessage(stateMessage, stateRequestUser));
        } else {
            arrayList.addAll(getUserMessage(stateMessage));
        }
        int size = attachments.size();
        for (int i = 0; i < size; i++) {
            StateRequestAttachment stateRequestAttachment = attachments.get(i);
            if (z) {
                arrayList.add(getAgentAttachment(stateRequestAttachment, stateRequestUser, stateMessage.getDate()));
            } else {
                arrayList.add(getUserAttachment(stateMessage, stateRequestAttachment, stateMessage.getDate()));
            }
        }
        return arrayList;
    }

    @VisibleForTesting
    List<CellType.Base> insertDateCells(List<CellType.Base> list) {
        ArrayList arrayList = new ArrayList(list.size());
        Date date = new Date(0L);
        for (CellType.Base base : list) {
            date = date;
            if (!UtilsDate.isSameDay(date, base.getTimeStamp())) {
                date = base.getTimeStamp();
                arrayList.add(new CellSystemMessages.CellDateMessage(this.utils, UtilsDate.getBeginOfDay(date).getTime(), date));
            }
            arrayList.add(base);
        }
        return arrayList;
    }

    @VisibleForTesting
    List<CellType.Base> insertRequestStatus(List<CellType.Base> list, RequestStatus requestStatus) {
        if (requestStatus == RequestStatus.Closed && list.size() > 0) {
            list.add(new CellSystemMessages.CellRequestStatus(this.utils, requestStatus));
        }
        return list;
    }

    @VisibleForTesting
    List<CellType.Base> insertSystemMessage(StateMessage stateMessage, StateMessage stateMessage2, List<CellType.Base> list, String str) {
        if (stateMessage2 == stateMessage && StringUtils.hasLength(str)) {
            list.add(new CellSystemMessages.CellSystemMessage(stateMessage2.getDate(), str));
        }
        return list;
    }

    @VisibleForTesting
    boolean isUserAgent(StateRequestUser stateRequestUser) {
        return stateRequestUser != null && stateRequestUser.isAgent();
    }

    @VisibleForTesting
    List<CellType.Base> markAgentCells(List<CellType.Base> list) {
        long j = Long.MIN_VALUE;
        for (int size = list.size() - 1; size >= 0; size--) {
            if (list.get(size) instanceof CellType.Agent) {
                CellType.Agent agent = (CellType.Agent) list.get(size);
                if (j != agent.getAgent().getId()) {
                    agent.showAgentName(true);
                    j = agent.getAgent().getId();
                } else {
                    agent.showAgentName(false);
                }
            } else {
                j = Long.MIN_VALUE;
            }
        }
        return list;
    }

    @VisibleForTesting
    List<CellType.Base> markCellsErrored(List<CellType.Base> list) {
        ArrayList arrayList = new ArrayList();
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        ArrayList arrayList2 = new ArrayList();
        for (CellType.Base base : list) {
            if (base instanceof CellType.Stateful) {
                CellType.Stateful stateful = (CellType.Stateful) base;
                if (stateful.getStateMessage().getState().getStatus() == 1) {
                    arrayList.add(stateful);
                    linkedHashSet.add(stateful.getStateMessage());
                } else {
                    arrayList2.addAll(markMessagesAsErrored(arrayList, linkedHashSet));
                    arrayList2.add(base);
                    arrayList.clear();
                    linkedHashSet.clear();
                }
            } else {
                arrayList2.addAll(markMessagesAsErrored(arrayList, linkedHashSet));
                arrayList2.add(base);
                arrayList.clear();
                linkedHashSet.clear();
            }
        }
        arrayList2.addAll(markMessagesAsErrored(arrayList, linkedHashSet));
        return arrayList2;
    }

    @VisibleForTesting
    List<CellType.Base> markLastDeliveredCell(List<CellType.Base> list) {
        boolean z;
        boolean z2;
        Iterator<CellType.Base> it = list.iterator();
        while (true) {
            z = false;
            if (!it.hasNext()) {
                z2 = false;
                break;
            }
            CellType.Base next = it.next();
            if ((next instanceof CellType.Stateful) && ((CellType.Stateful) next).getStateMessage().getState().getStatus() == 3) {
                z2 = true;
                break;
            }
        }
        ArrayList arrayList = new ArrayList(list.size());
        if (!z2) {
            for (int size = list.size() - 1; size >= 0; size--) {
                Object obj = (CellType.Base) list.get(size);
                z = z;
                obj = obj;
                if (obj instanceof CellType.Stateful) {
                    z = z;
                    obj = obj;
                    if (!z) {
                        CellType.Stateful stateful = (CellType.Stateful) obj;
                        if (stateful.getStateMessage().getState().getStatus() == 2) {
                            obj = stateful.markAsDelivered();
                        }
                        z = true;
                    }
                }
                arrayList.add(obj);
            }
            Collections.reverse(arrayList);
        } else {
            arrayList.addAll(list);
        }
        return arrayList;
    }
}
