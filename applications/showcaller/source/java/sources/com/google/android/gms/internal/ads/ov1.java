package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Bundle;
import android.telephony.TelephonyManager;
import android.util.SparseArray;
import com.google.android.gms.ads.internal.C5667s;
import com.google.android.gms.ads.internal.util.AbstractC5728q1;
import java.util.ArrayList;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ov1.class */
public final class ov1 {

    /* renamed from: a */
    private static final SparseArray<zzbbm> f27742a;

    /* renamed from: b */
    private final Context f27743b;

    /* renamed from: c */
    private final d21 f27744c;

    /* renamed from: d */
    private final TelephonyManager f27745d;

    /* renamed from: e */
    private final gv1 f27746e;

    /* renamed from: f */
    private final cv1 f27747f;

    /* renamed from: g */
    private final AbstractC5728q1 f27748g;

    /* renamed from: h */
    private int f27749h;

    static {
        SparseArray<zzbbm> sparseArray = new SparseArray<>();
        f27742a = sparseArray;
        sparseArray.put(NetworkInfo.DetailedState.CONNECTED.ordinal(), zzbbm.CONNECTED);
        int ordinal = NetworkInfo.DetailedState.AUTHENTICATING.ordinal();
        zzbbm zzbbmVar = zzbbm.CONNECTING;
        sparseArray.put(ordinal, zzbbmVar);
        sparseArray.put(NetworkInfo.DetailedState.CONNECTING.ordinal(), zzbbmVar);
        sparseArray.put(NetworkInfo.DetailedState.OBTAINING_IPADDR.ordinal(), zzbbmVar);
        sparseArray.put(NetworkInfo.DetailedState.DISCONNECTING.ordinal(), zzbbm.DISCONNECTING);
        int ordinal2 = NetworkInfo.DetailedState.BLOCKED.ordinal();
        zzbbm zzbbmVar2 = zzbbm.DISCONNECTED;
        sparseArray.put(ordinal2, zzbbmVar2);
        sparseArray.put(NetworkInfo.DetailedState.DISCONNECTED.ordinal(), zzbbmVar2);
        sparseArray.put(NetworkInfo.DetailedState.FAILED.ordinal(), zzbbmVar2);
        sparseArray.put(NetworkInfo.DetailedState.IDLE.ordinal(), zzbbmVar2);
        sparseArray.put(NetworkInfo.DetailedState.SCANNING.ordinal(), zzbbmVar2);
        sparseArray.put(NetworkInfo.DetailedState.SUSPENDED.ordinal(), zzbbm.SUSPENDED);
        if (Build.VERSION.SDK_INT >= 17) {
            sparseArray.put(NetworkInfo.DetailedState.CAPTIVE_PORTAL_CHECK.ordinal(), zzbbmVar);
        }
        sparseArray.put(NetworkInfo.DetailedState.VERIFYING_POOR_LINK.ordinal(), zzbbmVar);
    }

    public ov1(Context context, d21 d21Var, gv1 gv1Var, cv1 cv1Var, AbstractC5728q1 abstractC5728q1) {
        this.f27743b = context;
        this.f27744c = d21Var;
        this.f27746e = gv1Var;
        this.f27747f = cv1Var;
        this.f27745d = (TelephonyManager) context.getSystemService("phone");
        this.f27748g = abstractC5728q1;
    }

    /* renamed from: c */
    public static /* synthetic */ C6967so m12493c(ov1 ov1Var, Bundle bundle) {
        C6671ko m10982E = C6967so.m10982E();
        int i = bundle.getInt("cnt", -2);
        int i2 = bundle.getInt("gnt", 0);
        int i3 = 2;
        if (i == -1) {
            ov1Var.f27749h = 2;
        } else {
            ov1Var.f27749h = 1;
            if (i == 0) {
                m10982E.m13840q(2);
            } else if (i != 1) {
                m10982E.m13840q(1);
            } else {
                m10982E.m13840q(3);
            }
            switch (i2) {
                case 1:
                case 2:
                case 4:
                case 7:
                case 11:
                case 16:
                    break;
                case 3:
                case 5:
                case 6:
                case 8:
                case 9:
                case 10:
                case 12:
                case 14:
                case 15:
                case 17:
                    i3 = 3;
                    break;
                case 13:
                    i3 = 5;
                    break;
                default:
                    i3 = 1;
                    break;
            }
            m10982E.m13839r(i3);
        }
        return m10982E.m15512n();
    }

    /* renamed from: e */
    public static /* synthetic */ byte[] m12491e(ov1 ov1Var, boolean z, ArrayList arrayList, C6967so c6967so, zzbbm zzbbmVar) {
        C7115wo m9122O = C7152xo.m9122O();
        m9122O.m9528t(arrayList);
        m9122O.m9534B(m12489g(C5667s.m18158f().mo18033f(ov1Var.f27743b.getContentResolver()) != 0));
        m9122O.m9533C(C5667s.m18158f().mo18044p(ov1Var.f27743b, ov1Var.f27745d));
        m9122O.m9530r(ov1Var.f27746e.m14803d());
        m9122O.m9529s(ov1Var.f27746e.m14799h());
        m9122O.m9526w(ov1Var.f27746e.m14805b());
        m9122O.m9525x(zzbbmVar);
        m9122O.m9527v(c6967so);
        m9122O.m9532D(ov1Var.f27749h);
        m9122O.m9524y(m12489g(z));
        m9122O.m9531q(C5667s.m18153k().mo16807a());
        m9122O.m9535A(m12489g(C5667s.m18158f().mo18034e(ov1Var.f27743b.getContentResolver()) != 0));
        return m9122O.m15512n().mo10723K();
    }

    /* renamed from: g */
    private static final int m12489g(boolean z) {
        return z ? 2 : 1;
    }

    /* renamed from: f */
    public final void m12490f(boolean z) {
        k03.m13988p(this.f27744c.m15961a(), new nv1(this, z), qi0.f28500f);
    }
}
