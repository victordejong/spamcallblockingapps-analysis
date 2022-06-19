package com.callapp.contacts.model.objectbox;

import com.callapp.contacts.util.Activities;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
/* JADX WARN: Init of enum CALLAPP_PLUS can be incorrect */
/* JADX WARN: Init of enum CALL_LOG_CONTACT_LIST can be incorrect */
/* JADX WARN: Init of enum INSIGHTS can be incorrect */
/* JADX WARN: Init of enum MISSED_CALL_NOT_ANSWERED can be incorrect */
/* JADX WARN: Init of enum SEARCH can be incorrect */
/* JADX WARN: Init of enum SMS can be incorrect */
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n��\n\u0002\u0010\b\n��\n\u0002\u0010\u000e\n\u0002\b\r\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\u0017\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\u000b\u001a\u00020\u0005H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n��\u001a\u0004\b\t\u0010\nj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011¨\u0006\u0012"}, m4298d2 = {"Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;", "", "value", "", "view", "", "(Ljava/lang/String;IILjava/lang/String;)V", "getValue", "()I", "getView", "()Ljava/lang/String;", "toString", "CALL_LOG_CONTACT_LIST", "MISSED_CALL_NOT_ANSWERED", "SEARCH", "CALLAPP_PLUS", "INSIGHTS", "SMS", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/ENTRYPOINT.class */
public enum ENTRYPOINT {
    CALL_LOG_CONTACT_LIST(0, r0),
    MISSED_CALL_NOT_ANSWERED(1, r0),
    SEARCH(2, r0),
    CALLAPP_PLUS(3, r0),
    INSIGHTS(4, r0),
    SMS(5, r0);
    
    private final int value;
    private final String view;

    static {
        C18524p.m3843b(Activities.getString(2131888213), "Activities.getString(R.s…ew_call_log_contact_list)");
        C18524p.m3843b(Activities.getString(2131888217), "Activities.getString(R.s…view_missed_not_answered)");
        C18524p.m3843b(Activities.getString(2131888226), "Activities.getString(R.string.who_view_search)");
        C18524p.m3843b(Activities.getString(2131888214), "Activities.getString(R.s…ng.who_view_callapp_plus)");
        C18524p.m3843b(Activities.getString(2131888216), "Activities.getString(R.string.who_view_insights)");
        C18524p.m3843b(Activities.getString(2131888227), "Activities.getString(R.string.who_view_sms)");
    }

    ENTRYPOINT(int i, String str) {
        this.value = i;
        this.view = str;
    }

    public final int getValue() {
        return this.value;
    }

    public final String getView() {
        return this.view;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return "ENTRYPOINT(value=" + this.value + ", view='" + this.view + "')";
    }
}
