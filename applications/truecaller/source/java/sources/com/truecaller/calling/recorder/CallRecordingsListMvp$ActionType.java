package com.truecaller.calling.recorder;

import kotlin.Metadata;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\n\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\bR\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\tj\u0002\b\nj\u0002\b\u000b¨\u0006\f"}, d2 = {"Lcom/truecaller/calling/recorder/CallRecordingsListMvp$ActionType;", "", "", "eventAction", "Ljava/lang/String;", "getEventAction", "()Ljava/lang/String;", "<init>", "(Ljava/lang/String;ILjava/lang/String;)V", "PLAY_CALL_RECORDING", "SHOW_CALL_RECORDING_MENU_OPTIONS", "DELETE_CALL_RECORDING", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes3-dex2jar.jar:com/truecaller/calling/recorder/CallRecordingsListMvp$ActionType.class */
public enum CallRecordingsListMvp$ActionType {
    PLAY_CALL_RECORDING("ItemEvent.ACTION_PLAY_CALL_RECORDING"),
    SHOW_CALL_RECORDING_MENU_OPTIONS("ItemEvent.ACTION_SHOW_CALL_RECORDING_MENU_OPTIONS"),
    DELETE_CALL_RECORDING("ItemEvent.ACTION_DELETE_CALL_RECORDING");
    
    private final String eventAction;

    CallRecordingsListMvp$ActionType(String str) {
        this.eventAction = str;
    }

    public final String getEventAction() {
        return this.eventAction;
    }
}
