package com.google.android.gms.common;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.util.Log;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.wrappers.Wrappers;
import javax.annotation.CheckReturnValue;
@ShowFirstParty
@CheckReturnValue
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/GoogleSignatureVerifier.class */
public class GoogleSignatureVerifier {

    /* renamed from: b */
    private static GoogleSignatureVerifier f6989b;

    /* renamed from: a */
    private final Context f6990a;

    private GoogleSignatureVerifier(Context context) {
        this.f6990a = context.getApplicationContext();
    }

    @KeepForSdk
    /* renamed from: a */
    public static GoogleSignatureVerifier m15040a(Context context) {
        Preconditions.m14523k(context);
        synchronized (GoogleSignatureVerifier.class) {
            try {
                if (f6989b == null) {
                    zzc.m14274c(context);
                    f6989b = new GoogleSignatureVerifier(context);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return f6989b;
    }

    /* renamed from: d */
    private static zze m15037d(PackageInfo packageInfo, zze... zzeVarArr) {
        Signature[] signatureArr = packageInfo.signatures;
        if (signatureArr == null) {
            return null;
        }
        if (signatureArr.length != 1) {
            Log.w("GoogleSignatureVerifier", "Package has more than one signature.");
            return null;
        }
        zzf zzfVar = new zzf(packageInfo.signatures[0].toByteArray());
        for (int i = 0; i < zzeVarArr.length; i++) {
            if (zzeVarArr[i].equals(zzfVar)) {
                return zzeVarArr[i];
            }
        }
        return null;
    }

    /* renamed from: e */
    private final zzm m15036e(String str, int i) {
        try {
            PackageInfo h = Wrappers.m14278a(this.f6990a).m14280h(str, 64, i);
            boolean g = GooglePlayServicesUtilLight.m15048g(this.f6990a);
            if (h == null) {
                return zzm.m14266d("null pkg");
            }
            if (h.signatures.length != 1) {
                return zzm.m14266d("single cert required");
            }
            zzf zzfVar = new zzf(h.signatures[0].toByteArray());
            String str2 = h.packageName;
            zzm a = zzc.m14276a(str2, zzfVar, g, false);
            return (!a.f7685a || h.applicationInfo == null || (h.applicationInfo.flags & 2) == 0 || !zzc.m14276a(str2, zzfVar, false, true).f7685a) ? a : zzm.m14266d("debuggable release cert app rejected");
        } catch (PackageManager.NameNotFoundException e) {
            String valueOf = String.valueOf(str);
            return zzm.m14266d(valueOf.length() != 0 ? "no pkg ".concat(valueOf) : new String("no pkg "));
        }
    }

    /* renamed from: f */
    public static boolean m15035f(PackageInfo packageInfo, boolean z) {
        if (packageInfo == null || packageInfo.signatures == null) {
            return false;
        }
        return (z ? m15037d(packageInfo, zzh.f7679a) : m15037d(packageInfo, zzh.f7679a[0])) != null;
    }

    @KeepForSdk
    /* renamed from: b */
    public boolean m15039b(PackageInfo packageInfo) {
        if (packageInfo == null) {
            return false;
        }
        if (m15035f(packageInfo, false)) {
            return true;
        }
        if (!m15035f(packageInfo, true)) {
            return false;
        }
        if (GooglePlayServicesUtilLight.m15048g(this.f6990a)) {
            return true;
        }
        Log.w("GoogleSignatureVerifier", "Test-keys aren't accepted on this build.");
        return false;
    }

    @ShowFirstParty
    @KeepForSdk
    /* renamed from: c */
    public boolean m15038c(int i) {
        zzm zzmVar;
        String[] f = Wrappers.m14278a(this.f6990a).m14282f(i);
        if (f != null && f.length != 0) {
            zzmVar = null;
            int length = f.length;
            int i2 = 0;
            while (i2 < length) {
                zzm e = m15036e(f[i2], i);
                zzmVar = e;
                if (e.f7685a) {
                    break;
                }
                i2++;
                zzmVar = e;
            }
        } else {
            zzmVar = zzm.m14266d("no pkgs");
        }
        zzmVar.m14263g();
        return zzmVar.f7685a;
    }
}
