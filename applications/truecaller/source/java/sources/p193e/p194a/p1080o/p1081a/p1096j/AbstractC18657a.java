package p193e.p194a.p1080o.p1081a.p1096j;

import com.razorpay.AnalyticsConstants;
import com.truecaller.contextcall.p160ui.truecontext.CallContextSource;
import com.truecaller.data.entity.Contact;
import com.truecaller.data.entity.HistoryEvent;
import p193e.p194a.p1064m5.C18239b;
import s1.z.c.f;
import s1.z.c.l;
/* renamed from: e.a.o.a.j.a */
/* loaded from: classes8-dex2jar.jar:e/a/o/a/j/a.class */
public abstract class AbstractC18657a {

    /* renamed from: a */
    public final boolean f52479a;

    /* renamed from: b */
    public final String f52480b;

    /* renamed from: e.a.o.a.j.a$a */
    /* loaded from: classes8-dex2jar.jar:e/a/o/a/j/a$a.class */
    public static final class C18658a extends AbstractC18657a {

        /* renamed from: c */
        public final HistoryEvent f52481c;

        /* renamed from: d */
        public final boolean f52482d;

        /* renamed from: e */
        public final C18239b f52483e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18658a(HistoryEvent historyEvent, boolean z, C18239b c18239b, boolean z2, String str) {
            super(CallContextSource.AFTER_CALL, z2, str, null);
            l.e(historyEvent, "historyEvent");
            l.e(str, "analyticsContext");
            this.f52481c = historyEvent;
            this.f52482d = z;
            this.f52483e = c18239b;
        }
    }

    /* renamed from: e.a.o.a.j.a$b */
    /* loaded from: classes8-dex2jar.jar:e/a/o/a/j/a$b.class */
    public static final class C18659b extends AbstractC18657a {

        /* renamed from: c */
        public final Contact f52484c;

        /* renamed from: d */
        public final String f52485d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18659b(Contact contact, String str, boolean z, String str2) {
            super(CallContextSource.CALLER_ID, z, str2, null);
            l.e(contact, AnalyticsConstants.CONTACT);
            l.e(str2, "analyticsContext");
            this.f52484c = contact;
            this.f52485d = str;
        }
    }

    /* renamed from: e.a.o.a.j.a$c */
    /* loaded from: classes8-dex2jar.jar:e/a/o/a/j/a$c.class */
    public static final class C18660c extends AbstractC18657a {

        /* renamed from: c */
        public final Contact f52486c;

        /* renamed from: d */
        public final String f52487d;

        /* renamed from: e */
        public final boolean f52488e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18660c(Contact contact, String str, boolean z, boolean z2, String str2) {
            super(CallContextSource.IN_CALL_UI, z2, str2, null);
            l.e(contact, AnalyticsConstants.CONTACT);
            l.e(str2, "analyticsContext");
            this.f52486c = contact;
            this.f52487d = str;
            this.f52488e = z;
        }
    }

    public AbstractC18657a(CallContextSource callContextSource, boolean z, String str, f fVar) {
        this.f52479a = z;
        this.f52480b = str;
    }
}
