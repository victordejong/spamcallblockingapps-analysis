package p104g6;

import androidx.lifecycle.AbstractC0546x;
import androidx.lifecycle.AbstractC0548z;
import com.google.android.gms.ads.rewarded.RewardItem;
import com.google.firebase.analytics.connector.internal.AnalyticsConnectorRegistrar;
import java.util.Objects;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import p134j4.ThreadFactoryC3216i2;
import p189o4.AbstractC3882s;
import p203p8.AbstractC4071h;
import p237t.C4344d;
import p258v.C4564c;
import p258v.C4566d;
import p258v.C4567e;
import p305z4.AbstractC5080d;
import p305z4.AbstractC5082f;
/* renamed from: g6.b */
/* loaded from: classes-dex2jar.jar:g6/b.class */
public class C2906b implements RewardItem, AbstractC4071h, AbstractC0548z, AbstractC3882s, AbstractC5082f {

    /* renamed from: a */
    public static C2906b f9794a;

    /* renamed from: b */
    public static C2906b f9795b;

    /* renamed from: c */
    public static final int[] f9796c = {2130969342};

    /* renamed from: d */
    public static final int[] f9797d = {16843036, 16843156, 16843157, 16843158, 16843532, 16843533};

    /* renamed from: e */
    public static final int[] f9798e = {16842960, 16843161};

    /* renamed from: f */
    public static final int[] f9799f = {16843161, 16843849, 16843850, 16843851};

    /* renamed from: g */
    public static boolean[] f9800g = new boolean[3];

    /* renamed from: h */
    public static final AbstractC5082f f9801h = new C2906b();

    /* renamed from: c */
    public static void m2863c(C4567e c4567e, C4344d c4344d, C4566d c4566d) {
        c4566d.f14102o = -1;
        c4566d.f14104p = -1;
        if (c4567e.f14068U[0] != 2 && c4566d.f14068U[0] == 4) {
            int i = c4566d.f14057J.f14036g;
            int m795u = c4567e.m795u() - c4566d.f14059L.f14036g;
            C4564c c4564c = c4566d.f14057J;
            c4564c.f14038i = c4344d.m1040l(c4564c);
            C4564c c4564c2 = c4566d.f14059L;
            c4564c2.f14038i = c4344d.m1040l(c4564c2);
            c4344d.m1047e(c4566d.f14057J.f14038i, i);
            c4344d.m1047e(c4566d.f14059L.f14038i, m795u);
            c4566d.f14102o = 2;
            c4566d.f14075a0 = i;
            int i2 = m795u - i;
            c4566d.f14070W = i2;
            int i3 = c4566d.f14081d0;
            if (i2 < i3) {
                c4566d.f14070W = i3;
            }
        }
        if (c4567e.f14068U[1] == 2 || c4566d.f14068U[1] != 4) {
            return;
        }
        int i4 = c4566d.f14058K.f14036g;
        int m803l = c4567e.m803l() - c4566d.f14060M.f14036g;
        C4564c c4564c3 = c4566d.f14058K;
        c4564c3.f14038i = c4344d.m1040l(c4564c3);
        C4564c c4564c4 = c4566d.f14060M;
        c4564c4.f14038i = c4344d.m1040l(c4564c4);
        c4344d.m1047e(c4566d.f14058K.f14038i, i4);
        c4344d.m1047e(c4566d.f14060M.f14038i, m803l);
        if (c4566d.f14079c0 > 0 || c4566d.f14091i0 == 8) {
            C4564c c4564c5 = c4566d.f14061N;
            c4564c5.f14038i = c4344d.m1040l(c4564c5);
            c4344d.m1047e(c4566d.f14061N.f14038i, c4566d.f14079c0 + i4);
        }
        c4566d.f14104p = 2;
        c4566d.f14077b0 = i4;
        int i5 = m803l - i4;
        c4566d.f14071X = i5;
        int i6 = c4566d.f14083e0;
        if (i5 >= i6) {
            return;
        }
        c4566d.f14071X = i6;
    }

    /* renamed from: d */
    public static final boolean m2862d(int i, int i2) {
        return (i & i2) == i2;
    }

    /* renamed from: a */
    public AbstractC0546x mo2864a(Class cls) {
        try {
            return (AbstractC0546x) cls.newInstance();
        } catch (IllegalAccessException e) {
            throw new RuntimeException("Cannot create an instance of " + cls, e);
        } catch (InstantiationException e2) {
            throw new RuntimeException("Cannot create an instance of " + cls, e2);
        }
    }

    @Override // p305z4.AbstractC5082f
    /* renamed from: b */
    public Object mo49b(AbstractC5080d abstractC5080d) {
        return AnalyticsConnectorRegistrar.lambda$getComponents$0$AnalyticsConnectorRegistrar(abstractC5080d);
    }

    @Override // p203p8.AbstractC4071h
    public Object evaluate(float f, Object obj, Object obj2) {
        int intValue = ((Integer) obj).intValue();
        return Integer.valueOf((int) ((f * (((Integer) obj2).intValue() - intValue)) + intValue));
    }

    @Override // com.google.android.gms.ads.rewarded.RewardItem
    public int getAmount() {
        return 1;
    }

    @Override // com.google.android.gms.ads.rewarded.RewardItem
    public String getType() {
        return "";
    }

    @Override // p189o4.AbstractC3882s
    public Object zza() {
        ExecutorService newSingleThreadExecutor = Executors.newSingleThreadExecutor(ThreadFactoryC3216i2.f10844a);
        Objects.requireNonNull(newSingleThreadExecutor, "Cannot return null from a non-@Nullable @Provides method");
        return newSingleThreadExecutor;
    }
}
