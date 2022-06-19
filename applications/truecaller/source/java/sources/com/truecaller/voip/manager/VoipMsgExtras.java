package com.truecaller.voip.manager;

import androidx.annotation.Keep;
import com.huawei.hms.push.constant.RemoteMessageConst;
import io.agora.rtc.Constants;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.f;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b#\b\u0087\b\u0018��2\u00020\u0001BQ\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\u0012\u001a\u00020\b\u0012\b\b\u0002\u0010\u0013\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0014\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0015\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0016\u001a\u00020\u0002¢\u0006\u0004\b)\u0010*J\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\t\u001a\u00020\bHÆ\u0003¢\u0006\u0004\b\t\u0010\nJ\u0010\u0010\u000b\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u000b\u0010\fJ\u0010\u0010\r\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\r\u0010\fJ\u0010\u0010\u000e\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u000e\u0010\fJ\u0010\u0010\u000f\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u000f\u0010\fJZ\u0010\u0017\u001a\u00020��2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00052\b\b\u0002\u0010\u0012\u001a\u00020\b2\b\b\u0002\u0010\u0013\u001a\u00020\u00022\b\b\u0002\u0010\u0014\u001a\u00020\u00022\b\b\u0002\u0010\u0015\u001a\u00020\u00022\b\b\u0002\u0010\u0016\u001a\u00020\u0002HÆ\u0001¢\u0006\u0004\b\u0017\u0010\u0018J\u0010\u0010\u0019\u001a\u00020\u0005HÖ\u0001¢\u0006\u0004\b\u0019\u0010\u0007J\u0010\u0010\u001a\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u001a\u0010\fJ\u001a\u0010\u001c\u001a\u00020\b2\b\u0010\u001b\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u001c\u0010\u001dR\u001b\u0010\u0010\u001a\u0004\u0018\u00010\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0010\u0010\u001e\u001a\u0004\b\u001f\u0010\u0004R\u0019\u0010\u0013\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0013\u0010 \u001a\u0004\b!\u0010\fR\u0019\u0010\u0015\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0015\u0010 \u001a\u0004\b\"\u0010\fR\u0019\u0010\u0014\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0014\u0010 \u001a\u0004\b#\u0010\fR\u0019\u0010\u0016\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0016\u0010 \u001a\u0004\b$\u0010\fR\u0019\u0010\u0012\u001a\u00020\b8\u0006@\u0006¢\u0006\f\n\u0004\b\u0012\u0010%\u001a\u0004\b&\u0010\nR\u001b\u0010\u0011\u001a\u0004\u0018\u00010\u00058\u0006@\u0006¢\u0006\f\n\u0004\b\u0011\u0010'\u001a\u0004\b(\u0010\u0007¨\u0006+"}, d2 = {"Lcom/truecaller/voip/manager/VoipMsgExtras;", "", "", "component1", "()Ljava/lang/Integer;", "", "component2", "()Ljava/lang/String;", "", "component3", "()Z", "component4", "()I", "component5", "component6", "component7", "uid", RemoteMessageConst.Notification.CHANNEL_ID, "muted", "userCount", "errorCode", "state", "reason", "copy", "(Ljava/lang/Integer;Ljava/lang/String;ZIIII)Lcom/truecaller/voip/manager/VoipMsgExtras;", "toString", "hashCode", "other", "equals", "(Ljava/lang/Object;)Z", "Ljava/lang/Integer;", "getUid", "I", "getUserCount", "getState", "getErrorCode", "getReason", "Z", "getMuted", "Ljava/lang/String;", "getChannelId", "<init>", "(Ljava/lang/Integer;Ljava/lang/String;ZIIII)V", "voip_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes15-dex2jar.jar:com/truecaller/voip/manager/VoipMsgExtras.class */
public final class VoipMsgExtras {
    private final String channelId;
    private final int errorCode;
    private final boolean muted;
    private final int reason;
    private final int state;
    private final Integer uid;
    private final int userCount;

    public VoipMsgExtras() {
        this(null, null, false, 0, 0, 0, 0, Constants.ERR_WATERMARKR_INFO, null);
    }

    public VoipMsgExtras(Integer num, String str, boolean z, int i, int i2, int i3, int i4) {
        this.uid = num;
        this.channelId = str;
        this.muted = z;
        this.userCount = i;
        this.errorCode = i2;
        this.state = i3;
        this.reason = i4;
    }

    public /* synthetic */ VoipMsgExtras(Integer num, String str, boolean z, int i, int i2, int i3, int i4, int i5, f fVar) {
        this((i5 & 1) != 0 ? null : num, (i5 & 2) != 0 ? null : str, (i5 & 4) != 0 ? false : z, (i5 & 8) != 0 ? 0 : i, (i5 & 16) != 0 ? 0 : i2, (i5 & 32) != 0 ? 0 : i3, (i5 & 64) != 0 ? 0 : i4);
    }

    public static /* synthetic */ VoipMsgExtras copy$default(VoipMsgExtras voipMsgExtras, Integer num, String str, boolean z, int i, int i2, int i3, int i4, int i5, Object obj) {
        if ((i5 & 1) != 0) {
            num = voipMsgExtras.uid;
        }
        if ((i5 & 2) != 0) {
            str = voipMsgExtras.channelId;
        }
        if ((i5 & 4) != 0) {
            z = voipMsgExtras.muted;
        }
        if ((i5 & 8) != 0) {
            i = voipMsgExtras.userCount;
        }
        if ((i5 & 16) != 0) {
            i2 = voipMsgExtras.errorCode;
        }
        if ((i5 & 32) != 0) {
            i3 = voipMsgExtras.state;
        }
        if ((i5 & 64) != 0) {
            i4 = voipMsgExtras.reason;
        }
        return voipMsgExtras.copy(num, str, z, i, i2, i3, i4);
    }

    public final Integer component1() {
        return this.uid;
    }

    public final String component2() {
        return this.channelId;
    }

    public final boolean component3() {
        return this.muted;
    }

    public final int component4() {
        return this.userCount;
    }

    public final int component5() {
        return this.errorCode;
    }

    public final int component6() {
        return this.state;
    }

    public final int component7() {
        return this.reason;
    }

    public final VoipMsgExtras copy(Integer num, String str, boolean z, int i, int i2, int i3, int i4) {
        return new VoipMsgExtras(num, str, z, i, i2, i3, i4);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof VoipMsgExtras)) {
                return false;
            }
            VoipMsgExtras voipMsgExtras = (VoipMsgExtras) obj;
            return l.a(this.uid, voipMsgExtras.uid) && l.a(this.channelId, voipMsgExtras.channelId) && this.muted == voipMsgExtras.muted && this.userCount == voipMsgExtras.userCount && this.errorCode == voipMsgExtras.errorCode && this.state == voipMsgExtras.state && this.reason == voipMsgExtras.reason;
        }
        return true;
    }

    public final String getChannelId() {
        return this.channelId;
    }

    public final int getErrorCode() {
        return this.errorCode;
    }

    public final boolean getMuted() {
        return this.muted;
    }

    public final int getReason() {
        return this.reason;
    }

    public final int getState() {
        return this.state;
    }

    public final Integer getUid() {
        return this.uid;
    }

    public final int getUserCount() {
        return this.userCount;
    }

    public int hashCode() {
        Integer num = this.uid;
        int i = 0;
        int hashCode = num != null ? num.hashCode() : 0;
        String str = this.channelId;
        if (str != null) {
            i = str.hashCode();
        }
        boolean z = this.muted;
        int i2 = z ? 1 : 0;
        if (z) {
            i2 = 1;
        }
        return (((((((((((hashCode * 31) + i) * 31) + i2) * 31) + this.userCount) * 31) + this.errorCode) * 31) + this.state) * 31) + this.reason;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("VoipMsgExtras(uid=");
        m8728C.append(this.uid);
        m8728C.append(", channelId=");
        m8728C.append(this.channelId);
        m8728C.append(", muted=");
        m8728C.append(this.muted);
        m8728C.append(", userCount=");
        m8728C.append(this.userCount);
        m8728C.append(", errorCode=");
        m8728C.append(this.errorCode);
        m8728C.append(", state=");
        m8728C.append(this.state);
        m8728C.append(", reason=");
        return C22128a.m8697J2(m8728C, this.reason, ")");
    }
}
