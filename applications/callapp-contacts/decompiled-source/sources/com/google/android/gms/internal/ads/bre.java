package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Bundle;
import android.telephony.TelephonyManager;
import android.util.SparseArray;
import com.callapp.contacts.model.Constants;
import com.google.android.gms.ads.internal.util.zzf;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.internal.ads.eht;
import java.util.ArrayList;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bre.class */
public final class bre {
    private static final SparseArray<eht.t.b> h;

    /* renamed from: a  reason: collision with root package name */
    private final Context f24932a;

    /* renamed from: b  reason: collision with root package name */
    private final aqs f24933b;

    /* renamed from: c  reason: collision with root package name */
    private final TelephonyManager f24934c;

    /* renamed from: d  reason: collision with root package name */
    private final brb f24935d;
    private final bqv e;
    private final zzf f;
    private eid g;

    static {
        SparseArray<eht.t.b> sparseArray = new SparseArray<>();
        h = sparseArray;
        sparseArray.put(NetworkInfo.DetailedState.CONNECTED.ordinal(), eht.t.b.CONNECTED);
        sparseArray.put(NetworkInfo.DetailedState.AUTHENTICATING.ordinal(), eht.t.b.CONNECTING);
        sparseArray.put(NetworkInfo.DetailedState.CONNECTING.ordinal(), eht.t.b.CONNECTING);
        sparseArray.put(NetworkInfo.DetailedState.OBTAINING_IPADDR.ordinal(), eht.t.b.CONNECTING);
        sparseArray.put(NetworkInfo.DetailedState.DISCONNECTING.ordinal(), eht.t.b.DISCONNECTING);
        sparseArray.put(NetworkInfo.DetailedState.BLOCKED.ordinal(), eht.t.b.DISCONNECTED);
        sparseArray.put(NetworkInfo.DetailedState.DISCONNECTED.ordinal(), eht.t.b.DISCONNECTED);
        sparseArray.put(NetworkInfo.DetailedState.FAILED.ordinal(), eht.t.b.DISCONNECTED);
        sparseArray.put(NetworkInfo.DetailedState.IDLE.ordinal(), eht.t.b.DISCONNECTED);
        sparseArray.put(NetworkInfo.DetailedState.SCANNING.ordinal(), eht.t.b.DISCONNECTED);
        sparseArray.put(NetworkInfo.DetailedState.SUSPENDED.ordinal(), eht.t.b.SUSPENDED);
        if (Build.VERSION.SDK_INT >= 17) {
            sparseArray.put(NetworkInfo.DetailedState.CAPTIVE_PORTAL_CHECK.ordinal(), eht.t.b.CONNECTING);
        }
        sparseArray.put(NetworkInfo.DetailedState.VERIFYING_POOR_LINK.ordinal(), eht.t.b.CONNECTING);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public bre(Context context, aqs aqsVar, brb brbVar, bqv bqvVar, zzf zzfVar) {
        this.f24932a = context;
        this.f24933b = aqsVar;
        this.f24935d = brbVar;
        this.e = bqvVar;
        this.f24934c = (TelephonyManager) context.getSystemService(Constants.EXTRA_PHONE_NUMBER);
        this.f = zzfVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ eht.r a(bre breVar, Bundle bundle) {
        eht.r.b bVar;
        eht.r.a c2 = eht.r.c();
        int i = bundle.getInt("cnt", -2);
        int i2 = bundle.getInt("gnt", 0);
        if (i == -1) {
            breVar.g = eid.ENUM_TRUE;
        } else {
            breVar.g = eid.ENUM_FALSE;
            if (i == 0) {
                c2.a(eht.r.c.CELL);
            } else if (i != 1) {
                c2.a(eht.r.c.NETWORKTYPE_UNSPECIFIED);
            } else {
                c2.a(eht.r.c.WIFI);
            }
            switch (i2) {
                case 1:
                case 2:
                case 4:
                case 7:
                case 11:
                case 16:
                    bVar = eht.r.b.TWO_G;
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
                    bVar = eht.r.b.THREE_G;
                    break;
                case 13:
                    bVar = eht.r.b.LTE;
                    break;
                default:
                    bVar = eht.r.b.CELLULAR_NETWORK_TYPE_UNSPECIFIED;
                    break;
            }
            c2.a(bVar);
        }
        return c2.f();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0083  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static /* synthetic */ java.util.ArrayList a(android.os.Bundle r4) {
        /*
            Method dump skipped, instructions count: 343
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.bre.a(android.os.Bundle):java.util.ArrayList");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ byte[] a(bre breVar, boolean z, ArrayList arrayList, eht.r rVar, eht.t.b bVar) {
        boolean z2 = true;
        eht.t.a.C0479a a2 = eht.t.a.b().a(arrayList).c(b(zzr.zzkx().zzb(breVar.f24932a.getContentResolver()) != 0)).d(zzr.zzkx().zza(breVar.f24932a, breVar.f24934c)).b(breVar.f24935d.b()).c(breVar.f24935d.d()).a(breVar.f24935d.a()).a(bVar).a(rVar).e(breVar.g).a(b(z)).a(zzr.zzlc().a());
        if (zzr.zzkx().zza(breVar.f24932a.getContentResolver()) == 0) {
            z2 = false;
        }
        return a2.b(b(z2)).f().g();
    }

    private static eid b(boolean z) {
        return z ? eid.ENUM_TRUE : eid.ENUM_FALSE;
    }

    public final void a(boolean z) {
        dbh.a(this.f24933b.a(), new brh(this, z), zd.f);
    }
}
