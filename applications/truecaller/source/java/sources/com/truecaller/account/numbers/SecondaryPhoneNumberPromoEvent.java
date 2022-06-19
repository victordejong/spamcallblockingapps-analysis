package com.truecaller.account.numbers;

import android.os.Bundle;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1146q2.AbstractC19549v;
import p193e.p194a.p1146q2.AbstractC19580x;
import s1.z.c.l;
/* loaded from: classes4-dex2jar.jar:com/truecaller/account/numbers/SecondaryPhoneNumberPromoEvent.class */
public final class SecondaryPhoneNumberPromoEvent implements AbstractC19549v {

    /* renamed from: a */
    public final Action f9607a;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\n\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\bR\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\tj\u0002\b\nj\u0002\b\u000b¨\u0006\f"}, d2 = {"Lcom/truecaller/account/numbers/SecondaryPhoneNumberPromoEvent$Action;", "", "", "value", "Ljava/lang/String;", "getValue", "()Ljava/lang/String;", "<init>", "(Ljava/lang/String;ILjava/lang/String;)V", "ACTION_SHOWN", "ACTION_ADD_NOW", "ACTION_DISMISS", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes4-dex2jar.jar:com/truecaller/account/numbers/SecondaryPhoneNumberPromoEvent$Action.class */
    public enum Action {
        ACTION_SHOWN("Shown"),
        ACTION_ADD_NOW("AddNow"),
        ACTION_DISMISS("Dismiss");
        
        private final String value;

        Action(String str) {
            this.value = str;
        }

        public final String getValue() {
            return this.value;
        }
    }

    public SecondaryPhoneNumberPromoEvent(Action action) {
        l.e(action, "action");
        this.f9607a = action;
    }

    @Override // p193e.p194a.p1146q2.AbstractC19549v
    /* renamed from: a */
    public AbstractC19580x mo9106a() {
        Bundle bundle = new Bundle();
        bundle.putString("Action", this.f9607a.getValue());
        return new AbstractC19580x.C19582b("SecondaryPhoneNumberPromo", bundle);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            return (obj instanceof SecondaryPhoneNumberPromoEvent) && l.a(this.f9607a, ((SecondaryPhoneNumberPromoEvent) obj).f9607a);
        }
        return true;
    }

    public int hashCode() {
        Action action = this.f9607a;
        return action != null ? action.hashCode() : 0;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("SecondaryPhoneNumberPromoEvent(action=");
        m8728C.append(this.f9607a);
        m8728C.append(")");
        return m8728C.toString();
    }
}
