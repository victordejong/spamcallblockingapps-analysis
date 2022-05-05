package com.asus.themesdk;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Environment;
import android.os.ParcelFileDescriptor;
import android.text.TextUtils;
import com.asus.updatesdk.BuildConfig;
import java.io.File;
import java.io.FileNotFoundException;
import java.lang.ref.WeakReference;
import java.util.HashMap;
/* loaded from: classes-dex2jar.jar:com/asus/themesdk/d.class */
public final class d {
    private static HashMap<String, WeakReference<d>> g = new HashMap<>();

    /* renamed from: b  reason: collision with root package name */
    public Context f3105b;
    public String d;
    public String e;

    /* renamed from: a  reason: collision with root package name */
    public boolean f3104a = false;
    public String c = BuildConfig.FLAVOR;
    public String f = BuildConfig.FLAVOR;

    private d(Context context, String str) {
        this.d = BuildConfig.FLAVOR;
        this.e = BuildConfig.FLAVOR;
        this.f3105b = context;
        this.d = str;
        this.e = (TextUtils.equals(str, "com.asus.launcher") || TextUtils.equals(str, "com.asus.wallpaper")) ? ".zip" : ".apk";
    }

    public static Uri a(String str, String str2) {
        Uri uri;
        String str3;
        String str4;
        Uri.Builder builder = new Uri.Builder();
        if (TextUtils.equals(str2, "zip")) {
            str3 = "extfiles";
            str4 = ".zip";
        } else if (TextUtils.equals(str2, "atz")) {
            str3 = "extdiy";
            str4 = ".atz";
        } else if (TextUtils.equals(str2, "wallpaper_channel")) {
            str3 = "extwc";
            str4 = ".zip";
        } else {
            uri = null;
            return uri;
        }
        builder.scheme("content").authority("com.asus.themeapp").encodedPath(str3 + "/" + str + str4);
        uri = builder.build();
        return uri;
    }

    public static d a(Context context) {
        d dVar = null;
        if (context != null) {
            String packageName = context.getPackageName();
            if (context != null) {
                r7 = context.getPackageName();
                String str = packageName;
                if (TextUtils.isEmpty(packageName)) {
                }
                WeakReference<d> weakReference = g.get(str);
                if (weakReference == null || weakReference.get() == null) {
                    g.remove(str);
                    d dVar2 = new d(context, str);
                    dVar2.f3104a = b(context) || c(context);
                    g.put(str, new WeakReference<>(dVar2));
                    dVar = dVar2;
                } else {
                    dVar = weakReference.get();
                }
            }
        }
        return dVar;
    }

    private static boolean b(Context context) {
        boolean z = false;
        try {
            if ((context.getPackageManager().getApplicationInfo(context.getPackageName(), 0).flags & 1) != 0) {
                z = true;
            }
        } catch (PackageManager.NameNotFoundException e) {
        }
        return z;
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x007b, code lost:
        if ("6b16979905b73b62dc0aa4c038149cca5a1df0ad".equalsIgnoreCase(r0.toString()) != false) goto L_0x007e;
     */
    @android.annotation.SuppressLint({"PackageManagerGetSignatures"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean c(android.content.Context r5) {
        /*
            r0 = 1
            r6 = r0
            r0 = r5
            android.content.pm.PackageManager r0 = r0.getPackageManager()
            r7 = r0
            r0 = r5
            java.lang.String r0 = r0.getPackageName()
            r5 = r0
            r0 = r7
            r1 = r5
            r2 = 64
            android.content.pm.PackageInfo r0 = r0.getPackageInfo(r1, r2)     // Catch: NoSuchAlgorithmException -> 0x0080, NameNotFoundException -> 0x0086
            android.content.pm.Signature[] r0 = r0.signatures     // Catch: NoSuchAlgorithmException -> 0x0080, NameNotFoundException -> 0x0086
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L_0x0081
            r0 = r5
            r1 = 0
            r0 = r0[r1]
            if (r0 == 0) goto L_0x0081
            r0 = r5
            r1 = 0
            r0 = r0[r1]     // Catch: NoSuchAlgorithmException -> 0x0080, NameNotFoundException -> 0x0086
            byte[] r0 = r0.toByteArray()     // Catch: NoSuchAlgorithmException -> 0x0080, NameNotFoundException -> 0x0086
            r5 = r0
            java.lang.String r0 = "SHA1"
            java.security.MessageDigest r0 = java.security.MessageDigest.getInstance(r0)     // Catch: NoSuchAlgorithmException -> 0x0080, NameNotFoundException -> 0x0086
            r1 = r5
            byte[] r0 = r0.digest(r1)     // Catch: NoSuchAlgorithmException -> 0x0080, NameNotFoundException -> 0x0086
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L_0x0069
            r0 = r5
            int r0 = r0.length     // Catch: NoSuchAlgorithmException -> 0x0080, NameNotFoundException -> 0x0086
            r8 = r0
        L_0x0039:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: NoSuchAlgorithmException -> 0x0080, NoSuchAlgorithmException -> 0x0080, NameNotFoundException -> 0x0086, NameNotFoundException -> 0x0086
            r7 = r0
            r0 = r7
            r0.<init>()     // Catch: NoSuchAlgorithmException -> 0x0080, NameNotFoundException -> 0x0086
            r0 = 0
            r9 = r0
        L_0x0044:
            r0 = r9
            r1 = r8
            if (r0 >= r1) goto L_0x006e
            r0 = r7
            r1 = r5
            r2 = r9
            r1 = r1[r2]     // Catch: NoSuchAlgorithmException -> 0x0080, NameNotFoundException -> 0x0086
            r2 = 255(0xff, float:3.57E-43)
            r1 = r1 & r2
            r2 = 256(0x100, float:3.59E-43)
            r1 = r1 | r2
            java.lang.String r1 = java.lang.Integer.toHexString(r1)     // Catch: NoSuchAlgorithmException -> 0x0080, NameNotFoundException -> 0x0086
            r2 = 1
            r3 = 3
            java.lang.String r1 = r1.substring(r2, r3)     // Catch: NoSuchAlgorithmException -> 0x0080, NameNotFoundException -> 0x0086
            java.lang.StringBuilder r0 = r0.append(r1)     // Catch: NoSuchAlgorithmException -> 0x0080, NameNotFoundException -> 0x0086
            int r9 = r9 + 1
            goto L_0x0044
        L_0x0069:
            r0 = 0
            r8 = r0
            goto L_0x0039
        L_0x006e:
            java.lang.String r0 = "6b16979905b73b62dc0aa4c038149cca5a1df0ad"
            r1 = r7
            java.lang.String r1 = r1.toString()     // Catch: NoSuchAlgorithmException -> 0x0080, NameNotFoundException -> 0x0086
            boolean r0 = r0.equalsIgnoreCase(r1)     // Catch: NoSuchAlgorithmException -> 0x0080, NameNotFoundException -> 0x0086
            r10 = r0
            r0 = r10
            if (r0 == 0) goto L_0x0081
        L_0x007e:
            r0 = r6
            return r0
        L_0x0080:
            r5 = move-exception
        L_0x0081:
            r0 = 0
            r6 = r0
            goto L_0x007e
        L_0x0086:
            r5 = move-exception
            goto L_0x0081
        */
        throw new UnsupportedOperationException("Method not decompiled: com.asus.themesdk.d.c(android.content.Context):boolean");
    }

    public final Resources a() {
        Resources resources;
        PackageManager packageManager = this.f3105b.getPackageManager();
        if (!TextUtils.isEmpty(this.c) && packageManager != null) {
            try {
                resources = packageManager.getResourcesForApplication(packageManager.getApplicationInfo(this.c, 128));
            } catch (PackageManager.NameNotFoundException e) {
            }
            return resources;
        }
        resources = null;
        return resources;
    }

    public final String a(Uri uri, String str, String str2, String str3) {
        ParcelFileDescriptor parcelFileDescriptor;
        String str4;
        AssetManager a2;
        if (this.f3104a) {
            this.f = "zip";
            if (uri != null) {
                try {
                    parcelFileDescriptor = this.f3105b.getContentResolver().openFileDescriptor(uri, "r");
                } catch (FileNotFoundException | SecurityException e) {
                    parcelFileDescriptor = null;
                }
            } else {
                parcelFileDescriptor = null;
            }
            if (parcelFileDescriptor != null) {
                String str5 = this.d + this.e;
                str4 = a.a(parcelFileDescriptor, str5, b.a(this.f3105b, str5));
            } else if (!Environment.getExternalStorageDirectory().canRead() || !new File(str).exists() || (a2 = a.a(str)) == null) {
                String a3 = b.a(this.f3105b, this.d + "_decrypted" + this.e);
                str4 = a3;
                if (!new File(a3).exists()) {
                    str4 = BuildConfig.FLAVOR;
                }
            } else {
                String str6 = this.d + this.e;
                str4 = a.a(a2, str6, b.a(this.f3105b, str6));
                a2.close();
            }
            b.a(parcelFileDescriptor);
            if (TextUtils.isEmpty(str4) || str4.contains("_decrypted")) {
                str3 = str4;
            } else {
                File file = new File(str4);
                File file2 = new File(str3);
                if (!file2.getParentFile().exists()) {
                    file2.getParentFile().mkdirs();
                }
                if (c.a(str2, str4, str3)) {
                    file.delete();
                } else {
                    file.delete();
                    new File(str3).delete();
                }
            }
            return str3;
        }
        str3 = BuildConfig.FLAVOR;
        return str3;
    }
}
