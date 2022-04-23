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

    /* renamed from: b */
    private static Uri f12539b;

    /* renamed from: a */
    protected static Uri m630a(Context context) {
        String d;
        Uri uri = f12539b;
        if (uri != null) {
            return uri;
        }
        if (context == null || (d = m627d(context)) == null) {
            return null;
        }
        Uri parse = Uri.parse("content://" + d);
        f12539b = parse;
        return parse;
    }

    /* renamed from: b */
    protected static String m629b(Context context, int i) {
        ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
        if (activityManager == null) {
            return "";
        }
        for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : activityManager.getRunningAppProcesses()) {
            if (runningAppProcessInfo.pid == i) {
                return runningAppProcessInfo.processName;
            }
        }
        return "";
    }

    /* renamed from: c */
    private Bundle m628c(String str, int i, int i2, String str2) {
        MMKV s = MMKV.s(getContext(), str, i, i2, str2);
        if (s == null) {
            return null;
        }
        ParcelableMMKV parcelableMMKV = new ParcelableMMKV(s);
        Log.i("MMKV", str + " fd = " + s.ashmemFD() + ", meta fd = " + s.ashmemMetaFD());
        Bundle bundle = new Bundle();
        bundle.putParcelable("KEY", parcelableMMKV);
        return bundle;
    }

    /* renamed from: d */
    private static String m627d(Context context) {
        ProviderInfo providerInfo;
        try {
            ComponentName componentName = new ComponentName(context, MMKVContentProvider.class.getName());
            PackageManager packageManager = context.getPackageManager();
            if (packageManager == null || (providerInfo = packageManager.getProviderInfo(componentName, 0)) == null) {
                return null;
            }
            return providerInfo.authority;
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
        return m628c(str2, bundle.getInt("KEY_SIZE"), bundle.getInt("KEY_MODE"), bundle.getString("KEY_CRYPT"));
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
        String d;
        Context context = getContext();
        if (context == null || (d = m627d(context)) == null) {
            return false;
        }
        if (f12539b != null) {
            return true;
        }
        f12539b = Uri.parse("content://" + d);
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
