package com.truecaller.voip;

import kotlin.Metadata;
import s1.z.c.f;
/* JADX WARN: Init of enum DISCONNECTED can be incorrect */
/* JADX WARN: Init of enum INTERRUPTED can be incorrect */
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\f\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B9\b\u0002\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0010\u0010\u0011R\u001b\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u001b\u0010\u0007\u001a\u0004\u0018\u00010\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0007\u0010\u0004\u001a\u0004\b\b\u0010\u0006R\u001b\u0010\n\u001a\u0004\u0018\u00010\t8\u0006@\u0006¢\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\rR\u001b\u0010\u000e\u001a\u0004\u0018\u00010\t8\u0006@\u0006¢\u0006\f\n\u0004\b\u000e\u0010\u000b\u001a\u0004\b\u000f\u0010\rj\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014¨\u0006\u0015"}, d2 = {"Lcom/truecaller/voip/ConnectionState;", "", "", "showAvatarRing", "Ljava/lang/Boolean;", "getShowAvatarRing", "()Ljava/lang/Boolean;", "startTimer", "getStartTimer", "", "callStatusColor", "Ljava/lang/Integer;", "getCallStatusColor", "()Ljava/lang/Integer;", "statusId", "getStatusId", "<init>", "(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;)V", "CONNECTED", "INTERRUPTED", "DISCONNECTED", "voip_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes15-dex2jar.jar:com/truecaller/voip/ConnectionState.class */
public enum ConnectionState {
    CONNECTED(null, null, null, null, 15, null),
    INTERRUPTED(Integer.valueOf(r0), r0, Integer.valueOf(r0), r0),
    DISCONNECTED(Integer.valueOf(C4781R.string.voip_status_call_failed), r0, Integer.valueOf(C4781R.attr.voip_call_status_error_color), r0);
    
    private final Integer callStatusColor;
    private final Boolean showAvatarRing;
    private final Boolean startTimer;
    private final Integer statusId;

    static {
        int i = C4781R.string.voip_status_reconnecting;
        int i2 = C4781R.attr.voip_call_status_warning_color;
        Boolean bool = Boolean.TRUE;
        Boolean bool2 = Boolean.FALSE;
    }

    ConnectionState(Integer num, Boolean bool, Integer num2, Boolean bool2) {
        this.statusId = num;
        this.startTimer = bool;
        this.callStatusColor = num2;
        this.showAvatarRing = bool2;
    }

    /* synthetic */ ConnectionState(Integer num, Boolean bool, Integer num2, Boolean bool2, int i, f fVar) {
        this((i & 1) != 0 ? null : num, (i & 2) != 0 ? null : bool, (i & 4) != 0 ? null : num2, (i & 8) != 0 ? null : bool2);
    }

    public final Integer getCallStatusColor() {
        return this.callStatusColor;
    }

    public final Boolean getShowAvatarRing() {
        return this.showAvatarRing;
    }

    public final Boolean getStartTimer() {
        return this.startTimer;
    }

    public final Integer getStatusId() {
        return this.statusId;
    }
}
