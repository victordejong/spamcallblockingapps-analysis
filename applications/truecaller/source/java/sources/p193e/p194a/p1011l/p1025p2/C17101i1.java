package p193e.p194a.p1011l.p1025p2;

import android.content.Context;
import com.razorpay.AnalyticsConstants;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1011l.AbstractC16832c2;
import p193e.p194a.p1011l.C16873f;
import p193e.p194a.p1011l.p1012a.C16576g;
import p193e.p194a.p1011l.p1012a.C16590l0;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.l.p2.i1 */
/* loaded from: classes12-dex2jar.jar:e/a/l/p2/i1.class */
public final class C17101i1 {

    /* renamed from: a */
    public final Context f48003a;

    /* renamed from: b */
    public final AbstractC17140o0 f48004b;

    /* renamed from: c */
    public final C16873f f48005c;

    /* renamed from: d */
    public final C16576g f48006d;

    /* renamed from: e */
    public final C17062e0 f48007e;

    /* renamed from: f */
    public final C17139o f48008f;

    /* renamed from: g */
    public final AbstractC16832c2 f48009g;

    /* renamed from: h */
    public final C16590l0 f48010h;

    /* renamed from: i */
    public final f f48011i;

    /* renamed from: e.a.l.p2.i1$a */
    /* loaded from: classes12-dex2jar.jar:e/a/l/p2/i1$a.class */
    public static abstract class AbstractC17102a {

        /* renamed from: e.a.l.p2.i1$a$a */
        /* loaded from: classes12-dex2jar.jar:e/a/l/p2/i1$a$a.class */
        public static final class C17103a extends AbstractC17102a {

            /* renamed from: a */
            public static final C17103a f48012a = new C17103a();

            public C17103a() {
                super(null);
            }
        }

        /* renamed from: e.a.l.p2.i1$a$b */
        /* loaded from: classes12-dex2jar.jar:e/a/l/p2/i1$a$b.class */
        public static final class C17104b extends AbstractC17102a {

            /* renamed from: a */
            public final C17098h1 f48013a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C17104b(C17098h1 c17098h1) {
                super(null);
                l.e(c17098h1, "theme");
                this.f48013a = c17098h1;
            }

            public boolean equals(Object obj) {
                if (this != obj) {
                    return (obj instanceof C17104b) && l.a(this.f48013a, ((C17104b) obj).f48013a);
                }
                return true;
            }

            public int hashCode() {
                C17098h1 c17098h1 = this.f48013a;
                return c17098h1 != null ? c17098h1.hashCode() : 0;
            }

            public String toString() {
                StringBuilder m8728C = C22128a.m8728C("Success(theme=");
                m8728C.append(this.f48013a);
                m8728C.append(")");
                return m8728C.toString();
            }
        }

        /* renamed from: e.a.l.p2.i1$a$c */
        /* loaded from: classes12-dex2jar.jar:e/a/l/p2/i1$a$c.class */
        public static final class C17105c extends AbstractC17102a {

            /* renamed from: a */
            public static final C17105c f48014a = new C17105c();

            public C17105c() {
                super(null);
            }
        }

        public AbstractC17102a() {
        }

        public AbstractC17102a(s1.z.c.f fVar) {
        }
    }

    @e(c = "com.truecaller.premium.data.PremiumThemeFetcher$fetchTheme$2", f = "PremiumThemeFetcher.kt", l = {38}, m = "invokeSuspend")
    /* renamed from: e.a.l.p2.i1$b */
    /* loaded from: classes12-dex2jar.jar:e/a/l/p2/i1$b.class */
    public static final class C17106b extends i implements p<i0, d<? super AbstractC17102a>, Object> {

        /* renamed from: e */
        public int f48015e;

        /* renamed from: g */
        public final /* synthetic */ Boolean f48017g;

        /* renamed from: h */
        public final /* synthetic */ Boolean f48018h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C17106b(Boolean bool, Boolean bool2, d dVar) {
            super(2, dVar);
            C17101i1.this = r5;
            this.f48017g = bool;
            this.f48018h = bool2;
        }

        /* renamed from: i */
        public final d<s> m16531i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C17106b(this.f48017g, this.f48018h, dVar);
        }

        /* renamed from: k */
        public final Object m16530k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C17106b(this.f48017g, this.f48018h, dVar).m16529s(s.a);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:101:0x02cb  */
        /* JADX WARN: Removed duplicated region for block: B:130:0x040c  */
        /* JADX WARN: Removed duplicated region for block: B:133:0x042c  */
        /* JADX WARN: Removed duplicated region for block: B:135:0x0451  */
        /* JADX WARN: Removed duplicated region for block: B:51:0x0172  */
        /* JADX WARN: Removed duplicated region for block: B:98:0x02c1  */
        /* JADX WARN: Type inference failed for: r0v78, types: [com.google.common.collect.ImmutableList, com.google.common.collect.ImmutableCollection] */
        /* renamed from: s */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object m16529s(java.lang.Object r13) {
            /*
                Method dump skipped, instructions count: 1135
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1011l.p1025p2.C17101i1.C17106b.m16529s(java.lang.Object):java.lang.Object");
        }
    }

    @Inject
    public C17101i1(Context context, AbstractC17140o0 abstractC17140o0, C16873f c16873f, C16576g c16576g, C17062e0 c17062e0, C17139o c17139o, AbstractC16832c2 abstractC16832c2, C16590l0 c16590l0, @Named("IO") f fVar) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(abstractC17140o0, "premiumProductsRepository");
        l.e(c16873f, "premiumFeaturesListHelper");
        l.e(c16576g, "debugSubscriptionResultWrapper");
        l.e(c17062e0, "premiumExpireDateFormatter");
        l.e(c17139o, "goldCallerIdPreviewDataFactory");
        l.e(abstractC16832c2, "premiumSettings");
        l.e(c16590l0, "welcomeOfferUtils");
        l.e(fVar, "asyncContext");
        this.f48003a = context;
        this.f48004b = abstractC17140o0;
        this.f48005c = c16873f;
        this.f48006d = c16576g;
        this.f48007e = c17062e0;
        this.f48008f = c17139o;
        this.f48009g = abstractC16832c2;
        this.f48010h = c16590l0;
        this.f48011i = fVar;
    }

    /* renamed from: b */
    public static /* synthetic */ Object m16532b(C17101i1 c17101i1, Boolean bool, Boolean bool2, d dVar, int i) {
        if ((i & 1) != 0) {
            bool = null;
        }
        if ((i & 2) != 0) {
            bool2 = null;
        }
        return c17101i1.m16533a(bool, bool2, dVar);
    }

    /* renamed from: a */
    public final Object m16533a(Boolean bool, Boolean bool2, d<? super AbstractC17102a> dVar) {
        return s1.a.a.a.v0.f.d.a4(this.f48011i, new C17106b(bool, bool2, null), dVar);
    }
}
