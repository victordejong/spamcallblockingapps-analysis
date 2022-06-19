package com.truecaller.voip.manager;

import androidx.annotation.Keep;
import io.agora.rtc.Constants;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.f;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��0\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\t\b\u0087\b\u0018��2\u00020\u0001B\u001b\u0012\b\b\u0002\u0010\b\u001a\u00020\u0002\u0012\b\b\u0002\u0010\t\u001a\u00020\u0005¢\u0006\u0004\b\u001a\u0010\u001bJ\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0005HÆ\u0003¢\u0006\u0004\b\u0006\u0010\u0007J$\u0010\n\u001a\u00020��2\b\b\u0002\u0010\b\u001a\u00020\u00022\b\b\u0002\u0010\t\u001a\u00020\u0005HÆ\u0001¢\u0006\u0004\b\n\u0010\u000bJ\u0010\u0010\r\u001a\u00020\fHÖ\u0001¢\u0006\u0004\b\r\u0010\u000eJ\u0010\u0010\u0010\u001a\u00020\u000fHÖ\u0001¢\u0006\u0004\b\u0010\u0010\u0011J\u001a\u0010\u0014\u001a\u00020\u00132\b\u0010\u0012\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0014\u0010\u0015R\u0019\u0010\b\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\b\u0010\u0016\u001a\u0004\b\u0017\u0010\u0004R\u0019\u0010\t\u001a\u00020\u00058\u0006@\u0006¢\u0006\f\n\u0004\b\t\u0010\u0018\u001a\u0004\b\u0019\u0010\u0007¨\u0006\u001c"}, d2 = {"Lcom/truecaller/voip/manager/VoipMsg;", "", "Lcom/truecaller/voip/manager/VoipMsgAction;", "component1", "()Lcom/truecaller/voip/manager/VoipMsgAction;", "Lcom/truecaller/voip/manager/VoipMsgExtras;", "component2", "()Lcom/truecaller/voip/manager/VoipMsgExtras;", "action", "extras", "copy", "(Lcom/truecaller/voip/manager/VoipMsgAction;Lcom/truecaller/voip/manager/VoipMsgExtras;)Lcom/truecaller/voip/manager/VoipMsg;", "", "toString", "()Ljava/lang/String;", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "Lcom/truecaller/voip/manager/VoipMsgAction;", "getAction", "Lcom/truecaller/voip/manager/VoipMsgExtras;", "getExtras", "<init>", "(Lcom/truecaller/voip/manager/VoipMsgAction;Lcom/truecaller/voip/manager/VoipMsgExtras;)V", "voip_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes15-dex2jar.jar:com/truecaller/voip/manager/VoipMsg.class */
public final class VoipMsg {
    private final VoipMsgAction action;
    private final VoipMsgExtras extras;

    public VoipMsg() {
        this(null, null, 3, null);
    }

    public VoipMsg(VoipMsgAction voipMsgAction, VoipMsgExtras voipMsgExtras) {
        l.e(voipMsgAction, "action");
        l.e(voipMsgExtras, "extras");
        this.action = voipMsgAction;
        this.extras = voipMsgExtras;
    }

    public /* synthetic */ VoipMsg(VoipMsgAction voipMsgAction, VoipMsgExtras voipMsgExtras, int i, f fVar) {
        this((i & 1) != 0 ? VoipMsgAction.NONE : voipMsgAction, (i & 2) != 0 ? new VoipMsgExtras(null, null, false, 0, 0, 0, 0, Constants.ERR_WATERMARKR_INFO, null) : voipMsgExtras);
    }

    public static /* synthetic */ VoipMsg copy$default(VoipMsg voipMsg, VoipMsgAction voipMsgAction, VoipMsgExtras voipMsgExtras, int i, Object obj) {
        if ((i & 1) != 0) {
            voipMsgAction = voipMsg.action;
        }
        if ((i & 2) != 0) {
            voipMsgExtras = voipMsg.extras;
        }
        return voipMsg.copy(voipMsgAction, voipMsgExtras);
    }

    public final VoipMsgAction component1() {
        return this.action;
    }

    public final VoipMsgExtras component2() {
        return this.extras;
    }

    public final VoipMsg copy(VoipMsgAction voipMsgAction, VoipMsgExtras voipMsgExtras) {
        l.e(voipMsgAction, "action");
        l.e(voipMsgExtras, "extras");
        return new VoipMsg(voipMsgAction, voipMsgExtras);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof VoipMsg)) {
                return false;
            }
            VoipMsg voipMsg = (VoipMsg) obj;
            return l.a(this.action, voipMsg.action) && l.a(this.extras, voipMsg.extras);
        }
        return true;
    }

    public final VoipMsgAction getAction() {
        return this.action;
    }

    public final VoipMsgExtras getExtras() {
        return this.extras;
    }

    public int hashCode() {
        VoipMsgAction voipMsgAction = this.action;
        int i = 0;
        int hashCode = voipMsgAction != null ? voipMsgAction.hashCode() : 0;
        VoipMsgExtras voipMsgExtras = this.extras;
        if (voipMsgExtras != null) {
            i = voipMsgExtras.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("VoipMsg(action=");
        m8728C.append(this.action);
        m8728C.append(", extras=");
        m8728C.append(this.extras);
        m8728C.append(")");
        return m8728C.toString();
    }
}
