package com.google.android.gms.internal.mlkit_common;

import android.content.ContentResolver;
import android.content.Context;
import android.content.pm.ProviderInfo;
import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import android.os.Build;
import android.os.ParcelFileDescriptor;
import android.os.Process;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.concurrent.Callable;
import p1727n3.p1807k.p1809b.C26467a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_common/zzd.class */
public final class zzd {
    private static final String[] zza = {"com.android.", "com.google.", "com.chrome.", "com.nest.", "com.waymo.", "com.waze"};
    private static final String[] zzb;

    static {
        boolean z = false;
        int i = Build.VERSION.SDK_INT;
        String str = "";
        String str2 = i <= 25 ? "com.google.android.inputmethod.latin.inputcontent" : "";
        String str3 = i <= 25 ? "com.google.android.inputmethod.latin.dev.inputcontent" : "";
        String str4 = Build.HARDWARE;
        if (str4.equals("goldfish") || str4.equals("ranchu")) {
            z = true;
        }
        if (z) {
            str = "com.google.android.apps.common.testing.services.storage.runfiles";
        }
        zzb = new String[]{"media", str2, str3, str};
    }

    public static AssetFileDescriptor zza(Context context, Uri uri, String str) throws FileNotFoundException {
        return zza(context, uri, str, zzh.zza);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private static AssetFileDescriptor zza(Context context, Uri uri, String str, zzh zzhVar) throws FileNotFoundException {
        ContentResolver contentResolver = context.getContentResolver();
        Uri parse = Uri.parse(uri.toString());
        String scheme = parse.getScheme();
        if ("android.resource".equals(scheme)) {
            return contentResolver.openAssetFileDescriptor(parse, str);
        }
        if (!"content".equals(scheme)) {
            if (!"file".equals(scheme)) {
                throw new FileNotFoundException("Not implemented. Contact tiktok-users@");
            }
            AssetFileDescriptor assetFileDescriptor = (AssetFileDescriptor) zza(contentResolver.openAssetFileDescriptor(parse, str));
            try {
                zza(context, assetFileDescriptor.getParcelFileDescriptor(), parse, zzhVar);
                return assetFileDescriptor;
            } catch (FileNotFoundException e) {
                zza(assetFileDescriptor, e);
                throw e;
            } catch (IOException e2) {
                FileNotFoundException fileNotFoundException = new FileNotFoundException("Validation failed.");
                fileNotFoundException.initCause(e2);
                zza(assetFileDescriptor, fileNotFoundException);
                throw fileNotFoundException;
            }
        }
        str.hashCode();
        boolean z = true;
        int i = 2;
        switch (str.hashCode()) {
            case 114:
                if (str.equals("r")) {
                    z = false;
                    break;
                }
                break;
            case 119:
                if (str.equals("w")) {
                    z = true;
                    break;
                }
                break;
            case 3653:
                if (str.equals("rw")) {
                    z = true;
                    break;
                }
                break;
            case 3805:
                if (str.equals("wt")) {
                    z = true;
                    break;
                }
                break;
            case 113359:
                if (str.equals("rwt")) {
                    z = true;
                    break;
                }
                break;
        }
        switch (z) {
            case false:
                i = 1;
                break;
            case true:
            case true:
            case true:
            case true:
                break;
            default:
                throw new IllegalArgumentException();
        }
        if (!zza(context, parse, i, zzhVar)) {
            throw new FileNotFoundException("Can't open content uri.");
        }
        return (AssetFileDescriptor) zza(contentResolver.openAssetFileDescriptor(parse, str));
    }

    public static InputStream zza(Context context, Uri uri) throws FileNotFoundException {
        return zza(context, uri, zzh.zza);
    }

    private static InputStream zza(Context context, Uri uri, zzh zzhVar) throws FileNotFoundException {
        ContentResolver contentResolver = context.getContentResolver();
        Uri parse = Uri.parse(uri.toString());
        String scheme = parse.getScheme();
        if ("android.resource".equals(scheme)) {
            return contentResolver.openInputStream(parse);
        }
        if ("content".equals(scheme)) {
            if (!zza(context, parse, 1, zzhVar)) {
                throw new FileNotFoundException("Can't open content uri.");
            }
            return (InputStream) zza(contentResolver.openInputStream(parse));
        } else if (!"file".equals(scheme)) {
            throw new FileNotFoundException("Not implemented. Contact tiktok-users@");
        } else {
            try {
                ParcelFileDescriptor openFileDescriptor = contentResolver.openFileDescriptor(Uri.fromFile(new File(parse.getPath()).getCanonicalFile()), "r");
                try {
                    zza(context, openFileDescriptor, parse, zzhVar);
                    return new ParcelFileDescriptor.AutoCloseInputStream(openFileDescriptor);
                } catch (FileNotFoundException e) {
                    zza(openFileDescriptor, e);
                    throw e;
                } catch (IOException e2) {
                    FileNotFoundException fileNotFoundException = new FileNotFoundException("Validation failed.");
                    fileNotFoundException.initCause(e2);
                    zza(openFileDescriptor, fileNotFoundException);
                    throw fileNotFoundException;
                }
            } catch (IOException e3) {
                FileNotFoundException fileNotFoundException2 = new FileNotFoundException("Canonicalization failed.");
                fileNotFoundException2.initCause(e3);
                throw fileNotFoundException2;
            }
        }
    }

    private static <T> T zza(T t) throws FileNotFoundException {
        if (t != null) {
            return t;
        }
        throw new FileNotFoundException("Content resolver returned null value.");
    }

    /* JADX WARN: Code restructure failed: missing block: B:73:0x01bc, code lost:
        if (r0 == r1) goto L75;
     */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00fa  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0102  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void zza(android.content.Context r5, android.os.ParcelFileDescriptor r6, android.net.Uri r7, com.google.android.gms.internal.mlkit_common.zzh r8) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 492
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.mlkit_common.zzd.zza(android.content.Context, android.os.ParcelFileDescriptor, android.net.Uri, com.google.android.gms.internal.mlkit_common.zzh):void");
    }

    private static void zza(AssetFileDescriptor assetFileDescriptor, FileNotFoundException fileNotFoundException) {
        try {
            assetFileDescriptor.close();
        } catch (IOException e) {
            zza(fileNotFoundException, e);
        }
    }

    private static void zza(ParcelFileDescriptor parcelFileDescriptor, FileNotFoundException fileNotFoundException) {
        try {
            parcelFileDescriptor.close();
        } catch (IOException e) {
            zza(fileNotFoundException, e);
        }
    }

    private static void zza(Exception exc, Exception exc2) {
        zzan.zza(exc, exc2);
    }

    private static boolean zza(Context context, Uri uri, int i, zzh zzhVar) {
        boolean z;
        String[] strArr;
        boolean z2;
        boolean z3;
        String authority = uri.getAuthority();
        ProviderInfo resolveContentProvider = context.getPackageManager().resolveContentProvider(authority, 0);
        String str = authority;
        ProviderInfo providerInfo = resolveContentProvider;
        if (resolveContentProvider == null) {
            int lastIndexOf = authority.lastIndexOf(64);
            String str2 = authority;
            if (lastIndexOf >= 0) {
                str2 = authority.substring(lastIndexOf + 1);
                resolveContentProvider = context.getPackageManager().resolveContentProvider(str2, 0);
            }
            str = str2;
            providerInfo = resolveContentProvider;
            if (resolveContentProvider == null) {
                z3 = zzhVar.zzc;
                return !z3;
            }
        }
        int i2 = zze.zza[zzh.zza(zzhVar, context, new zzr(uri, providerInfo, str)) - 1];
        if (i2 != 1) {
            if (i2 == 2) {
                return false;
            }
            if (context.getPackageName().equals(providerInfo.packageName)) {
                z2 = zzhVar.zzc;
                return z2;
            }
            z = zzhVar.zzc;
            if (z) {
                return false;
            }
            if (context.checkUriPermission(uri, Process.myPid(), Process.myUid(), i) == 0) {
                return true;
            }
            for (String str3 : zzb) {
                if (str3.equals(str)) {
                    return true;
                }
            }
            if (!providerInfo.exported) {
                return true;
            }
            for (String str4 : zza) {
                if (str4.charAt(str4.length() - 1) == '.') {
                    if (providerInfo.packageName.startsWith(str4)) {
                        return false;
                    }
                } else if (providerInfo.packageName.equals(str4)) {
                    return false;
                }
            }
            return true;
        }
        return true;
    }

    public static final File[] zza(Context context) throws Exception {
        Object obj = C26467a.f74235a;
        return C26467a.C26469b.m1793a(context);
    }

    private static File[] zza(Callable<File[]> callable) {
        try {
            return callable.call();
        } catch (NullPointerException e) {
            throw e;
        } catch (Exception e2) {
            throw new RuntimeException(e2);
        }
    }

    public static final File[] zzb(Context context) throws Exception {
        Object obj = C26467a.f74235a;
        return C26467a.C26469b.m1792b(context, null);
    }
}
