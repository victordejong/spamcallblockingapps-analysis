package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Bundle;
import android.telephony.TelephonyManager;
import android.util.SparseArray;
import com.google.android.gms.ads.internal.C1407r;
import com.google.android.gms.ads.internal.util.AbstractC1409a1;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/uy0.class */
public final class uy0 {

    /* renamed from: h */
    private static final SparseArray<zzwx> f8850h;

    /* renamed from: a */
    private final Context f8851a;

    /* renamed from: b */
    private final x60 f8852b;

    /* renamed from: c */
    private final TelephonyManager f8853c;

    /* renamed from: d */
    private final ny0 f8854d;

    /* renamed from: e */
    private final jy0 f8855e;

    /* renamed from: f */
    private final AbstractC1409a1 f8856f;

    /* renamed from: g */
    private zzvy f8857g;

    static {
        SparseArray<zzwx> sparseArray = new SparseArray<>();
        f8850h = sparseArray;
        sparseArray.put(NetworkInfo.DetailedState.CONNECTED.ordinal(), zzwx.d);
        int ordinal = NetworkInfo.DetailedState.AUTHENTICATING.ordinal();
        zzwx zzwxVar = zzwx.c;
        sparseArray.put(ordinal, zzwxVar);
        sparseArray.put(NetworkInfo.DetailedState.CONNECTING.ordinal(), zzwxVar);
        sparseArray.put(NetworkInfo.DetailedState.OBTAINING_IPADDR.ordinal(), zzwxVar);
        sparseArray.put(NetworkInfo.DetailedState.DISCONNECTING.ordinal(), zzwx.e);
        int ordinal2 = NetworkInfo.DetailedState.BLOCKED.ordinal();
        zzwx zzwxVar2 = zzwx.f;
        sparseArray.put(ordinal2, zzwxVar2);
        sparseArray.put(NetworkInfo.DetailedState.DISCONNECTED.ordinal(), zzwxVar2);
        sparseArray.put(NetworkInfo.DetailedState.FAILED.ordinal(), zzwxVar2);
        sparseArray.put(NetworkInfo.DetailedState.IDLE.ordinal(), zzwxVar2);
        sparseArray.put(NetworkInfo.DetailedState.SCANNING.ordinal(), zzwxVar2);
        sparseArray.put(NetworkInfo.DetailedState.SUSPENDED.ordinal(), zzwx.g);
        if (Build.VERSION.SDK_INT >= 17) {
            sparseArray.put(NetworkInfo.DetailedState.CAPTIVE_PORTAL_CHECK.ordinal(), zzwxVar);
        }
        sparseArray.put(NetworkInfo.DetailedState.VERIFYING_POOR_LINK.ordinal(), zzwxVar);
    }

    uy0(Context context, x60 x60Var, ny0 ny0Var, jy0 jy0Var, AbstractC1409a1 a1Var) {
        this.f8851a = context;
        this.f8852b = x60Var;
        this.f8854d = ny0Var;
        this.f8855e = jy0Var;
        this.f8853c = (TelephonyManager) context.getSystemService("phone");
        this.f8856f = a1Var;
    }

    /* renamed from: d */
    static /* synthetic */ qx2 m5330d(uy0 uy0Var, Bundle bundle) {
        zzwk zzwkVar;
        nx2 I = qx2.I();
        int i = bundle.getInt("cnt", -2);
        int i2 = bundle.getInt("gnt", 0);
        if (i == -1) {
            uy0Var.f8857g = zzvy.c;
        } else {
            uy0Var.f8857g = zzvy.b;
            I.q(i != 0 ? i != 1 ? zzwn.b : zzwn.d : zzwn.c);
            switch (i2) {
                case 1:
                case 2:
                case 4:
                case 7:
                case 11:
                case 16:
                    zzwkVar = zzwk.c;
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
                    zzwkVar = zzwk.d;
                    break;
                case 13:
                    zzwkVar = zzwk.e;
                    break;
                default:
                    zzwkVar = zzwk.b;
                    break;
            }
            I.r(zzwkVar);
        }
        return I.m();
    }

    /* renamed from: f */
    static /* synthetic */ byte[] m5328f(uy0 uy0Var, boolean z, ArrayList arrayList, qx2 qx2Var, zzwx zzwxVar) {
        ux2 U = vx2.U();
        U.u(arrayList);
        boolean z2 = true;
        U.y(m5327g(C1407r.m8918f().m8859f(uy0Var.f8851a.getContentResolver()) != 0));
        U.z(C1407r.m8918f().m8849p(uy0Var.f8851a, uy0Var.f8853c));
        U.s(uy0Var.f8854d.m6374d());
        U.t(uy0Var.f8854d.m6370h());
        U.D(uy0Var.f8854d.m6376b());
        U.G(zzwxVar);
        U.v(qx2Var);
        U.E(uy0Var.f8857g);
        U.r(m5327g(z));
        U.q(C1407r.m8913k().m8247a());
        if (C1407r.m8918f().m8860e(uy0Var.f8851a.getContentResolver()) == 0) {
            z2 = false;
        }
        U.w(m5327g(z2));
        return U.m().A();
    }

    /* renamed from: g */
    private static final zzvy m5327g(boolean z) {
        return z ? zzvy.c : zzvy.b;
    }

    /* renamed from: a */
    public final void m5333a(boolean z) {
        kz1.o(this.f8852b.m4964a(), new ty0(this, z), C2073zo.f9415f);
    }
}
