package zendesk.support.request;

import android.annotation.SuppressLint;
import android.support.annotation.VisibleForTesting;
import android.support.p001v4.util.Pair;
import com.zendesk.util.CollectionUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.TreeSet;
/* loaded from: classes3-dex2jar.jar:zendesk/support/request/StateMessageMergeUtil.class */
class StateMessageMergeUtil {
    private StateMessageMergeUtil() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static List<StateMessage> mergeMessages(List<StateMessage> list, List<StateMessage> list2) {
        Pair<List<StateMessage>, List<StateMessage>> mergeRemoteMessagesById = mergeRemoteMessagesById(list, list2);
        return CollectionUtils.isEmpty(mergeRemoteMessagesById.second) ? mergeRemoteMessagesById.first : mergeRemoteMessagesBySortOrder(mergeRemoteMessagesById.first, mergeRemoteMessagesById.second);
    }

    @SuppressLint({"UseSparseArrays"})
    private static Pair<List<StateMessage>, List<StateMessage>> mergeRemoteMessagesById(List<StateMessage> list, List<StateMessage> list2) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (StateMessage stateMessage : list2) {
            linkedHashMap.put(Long.valueOf(stateMessage.getId()), stateMessage);
        }
        ArrayList arrayList = new ArrayList();
        for (StateMessage stateMessage2 : list) {
            if (linkedHashMap.containsKey(Long.valueOf(stateMessage2.getId()))) {
                arrayList.add(synchronizeAttachmentOrder(stateMessage2, (StateMessage) linkedHashMap.remove(Long.valueOf(stateMessage2.getId()))));
            } else {
                arrayList.add(stateMessage2);
            }
        }
        return Pair.create(arrayList, new ArrayList(linkedHashMap.values()));
    }

    private static List<StateMessage> mergeRemoteMessagesBySortOrder(List<StateMessage> list, List<StateMessage> list2) {
        int size = list.size();
        int size2 = list2.size();
        ArrayList arrayList = new ArrayList(size + size2);
        int i = 0;
        int i2 = 0;
        while (true) {
            if (i >= size && i2 >= size2) {
                break;
            } else if (i >= size || i2 >= size2) {
                break;
            } else {
                StateMessage stateMessage = list.get(i);
                StateMessage stateMessage2 = list2.get(i2);
                if (stateMessage.getId() == stateMessage2.getId()) {
                    arrayList.add(synchronizeAttachmentOrder(stateMessage, stateMessage2));
                    i++;
                    i2++;
                } else if (stateMessage.getDate().before(stateMessage2.getDate())) {
                    arrayList.add(stateMessage);
                    i++;
                } else {
                    arrayList.add(stateMessage2);
                    i2++;
                }
            }
        }
        if (i < size) {
            arrayList.addAll(list.subList(i, size));
        } else {
            arrayList.addAll(list2.subList(i2, size2));
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static List<StateRequestUser> mergeUsers(List<StateRequestUser> list, List<StateRequestUser> list2) {
        TreeSet treeSet = new TreeSet(new Comparator<StateRequestUser>() { // from class: zendesk.support.request.StateMessageMergeUtil.2
            public int compare(StateRequestUser stateRequestUser, StateRequestUser stateRequestUser2) {
                return (int) (stateRequestUser.getId() - stateRequestUser2.getId());
            }
        });
        treeSet.addAll(list2);
        treeSet.addAll(list);
        return new ArrayList(treeSet);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static List<StateMessage> removeMessageById(long j, List<StateMessage> list) {
        ArrayList arrayList = new ArrayList(list.size());
        for (StateMessage stateMessage : list) {
            if (stateMessage.getId() != j) {
                arrayList.add(stateMessage);
            }
        }
        return arrayList;
    }

    @VisibleForTesting
    @SuppressLint({"UseSparseArrays"})
    static StateMessage synchronizeAttachmentOrder(StateMessage stateMessage, StateMessage stateMessage2) {
        if (CollectionUtils.isEmpty(stateMessage2.getAttachments())) {
            return stateMessage2;
        }
        final HashMap hashMap = new HashMap();
        int size = stateMessage.getAttachments().size();
        for (int i = 0; i < size; i++) {
            hashMap.put(Long.valueOf(stateMessage.getAttachments().get(i).getId()), Integer.valueOf(i));
        }
        ArrayList arrayList = new ArrayList(stateMessage2.getAttachments());
        Collections.sort(arrayList, new Comparator<StateRequestAttachment>() { // from class: zendesk.support.request.StateMessageMergeUtil.1
            public int compare(StateRequestAttachment stateRequestAttachment, StateRequestAttachment stateRequestAttachment2) {
                return ((Integer) hashMap.get(Long.valueOf(stateRequestAttachment.getId()))).intValue() - ((Integer) hashMap.get(Long.valueOf(stateRequestAttachment2.getId()))).intValue();
            }
        });
        return stateMessage2.withAttachments(arrayList);
    }
}
