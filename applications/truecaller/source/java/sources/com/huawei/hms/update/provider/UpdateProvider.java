package com.huawei.hms.update.provider;

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
import com.huawei.hms.availableupdate.C2264n;
import java.io.File;
import java.io.FileNotFoundException;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/update/provider/UpdateProvider.class */
public class UpdateProvider extends ContentProvider {
    public static final String AUTHORITIES_SUFFIX = ".hms.update.provider";

    /* renamed from: a */
    public static final String[] f7825a = {"_display_name", "_size"};

    /* renamed from: b */
    public static C2264n f7826b = new C2264n();

    /* renamed from: a */
    public static int m37180a(String str) {
        int i;
        if ("r".equals(str)) {
            i = 268435456;
        } else if ("w".equals(str) || "wt".equals(str)) {
            i = 738197504;
        } else if ("wa".equals(str)) {
            i = 704643072;
        } else if ("rw".equals(str)) {
            i = 939524096;
        } else if (!"rwt".equals(str)) {
            throw new IllegalArgumentException(C22128a.m8543z2("Invalid mode: ", str));
        } else {
            i = 1006632960;
        }
        return i;
    }

    /* renamed from: a */
    public static Object[] m37179a(Object[] objArr, int i) {
        Object[] objArr2 = new Object[i];
        System.arraycopy(objArr, 0, objArr2, 0, i);
        return objArr2;
    }

    /* renamed from: a */
    public static String[] m37178a(String[] strArr, int i) {
        String[] strArr2 = new String[i];
        System.arraycopy(strArr, 0, strArr2, 0, i);
        return strArr2;
    }

    public static File getLocalFile(Context context, String str) {
        f7826b.m38139a(context.getApplicationContext());
        return f7826b.m38135a(str);
    }

    public static Uri getUriForFile(Context context, String str, File file) {
        f7826b.m38139a(context.getApplicationContext());
        return f7826b.m38136a(file, str);
    }

    @Override // android.content.ContentProvider
    public void attachInfo(Context context, ProviderInfo providerInfo) {
        super.attachInfo(context, providerInfo);
        if (!providerInfo.exported) {
            if (!providerInfo.grantUriPermissions) {
                throw new SecurityException("Provider must grant uri permissions");
            }
            return;
        }
        throw new SecurityException("Provider must not be exported");
    }

    @Override // android.content.ContentProvider
    public int delete(Uri uri, String str, String[] strArr) {
        f7826b.m38139a(getContext().getApplicationContext());
        return f7826b.m38138a(uri).delete() ? 1 : 0;
    }

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        if (getContext() == null) {
            return "application/octet-stream";
        }
        f7826b.m38139a(getContext().getApplicationContext());
        String name = f7826b.m38138a(uri).getName();
        int lastIndexOf = name.lastIndexOf(46);
        if (lastIndexOf < 0) {
            return "application/octet-stream";
        }
        String mimeTypeFromExtension = MimeTypeMap.getSingleton().getMimeTypeFromExtension(name.substring(lastIndexOf + 1));
        return !TextUtils.isEmpty(mimeTypeFromExtension) ? mimeTypeFromExtension : "application/octet-stream";
    }

    @Override // android.content.ContentProvider
    public Uri insert(Uri uri, ContentValues contentValues) {
        throw new UnsupportedOperationException("No external inserts");
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        return true;
    }

    @Override // android.content.ContentProvider
    public ParcelFileDescriptor openFile(Uri uri, String str) throws FileNotFoundException {
        f7826b.m38139a(getContext().getApplicationContext());
        return ParcelFileDescriptor.open(f7826b.m38138a(uri), m37180a(str));
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        int i;
        int i2;
        f7826b.m38139a(getContext().getApplicationContext());
        File m38138a = f7826b.m38138a(uri);
        String[] strArr3 = strArr;
        if (strArr == null) {
            strArr3 = f7825a;
        }
        String[] strArr4 = new String[strArr3.length];
        Object[] objArr = new Object[strArr3.length];
        int length = strArr3.length;
        int i3 = 0;
        int i4 = 0;
        while (true) {
            int i5 = i4;
            if (i3 >= length) {
                String[] m37178a = m37178a(strArr4, i5);
                Object[] m37179a = m37179a(objArr, i5);
                MatrixCursor matrixCursor = new MatrixCursor(m37178a, 1);
                matrixCursor.addRow(m37179a);
                return matrixCursor;
            }
            String str3 = strArr3[i3];
            if ("_display_name".equals(str3)) {
                strArr4[i5] = "_display_name";
                objArr[i5] = m38138a.getName();
                i2 = i5 + 1;
            } else {
                i = i5;
                if ("_size".equals(str3)) {
                    strArr4[i5] = "_size";
                    objArr[i5] = Long.valueOf(m38138a.length());
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
        throw new UnsupportedOperationException("No external updates");
    }
}
