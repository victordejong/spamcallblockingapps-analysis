package com.truecaller.voip.contacts.p188ui.items.contacts;

import kotlin.Metadata;
import s1.z.c.f;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\u000e\b\u0086\u0001\u0018�� \t2\b\u0012\u0004\u0012\u00020��0\u0001:\u0001\nB\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\bR\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000f¨\u0006\u0010"}, d2 = {"Lcom/truecaller/voip/contacts/ui/items/contacts/VoipActionType;", "", "", "eventAction", "Ljava/lang/String;", "getEventAction", "()Ljava/lang/String;", "<init>", "(Ljava/lang/String;ILjava/lang/String;)V", "Companion", "a", "VOIP_ADD_TO_GROUP", "VOIP_REMOVE_FROM_GROUP", "VOIP_CALL", "VOIP_VIEW_PROFILE", "VOIP_ITEM_CLICK", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.voip.contacts.ui.items.contacts.VoipActionType */
/* loaded from: classes15-dex2jar.jar:com/truecaller/voip/contacts/ui/items/contacts/VoipActionType.class */
public enum VoipActionType {
    VOIP_ADD_TO_GROUP("ItemEvent.ACTION_VOIP_ADD_TO_GROUP"),
    VOIP_REMOVE_FROM_GROUP("ItemEvent.VOIP_REMOVE_FROM_GROUP"),
    VOIP_CALL("ItemEvent.ACTION_VOIP_CALL"),
    VOIP_VIEW_PROFILE("ItemEvent.ACTION_VOIP_VIEW_PROFILE"),
    VOIP_ITEM_CLICK("ItemEvent.ACTION_VOIP_ITEM_CLICK");
    
    public static final C4809a Companion = new C4809a(null);
    private final String eventAction;

    /* renamed from: com.truecaller.voip.contacts.ui.items.contacts.VoipActionType$a */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/voip/contacts/ui/items/contacts/VoipActionType$a.class */
    public static final class C4809a {
        public C4809a(f fVar) {
        }
    }

    VoipActionType(String str) {
        this.eventAction = str;
    }

    public final String getEventAction() {
        return this.eventAction;
    }
}
