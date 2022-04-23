package com.google.android.gms.ads.p075x.p076a;

import com.google.android.gms.internal.ads.zzuq;
import java.util.HashSet;
import java.util.Locale;
import java.util.Set;
/* renamed from: com.google.android.gms.ads.x.a.x */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/x/a/x.class */
public final class C1520x {

    /* renamed from: a */
    private final String f5753a;

    /* synthetic */ C1520x(C1519w wVar, C1518v vVar) {
        String str;
        str = wVar.f5752a;
        this.f5753a = str;
    }

    /* renamed from: a */
    public final Set<String> m8527a() {
        HashSet hashSet = new HashSet();
        hashSet.add(this.f5753a.toLowerCase(Locale.ROOT));
        return hashSet;
    }

    /* renamed from: b */
    public final String m8526b() {
        return this.f5753a.toLowerCase(Locale.ROOT);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* renamed from: c */
    public final zzuq m8525c() {
        char c;
        String str = this.f5753a;
        switch (str.hashCode()) {
            case -1999289321:
                if (str.equals("NATIVE")) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case -1372958932:
                if (str.equals("INTERSTITIAL")) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case 543046670:
                if (str.equals("REWARDED")) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case 1951953708:
                if (str.equals("BANNER")) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        return c != 0 ? c != 1 ? c != 2 ? c != 3 ? zzuq.b : zzuq.i : zzuq.h : zzuq.e : zzuq.c;
    }
}
