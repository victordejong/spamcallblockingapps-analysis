package p193e.p194a.p294b.p344j;

import com.razorpay.AnalyticsConstants;
import com.truecaller.data.entity.Contact;
import com.truecaller.searchwarnings.data.analytics.BusinessCallReasonContext;
import s1.z.c.f;
import s1.z.c.l;
/* renamed from: e.a.b.j.a */
/* loaded from: classes6-dex2jar.jar:e/a/b/j/a.class */
public abstract class AbstractC7946a {

    /* renamed from: a */
    public final BusinessCallReasonContext f24589a;

    /* renamed from: b */
    public final Contact f24590b;

    /* renamed from: c */
    public final boolean f24591c;

    /* renamed from: d */
    public final boolean f24592d;

    /* renamed from: e.a.b.j.a$a */
    /* loaded from: classes6-dex2jar.jar:e/a/b/j/a$a.class */
    public static final class C7947a extends AbstractC7946a {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C7947a(Contact contact, boolean z) {
            super(BusinessCallReasonContext.AFTER_CALL, contact, z, false, 8);
            l.e(contact, AnalyticsConstants.CONTACT);
        }
    }

    /* renamed from: e.a.b.j.a$b */
    /* loaded from: classes6-dex2jar.jar:e/a/b/j/a$b.class */
    public static final class C7948b extends AbstractC7946a {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C7948b(Contact contact, boolean z) {
            super(BusinessCallReasonContext.AFTER_CALL, contact, z, true, (f) null);
            l.e(contact, AnalyticsConstants.CONTACT);
        }
    }

    /* renamed from: e.a.b.j.a$c */
    /* loaded from: classes6-dex2jar.jar:e/a/b/j/a$c.class */
    public static final class C7949c extends AbstractC7946a {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C7949c(Contact contact) {
            super(BusinessCallReasonContext.CALLER_ID, contact, false, false, 4);
            l.e(contact, AnalyticsConstants.CONTACT);
        }
    }

    /* renamed from: e.a.b.j.a$d */
    /* loaded from: classes6-dex2jar.jar:e/a/b/j/a$d.class */
    public static final class C7950d extends AbstractC7946a {

        /* renamed from: e */
        public final boolean f24593e;

        /* renamed from: f */
        public final boolean f24594f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C7950d(Contact contact, boolean z, boolean z2) {
            super(BusinessCallReasonContext.IN_CALL_UI, contact, false, false, 12);
            l.e(contact, AnalyticsConstants.CONTACT);
            this.f24593e = z;
            this.f24594f = z2;
        }
    }

    public AbstractC7946a(BusinessCallReasonContext businessCallReasonContext, Contact contact, boolean z, boolean z2, int i) {
        z = (i & 4) != 0 ? true : z;
        z2 = (i & 8) != 0 ? true : z2;
        this.f24589a = businessCallReasonContext;
        this.f24590b = contact;
        this.f24591c = z;
        this.f24592d = z2;
    }

    public AbstractC7946a(BusinessCallReasonContext businessCallReasonContext, Contact contact, boolean z, boolean z2, f fVar) {
        this.f24589a = businessCallReasonContext;
        this.f24590b = contact;
        this.f24591c = z;
        this.f24592d = z2;
    }
}
