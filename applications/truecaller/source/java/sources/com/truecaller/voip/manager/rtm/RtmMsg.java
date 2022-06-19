package com.truecaller.voip.manager.rtm;

import androidx.annotation.Keep;
import com.huawei.hms.push.constant.RemoteMessageConst;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\r\b\u0087\b\u0018��2\u00020\u0001B\u0017\u0012\u0006\u0010\b\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0005¢\u0006\u0004\b\u001c\u0010\u001dJ\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0005HÆ\u0003¢\u0006\u0004\b\u0006\u0010\u0007J$\u0010\n\u001a\u00020��2\b\b\u0002\u0010\b\u001a\u00020\u00022\b\b\u0002\u0010\t\u001a\u00020\u0005HÆ\u0001¢\u0006\u0004\b\n\u0010\u000bJ\u0010\u0010\f\u001a\u00020\u0005HÖ\u0001¢\u0006\u0004\b\f\u0010\u0007J\u0010\u0010\u000e\u001a\u00020\rHÖ\u0001¢\u0006\u0004\b\u000e\u0010\u000fJ\u001a\u0010\u0012\u001a\u00020\u00112\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0012\u0010\u0013R\u0019\u0010\b\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\b\u0010\u0014\u001a\u0004\b\u0015\u0010\u0004R\u0019\u0010\t\u001a\u00020\u00058\u0006@\u0006¢\u0006\f\n\u0004\b\t\u0010\u0016\u001a\u0004\b\u0017\u0010\u0007R\"\u0010\u0018\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0018\u0010\u0016\u001a\u0004\b\u0019\u0010\u0007\"\u0004\b\u001a\u0010\u001b¨\u0006\u001e"}, d2 = {"Lcom/truecaller/voip/manager/rtm/RtmMsg;", "", "Lcom/truecaller/voip/manager/rtm/RtmMsgAction;", "component1", "()Lcom/truecaller/voip/manager/rtm/RtmMsgAction;", "", "component2", "()Ljava/lang/String;", "action", RemoteMessageConst.Notification.CHANNEL_ID, "copy", "(Lcom/truecaller/voip/manager/rtm/RtmMsgAction;Ljava/lang/String;)Lcom/truecaller/voip/manager/rtm/RtmMsg;", "toString", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "Lcom/truecaller/voip/manager/rtm/RtmMsgAction;", "getAction", "Ljava/lang/String;", "getChannelId", "senderId", "getSenderId", "setSenderId", "(Ljava/lang/String;)V", "<init>", "(Lcom/truecaller/voip/manager/rtm/RtmMsgAction;Ljava/lang/String;)V", "voip_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes15-dex2jar.jar:com/truecaller/voip/manager/rtm/RtmMsg.class */
public final class RtmMsg {
    private final RtmMsgAction action;
    private final String channelId;
    private transient String senderId = "";

    public RtmMsg(RtmMsgAction rtmMsgAction, String str) {
        l.e(rtmMsgAction, "action");
        l.e(str, RemoteMessageConst.Notification.CHANNEL_ID);
        this.action = rtmMsgAction;
        this.channelId = str;
    }

    public static /* synthetic */ RtmMsg copy$default(RtmMsg rtmMsg, RtmMsgAction rtmMsgAction, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            rtmMsgAction = rtmMsg.action;
        }
        if ((i & 2) != 0) {
            str = rtmMsg.channelId;
        }
        return rtmMsg.copy(rtmMsgAction, str);
    }

    public final RtmMsgAction component1() {
        return this.action;
    }

    public final String component2() {
        return this.channelId;
    }

    public final RtmMsg copy(RtmMsgAction rtmMsgAction, String str) {
        l.e(rtmMsgAction, "action");
        l.e(str, RemoteMessageConst.Notification.CHANNEL_ID);
        return new RtmMsg(rtmMsgAction, str);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof RtmMsg)) {
                return false;
            }
            RtmMsg rtmMsg = (RtmMsg) obj;
            return l.a(this.action, rtmMsg.action) && l.a(this.channelId, rtmMsg.channelId);
        }
        return true;
    }

    public final RtmMsgAction getAction() {
        return this.action;
    }

    public final String getChannelId() {
        return this.channelId;
    }

    public final String getSenderId() {
        return this.senderId;
    }

    public int hashCode() {
        RtmMsgAction rtmMsgAction = this.action;
        int i = 0;
        int hashCode = rtmMsgAction != null ? rtmMsgAction.hashCode() : 0;
        String str = this.channelId;
        if (str != null) {
            i = str.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public final void setSenderId(String str) {
        l.e(str, "<set-?>");
        this.senderId = str;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("RtmMsg(action=");
        m8728C.append(this.action);
        m8728C.append(", channelId=");
        return C22128a.m8618h(m8728C, this.channelId, ")");
    }
}
