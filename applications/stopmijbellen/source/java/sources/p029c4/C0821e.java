package p029c4;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.IBinder;
import android.os.IInterface;
import androidx.appcompat.widget.C0249l;
import androidx.cardview.widget.CardView;
import p104g6.C2906b;
import p134j4.AbstractC3256v;
import p134j4.C3204f2;
import p189o4.AbstractBinderC3887x;
import p189o4.AbstractC3866f;
import p189o4.AbstractC3888y;
import p189o4.C3886w;
import p203p8.AbstractC4071h;
import p215r.AbstractC4174a;
import p215r.AbstractC4175b;
import p215r.C4176c;
import p215r.C4177d;
import p220r4.AbstractC4192a;
import p233s6.AbstractC4320o;
/* renamed from: c4.e */
/* loaded from: classes-dex2jar.jar:c4/e.class */
public class C0821e implements AbstractC3866f, AbstractC3256v, AbstractC4192a, AbstractC4071h, AbstractC4175b, AbstractC4320o {

    /* renamed from: a */
    public static C0821e f3000a;

    /* renamed from: b */
    public static final /* synthetic */ C0821e f3001b = new C0821e();

    /* renamed from: c */
    public static final /* synthetic */ C0821e f3002c = new C0821e();

    /* renamed from: d */
    public static final /* synthetic */ C0821e f3003d = new C0821e();

    /* renamed from: e */
    public static final C2906b f3004e = new C2906b();

    /* renamed from: f */
    public static final int[] f3005f = new int[0];

    /* renamed from: g */
    public static final long[] f3006g = new long[0];

    /* renamed from: h */
    public static final Object[] f3007h = new Object[0];

    public /* synthetic */ C0821e() {
    }

    public /* synthetic */ C0821e(int i, float f, float f2) {
    }

    public /* synthetic */ C0821e(C0249l c0249l, boolean z) {
    }

    /* renamed from: a */
    public static int m7343a(int[] iArr, int i, int i2) {
        int i3 = i - 1;
        int i4 = 0;
        while (i4 <= i3) {
            int i5 = (i4 + i3) >>> 1;
            int i6 = iArr[i5];
            if (i6 < i2) {
                i4 = i5 + 1;
            } else if (i6 <= i2) {
                return i5;
            } else {
                i3 = i5 - 1;
            }
        }
        return i4 ^ (-1);
    }

    /* renamed from: c */
    public static int m7342c(long[] jArr, int i, long j) {
        int i2 = i - 1;
        int i3 = 0;
        while (i3 <= i2) {
            int i4 = (i3 + i2) >>> 1;
            int i5 = (jArr[i4] > j ? 1 : (jArr[i4] == j ? 0 : -1));
            if (i5 < 0) {
                i3 = i4 + 1;
            } else if (i5 <= 0) {
                return i4;
            } else {
                i2 = i4 - 1;
            }
        }
        return i3 ^ (-1);
    }

    /* renamed from: d */
    public static boolean m7341d(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    /* renamed from: i */
    public static int m7336i(int i) {
        for (int i2 = 4; i2 < 32; i2++) {
            int i3 = (1 << i2) - 12;
            if (i <= i3) {
                return i3;
            }
        }
        return i;
    }

    /* renamed from: j */
    public static int m7335j(int i) {
        return m7336i(i * 4) / 4;
    }

    /* renamed from: k */
    public static int m7334k(int i) {
        return m7336i(i * 8) / 8;
    }

    /* renamed from: l */
    public static boolean m7333l(Context context) {
        if (context == null) {
            return false;
        }
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        boolean z = false;
        if (connectivityManager != null) {
            NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
            if (activeNetworkInfo == null) {
                return false;
            }
            z = false;
            if (activeNetworkInfo.isConnectedOrConnecting()) {
                z = true;
            }
        }
        return z;
    }

    /* renamed from: m */
    public static String m7332m(String str, String str2) {
        int length = str.length() - str2.length();
        if (length < 0 || length > 1) {
            throw new IllegalArgumentException("Invalid input received");
        }
        StringBuilder sb = new StringBuilder(str2.length() + str.length());
        for (int i = 0; i < str.length(); i++) {
            sb.append(str.charAt(i));
            if (str2.length() > i) {
                sb.append(str2.charAt(i));
            }
        }
        return sb.toString();
    }

    /* renamed from: o */
    public static int m7330o(byte[] bArr, int i) {
        return ((bArr[i + 1] & 255) << 8) | (bArr[i] & 255);
    }

    /* renamed from: p */
    public static long m7329p(byte[] bArr, int i) {
        return ((m7330o(bArr, i + 2) << 16) | m7330o(bArr, i)) & 4294967295L;
    }

    @Override // p189o4.AbstractC3866f
    /* renamed from: b */
    public Object mo1754b(IBinder iBinder) {
        AbstractC3888y abstractC3888y;
        int i = AbstractBinderC3887x.f12381a;
        if (iBinder == null) {
            abstractC3888y = null;
        } else {
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.play.core.appupdate.protocol.IAppUpdateService");
            abstractC3888y = queryLocalInterface instanceof AbstractC3888y ? (AbstractC3888y) queryLocalInterface : new C3886w(iBinder);
        }
        return abstractC3888y;
    }

    /* renamed from: e */
    public C4176c m7340e(AbstractC4174a abstractC4174a) {
        return (C4176c) ((CardView.C0304a) abstractC4174a).f1177a;
    }

    @Override // p203p8.AbstractC4071h
    public Object evaluate(float f, Object obj, Object obj2) {
        float floatValue = ((Number) obj).floatValue();
        return Float.valueOf(((((Number) obj2).floatValue() - floatValue) * f) + floatValue);
    }

    /* renamed from: f */
    public void m7339f(float f, float f2, float f3, C0834l c0834l) {
        c0834l.m7287d(f, 0.0f);
    }

    /* renamed from: g */
    public float m7338g(AbstractC4174a abstractC4174a) {
        return m7340e(abstractC4174a).f13158e;
    }

    /* renamed from: h */
    public float m7337h(AbstractC4174a abstractC4174a) {
        return m7340e(abstractC4174a).f13154a;
    }

    /* renamed from: n */
    public void m7331n(AbstractC4174a abstractC4174a, float f) {
        C4176c m7340e = m7340e(abstractC4174a);
        CardView.C0304a c0304a = (CardView.C0304a) abstractC4174a;
        boolean useCompatPadding = c0304a.f1178b.getUseCompatPadding();
        boolean m8381a = c0304a.m8381a();
        if (f != m7340e.f13158e || m7340e.f13159f != useCompatPadding || m7340e.f13160g != m8381a) {
            m7340e.f13158e = f;
            m7340e.f13159f = useCompatPadding;
            m7340e.f13160g = m8381a;
            m7340e.m1309c(null);
            m7340e.invalidateSelf();
        }
        if (!c0304a.f1178b.getUseCompatPadding()) {
            c0304a.m8380b(0, 0, 0, 0);
            return;
        }
        float f2 = m7340e(abstractC4174a).f13158e;
        float f3 = m7340e(abstractC4174a).f13154a;
        int ceil = (int) Math.ceil(C4177d.m1308a(f2, f3, c0304a.m8381a()));
        int ceil2 = (int) Math.ceil(C4177d.m1307b(f2, f3, c0304a.m8381a()));
        c0304a.m8380b(ceil, ceil2, ceil, ceil2);
    }

    @Override // p220r4.AbstractC4192a
    public void onFailure(Exception exc) {
        C3204f2.f10783e.m1506f(String.format("Could not sync active asset packs. %s", exc), new Object[0]);
    }

    @Override // p134j4.AbstractC3256v
    public int zza(int i, String str) {
        return i;
    }
}
