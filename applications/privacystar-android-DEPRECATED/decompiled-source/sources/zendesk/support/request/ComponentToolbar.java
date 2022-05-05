package zendesk.support.request;

import android.annotation.SuppressLint;
import android.content.Context;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.p001v4.util.Pair;
import android.support.p004v7.widget.Toolbar;
import android.support.transition.Fade;
import android.support.transition.TransitionManager;
import android.text.format.DateUtils;
import android.view.View;
import android.widget.TextView;
import com.squareup.picasso.Picasso;
import com.zendesk.sdk.C1790R;
import com.zendesk.util.CollectionUtils;
import com.zendesk.util.StringUtils;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import zendesk.suas.Listener;
import zendesk.suas.State;
import zendesk.suas.StateSelector;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:zendesk/support/request/ComponentToolbar.class */
public class ComponentToolbar implements Listener<ToolbarModel> {
    private final ViewToolbarAvatar avatarContainer;
    private final View container;
    private final Context context;
    private final Picasso picasso;
    private final ViewAlmostRealProgressBar progressBar;
    private final TextView subTitle;
    private final TextView title;
    private final Toolbar toolbar;
    private ToolbarModel toolbarModel;
    private final Fade fadeTransition = new Fade();
    private final ToolbarSelector toolbarSelector = new ToolbarSelector();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:zendesk/support/request/ComponentToolbar$ToolbarModel.class */
    public static class ToolbarModel {
        static int STATE_AGENT_INFO = 3;
        static int STATE_LOADING = 1;
        static int STATE_TITLE = 2;
        private final List<StateRequestUser> agent;
        private final boolean isProgressEnabled;
        private final Date lastReply;
        private final int toolbarContentState;

        ToolbarModel(boolean z, int i, List<StateRequestUser> list, Date date) {
            this.isProgressEnabled = z;
            this.toolbarContentState = i;
            this.agent = list;
            this.lastReply = date;
        }

        public boolean equals(Object obj) {
            boolean z = true;
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            ToolbarModel toolbarModel = (ToolbarModel) obj;
            if (this.isProgressEnabled != toolbarModel.isProgressEnabled || this.toolbarContentState != toolbarModel.toolbarContentState) {
                return false;
            }
            if (this.agent != null) {
                if (!this.agent.equals(toolbarModel.agent)) {
                    return false;
                }
            } else if (toolbarModel.agent != null) {
                return false;
            }
            if (this.lastReply != null) {
                z = this.lastReply.equals(toolbarModel.lastReply);
            } else if (toolbarModel.lastReply != null) {
                z = false;
            }
            return z;
        }

        List<StateRequestUser> getAgents() {
            return this.agent;
        }

        List<Pair<String, String>> getAvatarUrls() {
            ArrayList arrayList = new ArrayList();
            for (StateRequestUser stateRequestUser : this.agent) {
                arrayList.add(Pair.create(stateRequestUser.getAvatar(), stateRequestUser.getName()));
            }
            return arrayList;
        }

        Date getLastReply() {
            return this.lastReply;
        }

        String getNameOfFirstAgent() {
            return CollectionUtils.isNotEmpty(this.agent) ? this.agent.get(0).getName() : "";
        }

        int getToolbarContentState() {
            return this.toolbarContentState;
        }

        public int hashCode() {
            boolean z = this.isProgressEnabled;
            int i = this.toolbarContentState;
            int i2 = 0;
            int hashCode = this.agent != null ? this.agent.hashCode() : 0;
            if (this.lastReply != null) {
                i2 = this.lastReply.hashCode();
            }
            return ((((((z ? 1 : 0) * 31) + i) * 31) + hashCode) * 31) + i2;
        }

        boolean isProgressEnabled() {
            return this.isProgressEnabled;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:zendesk/support/request/ComponentToolbar$ToolbarSelector.class */
    public static class ToolbarSelector implements StateSelector<ToolbarModel> {
        ToolbarSelector() {
        }

        private StateMessage findLastAgentReply(List<StateMessage> list, Map<Long, StateRequestUser> map) {
            for (int size = list.size() - 1; size >= 0; size--) {
                StateMessage stateMessage = list.get(size);
                if (map.containsKey(Long.valueOf(stateMessage.getUserId()))) {
                    return stateMessage;
                }
            }
            return null;
        }

        private List<StateRequestUser> getInvolvedAgents(List<StateMessage> list, Map<Long, StateRequestUser> map) {
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            for (int size = list.size() - 1; size >= 0; size--) {
                StateMessage stateMessage = list.get(size);
                if (map.containsKey(Long.valueOf(stateMessage.getUserId()))) {
                    linkedHashSet.add(map.get(Long.valueOf(stateMessage.getUserId())));
                }
            }
            return new ArrayList(linkedHashSet);
        }

        private boolean isProgressEnabled(State state) {
            return StateProgress.fomState(state).getRunningRequests() > 0;
        }

        @SuppressLint({"UseSparseArrays"})
        private Map<Long, StateRequestUser> mapAgents(List<StateRequestUser> list) {
            HashMap hashMap = new HashMap();
            for (StateRequestUser stateRequestUser : list) {
                if (stateRequestUser.isAgent()) {
                    hashMap.put(Long.valueOf(stateRequestUser.getId()), stateRequestUser);
                }
            }
            return hashMap;
        }

        @Override // zendesk.suas.StateSelector
        @Nullable
        public ToolbarModel selectData(@NonNull State state) {
            int i;
            boolean isProgressEnabled = isProgressEnabled(state);
            StateConversation fromState = StateConversation.fromState(state);
            Map<Long, StateRequestUser> mapAgents = mapAgents(fromState.getUsers());
            ArrayList arrayList = new ArrayList();
            Date date = null;
            if (!StringUtils.hasLength(fromState.getLocalId()) && !StringUtils.hasLength(fromState.getRemoteId())) {
                i = ToolbarModel.STATE_LOADING;
                date = null;
            } else if (fromState.hasAgentReplies() && mapAgents.size() == 0) {
                i = ToolbarModel.STATE_LOADING;
                date = null;
            } else if (!fromState.hasAgentReplies() || mapAgents.size() <= 0) {
                i = ToolbarModel.STATE_TITLE;
                date = null;
            } else {
                i = ToolbarModel.STATE_AGENT_INFO;
                StateMessage findLastAgentReply = findLastAgentReply(fromState.getMessages(), mapAgents);
                if (findLastAgentReply != null) {
                    date = findLastAgentReply.getDate();
                }
                arrayList.addAll(getInvolvedAgents(fromState.getMessages(), mapAgents));
            }
            return new ToolbarModel(isProgressEnabled, i, arrayList, date);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ComponentToolbar(Picasso picasso, Toolbar toolbar, ViewAlmostRealProgressBar viewAlmostRealProgressBar) {
        this.picasso = picasso;
        this.progressBar = viewAlmostRealProgressBar;
        this.toolbar = toolbar;
        this.context = toolbar.getContext();
        this.container = toolbar.findViewById(C1790R.C1793id.activity_request_toolbar_container);
        this.title = (TextView) toolbar.findViewById(C1790R.C1793id.activity_request_toolbar_custom_title);
        this.subTitle = (TextView) toolbar.findViewById(C1790R.C1793id.activity_request_toolbar_custom_sub_title);
        this.avatarContainer = (ViewToolbarAvatar) toolbar.findViewById(C1790R.C1793id.activity_request_toolbar_avatar_holder);
    }

    private void updateProgressBar(boolean z) {
        if (z) {
            this.progressBar.start(ViewAlmostRealProgressBar.DONT_STOP_MOVING);
        } else {
            this.progressBar.stop(300L);
        }
    }

    private void updateToolbar(ToolbarModel toolbarModel) {
        if (toolbarModel.getToolbarContentState() == ToolbarModel.STATE_LOADING) {
            this.container.setVisibility(8);
            this.toolbar.setTitle("");
        } else if (toolbarModel.getToolbarContentState() == ToolbarModel.STATE_AGENT_INFO) {
            this.title.setText(toolbarModel.getNameOfFirstAgent());
            CharSequence relativeTimeSpanString = DateUtils.getRelativeTimeSpanString(this.context, toolbarModel.getLastReply().getTime(), true);
            this.subTitle.setText(this.context.getString(C1790R.string.request_toolbar_last_reply, relativeTimeSpanString));
            this.toolbar.setTitle("");
            this.avatarContainer.setImageUrls(this.picasso, toolbarModel.getAvatarUrls());
            TransitionManager.beginDelayedTransition(this.toolbar, this.fadeTransition);
            this.container.setVisibility(0);
            this.container.setContentDescription(this.container.getContext().getString(C1790R.string.zs_request_toolbar_accessibility, toolbarModel.getNameOfFirstAgent(), relativeTimeSpanString));
        } else if (toolbarModel.getToolbarContentState() == ToolbarModel.STATE_TITLE) {
            this.container.setVisibility(8);
            this.toolbar.setTitle(C1790R.string.request_activity_title);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ToolbarSelector getToolbarSelector() {
        return this.toolbarSelector;
    }

    public void update(@NonNull ToolbarModel toolbarModel) {
        if (!toolbarModel.equals(this.toolbarModel)) {
            this.toolbarModel = toolbarModel;
            updateProgressBar(toolbarModel.isProgressEnabled());
            updateToolbar(toolbarModel);
        }
    }
}
