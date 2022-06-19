package com.google.android.gms.common;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.os.RemoteException;
import android.os.StrictMode;
import android.util.Log;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.dynamite.DynamiteModule;
import java.util.Objects;
import p1727n3.p1789g0.C26232y;
import p193e.p1577m.p1578a.p1642f.p1653e.AbstractBinderC24987i;
import p193e.p1577m.p1578a.p1642f.p1653e.AbstractBinderC24989k;
import p193e.p1577m.p1578a.p1642f.p1653e.BinderC24988j;
import p193e.p1577m.p1578a.p1642f.p1653e.C24990l;
import p193e.p1577m.p1578a.p1642f.p1653e.C24991m;
import p193e.p1577m.p1578a.p1642f.p1653e.C24993o;
@ShowFirstParty
@KeepForSdk
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/GoogleSignatureVerifier.class */
public class GoogleSignatureVerifier {

    /* renamed from: c */
    public static GoogleSignatureVerifier f5678c;

    /* renamed from: a */
    public final Context f5679a;

    /* renamed from: b */
    public volatile String f5680b;

    public GoogleSignatureVerifier(Context context) {
        this.f5679a = context.getApplicationContext();
    }

    @KeepForSdk
    /* renamed from: a */
    public static GoogleSignatureVerifier m39061a(Context context) {
        Objects.requireNonNull(context, "null reference");
        synchronized (GoogleSignatureVerifier.class) {
            try {
                if (f5678c == null) {
                    AbstractBinderC24989k abstractBinderC24989k = C24991m.f69949a;
                    synchronized (C24991m.class) {
                        if (C24991m.f69955g == null) {
                            C24991m.f69955g = context.getApplicationContext();
                        }
                    }
                    f5678c = new GoogleSignatureVerifier(context);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return f5678c;
    }

    /* renamed from: c */
    public static final AbstractBinderC24987i m39059c(PackageInfo packageInfo, AbstractBinderC24987i... abstractBinderC24987iArr) {
        Signature[] signatureArr = packageInfo.signatures;
        if (signatureArr != null && signatureArr.length == 1) {
            BinderC24988j binderC24988j = new BinderC24988j(packageInfo.signatures[0].toByteArray());
            for (int i = 0; i < abstractBinderC24987iArr.length; i++) {
                if (abstractBinderC24987iArr[i].equals(binderC24988j)) {
                    return abstractBinderC24987iArr[i];
                }
            }
            return null;
        }
        return null;
    }

    /* renamed from: d */
    public static final boolean m39058d(PackageInfo packageInfo, boolean z) {
        if (packageInfo == null || packageInfo.signatures == null) {
            return false;
        }
        return (z ? m39059c(packageInfo, C24990l.f69948a) : m39059c(packageInfo, C24990l.f69948a[0])) != null;
    }

    /* JADX WARN: Finally extract failed */
    @ShowFirstParty
    @KeepForSdk
    /* renamed from: b */
    public boolean m39060b(int i) {
        C24993o c24993o;
        int length;
        boolean z;
        String[] packagesForUid = this.f5679a.getPackageManager().getPackagesForUid(i);
        if (packagesForUid != null && (length = packagesForUid.length) != 0) {
            c24993o = null;
            int i2 = 0;
            while (true) {
                if (i2 >= length) {
                    Objects.requireNonNull(c24993o, "null reference");
                    break;
                }
                String str = packagesForUid[i2];
                C24993o c24993o2 = C24993o.f69957d;
                if (str == null) {
                    c24993o = C24993o.m4239b("null pkg");
                } else {
                    C24993o c24993o3 = c24993o2;
                    if (!str.equals(this.f5680b)) {
                        AbstractBinderC24989k abstractBinderC24989k = C24991m.f69949a;
                        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
                        try {
                            C24991m.m4241b();
                            z = C24991m.f69953e.zzg();
                            StrictMode.setThreadPolicy(allowThreadDiskReads);
                        } catch (RemoteException | DynamiteModule.LoadingException e) {
                            StrictMode.setThreadPolicy(allowThreadDiskReads);
                            z = false;
                        } catch (Throwable th) {
                            throw th;
                        }
                        if (z) {
                            boolean honorsDebugCertificates = GooglePlayServicesUtilLight.honorsDebugCertificates(this.f5679a);
                            allowThreadDiskReads = StrictMode.allowThreadDiskReads();
                            try {
                                Objects.requireNonNull(C24991m.f69955g, "null reference");
                                try {
                                    C24991m.m4241b();
                                    try {
                                        zzq mo38822b0 = C24991m.f69953e.mo38822b0(new zzn(str, honorsDebugCertificates, false, new ObjectWrapper(C24991m.f69955g), false));
                                        if (!mo38822b0.f6162a) {
                                            String str2 = mo38822b0.f6163b;
                                            String str3 = str2;
                                            if (str2 == null) {
                                                str3 = "error checking package certificate";
                                            }
                                            c24993o2 = C26232y.m2279y2(mo38822b0.f6164c) == 4 ? C24993o.m4238c(str3, new PackageManager.NameNotFoundException()) : C24993o.m4239b(str3);
                                        }
                                    } catch (RemoteException e2) {
                                        c24993o2 = C24993o.m4238c("module call", e2);
                                    }
                                } catch (DynamiteModule.LoadingException e3) {
                                    String valueOf = String.valueOf(e3.getMessage());
                                    c24993o2 = C24993o.m4238c(valueOf.length() != 0 ? "module init: ".concat(valueOf) : new String("module init: "), e3);
                                }
                            } finally {
                            }
                        } else {
                            try {
                                PackageInfo packageInfo = this.f5679a.getPackageManager().getPackageInfo(str, 64);
                                boolean honorsDebugCertificates2 = GooglePlayServicesUtilLight.honorsDebugCertificates(this.f5679a);
                                if (packageInfo == null) {
                                    c24993o2 = C24993o.m4239b("null pkg");
                                } else {
                                    Signature[] signatureArr = packageInfo.signatures;
                                    if (signatureArr == null || signatureArr.length != 1) {
                                        c24993o2 = C24993o.m4239b("single cert required");
                                    } else {
                                        BinderC24988j binderC24988j = new BinderC24988j(packageInfo.signatures[0].toByteArray());
                                        String str4 = packageInfo.packageName;
                                        allowThreadDiskReads = StrictMode.allowThreadDiskReads();
                                        try {
                                            C24993o m4242a = C24991m.m4242a(str4, binderC24988j, honorsDebugCertificates2, false);
                                            StrictMode.setThreadPolicy(allowThreadDiskReads);
                                            c24993o2 = m4242a;
                                            if (m4242a.f69958a) {
                                                ApplicationInfo applicationInfo = packageInfo.applicationInfo;
                                                c24993o2 = m4242a;
                                                if (applicationInfo != null) {
                                                    c24993o2 = m4242a;
                                                    if ((applicationInfo.flags & 2) != 0) {
                                                        allowThreadDiskReads = StrictMode.allowThreadDiskReads();
                                                        try {
                                                            C24993o m4242a2 = C24991m.m4242a(str4, binderC24988j, false, true);
                                                            StrictMode.setThreadPolicy(allowThreadDiskReads);
                                                            c24993o2 = m4242a;
                                                            if (m4242a2.f69958a) {
                                                                c24993o2 = C24993o.m4239b("debuggable release cert app rejected");
                                                            }
                                                        } finally {
                                                        }
                                                    }
                                                }
                                            }
                                        } finally {
                                        }
                                    }
                                }
                            } catch (PackageManager.NameNotFoundException e4) {
                                c24993o = C24993o.m4238c(str.length() != 0 ? "no pkg ".concat(str) : new String("no pkg "), e4);
                            }
                        }
                        c24993o3 = c24993o2;
                        if (c24993o2.f69958a) {
                            this.f5680b = str;
                            c24993o3 = c24993o2;
                        }
                    }
                    c24993o = c24993o3;
                }
                if (c24993o.f69958a) {
                    break;
                }
                i2++;
            }
        } else {
            c24993o = C24993o.m4239b("no pkgs");
        }
        if (!c24993o.f69958a && Log.isLoggable("GoogleCertificatesRslt", 3)) {
            if (c24993o.f69960c != null) {
                c24993o.mo4240a();
            } else {
                c24993o.mo4240a();
            }
        }
        return c24993o.f69958a;
    }
}
