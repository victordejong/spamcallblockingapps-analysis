package com.huawei.hms.device.provider;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.content.pm.ProviderInfo;
import android.database.Cursor;
import android.net.Uri;
import com.huawei.hms.utils.HMSPackageManager;
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/device/provider/CheckHmsProvider.class */
public class CheckHmsProvider extends ContentProvider {

    /* renamed from: com.huawei.hms.device.provider.CheckHmsProvider$a */
    /* loaded from: classes3-dex2jar.jar:com/huawei/hms/device/provider/CheckHmsProvider$a.class */
    public class RunnableC2291a implements Runnable {
        public RunnableC2291a() {
            CheckHmsProvider.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            HMSPackageManager.getInstance(CheckHmsProvider.this.getContext());
        }
    }

    @Override // android.content.ContentProvider
    public void attachInfo(Context context, ProviderInfo providerInfo) {
        super.attachInfo(context, providerInfo);
        if (!providerInfo.exported) {
            if (providerInfo.grantUriPermissions) {
                throw new SecurityException("Provider must not grant uri permissions");
            }
            return;
        }
        throw new SecurityException("Provider must not be exported");
    }

    @Override // android.content.ContentProvider
    public int delete(Uri uri, String str, String[] strArr) {
        return 0;
    }

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        return null;
    }

    @Override // android.content.ContentProvider
    public Uri insert(Uri uri, ContentValues contentValues) {
        return null;
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        if (getContext() != null) {
            new Thread(new RunnableC2291a()).start();
            return true;
        }
        return true;
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        return null;
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        return 0;
    }
}
