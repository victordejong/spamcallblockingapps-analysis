package com.truecaller.callrecording.analytics;

import kotlin.Metadata;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\u000f\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\bR\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010¨\u0006\u0011"}, d2 = {"Lcom/truecaller/callrecording/analytics/RecordingAnalyticsSource;", "", "", "value", "Ljava/lang/String;", "getValue", "()Ljava/lang/String;", "<init>", "(Ljava/lang/String;ILjava/lang/String;)V", "BUBBLE", "INCALLUI", "INCALLUI_NOTIFICATION", "AUTO", "RECORDING_LIST", "DETAILS_VIEW", "DETAILS_VIEW_CALL_HISTORY", "STORAGE_MANAGER", "callrecorder_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes7-dex2jar.jar:com/truecaller/callrecording/analytics/RecordingAnalyticsSource.class */
public enum RecordingAnalyticsSource {
    BUBBLE("Bubble"),
    INCALLUI("InCallUi"),
    INCALLUI_NOTIFICATION("InCallUiNotification"),
    AUTO("Auto"),
    RECORDING_LIST("RecordingList"),
    DETAILS_VIEW("DetailsView"),
    DETAILS_VIEW_CALL_HISTORY("DetailsViewCallHistory"),
    STORAGE_MANAGER("StorageManager");
    
    private final String value;

    RecordingAnalyticsSource(String str) {
        this.value = str;
    }

    public final String getValue() {
        return this.value;
    }
}
