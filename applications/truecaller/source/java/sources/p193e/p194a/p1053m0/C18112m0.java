package p193e.p194a.p1053m0;

import android.content.ContentValues;
import android.database.sqlite.SQLiteStatement;
import android.net.Uri;
import android.text.TextUtils;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p372b0.p413i.AbstractC8448a;
import p193e.p194a.p372b0.p413i.p414e.C8456a;
/* renamed from: e.a.m0.m0 */
/* loaded from: classes8-dex2jar.jar:e/a/m0/m0.class */
public class C18112m0 implements C8456a.AbstractC8458b, C8456a.AbstractC8462f {
    @Override // p193e.p194a.p372b0.p413i.p414e.C8456a.AbstractC8458b
    /* renamed from: a */
    public Uri mo15466a(AbstractC8448a abstractC8448a, C8456a c8456a, Uri uri, ContentValues contentValues, Uri uri2) {
        if (contentValues.getAsInteger("data_type").intValue() == 4) {
            String asString = contentValues.getAsString("data1");
            String asString2 = contentValues.getAsString("tc_id");
            if (!TextUtils.isEmpty(asString) && !TextUtils.isEmpty(asString2)) {
                SQLiteStatement compileStatement = abstractC8448a.m28528m().compileStatement("UPDATE history SET tc_id=? WHERE tc_id IS NULL AND normalized_number=?");
                try {
                    compileStatement.bindString(1, asString2);
                    compileStatement.bindString(2, asString);
                    if (compileStatement.executeUpdateDelete() > 0) {
                        abstractC8448a.m28532i(C17891a1.C17901j.m15699b());
                    }
                } finally {
                    compileStatement.close();
                }
            }
        }
        return uri2;
    }

    @Override // p193e.p194a.p372b0.p413i.p414e.C8456a.AbstractC8462f
    /* renamed from: c */
    public Uri mo15464c(AbstractC8448a abstractC8448a, C8456a c8456a, Uri uri, ContentValues contentValues) {
        Integer asInteger = contentValues.getAsInteger("data_type");
        if (asInteger == null || asInteger.intValue() != 4 || !TextUtils.isEmpty(contentValues.getAsString("data1"))) {
            return null;
        }
        contentValues.remove("data1");
        return null;
    }
}
