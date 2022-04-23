package com.google.android.gms.common;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.util.Base64;
import android.util.Log;
import com.google.android.gms.common.internal.b;
import com.google.android.gms.common.k;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/m.class */
public class m {

    /* renamed from: b  reason: collision with root package name */
    private static m f4054b;

    /* renamed from: a  reason: collision with root package name */
    public final Context f4055a;

    private m(Context context) {
        this.f4055a = context.getApplicationContext();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static k.a a(PackageInfo packageInfo, k.a... aVarArr) {
        k.a aVar;
        if (packageInfo.signatures != null) {
            if (packageInfo.signatures.length == 1) {
                k.b bVar = new k.b(packageInfo.signatures[0].toByteArray());
                int i = 0;
                while (true) {
                    if (i >= aVarArr.length) {
                        String valueOf = String.valueOf(packageInfo.packageName);
                        String valueOf2 = String.valueOf(Base64.encodeToString(bVar.c(), 0));
                        Log.v("GoogleSignatureVerifier", new StringBuilder(String.valueOf(valueOf).length() + 31 + String.valueOf(valueOf2).length()).append(valueOf).append(" signature not valid.  Found: \n").append(valueOf2).toString());
                        aVar = null;
                        break;
                    } else if (aVarArr[i].equals(bVar)) {
                        aVar = aVarArr[i];
                        break;
                    } else {
                        i++;
                    }
                }
            } else {
                Log.w("GoogleSignatureVerifier", "Package has more than one signature.");
                aVar = null;
            }
        } else {
            aVar = null;
        }
        return aVar;
    }

    public static m a(Context context) {
        b.a(context);
        synchronized (m.class) {
            try {
                if (f4054b == null) {
                    k.a(context);
                    f4054b = new m(context);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return f4054b;
    }

    public static boolean a(PackageInfo packageInfo, boolean z) {
        boolean z2 = true;
        if (!(packageInfo == null || packageInfo.signatures == null)) {
            if ((z ? a(packageInfo, k.d.f4051a) : a(packageInfo, k.d.f4051a[0])) != null) {
                return z2;
            }
        }
        z2 = false;
        return z2;
    }
}
