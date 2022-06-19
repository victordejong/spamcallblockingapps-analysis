package com.millennialmedia.internal.utils;

import android.annotation.TargetApi;
import android.content.ComponentName;
import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.content.UriMatcher;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.os.ParcelFileDescriptor;
import com.android.internal.telephony.PhoneConstants;
import com.millennialmedia.MMLog;
import java.io.File;
import java.io.FileNotFoundException;
/* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/utils/MediaContentProvider.class */
public class MediaContentProvider extends ContentProvider {
    private static final int PHOTOS = 1;
    private static final String PROVIDER_NAME = ".MediaContentProvider";
    private static final String TAG = MediaContentProvider.class.getSimpleName();
    private static final UriMatcher URI_MATCHER = new UriMatcher(-1);

    public static String getAuthority(Context context) {
        return context.getPackageName() + PROVIDER_NAME;
    }

    public static Uri getUriForMediaContentProvider(Context context, File file) {
        if (file != null) {
            return Uri.parse("content://" + getAuthority(context) + "/" + file.getName());
        }
        return null;
    }

    @TargetApi(19)
    private static int parseMode(String str) {
        int i;
        if (Build.VERSION.SDK_INT >= 19) {
            return ParcelFileDescriptor.parseMode(str);
        }
        if ("r".equals(str)) {
            i = 268435456;
        } else if ("w".equals(str) || "wt".equals(str)) {
            i = 738197504;
        } else if ("wa".equals(str)) {
            i = 704643072;
        } else if ("rw".equals(str)) {
            i = 939524096;
        } else if (!"rwt".equals(str)) {
            throw new IllegalArgumentException("Bad mode '" + str + "'");
        } else {
            i = 1006632960;
        }
        return i;
    }

    public static void verifyMediaContentProvider(Context context) {
        try {
            ProviderInfo providerInfo = context.getPackageManager().getProviderInfo(new ComponentName(context, MediaContentProvider.class), 128);
            String authority = getAuthority(context);
            if (authority.equals(providerInfo.authority)) {
                return;
            }
            String str = TAG;
            MMLog.m4068e(str, "MediaContentProvider authority is not set properly in your AndroidManifest.xml. Currently set to '" + providerInfo.authority + "' but should be '" + authority + "'");
        } catch (PackageManager.NameNotFoundException e) {
            MMLog.m4067e(TAG, "MediaContentProvider not found. Please verify your AndroidManifest.xml", e);
        }
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
        URI_MATCHER.addURI(getAuthority(getContext()), PhoneConstants.APN_TYPE_ALL, 1);
        return true;
    }

    @Override // android.content.ContentProvider
    public ParcelFileDescriptor openFile(Uri uri, String str) {
        if (MMLog.isDebugEnabled()) {
            String str2 = TAG;
            MMLog.m4070d(str2, "Request to resolve uri = " + uri.toString() + ", with mode = " + str);
        }
        if (URI_MATCHER.match(uri) == 1) {
            File file = new File(EnvironmentUtils.getPicturesDirectory(), uri.getLastPathSegment());
            if (MMLog.isDebugEnabled()) {
                MMLog.m4070d(TAG, String.format("Resolved: \n%s, to:\n%s", uri, file.getPath()));
            }
            if (!file.exists()) {
                throw new FileNotFoundException(String.format("MediaContentProvider cannot find file %s", file.toString()));
            }
            return ParcelFileDescriptor.open(file, parseMode(str));
        }
        throw new FileNotFoundException("Requested uri is not supported by MediaContentProvider");
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
