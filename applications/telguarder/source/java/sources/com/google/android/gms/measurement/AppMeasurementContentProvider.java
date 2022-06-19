package com.google.android.gms.measurement;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.content.pm.ProviderInfo;
import android.database.Cursor;
import android.net.Uri;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.measurement.internal.zzfl;
@Deprecated
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/AppMeasurementContentProvider.class */
public class AppMeasurementContentProvider extends ContentProvider {
    @Override // android.content.ContentProvider
    public void attachInfo(Context context, ProviderInfo providerInfo) {
        super.attachInfo(context, providerInfo);
        if (!"com.google.android.gms.measurement.google_measurement_service".equals(providerInfo.authority)) {
            return;
        }
        throw new IllegalStateException("Incorrect provider authority in manifest. Most likely due to a missing applicationId variable in application's build.gradle.");
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
        Context context = getContext();
        Preconditions.checkNotNull(context);
        zzfl.zzC(context, null, null);
        return false;
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
