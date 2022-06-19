package com.crashlytics.android;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import io.fabric.sdk.android.C1449c;
import io.fabric.sdk.android.services.p068b.C1493o;
/* loaded from: classes-dex2jar.jar:com/crashlytics/android/CrashlyticsInitProvider.class */
public class CrashlyticsInitProvider extends ContentProvider {
    private static final String TAG = "CrashlyticsInitProvider";

    /* loaded from: classes-dex2jar.jar:com/crashlytics/android/CrashlyticsInitProvider$EnabledCheckStrategy.class */
    public interface EnabledCheckStrategy {
        boolean isCrashlyticsEnabled(Context context);
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
        if (shouldInitializeFabric(context, new C1493o(), new ManifestEnabledCheckStrategy())) {
            try {
                C1449c.m3589a(context, new Crashlytics());
                C1449c.m3572g().mo3549c(TAG, "CrashlyticsInitProvider initialization successful");
                return true;
            } catch (IllegalStateException e) {
                C1449c.m3572g().mo3549c(TAG, "CrashlyticsInitProvider initialization unsuccessful");
                return false;
            }
        }
        return true;
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        return null;
    }

    boolean shouldInitializeFabric(Context context, C1493o c1493o, EnabledCheckStrategy enabledCheckStrategy) {
        return c1493o.m3449b(context) && enabledCheckStrategy.isCrashlyticsEnabled(context);
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        return 0;
    }
}
