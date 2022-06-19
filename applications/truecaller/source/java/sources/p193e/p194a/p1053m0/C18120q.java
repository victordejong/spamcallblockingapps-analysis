package p193e.p194a.p1053m0;

import android.content.ContentValues;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDoneException;
import android.database.sqlite.SQLiteStatement;
import android.net.Uri;
import android.text.TextUtils;
import p193e.p194a.p1053m0.p1058d1.AbstractC18091a;
import p193e.p194a.p372b0.p413i.AbstractC8448a;
import p193e.p194a.p372b0.p413i.p414e.C8456a;
/* renamed from: e.a.m0.q */
/* loaded from: classes8-dex2jar.jar:e/a/m0/q.class */
public class C18120q implements C8456a.AbstractC8458b {

    /* renamed from: a */
    public SQLiteStatement f51036a;

    /* renamed from: b */
    public AbstractC18091a f51037b;

    public C18120q(AbstractC18091a abstractC18091a) {
        this.f51037b = abstractC18091a;
    }

    @Override // p193e.p194a.p372b0.p413i.p414e.C8456a.AbstractC8458b
    /* renamed from: a */
    public Uri mo15466a(AbstractC8448a abstractC8448a, C8456a c8456a, Uri uri, ContentValues contentValues, Uri uri2) {
        if (contentValues.get("tc_id") == null) {
            String asString = contentValues.getAsString("normalized_number");
            if (!TextUtils.isEmpty(asString)) {
                SQLiteDatabase m28528m = abstractC8448a.m28528m();
                if (this.f51036a == null) {
                    synchronized (this) {
                        if (this.f51036a == null) {
                            this.f51036a = m28528m.compileStatement("SELECT tc_id FROM data WHERE data1=? AND data_type=4");
                        }
                    }
                }
                this.f51036a.bindString(1, asString);
                try {
                    String simpleQueryForString = this.f51036a.simpleQueryForString();
                    if (!TextUtils.isEmpty(simpleQueryForString)) {
                        contentValues.clear();
                        contentValues.put("tc_id", simpleQueryForString);
                        m28528m.updateWithOnConflict("history", contentValues, "_id=?", new String[]{uri2.getLastPathSegment()}, 4);
                    }
                } catch (SQLiteDoneException e) {
                }
            }
        }
        this.f51037b.mo15495a(contentValues);
        return uri2;
    }
}
