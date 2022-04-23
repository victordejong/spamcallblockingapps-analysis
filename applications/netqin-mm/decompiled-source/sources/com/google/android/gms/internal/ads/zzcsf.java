package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Bundle;
import android.telephony.TelephonyManager;
import android.util.SparseArray;
import com.google.android.gms.ads.internal.zzp;
import com.google.android.gms.internal.ads.zzua;
import java.util.ArrayList;
import p131c.p161d.p170b.p224d.p252g.p253a.C4221xn;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcsf.class */
public final class zzcsf {

    /* renamed from: g */
    public static final SparseArray<zzua.zzo.zzb> f26461g;

    /* renamed from: a */
    public final Context f26462a;

    /* renamed from: b */
    public final zzbtm f26463b;

    /* renamed from: c */
    public final TelephonyManager f26464c;

    /* renamed from: d */
    public final zzcsc f26465d;

    /* renamed from: e */
    public final zzcrw f26466e;

    /* renamed from: f */
    public zzuk f26467f;

    static {
        SparseArray<zzua.zzo.zzb> sparseArray = new SparseArray<>();
        f26461g = sparseArray;
        sparseArray.put(NetworkInfo.DetailedState.CONNECTED.ordinal(), zzua.zzo.zzb.CONNECTED);
        f26461g.put(NetworkInfo.DetailedState.AUTHENTICATING.ordinal(), zzua.zzo.zzb.CONNECTING);
        f26461g.put(NetworkInfo.DetailedState.CONNECTING.ordinal(), zzua.zzo.zzb.CONNECTING);
        f26461g.put(NetworkInfo.DetailedState.OBTAINING_IPADDR.ordinal(), zzua.zzo.zzb.CONNECTING);
        f26461g.put(NetworkInfo.DetailedState.DISCONNECTING.ordinal(), zzua.zzo.zzb.DISCONNECTING);
        f26461g.put(NetworkInfo.DetailedState.BLOCKED.ordinal(), zzua.zzo.zzb.DISCONNECTED);
        f26461g.put(NetworkInfo.DetailedState.DISCONNECTED.ordinal(), zzua.zzo.zzb.DISCONNECTED);
        f26461g.put(NetworkInfo.DetailedState.FAILED.ordinal(), zzua.zzo.zzb.DISCONNECTED);
        f26461g.put(NetworkInfo.DetailedState.IDLE.ordinal(), zzua.zzo.zzb.DISCONNECTED);
        f26461g.put(NetworkInfo.DetailedState.SCANNING.ordinal(), zzua.zzo.zzb.DISCONNECTED);
        f26461g.put(NetworkInfo.DetailedState.SUSPENDED.ordinal(), zzua.zzo.zzb.SUSPENDED);
        if (Build.VERSION.SDK_INT >= 17) {
            f26461g.put(NetworkInfo.DetailedState.CAPTIVE_PORTAL_CHECK.ordinal(), zzua.zzo.zzb.CONNECTING);
        }
        f26461g.put(NetworkInfo.DetailedState.VERIFYING_POOR_LINK.ordinal(), zzua.zzo.zzb.CONNECTING);
    }

    public zzcsf(Context context, zzbtm zzbtmVar, zzcsc zzcscVar, zzcrw zzcrwVar) {
        this.f26462a = context;
        this.f26463b = zzbtmVar;
        this.f26465d = zzcscVar;
        this.f26466e = zzcrwVar;
        this.f26464c = (TelephonyManager) context.getSystemService("phone");
    }

    /* renamed from: b */
    public static zzua.zzo.zzb m13884b(Bundle bundle) {
        return f26461g.get(zzdot.m13397a(zzdot.m13397a(bundle, "device"), "network").getInt("active_network_state", -1), zzua.zzo.zzb.UNSPECIFIED);
    }

    /* renamed from: b */
    public static zzuk m13882b(boolean z) {
        return z ? zzuk.ENUM_TRUE : zzuk.ENUM_FALSE;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0083  */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.ArrayList<com.google.android.gms.internal.ads.zzua.zzc.zza> m13881c(android.os.Bundle r4) {
        /*
            Method dump skipped, instructions count: 306
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzcsf.m13881c(android.os.Bundle):java.util.ArrayList");
    }

    /* renamed from: a */
    public final zzua.zzm m13890a(Bundle bundle) {
        zzua.zzm.zzb zzbVar;
        zzua.zzm.zza m = zzua.zzm.m11301m();
        int i = bundle.getInt("cnt", -2);
        int i2 = bundle.getInt("gnt", 0);
        if (i == -1) {
            this.f26467f = zzuk.ENUM_TRUE;
        } else {
            this.f26467f = zzuk.ENUM_FALSE;
            if (i == 0) {
                m.m11298a(zzua.zzm.zzc.CELL);
            } else if (i != 1) {
                m.m11298a(zzua.zzm.zzc.NETWORKTYPE_UNSPECIFIED);
            } else {
                m.m11298a(zzua.zzm.zzc.WIFI);
            }
            switch (i2) {
                case 1:
                case 2:
                case 4:
                case 7:
                case 11:
                case 16:
                    zzbVar = zzua.zzm.zzb.TWO_G;
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
                    zzbVar = zzua.zzm.zzb.THREE_G;
                    break;
                case 13:
                    zzbVar = zzua.zzm.zzb.LTE;
                    break;
                default:
                    zzbVar = zzua.zzm.zzb.CELLULAR_NETWORK_TYPE_UNSPECIFIED;
                    break;
            }
            m.m11299a(zzbVar);
        }
        return (zzua.zzm) ((zzejz) m.mo12342K());
    }

    /* renamed from: a */
    public final void m13886a(boolean z) {
        zzdyq.m12991a(this.f26463b.m15078a(), new C4221xn(this, z), zzbbz.f24769f);
    }

    /* renamed from: a */
    public final byte[] m13885a(boolean z, ArrayList<zzua.zzc.zza> arrayList, zzua.zzm zzmVar, zzua.zzo.zzb zzbVar) {
        zzua.zzo.zza.C10508zza o = zzua.zzo.zza.m11253o();
        o.m11246a(arrayList);
        boolean z2 = true;
        o.m11242c(m13882b(zzp.m17967e().mo16039b(this.f26462a.getContentResolver()) != 0));
        o.m11241d(zzp.m17967e().mo16024a(this.f26462a, this.f26464c));
        o.m11245b(this.f26465d.m13895b());
        o.m11243c(this.f26465d.m13891d());
        o.m11251a(this.f26465d.m13898a());
        o.m11248a(zzbVar);
        o.m11249a(zzmVar);
        o.m11240e(this.f26467f);
        o.m11247a(m13882b(z));
        o.m11250a(zzp.m17962j().mo17091b());
        if (zzp.m17967e().mo16043a(this.f26462a.getContentResolver()) == 0) {
            z2 = false;
        }
        o.m11244b(m13882b(z2));
        return ((zzua.zzo.zza) ((zzejz) o.mo12342K())).mo12349c();
    }
}
