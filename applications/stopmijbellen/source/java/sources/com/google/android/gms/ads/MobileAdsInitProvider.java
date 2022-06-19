package com.google.android.gms.ads;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.content.pm.ProviderInfo;
import android.database.Cursor;
import android.net.Uri;
import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;
import com.google.android.gms.common.annotation.KeepForSdkWithMembers;
import com.google.android.gms.internal.ads.zzbjr;
@KeepForSdkWithMembers
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/MobileAdsInitProvider.class */
public class MobileAdsInitProvider extends ContentProvider {
    private final zzbjr zza = new zzbjr();

    @Override // android.content.ContentProvider
    public void attachInfo(@RecentlyNonNull Context context, @RecentlyNonNull ProviderInfo providerInfo) {
        this.zza.attachInfo(context, providerInfo);
    }

    @Override // android.content.ContentProvider
    public int delete(@RecentlyNonNull Uri uri, @RecentlyNonNull String str, @RecentlyNonNull String[] strArr) {
        return 0;
    }

    @Override // android.content.ContentProvider
    @RecentlyNullable
    public String getType(@RecentlyNonNull Uri uri) {
        return null;
    }

    @Override // android.content.ContentProvider
    @RecentlyNullable
    public Uri insert(@RecentlyNonNull Uri uri, @RecentlyNonNull ContentValues contentValues) {
        return null;
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        return false;
    }

    @Override // android.content.ContentProvider
    @RecentlyNullable
    public Cursor query(@RecentlyNonNull Uri uri, @RecentlyNonNull String[] strArr, @RecentlyNonNull String str, @RecentlyNonNull String[] strArr2, @RecentlyNonNull String str2) {
        return null;
    }

    @Override // android.content.ContentProvider
    public int update(@RecentlyNonNull Uri uri, @RecentlyNonNull ContentValues contentValues, @RecentlyNonNull String str, @RecentlyNonNull String[] strArr) {
        return 0;
    }
}
