package com.huawei.updatesdk.fileprovider;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.content.pm.ProviderInfo;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.text.TextUtils;
import android.webkit.MimeTypeMap;
import com.huawei.updatesdk.p097a.p098a.p100c.p101a.p102a.C2515a;
import com.tenor.android.core.constant.StringConstant;
import java.io.File;
/* loaded from: classes3-dex2jar.jar:com/huawei/updatesdk/fileprovider/UpdateSdkFileProvider.class */
public class UpdateSdkFileProvider extends ContentProvider {
    public static final String AUTHORITIES_SUFFIX = ".updateSdk.fileProvider";
    private static final String[] COLUMNS = {"_display_name", "_size"};
    private static final String TAG = "UpdateSdkFileProvider";
    private static AbstractC2582a mWStrategy;
    private String authority;

    private static File buildPath(File file, String... strArr) {
        int length = strArr.length;
        int i = 0;
        while (i < length) {
            String str = strArr[i];
            File file2 = file;
            if (str != null) {
                file2 = new File(file, str);
            }
            i++;
            file = file2;
        }
        return file;
    }

    private static Object[] copy(Object[] objArr, int i) {
        Object[] objArr2 = new Object[i];
        System.arraycopy(objArr, 0, objArr2, 0, i);
        return objArr2;
    }

    private static String[] copy(String[] strArr, int i) {
        String[] strArr2 = new String[i];
        System.arraycopy(strArr, 0, strArr2, 0, i);
        return strArr2;
    }

    private static AbstractC2582a createWiseDistPathStrategy(Context context, String str) {
        AbstractC2582a abstractC2582a;
        synchronized (UpdateSdkFileProvider.class) {
            try {
                if (mWStrategy == null) {
                    mWStrategy = new b(str);
                    if (context.getFilesDir() != null) {
                        mWStrategy.m36546a("updatesdkapk", buildPath(context.getFilesDir(), StringConstant.SLASH));
                    }
                }
                abstractC2582a = mWStrategy;
            } catch (Throwable th) {
                throw th;
            }
        }
        return abstractC2582a;
    }

    public static Uri getUriForFile(Context context, String str, File file) {
        createWiseDistPathStrategy(context, str);
        return mWStrategy.m36547a(file);
    }

    @Override // android.content.ContentProvider
    public void attachInfo(Context context, ProviderInfo providerInfo) {
        super.attachInfo(context, providerInfo);
        if (!providerInfo.exported) {
            if (!providerInfo.grantUriPermissions) {
                throw new SecurityException("WiseDist Provider must grant uri permissions");
            }
            String str = providerInfo.authority;
            this.authority = str;
            createWiseDistPathStrategy(context, str);
            return;
        }
        throw new SecurityException("WiseDist Provider must not be exported");
    }

    @Override // android.content.ContentProvider
    public int delete(Uri uri, String str, String[] strArr) {
        throw new UnsupportedOperationException("No external updates");
    }

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        String mimeTypeFromExtension;
        return (uri == null || TextUtils.isEmpty(uri.toString()) || !uri.toString().endsWith("apk") || (mimeTypeFromExtension = MimeTypeMap.getSingleton().getMimeTypeFromExtension("apk")) == null) ? "application/octet-stream" : mimeTypeFromExtension;
    }

    @Override // android.content.ContentProvider
    public Uri insert(Uri uri, ContentValues contentValues) {
        throw new UnsupportedOperationException("No external inserts!");
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        return true;
    }

    @Override // android.content.ContentProvider
    public ParcelFileDescriptor openFile(Uri uri, String str) {
        if (uri == null || uri.getAuthority() == null || !uri.getAuthority().equals(this.authority)) {
            return null;
        }
        File m36548a = mWStrategy.m36548a(uri);
        if (m36548a.getName().endsWith("apk")) {
            return ParcelFileDescriptor.open(m36548a, 268435456);
        }
        C2515a.m36847b(TAG, "can not open this file.");
        return null;
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        int i;
        int i2;
        File m36548a = mWStrategy.m36548a(uri);
        String[] strArr3 = strArr;
        if (strArr == null) {
            strArr3 = COLUMNS;
        }
        String[] strArr4 = new String[strArr3.length];
        Object[] objArr = new Object[strArr3.length];
        int length = strArr3.length;
        int i3 = 0;
        int i4 = 0;
        while (true) {
            int i5 = i4;
            if (i3 >= length) {
                String[] copy = copy(strArr4, i5);
                Object[] copy2 = copy(objArr, i5);
                MatrixCursor matrixCursor = new MatrixCursor(copy, 1);
                matrixCursor.addRow(copy2);
                return matrixCursor;
            }
            String str3 = strArr3[i3];
            if ("_display_name".equals(str3)) {
                strArr4[i5] = "_display_name";
                objArr[i5] = m36548a.getName();
                i2 = i5 + 1;
            } else {
                i = i5;
                if ("_size".equals(str3)) {
                    strArr4[i5] = "_size";
                    objArr[i5] = Long.valueOf(m36548a.length());
                    i2 = i5 + 1;
                } else {
                    i3++;
                    i4 = i;
                }
            }
            i = i2;
            i3++;
            i4 = i;
        }
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        throw new UnsupportedOperationException("No external updates!");
    }
}
