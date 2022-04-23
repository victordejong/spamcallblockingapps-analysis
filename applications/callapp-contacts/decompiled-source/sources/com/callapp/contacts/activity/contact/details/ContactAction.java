package com.callapp.contacts.activity.contact.details;

import com.callapp.contacts.manager.Singletons;
import com.callapp.contacts.util.Activities;
import kotlin.Metadata;
import kotlin.jvm.internal.p;
/* JADX WARN: Init of enum ALLO can be incorrect */
/* JADX WARN: Init of enum DUO can be incorrect */
/* JADX WARN: Init of enum HANGOUTS can be incorrect */
/* JADX WARN: Init of enum SIGNAL can be incorrect */
/* JADX WARN: Init of enum SKYPE can be incorrect */
/* JADX WARN: Init of enum TELEGRAM can be incorrect */
/* JADX WARN: Init of enum VIBER can be incorrect */
/* JADX WARN: Init of enum WECHAT can be incorrect */
/* JADX WARN: Init of enum WHATSAPP can be incorrect */
@Metadata(bv = {1, 0, 3}, d1 = {"��$\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010\b\n��\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\b\u001e\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B)\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\b\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\u0002\u0010\nR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n��\u001a\u0004\b\u0006\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n��\u001a\u0004\b\f\u0010\rR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\u000e\u0010\u000fR\u0013\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\b\n��\u001a\u0004\b\u0010\u0010\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015j\u0002\b\u0016j\u0002\b\u0017j\u0002\b\u0018j\u0002\b\u0019j\u0002\b\u001aj\u0002\b\u001bj\u0002\b\u001cj\u0002\b\u001dj\u0002\b\u001ej\u0002\b\u001fj\u0002\b j\u0002\b!j\u0002\b\"j\u0002\b#j\u0002\b$j\u0002\b%j\u0002\b&¨\u0006'"}, d2 = {"Lcom/callapp/contacts/activity/contact/details/ContactAction;", "", "nameString", "", "largeIcon", "", "isIM", "", "type", "Lcom/callapp/contacts/manager/Singletons$SenderType;", "(Ljava/lang/String;ILjava/lang/String;IZLcom/callapp/contacts/manager/Singletons$SenderType;)V", "()Z", "getLargeIcon", "()I", "getNameString", "()Ljava/lang/String;", "getType", "()Lcom/callapp/contacts/manager/Singletons$SenderType;", "UNKNOWN", "WHATSAPP", "TELEGRAM", "DUO", "VIBER", "SIGNAL", "ALLO", "HANGOUTS", "WECHAT", "SKYPE", "SMS_MESSAGE", "PVR", "NOTE", "INCOGNITO", "UN_INCOGNITO", "ADD_CONTACT", "BLOCK", "UN_BLOCK", "SPAM", "UN_SPAM", "REFER_AND_EARN", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/details/ContactAction.class */
public enum ContactAction {
    UNKNOWN("", -1, false, null),
    WHATSAPP(r0, 2131231671, true, Singletons.SenderType.WHATSAPP),
    TELEGRAM(r0, 2131231821, true, Singletons.SenderType.TELEGRAM),
    DUO(r0, 2131231816, true, Singletons.SenderType.DUO),
    VIBER(r0, 2131231822, true, Singletons.SenderType.VIBER),
    SIGNAL(r0, 2131231819, true, Singletons.SenderType.SIGNAL),
    ALLO(r0, 2131231814, true, Singletons.SenderType.ALLO),
    HANGOUTS(r0, 2131231818, true, Singletons.SenderType.GOOGLE_PLUS_HANGOUT),
    WECHAT(r0, 2131231823, true, Singletons.SenderType.WE_CHAT),
    SKYPE(r0, 2131231820, true, Singletons.SenderType.SKYPE),
    SMS_MESSAGE("", 2131231667, false, Singletons.SenderType.SMS),
    PVR("", 2131231666, false, null),
    NOTE("", 2131231665, false, null),
    INCOGNITO("", 2131231663, false, null),
    UN_INCOGNITO("", 2131231670, false, null),
    ADD_CONTACT("", 2131231661, false, null),
    BLOCK("", 2131231668, false, null),
    UN_BLOCK("", 2131231669, false, null),
    SPAM("", 2131231815, false, null),
    UN_SPAM("", 2131231669, false, null),
    REFER_AND_EARN("", 2131231664, false, null);
    
    private final boolean isIM;
    private final int largeIcon;
    private final String nameString;
    private final Singletons.SenderType type;

    static {
        p.b(Activities.getString(2131886997), "Activities.getString(R.s…s_dialog_filter_whatsapp)");
        p.b(Activities.getString(2131886992), "Activities.getString(R.s…s_dialog_filter_telegram)");
        p.b(Activities.getString(2131886986), "Activities.getString(R.s…ntacts_dialog_filter_duo)");
        p.b(Activities.getString(2131886994), "Activities.getString(R.s…acts_dialog_filter_viber)");
        p.b(Activities.getString(2131886989), "Activities.getString(R.s…cts_dialog_filter_signal)");
        p.b(Activities.getString(2131886983), "Activities.getString(R.s…tacts_dialog_filter_allo)");
        p.b(Activities.getString(2131886987), "Activities.getString(R.s…s_dialog_filter_hangouts)");
        p.b(Activities.getString(2131886996), "Activities.getString(R.s…cts_dialog_filter_wechat)");
        p.b(Activities.getString(2131886990), "Activities.getString(R.s…acts_dialog_filter_skype)");
    }

    ContactAction(String str, int i, boolean z, Singletons.SenderType senderType) {
        this.nameString = str;
        this.largeIcon = i;
        this.isIM = z;
        this.type = senderType;
    }

    public final int getLargeIcon() {
        return this.largeIcon;
    }

    public final String getNameString() {
        return this.nameString;
    }

    public final Singletons.SenderType getType() {
        return this.type;
    }

    public final boolean isIM() {
        return this.isIM;
    }
}
