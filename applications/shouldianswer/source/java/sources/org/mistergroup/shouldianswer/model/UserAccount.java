package org.mistergroup.shouldianswer.model;

import androidx.customview.p026a.AbstractC0610a;
import kotlin.p075c.AbstractC1641c;
import kotlin.p075c.p077b.p078a.AbstractC1632d;
import kotlin.p075c.p077b.p078a.AbstractC1634f;
import kotlin.p081e.p083b.C1694h;
import kotlin.p087i.C1747g;
import org.mistergroup.shouldianswer.utils.C3077ab;
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/model/UserAccount.class */
public final class UserAccount {

    /* renamed from: a */
    public static final UserAccount f6828a = new UserAccount();

    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/model/UserAccount$EAccessDenied.class */
    public static final class EAccessDenied extends Exception {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public EAccessDenied(String str) {
            super(str);
            C1694h.m3117b(str, "text");
        }
    }

    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/model/UserAccount$EUser.class */
    public static final class EUser extends Exception {
    }

    @AbstractC1634f(m3162b = "UserAccount.kt", m3161c = {41, 52, 59}, m3160d = "connectAccount", m3159e = "org.mistergroup.shouldianswer.model.UserAccount")
    /* renamed from: org.mistergroup.shouldianswer.model.UserAccount$a */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/model/UserAccount$a.class */
    public static final class C2377a extends AbstractC1632d {

        /* renamed from: a */
        /* synthetic */ Object f6829a;

        /* renamed from: b */
        int f6830b;

        /* renamed from: d */
        Object f6832d;

        /* renamed from: e */
        Object f6833e;

        /* renamed from: f */
        Object f6834f;

        /* renamed from: g */
        Object f6835g;

        /* renamed from: h */
        Object f6836h;

        /* renamed from: i */
        Object f6837i;

        /* renamed from: j */
        Object f6838j;

        /* renamed from: k */
        Object f6839k;

        /* renamed from: l */
        Object f6840l;

        /* renamed from: m */
        Object f6841m;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C2377a(AbstractC1641c abstractC1641c) {
            super(abstractC1641c);
            UserAccount.this = r4;
        }

        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: b */
        public final Object mo42b(Object obj) {
            this.f6829a = obj;
            this.f6830b |= AbstractC0610a.INVALID_ID;
            return UserAccount.this.m1387a(null, null, null, null, this);
        }
    }

    private UserAccount() {
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0054  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0188  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x02df  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0402  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m1387a(java.lang.String r7, java.lang.String r8, java.lang.String r9, java.lang.String r10, kotlin.p075c.AbstractC1641c<? super kotlin.C1775o> r11) {
        /*
            Method dump skipped, instructions count: 1167
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mistergroup.shouldianswer.model.UserAccount.m1387a(java.lang.String, java.lang.String, java.lang.String, java.lang.String, kotlin.c.c):java.lang.Object");
    }

    /* renamed from: a */
    public final String m1389a() {
        return "us" + C3077ab.f8980a.m221a() + "er";
    }

    /* renamed from: a */
    public final boolean m1388a(String str) {
        C1694h.m3117b(str, "value");
        return C1747g.m3033b(str, "us", false, 2, (Object) null) && C1747g.m3031c(str, "er", false, 2, null) && str.length() >= 25;
    }
}
