package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Bundle;
import android.telephony.TelephonyManager;
import android.util.SparseArray;
import com.google.android.gms.ads.internal.C2341q;
import com.google.android.gms.internal.ads.dwv;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bmj.class */
public final class bmj {

    /* renamed from: g */
    private static final SparseArray<dwv.C3082t.EnumC3086c> f11537g;

    /* renamed from: a */
    private final Context f11538a;

    /* renamed from: b */
    private final aou f11539b;

    /* renamed from: c */
    private final TelephonyManager f11540c;

    /* renamed from: d */
    private final bmg f11541d;

    /* renamed from: e */
    private final bma f11542e;

    /* renamed from: f */
    private dxf f11543f;

    static {
        SparseArray<dwv.C3082t.EnumC3086c> sparseArray = new SparseArray<>();
        f11537g = sparseArray;
        sparseArray.put(NetworkInfo.DetailedState.CONNECTED.ordinal(), dwv.C3082t.EnumC3086c.CONNECTED);
        f11537g.put(NetworkInfo.DetailedState.AUTHENTICATING.ordinal(), dwv.C3082t.EnumC3086c.CONNECTING);
        f11537g.put(NetworkInfo.DetailedState.CONNECTING.ordinal(), dwv.C3082t.EnumC3086c.CONNECTING);
        f11537g.put(NetworkInfo.DetailedState.OBTAINING_IPADDR.ordinal(), dwv.C3082t.EnumC3086c.CONNECTING);
        f11537g.put(NetworkInfo.DetailedState.DISCONNECTING.ordinal(), dwv.C3082t.EnumC3086c.DISCONNECTING);
        f11537g.put(NetworkInfo.DetailedState.BLOCKED.ordinal(), dwv.C3082t.EnumC3086c.DISCONNECTED);
        f11537g.put(NetworkInfo.DetailedState.DISCONNECTED.ordinal(), dwv.C3082t.EnumC3086c.DISCONNECTED);
        f11537g.put(NetworkInfo.DetailedState.FAILED.ordinal(), dwv.C3082t.EnumC3086c.DISCONNECTED);
        f11537g.put(NetworkInfo.DetailedState.IDLE.ordinal(), dwv.C3082t.EnumC3086c.DISCONNECTED);
        f11537g.put(NetworkInfo.DetailedState.SCANNING.ordinal(), dwv.C3082t.EnumC3086c.DISCONNECTED);
        f11537g.put(NetworkInfo.DetailedState.SUSPENDED.ordinal(), dwv.C3082t.EnumC3086c.SUSPENDED);
        if (Build.VERSION.SDK_INT >= 17) {
            f11537g.put(NetworkInfo.DetailedState.CAPTIVE_PORTAL_CHECK.ordinal(), dwv.C3082t.EnumC3086c.CONNECTING);
        }
        f11537g.put(NetworkInfo.DetailedState.VERIFYING_POOR_LINK.ordinal(), dwv.C3082t.EnumC3086c.CONNECTING);
    }

    public bmj(Context context, aou aouVar, bmg bmgVar, bma bmaVar) {
        this.f11538a = context;
        this.f11539b = aouVar;
        this.f11541d = bmgVar;
        this.f11542e = bmaVar;
        this.f11540c = (TelephonyManager) context.getSystemService("phone");
    }

    /* renamed from: a */
    public final dwv.C3076r m11785a(Bundle bundle) {
        dwv.C3076r.EnumC3077a enumC3077a;
        dwv.C3076r.C3078b m8304a = dwv.C3076r.m8304a();
        int i = bundle.getInt("cnt", -2);
        int i2 = bundle.getInt("gnt", 0);
        if (i == -1) {
            this.f11543f = dxf.ENUM_TRUE;
        } else {
            this.f11543f = dxf.ENUM_FALSE;
            switch (i) {
                case 0:
                    m8304a.m8295a(dwv.C3076r.EnumC3079c.CELL);
                    break;
                case 1:
                    m8304a.m8295a(dwv.C3076r.EnumC3079c.WIFI);
                    break;
                default:
                    m8304a.m8295a(dwv.C3076r.EnumC3079c.NETWORKTYPE_UNSPECIFIED);
                    break;
            }
            switch (i2) {
                case 1:
                case 2:
                case 4:
                case 7:
                case 11:
                case 16:
                    enumC3077a = dwv.C3076r.EnumC3077a.TWO_G;
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
                    enumC3077a = dwv.C3076r.EnumC3077a.THREE_G;
                    break;
                case 13:
                    enumC3077a = dwv.C3076r.EnumC3077a.LTE;
                    break;
                default:
                    enumC3077a = dwv.C3076r.EnumC3077a.CELLULAR_NETWORK_TYPE_UNSPECIFIED;
                    break;
            }
            m8304a.m8296a(enumC3077a);
        }
        return (dwv.C3076r) ((dcw) m8304a.mo9987g());
    }

    /* renamed from: a */
    public final byte[] m11780a(boolean z, ArrayList<dwv.C3054h.EnumC3055a> arrayList, dwv.C3076r c3076r, dwv.C3082t.EnumC3086c enumC3086c) {
        return ((dwv.C3082t.C3083a) ((dcw) dwv.C3082t.C3083a.m8256c().m8241a(arrayList).m8237c(m11777b(C2341q.m14742e().mo6931b(this.f11538a.getContentResolver()) != 0)).m8236d(C2341q.m14742e().mo6923a(this.f11538a, this.f11540c)).m8240b(this.f11541d.m11791b()).m8238c(this.f11541d.m11787d()).m8246a(this.f11541d.m11794a()).m8243a(enumC3086c).m8244a(c3076r).m8235e(this.f11543f).m8242a(m11777b(z)).m8245a(C2341q.m14737j().mo13862a()).m8239b(m11777b(C2341q.m14742e().mo6935a(this.f11538a.getContentResolver()) != 0)).mo9987g())).mo9984l();
    }

    /* renamed from: b */
    public static dwv.C3082t.EnumC3086c m11779b(Bundle bundle) {
        return f11537g.get(chm.m11308a(chm.m11308a(bundle, "device"), "network").getInt("active_network_state", -1), dwv.C3082t.EnumC3086c.UNSPECIFIED);
    }

    /* renamed from: b */
    private static dxf m11777b(boolean z) {
        return z ? dxf.ENUM_TRUE : dxf.ENUM_FALSE;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:18:0x007c  */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.ArrayList<com.google.android.gms.internal.ads.dwv.C3054h.EnumC3055a> m11776c(android.os.Bundle r4) {
        /*
            Method dump skipped, instructions count: 323
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.bmj.m11776c(android.os.Bundle):java.util.ArrayList");
    }

    /* renamed from: a */
    public final void m11781a(boolean z) {
        crg.m10781a(this.f11539b.m12858a(), new bmn(this, z), C3650yg.f17647f);
    }
}
