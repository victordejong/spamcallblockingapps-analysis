package com.google.firebase.provider;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.content.pm.ProviderInfo;
import android.database.Cursor;
import android.net.Uri;
import android.util.Log;
import com.google.android.gms.common.internal.Preconditions;
import p226s.C4263g;
import p241t4.C4392c;
import p241t4.C4399e;
/* loaded from: classes-dex2jar.jar:com/google/firebase/provider/FirebaseInitProvider.class */
public class FirebaseInitProvider extends ContentProvider {
    @Override // android.content.ContentProvider
    public void attachInfo(Context context, ProviderInfo providerInfo) {
        Preconditions.checkNotNull(providerInfo, "FirebaseInitProvider ProviderInfo cannot be null.");
        if (!"com.google.firebase.firebaseinitprovider".equals(providerInfo.authority)) {
            super.attachInfo(context, providerInfo);
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
        C4392c c4392c;
        Context context = getContext();
        synchronized (C4392c.f13685i) {
            if (((C4263g) C4392c.f13687k).m1198e("[DEFAULT]") >= 0) {
                c4392c = C4392c.m973b();
            } else {
                C4399e m967a = C4399e.m967a(context);
                if (m967a == null) {
                    Log.w("FirebaseApp", "Default FirebaseApp failed to initialize because no default options were found. This usually means that com.google.gms:google-services was not applied to your gradle project.");
                    c4392c = null;
                } else {
                    c4392c = C4392c.m970e(context, m967a);
                }
            }
        }
        if (c4392c == null) {
            Log.i("FirebaseInitProvider", "FirebaseApp initialization unsuccessful");
            return false;
        }
        Log.i("FirebaseInitProvider", "FirebaseApp initialization successful");
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
