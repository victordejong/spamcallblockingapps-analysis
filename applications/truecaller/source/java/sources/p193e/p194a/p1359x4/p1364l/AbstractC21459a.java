package p193e.p194a.p1359x4.p1364l;

import com.razorpay.AnalyticsConstants;
import com.truecaller.data.entity.Contact;
import com.truecaller.searchwarnings.data.analytics.SearchWarningSource;
import p193e.p194a.p1064m5.C18239b;
import s1.z.c.f;
import s1.z.c.l;
/* renamed from: e.a.x4.l.a */
/* loaded from: classes13-dex2jar.jar:e/a/x4/l/a.class */
public abstract class AbstractC21459a {

    /* renamed from: a */
    public final SearchWarningSource f59945a;

    /* renamed from: b */
    public final Contact f59946b;

    /* renamed from: e.a.x4.l.a$a */
    /* loaded from: classes13-dex2jar.jar:e/a/x4/l/a$a.class */
    public static final class C21460a extends AbstractC21459a {

        /* renamed from: c */
        public final boolean f59947c;

        /* renamed from: d */
        public final C18239b f59948d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C21460a(Contact contact, boolean z, C18239b c18239b) {
            super(SearchWarningSource.AFTER_CALL, contact, null);
            l.e(contact, AnalyticsConstants.CONTACT);
            this.f59947c = z;
            this.f59948d = c18239b;
        }
    }

    /* renamed from: e.a.x4.l.a$b */
    /* loaded from: classes13-dex2jar.jar:e/a/x4/l/a$b.class */
    public static final class C21461b extends AbstractC21459a {

        /* renamed from: c */
        public final boolean f59949c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C21461b(Contact contact, boolean z) {
            super(SearchWarningSource.CALLER_ID, contact, null);
            l.e(contact, AnalyticsConstants.CONTACT);
            this.f59949c = z;
        }
    }

    /* renamed from: e.a.x4.l.a$c */
    /* loaded from: classes13-dex2jar.jar:e/a/x4/l/a$c.class */
    public static final class C21462c extends AbstractC21459a {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C21462c(Contact contact) {
            super(SearchWarningSource.DETAILS_VIEW, contact, null);
            l.e(contact, AnalyticsConstants.CONTACT);
        }
    }

    /* renamed from: e.a.x4.l.a$d */
    /* loaded from: classes13-dex2jar.jar:e/a/x4/l/a$d.class */
    public static final class C21463d extends AbstractC21459a {

        /* renamed from: c */
        public final boolean f59950c;

        /* renamed from: d */
        public final boolean f59951d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C21463d(Contact contact, boolean z, boolean z2) {
            super(SearchWarningSource.IN_CALL_UI, contact, null);
            l.e(contact, AnalyticsConstants.CONTACT);
            this.f59950c = z;
            this.f59951d = z2;
        }
    }

    public AbstractC21459a(SearchWarningSource searchWarningSource, Contact contact, f fVar) {
        this.f59945a = searchWarningSource;
        this.f59946b = contact;
    }
}
