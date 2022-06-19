package p193e.p194a.p1263t3.p1264c;

import com.razorpay.AnalyticsConstants;
import com.truecaller.featuretoggles.FeatureKey;
import s1.z.c.f;
import s1.z.c.l;
/* renamed from: e.a.t3.c.e */
/* loaded from: classes9-dex2jar.jar:e/a/t3/c/e.class */
public abstract class AbstractC20513e {

    /* renamed from: e.a.t3.c.e$a */
    /* loaded from: classes9-dex2jar.jar:e/a/t3/c/e$a.class */
    public static final class C20514a extends AbstractC20513e {

        /* renamed from: a */
        public final FeatureKey f57578a;

        /* renamed from: b */
        public final String f57579b;

        /* renamed from: c */
        public boolean f57580c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C20514a(long j, FeatureKey featureKey, String str, boolean z) {
            super(j, null);
            l.e(featureKey, AnalyticsConstants.KEY);
            l.e(str, "description");
            this.f57578a = featureKey;
            this.f57579b = str;
            this.f57580c = z;
        }
    }

    /* renamed from: e.a.t3.c.e$b */
    /* loaded from: classes9-dex2jar.jar:e/a/t3/c/e$b.class */
    public static final class C20515b extends AbstractC20513e {

        /* renamed from: a */
        public final FeatureKey f57581a;

        /* renamed from: b */
        public final String f57582b;

        /* renamed from: c */
        public boolean f57583c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C20515b(long j, FeatureKey featureKey, String str, boolean z) {
            super(j, null);
            l.e(featureKey, AnalyticsConstants.KEY);
            l.e(str, "description");
            this.f57581a = featureKey;
            this.f57582b = str;
            this.f57583c = z;
        }
    }

    /* renamed from: e.a.t3.c.e$c */
    /* loaded from: classes9-dex2jar.jar:e/a/t3/c/e$c.class */
    public static final class C20516c extends AbstractC20513e {

        /* renamed from: a */
        public final FeatureKey f57584a;

        /* renamed from: b */
        public final String f57585b;

        /* renamed from: c */
        public final String f57586c;

        /* renamed from: d */
        public final String f57587d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C20516c(long j, FeatureKey featureKey, String str, String str2, String str3) {
            super(j, null);
            l.e(featureKey, AnalyticsConstants.KEY);
            l.e(str, "description");
            l.e(str2, "firebaseString");
            l.e(str3, "firebaseFlavor");
            this.f57584a = featureKey;
            this.f57585b = str;
            this.f57586c = str2;
            this.f57587d = str3;
        }
    }

    /* renamed from: e.a.t3.c.e$d */
    /* loaded from: classes9-dex2jar.jar:e/a/t3/c/e$d.class */
    public static final class C20517d extends AbstractC20513e {

        /* renamed from: a */
        public final FeatureKey f57588a;

        /* renamed from: b */
        public final String f57589b;

        /* renamed from: c */
        public final String f57590c;

        /* renamed from: d */
        public boolean f57591d;

        /* renamed from: e */
        public boolean f57592e;

        /* renamed from: f */
        public boolean f57593f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C20517d(long j, FeatureKey featureKey, String str, String str2, boolean z, boolean z2, boolean z3) {
            super(j, null);
            l.e(featureKey, AnalyticsConstants.KEY);
            l.e(str, "description");
            l.e(str2, "remoteKey");
            this.f57588a = featureKey;
            this.f57589b = str;
            this.f57590c = str2;
            this.f57591d = z;
            this.f57592e = z2;
            this.f57593f = z3;
        }
    }

    public AbstractC20513e(long j, f fVar) {
    }
}
