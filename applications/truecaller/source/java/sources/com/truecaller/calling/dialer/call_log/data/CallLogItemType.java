package com.truecaller.calling.dialer.call_log.data;

import com.tenor.android.core.constant.SupportMessenger;
import com.truecaller.calling.ActionType;
import com.truecaller.data.entity.HistoryEvent;
import kotlin.Metadata;
import p193e.p194a.p1114o5.AbstractC19102s1;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p682e.C12864a2;
import s1.z.c.f;
import s1.z.c.l;
/* JADX WARN: Init of enum VOIP_CALL can be incorrect */
/* JADX WARN: Init of enum VOIP_GROUP_CALL can be incorrect */
@Metadata(bv = {1, 0, 3}, d1 = {"��.\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0010\b\u0086\u0001\u0018�� \u00172\b\u0012\u0004\u0012\u00020��0\u0001:\u0001\u0018B)\b\u0002\u0012\b\b\u0002\u0010\b\u001a\u00020\u0007\u0012\n\b\u0003\u0010\f\u001a\u0004\u0018\u00010\u000b\u0012\b\b\u0002\u0010\u0011\u001a\u00020\u0010¢\u0006\u0004\b\u0015\u0010\u0016J\u0017\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006R\u0019\u0010\b\u001a\u00020\u00078\u0006@\u0006¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\b\u0010\nR\u001b\u0010\f\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000fR\u0019\u0010\u0011\u001a\u00020\u00108\u0006@\u0006¢\u0006\f\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014j\u0002\b\u0019j\u0002\b\u001aj\u0002\b\u001bj\u0002\b\u001cj\u0002\b\u001dj\u0002\b\u001ej\u0002\b\u001f¨\u0006 "}, d2 = {"Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType;", "", "Le/a/p5/c0;", "resourceProvider", "", "getName", "(Le/a/p5/c0;)Ljava/lang/String;", "", "isVideo", "Z", "()Z", "", "nameRes", "Ljava/lang/Integer;", "getNameRes", "()Ljava/lang/Integer;", "Lcom/truecaller/calling/ActionType;", "primaryAction", "Lcom/truecaller/calling/ActionType;", "getPrimaryAction", "()Lcom/truecaller/calling/ActionType;", "<init>", "(Ljava/lang/String;IZLjava/lang/Integer;Lcom/truecaller/calling/ActionType;)V", "Companion", "a", "FLASH_MESSAGE", "WHATSAPP_CALL", "WHATSAPP_VIDEO_CALL", "CELLULAR_CALL", "CELLULAR_VIDEO_CALL", "VOIP_CALL", "VOIP_GROUP_CALL", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes3-dex2jar.jar:com/truecaller/calling/dialer/call_log/data/CallLogItemType.class */
public enum CallLogItemType {
    FLASH_MESSAGE(false, 2131888942, null, 5, null),
    WHATSAPP_CALL(false, 2131890414, ActionType.WHATSAPP_CALL, 1, null),
    WHATSAPP_VIDEO_CALL(true, 2131890414, ActionType.WHATSAPP_VIDEO_CALL),
    CELLULAR_CALL(false, null, ActionType.CELLULAR_CALL, 3, null),
    CELLULAR_VIDEO_CALL(true, null, ActionType.CELLULAR_VIDEO_CALL, 2, null),
    VOIP_CALL(false, 2131890378, r0, 1, null),
    VOIP_GROUP_CALL(false, 2131890378, r0, 1, null);
    
    public static final C3620a Companion = new C3620a(null);
    private final boolean isVideo;
    private final Integer nameRes;
    private final ActionType primaryAction;

    /* renamed from: com.truecaller.calling.dialer.call_log.data.CallLogItemType$a */
    /* loaded from: classes3-dex2jar.jar:com/truecaller/calling/dialer/call_log/data/CallLogItemType$a.class */
    public static final class C3620a {
        public C3620a(f fVar) {
        }

        /* renamed from: a */
        public final boolean m35749a(HistoryEvent historyEvent) {
            l.e(historyEvent, "$this$isVoipGroupCall");
            return l.a("com.truecaller.voip.manager.GROUP_VOIP", historyEvent.f11552s);
        }

        /* renamed from: b */
        public final CallLogItemType m35748b(HistoryEvent historyEvent, AbstractC19102s1 abstractC19102s1) {
            CallLogItemType callLogItemType;
            l.e(historyEvent, "historyEvent");
            boolean m22540r = C12864a2.m22540r(abstractC19102s1 != null ? Boolean.valueOf(abstractC19102s1.mo14095a(historyEvent.f11545l)) : null);
            l.e(historyEvent, "$this$isWhatsAppCall");
            if (l.a(SupportMessenger.WHATSAPP, historyEvent.f11552s)) {
                callLogItemType = m22540r ? CallLogItemType.WHATSAPP_VIDEO_CALL : CallLogItemType.WHATSAPP_CALL;
            } else {
                l.e(historyEvent, "$this$isFlash");
                if (historyEvent.f11553t == 3) {
                    callLogItemType = CallLogItemType.FLASH_MESSAGE;
                } else {
                    l.e(historyEvent, "$this$isVoipCall");
                    callLogItemType = l.a("com.truecaller.voip.manager.VOIP", historyEvent.f11552s) ? CallLogItemType.VOIP_CALL : m35749a(historyEvent) ? CallLogItemType.VOIP_GROUP_CALL : m22540r ? CallLogItemType.CELLULAR_VIDEO_CALL : CallLogItemType.CELLULAR_CALL;
                }
            }
            return callLogItemType;
        }
    }

    static {
        ActionType actionType = ActionType.VOIP_CALL;
    }

    CallLogItemType(boolean z, Integer num, ActionType actionType) {
        this.isVideo = z;
        this.nameRes = num;
        this.primaryAction = actionType;
    }

    /* synthetic */ CallLogItemType(boolean z, Integer num, ActionType actionType, int i, f fVar) {
        this((i & 1) != 0 ? false : z, (i & 2) != 0 ? null : num, (i & 4) != 0 ? ActionType.CELLULAR_CALL : actionType);
    }

    public static final CallLogItemType resolve(HistoryEvent historyEvent, AbstractC19102s1 abstractC19102s1) {
        return Companion.m35748b(historyEvent, abstractC19102s1);
    }

    public final String getName(AbstractC19223c0 abstractC19223c0) {
        l.e(abstractC19223c0, "resourceProvider");
        Integer num = this.nameRes;
        return num != null ? abstractC19223c0.mo13768b(num.intValue(), new Object[0]) : null;
    }

    public final Integer getNameRes() {
        return this.nameRes;
    }

    public final ActionType getPrimaryAction() {
        return this.primaryAction;
    }

    public final boolean isVideo() {
        return this.isVideo;
    }
}
