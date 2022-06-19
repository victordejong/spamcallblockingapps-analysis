package com.tencent.mmkv;

import android.app.ActivityManager;
import android.content.ComponentName;
import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
/* loaded from: classes2-dex2jar.jar:com/tencent/mmkv/MMKVContentProvider.class */
public class MMKVContentProvider extends ContentProvider {

    /* renamed from: d */
    private static Uri f40290d;

    /* renamed from: a */
    public static Uri m581a(Context context) {
        String m578d;
        Uri uri = f40290d;
        if (uri != null) {
            return uri;
        }
        if (context == null || (m578d = m578d(context)) == null) {
            return null;
        }
        Uri parse = Uri.parse("content://" + m578d);
        f40290d = parse;
        return parse;
    }

    /* renamed from: b */
    public static String m580b(Context context, int i) {
        ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
        if (activityManager != null) {
            for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : activityManager.getRunningAppProcesses()) {
                if (runningAppProcessInfo.pid == i) {
                    return runningAppProcessInfo.processName;
                }
            }
            return "";
        }
        return "";
    }

    /* renamed from: c */
    private Bundle m579c(String str, int i, int i2, String str2) {
        MMKV m586s = MMKV.m586s(getContext(), str, i, i2, str2);
        ParcelableMMKV parcelableMMKV = new ParcelableMMKV(m586s);
        Log.i("MMKV", str + " fd = " + m586s.ashmemFD() + ", meta fd = " + m586s.ashmemMetaFD());
        Bundle bundle = new Bundle();
        bundle.putParcelable("KEY", parcelableMMKV);
        return bundle;
    }

    /* renamed from: d */
    private static String m578d(Context context) {
        ProviderInfo providerInfo;
        try {
            ComponentName componentName = new ComponentName(context, MMKVContentProvider.class.getName());
            PackageManager packageManager = context.getPackageManager();
            if (packageManager != null && (providerInfo = packageManager.getProviderInfo(componentName, 0)) != null) {
                return providerInfo.authority;
            }
            return null;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    @Override // android.content.ContentProvider
    public Bundle call(String str, String str2, Bundle bundle) {
        if (!str.equals("mmkvFromAshmemID") || bundle == null) {
            return null;
        }
        try {
            return m579c(str2, bundle.getInt("KEY_SIZE"), bundle.getInt("KEY_MODE"), bundle.getString("KEY_CRYPT"));
        } catch (Exception e) {
            Log.e("MMKV", e.getMessage());
            return null;
        }
    }

    @Override // android.content.ContentProvider
    public int delete(Uri uri, String str, String[] strArr) {
        throw new UnsupportedOperationException("Not implement in MMKV");
    }

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        return null;
    }

    @Override // android.content.ContentProvider
    public Uri insert(Uri uri, ContentValues contentValues) {
        throw new UnsupportedOperationException("Not implement in MMKV");
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        String m578d;
        Context context = getContext();
        if (context == null || (m578d = m578d(context)) == null) {
            return false;
        }
        if (f40290d != null) {
            return true;
        }
        f40290d = Uri.parse("content://" + m578d);
        return true;
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        throw new UnsupportedOperationException("Not implement in MMKV");
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        throw new UnsupportedOperationException("Not implement in MMKV");
    }
}
