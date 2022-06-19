package com.truecaller.calling;

import kotlin.Metadata;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\u0011\b\u0086\u0001\u0018�� \t2\b\u0012\u0004\u0012\u00020��0\u0001:\u0001\nB\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\bR\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012¨\u0006\u0013"}, d2 = {"Lcom/truecaller/calling/ActionType;", "", "", "eventAction", "Ljava/lang/String;", "getEventAction", "()Ljava/lang/String;", "<init>", "(Ljava/lang/String;ILjava/lang/String;)V", "Companion", "a", "SMS", "FLASH", "PROFILE", "CELLULAR_CALL", "CELLULAR_VIDEO_CALL", "WHATSAPP_CALL", "WHATSAPP_VIDEO_CALL", "VOIP_CALL", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes2-dex2jar.jar:com/truecaller/calling/ActionType.class */
public enum ActionType {
    SMS("ItemEvent.ACTION_SMS"),
    FLASH("ItemEvent.ACTION_FLASH"),
    PROFILE("ItemEvent.ACTION_OPEN_PROFILE"),
    CELLULAR_CALL("ItemEvent.ACTION_CELLULAR_CALL"),
    CELLULAR_VIDEO_CALL("ItemEvent.ACTION_CELLULAR_VIDEO_CALL"),
    WHATSAPP_CALL("ItemEvent.ACTION_WHATSAPP_CALL"),
    WHATSAPP_VIDEO_CALL("ItemEvent.ACTION_WHATSAPP_VIDEO_CALL"),
    VOIP_CALL("ItemEvent.ACTION_VOIP_CALL");
    
    public static final C3611a Companion = new Object(null) { // from class: com.truecaller.calling.ActionType.a
        /* renamed from: a */
        public final ActionType m35761a(String str) {
            ActionType actionType;
            l.e(str, "action");
            ActionType[] values = ActionType.values();
            int i = 0;
            while (true) {
                if (i >= 8) {
                    actionType = null;
                    break;
                }
                ActionType actionType2 = values[i];
                if (l.a(actionType2.getEventAction(), str)) {
                    actionType = actionType2;
                    break;
                }
                i++;
            }
            return actionType;
        }
    };
    private final String eventAction;

    ActionType(String str) {
        this.eventAction = str;
    }

    public final String getEventAction() {
        return this.eventAction;
    }
}
