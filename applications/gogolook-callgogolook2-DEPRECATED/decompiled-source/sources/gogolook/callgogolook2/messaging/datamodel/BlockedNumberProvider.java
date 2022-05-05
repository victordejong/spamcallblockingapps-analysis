package gogolook.callgogolook2.messaging.datamodel;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.UriMatcher;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import gogolook.callgogolook2.realm.obj.logsgroup.LogsGroupRealmObject;
import p459j.p460a.p474c0.p475c.AbstractC11528g;
import p459j.p460a.p474c0.p475c.C11521c;
import p459j.p460a.p474c0.p475c.C11534l;
import p459j.p460a.p582w0.C14108o4;
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/datamodel/BlockedNumberProvider.class */
public class BlockedNumberProvider extends ContentProvider {

    /* renamed from: a */
    public static final String f11171a = BlockedNumberProvider.class.getSimpleName();

    /* renamed from: b */
    public static final UriMatcher f11172b = new UriMatcher(-1);

    static {
        f11172b.addURI("gogolook.callgogolook2.messaging.provider", "blocked/*", 1);
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
        return true;
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        if (f11172b.match(uri) != 1) {
            String str3 = f11171a;
            Log.e(str3, "Unsupported URI: " + uri);
            return null;
        }
        MatrixCursor matrixCursor = new MatrixCursor(new String[]{"e164", LogsGroupRealmObject.BLOCKED});
        MatrixCursor.RowBuilder newRow = matrixCursor.newRow();
        C11534l f = AbstractC11528g.m9259k().mo9244f();
        String l = C14108o4.m2474l(Uri.decode(uri.getLastPathSegment()));
        if (f != null && !TextUtils.isEmpty(l)) {
            newRow.add(l);
            newRow.add(Integer.valueOf(C11521c.m9324p(f, l) ? 1 : 0));
        }
        return matrixCursor;
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        String str2 = f11171a;
        Log.e(str2, "Unsupported URI: " + uri);
        return 0;
    }
}
