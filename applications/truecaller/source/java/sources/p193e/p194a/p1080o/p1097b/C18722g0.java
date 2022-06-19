package p193e.p194a.p1080o.p1097b;

import javax.inject.Inject;
import javax.inject.Named;
import javax.inject.Provider;
import o3.a;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1080o.AbstractC18769f;
import p193e.p194a.p1080o.C18771h;
import p193e.p194a.p1129p5.AbstractC19222c;
import p193e.p194a.p1129p5.AbstractC19243l;
import p193e.p194a.p703e3.AbstractC13348a;
import s1.w.d;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.z.c.l;
/* renamed from: e.a.o.b.g0 */
/* loaded from: classes8-dex2jar.jar:e/a/o/b/g0.class */
public final class C18722g0 implements AbstractC18711f0 {

    /* renamed from: a */
    public final AbstractC18746o f52626a;

    /* renamed from: b */
    public final a<AbstractC19243l> f52627b;

    /* renamed from: c */
    public final AbstractC19222c f52628c;

    /* renamed from: d */
    public final AbstractC18710f f52629d;

    /* renamed from: e */
    public final AbstractC18741l0 f52630e;

    /* renamed from: f */
    public final AbstractC18769f f52631f;

    /* renamed from: g */
    public final Provider<Long> f52632g;

    /* renamed from: e.a.o.b.g0$a */
    /* loaded from: classes8-dex2jar.jar:e/a/o/b/g0$a.class */
    public static final class C18723a {

        /* renamed from: a */
        public final String f52633a;

        /* renamed from: b */
        public final long f52634b;

        public C18723a(String str, long j) {
            l.e(str, "normalizedNumber");
            this.f52633a = str;
            this.f52634b = j;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof C18723a)) {
                    return false;
                }
                C18723a c18723a = (C18723a) obj;
                return l.a(this.f52633a, c18723a.f52633a) && this.f52634b == c18723a.f52634b;
            }
            return true;
        }

        public int hashCode() {
            String str = this.f52633a;
            return ((str != null ? str.hashCode() : 0) * 31) + C4876d.m34274a(this.f52634b);
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("CallInitiatedInfo(normalizedNumber=");
            m8728C.append(this.f52633a);
            m8728C.append(", calledAtTimeStampMS=");
            return C22128a.m8693K2(m8728C, this.f52634b, ")");
        }
    }

    @e(c = "com.truecaller.contextcall.utils.MidCallReasonManagerImpl", f = "MidCallReasonManager.kt", l = {59, 78}, m = "setShouldShowCallReasonMidCall")
    /* renamed from: e.a.o.b.g0$b */
    /* loaded from: classes8-dex2jar.jar:e/a/o/b/g0$b.class */
    public static final class C18724b extends c {

        /* renamed from: d */
        public /* synthetic */ Object f52635d;

        /* renamed from: e */
        public int f52636e;

        /* renamed from: g */
        public Object f52638g;

        /* renamed from: h */
        public Object f52639h;

        /* renamed from: i */
        public Object f52640i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18724b(d dVar) {
            super(dVar);
            C18722g0.this = r4;
        }

        /* renamed from: s */
        public final Object m14579s(Object obj) {
            this.f52635d = obj;
            this.f52636e |= Integer.MIN_VALUE;
            return C18722g0.this.m14583c(null, null, this);
        }
    }

    @e(c = "com.truecaller.contextcall.utils.MidCallReasonManagerImpl", f = "MidCallReasonManager.kt", l = {95}, m = "shouldShowCallReasonMidCall")
    /* renamed from: e.a.o.b.g0$c */
    /* loaded from: classes8-dex2jar.jar:e/a/o/b/g0$c.class */
    public static final class C18725c extends c {

        /* renamed from: d */
        public /* synthetic */ Object f52641d;

        /* renamed from: e */
        public int f52642e;

        /* renamed from: g */
        public Object f52644g;

        /* renamed from: h */
        public Object f52645h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18725c(d dVar) {
            super(dVar);
            C18722g0.this = r4;
        }

        /* renamed from: s */
        public final Object m14578s(Object obj) {
            this.f52641d = obj;
            this.f52642e |= Integer.MIN_VALUE;
            return C18722g0.this.m14582d(null, this);
        }
    }

    @Inject
    public C18722g0(AbstractC18746o abstractC18746o, a<AbstractC19243l> aVar, AbstractC19222c abstractC19222c, AbstractC18710f abstractC18710f, AbstractC18741l0 abstractC18741l0, AbstractC18769f abstractC18769f, @Named("callReasonPickerSecondCallInterval") Provider<Long> provider) {
        l.e(abstractC18746o, "contextCallSettings");
        l.e(aVar, "gson");
        l.e(abstractC19222c, "clock");
        l.e(abstractC18710f, "availabilityManager");
        l.e(abstractC18741l0, "outgoingMessageHandler");
        l.e(abstractC18769f, "contextCallSupport");
        l.e(provider, "secondCallIntervalConfigInMin");
        this.f52626a = abstractC18746o;
        this.f52627b = aVar;
        this.f52628c = abstractC19222c;
        this.f52629d = abstractC18710f;
        this.f52630e = abstractC18741l0;
        this.f52631f = abstractC18769f;
        this.f52632g = provider;
    }

    /* renamed from: a */
    public final boolean m14585a(Integer num) {
        boolean z;
        if (num == null || num.intValue() == -1) {
            z = true;
        } else {
            z = ((AbstractC13348a) ((C18771h) this.f52631f).f52735b.getValue()).mo21891b(num.intValue());
        }
        return z;
    }

    /* renamed from: b */
    public void m14584b() {
        AbstractC18746o abstractC18746o = this.f52626a;
        abstractC18746o.remove("shouldShowCallReasonOnMidCall");
        abstractC18746o.remove("callInitiatedInfo");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0054  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x00b3  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00ff  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0106  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x01c9  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x01d6  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x01f0  */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object m14583c(java.lang.String r7, com.truecaller.contextcall.utils.SecondCallContext.Context r8, s1.w.d<? super s1.s> r9) {
        /*
            Method dump skipped, instructions count: 593
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1080o.p1097b.C18722g0.m14583c(java.lang.String, com.truecaller.contextcall.utils.SecondCallContext$Context, s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x00e9, code lost:
        if (r9.m14585a(r7.mo35582b()) != false) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x010c, code lost:
        if (r9.m14585a(r7.mo35582b()) != false) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x010f, code lost:
        r10 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x011a, code lost:
        if (r10 == false) goto L48;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0075  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00c9  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00ef  */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object m14582d(com.truecaller.contextcall.utils.SecondCallContext r7, s1.w.d<? super java.lang.Boolean> r8) {
        /*
            Method dump skipped, instructions count: 305
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1080o.p1097b.C18722g0.m14582d(com.truecaller.contextcall.utils.SecondCallContext, s1.w.d):java.lang.Object");
    }

    /* renamed from: e */
    public final void m14581e(String str) {
        this.f52626a.putString("callInitiatedInfo", ((AbstractC19243l) this.f52627b.get()).mo13751a(new C18723a(str, this.f52628c.mo13819c())));
    }

    /* renamed from: f */
    public final void m14580f(boolean z) {
        this.f52626a.putBoolean("shouldShowCallReasonOnMidCall", z);
    }
}
