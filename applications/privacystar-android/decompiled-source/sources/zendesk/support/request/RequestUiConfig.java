package zendesk.support.request;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.support.annotation.NonNull;
import com.zendesk.util.CollectionUtils;
import com.zendesk.util.StringUtils;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import zendesk.commonui.UiConfig;
import zendesk.commonui.UiConfigUtil;
import zendesk.support.CustomField;
import zendesk.support.DeepLinkingBroadcastReceiver;
import zendesk.support.Request;
import zendesk.support.RequestStatus;
import zendesk.support.requestlist.RequestInfo;
/* loaded from: classes3-dex2jar.jar:zendesk/support/request/RequestUiConfig.class */
public class RequestUiConfig implements UiConfig {
    private final List<StateRequestAttachment> files;
    private final boolean hasAgentReplies;
    private final String localRequestId;
    private final String requestId;
    private final RequestStatus requestStatus;
    private final String requestSubject;
    private final List<String> tags;
    private final StateRequestTicketForm ticketForm;
    private final List<UiConfig> uiConfigs;

    /* loaded from: classes3-dex2jar.jar:zendesk/support/request/RequestUiConfig$Builder.class */
    public static class Builder {
        private String requestSubject = "";
        private List<String> tags = new ArrayList(0);
        private String requestId = "";
        private String localRequestId = "";
        private RequestStatus requestStatus = null;
        private boolean hasAgentReplies = false;
        private StateRequestTicketForm ticketForm = null;
        private List<StateRequestAttachment> files = new ArrayList(0);
        private List<UiConfig> uiConfigs = new ArrayList();

        private void setUiConfigs(@NonNull List<UiConfig> list) {
            this.uiConfigs = list;
            RequestUiConfig requestUiConfig = (RequestUiConfig) UiConfigUtil.findConfigForType(list, RequestUiConfig.class);
            if (requestUiConfig != null) {
                this.requestSubject = requestUiConfig.getRequestSubject();
                this.tags = requestUiConfig.getTags();
                this.ticketForm = requestUiConfig.getTicketForm();
                this.files = requestUiConfig.getFiles();
            }
        }

        @NonNull
        public UiConfig config() {
            return new RequestUiConfig(this.requestSubject, this.tags, this.requestId, this.localRequestId, this.requestStatus, this.ticketForm, this.files, this.hasAgentReplies, this.uiConfigs);
        }

        public Intent deepLinkIntent(Context context, List<UiConfig> list, Intent... intentArr) {
            ArrayList arrayList = new ArrayList(Arrays.asList(intentArr));
            Intent intent = new Intent(context, DeepLinkingBroadcastReceiver.class);
            intent.putExtra(DeepLinkingBroadcastReceiver.EXTRA_REQUEST_INTENT, intent(context, list));
            intent.putExtra(DeepLinkingBroadcastReceiver.EXTRA_BACK_STACK_ACTIVITIES, arrayList);
            return intent;
        }

        public Intent deepLinkIntent(Context context, Intent... intentArr) {
            ArrayList arrayList = new ArrayList(Arrays.asList(intentArr));
            Intent intent = new Intent(context, DeepLinkingBroadcastReceiver.class);
            intent.putExtra(DeepLinkingBroadcastReceiver.EXTRA_REQUEST_INTENT, intent(context, new UiConfig[0]));
            intent.putExtra(DeepLinkingBroadcastReceiver.EXTRA_BACK_STACK_ACTIVITIES, arrayList);
            return intent;
        }

        @SuppressLint({"RestrictedApi"})
        public Intent intent(Context context, List<UiConfig> list) {
            setUiConfigs(list);
            UiConfig config = config();
            Intent intent = new Intent(context, RequestActivity.class);
            UiConfigUtil.addToIntent(intent, config);
            return intent;
        }

        public Intent intent(Context context, UiConfig... uiConfigArr) {
            return intent(context, Arrays.asList(uiConfigArr));
        }

        public void show(@NonNull Context context, List<UiConfig> list) {
            context.startActivity(intent(context, list));
        }

        public void show(@NonNull Context context, UiConfig... uiConfigArr) {
            context.startActivity(intent(context, uiConfigArr));
        }

        public Builder withCustomFields(@NonNull List<CustomField> list) {
            this.ticketForm = new StateRequestTicketForm(list);
            return this;
        }

        public Builder withFiles(List<File> list) {
            ArrayList arrayList = new ArrayList(list.size());
            for (File file : list) {
                arrayList.add(StateRequestAttachment.convert(file));
            }
            this.files = arrayList;
            return this;
        }

        public Builder withFiles(File... fileArr) {
            return withFiles(Arrays.asList(fileArr));
        }

        public Builder withRequest(@NonNull Request request) {
            this.requestId = request.getId();
            this.requestStatus = request.getStatus();
            this.hasAgentReplies = CollectionUtils.isNotEmpty(request.getLastCommentingAgents());
            return this;
        }

        public Builder withRequestId(@NonNull String str) {
            this.requestId = str;
            return this;
        }

        public Builder withRequestInfo(@NonNull RequestInfo requestInfo) {
            String localId = requestInfo.getLocalId();
            if (StringUtils.hasLength(localId)) {
                this.localRequestId = localId;
            }
            String remoteId = requestInfo.getRemoteId();
            if (StringUtils.hasLength(remoteId)) {
                this.requestId = remoteId;
            }
            this.requestStatus = requestInfo.getRequestStatus();
            this.hasAgentReplies = CollectionUtils.isNotEmpty(requestInfo.getAgentInfos());
            return this;
        }

        public Builder withRequestSubject(@NonNull String str) {
            this.requestSubject = str;
            return this;
        }

        public Builder withTags(@NonNull List<String> list) {
            this.tags = CollectionUtils.copyOf(list);
            return this;
        }

        public Builder withTags(@NonNull String... strArr) {
            this.tags = CollectionUtils.copyOf(Arrays.asList(strArr));
            return this;
        }

        public Builder withTicketForm(long j, @NonNull List<CustomField> list) {
            this.ticketForm = new StateRequestTicketForm(j, list);
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public RequestUiConfig(String str, List<String> list, String str2, String str3, RequestStatus requestStatus, StateRequestTicketForm stateRequestTicketForm, List<StateRequestAttachment> list2, boolean z, List<UiConfig> list3) {
        this.requestSubject = str;
        this.tags = CollectionUtils.ensureEmpty(list);
        this.requestId = str2;
        this.localRequestId = str3;
        this.requestStatus = requestStatus;
        this.hasAgentReplies = z;
        this.ticketForm = stateRequestTicketForm;
        this.files = list2;
        this.uiConfigs = list3;
    }

    public List<StateRequestAttachment> getFiles() {
        return this.files;
    }

    public String getLocalRequestId() {
        return this.localRequestId;
    }

    public String getRequestId() {
        return this.requestId;
    }

    public RequestStatus getRequestStatus() {
        return this.requestStatus;
    }

    public String getRequestSubject() {
        return this.requestSubject;
    }

    public List<String> getTags() {
        return this.tags;
    }

    public StateRequestTicketForm getTicketForm() {
        return this.ticketForm;
    }

    @Override // zendesk.commonui.UiConfig
    @SuppressLint({"RestrictedApi"})
    public List<UiConfig> getUiConfigs() {
        return UiConfigUtil.addSelfIfNotInList(this.uiConfigs, this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean hasAgentReplies() {
        return this.hasAgentReplies;
    }
}
