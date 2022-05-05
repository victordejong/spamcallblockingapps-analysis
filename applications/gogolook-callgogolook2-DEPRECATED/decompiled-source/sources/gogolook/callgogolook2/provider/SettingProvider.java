package gogolook.callgogolook2.provider;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.net.Uri;
import androidx.annotation.Nullable;
import p459j.p460a.p541n0.C13032a;
import p459j.p460a.p582w0.C13915b3;
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/provider/SettingProvider.class */
public class SettingProvider extends ContentProvider {

    /* renamed from: a */
    public static final String[] f12499a = {"name", "type", C13032a.f29462d};

    /* renamed from: b */
    public static final String[] f12500b = {"is_stranger_call_popup", "is_contact_call_popup"};

    /* renamed from: a */
    public final boolean m26410a(String str) {
        for (String str2 : f12500b) {
            if (str2.equals(str)) {
                return true;
            }
        }
        return false;
    }

    @Override // android.content.ContentProvider
    public int delete(Uri uri, String str, String[] strArr) {
        return 0;
    }

    @Override // android.content.ContentProvider
    @Nullable
    public String getType(Uri uri) {
        return null;
    }

    @Override // android.content.ContentProvider
    @Nullable
    public Uri insert(Uri uri, ContentValues contentValues) {
        return null;
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        return false;
    }

    @Override // android.content.ContentProvider
    @Nullable
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        if (strArr == null || strArr.length <= 0) {
            return null;
        }
        MatrixCursor matrixCursor = new MatrixCursor(f12499a);
        for (int i = 0; i < strArr.length; i++) {
            if (m26410a(C13915b3.m3041g(strArr[i]))) {
                int parseInt = Integer.parseInt(strArr2[i]);
                if (parseInt == 0) {
                    matrixCursor.addRow(new Object[]{strArr[i], 0, String.valueOf(C13915b3.m3059b(strArr[i]))});
                } else if (parseInt == 1) {
                    matrixCursor.addRow(new Object[]{strArr[i], 1, String.valueOf(C13915b3.m3053c(strArr[i]))});
                } else if (parseInt == 2) {
                    matrixCursor.addRow(new Object[]{strArr[i], 2, String.valueOf(C13915b3.m3049d(strArr[i]))});
                } else if (parseInt == 3) {
                    matrixCursor.addRow(new Object[]{strArr[i], 3, C13915b3.m3045e(strArr[i])});
                }
            }
        }
        return matrixCursor;
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        return 0;
    }
}
