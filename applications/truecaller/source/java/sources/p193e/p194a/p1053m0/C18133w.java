package p193e.p194a.p1053m0;

import android.content.ContentValues;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.net.Uri;
import com.truecaller.log.AssertionUtil;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p372b0.p413i.AbstractC8448a;
import p193e.p194a.p372b0.p413i.p414e.C8456a;
import s1.z.c.l;
/* renamed from: e.a.m0.w */
/* loaded from: classes8-dex2jar.jar:e/a/m0/w.class */
public final class C18133w implements C8456a.AbstractC8464h, C8456a.AbstractC8461e, C8456a.AbstractC8462f {
    @Override // p193e.p194a.p372b0.p413i.p414e.C8456a.AbstractC8464h
    /* renamed from: a */
    public int mo15463a(AbstractC8448a abstractC8448a, C8456a c8456a, Uri uri, ContentValues contentValues, String str, String[] strArr) {
        l.e(abstractC8448a, "provider");
        l.e(c8456a, "helper");
        l.e(uri, "uri");
        l.e(contentValues, "values");
        throw new SQLiteException("Update not supported");
    }

    @Override // p193e.p194a.p372b0.p413i.p414e.C8456a.AbstractC8461e
    /* renamed from: b */
    public int mo15465b(AbstractC8448a abstractC8448a, C8456a c8456a, Uri uri, String str, String[] strArr) {
        l.e(abstractC8448a, "provider");
        l.e(c8456a, "helper");
        l.e(uri, "uri");
        String queryParameter = uri.getQueryParameter("im_peer_id");
        if (queryParameter != null) {
            if (str != null || strArr != null) {
                throw new SQLiteException("A selection is not supported for delete operations");
            }
            SQLiteDatabase m28528m = abstractC8448a.m28528m();
            ContentValues contentValues = new ContentValues();
            contentValues.put("tc_im_peer_id", (String) null);
            m28528m.update("msg_participants", contentValues, "tc_im_peer_id = ?", new String[]{queryParameter});
            return abstractC8448a.m28528m().delete("msg_im_users", "im_peer_id = ?", new String[]{queryParameter});
        }
        throw new SQLiteException("IM ID must be specified");
    }

    @Override // p193e.p194a.p372b0.p413i.p414e.C8456a.AbstractC8462f
    /* renamed from: c */
    public Uri mo15464c(AbstractC8448a abstractC8448a, C8456a c8456a, Uri uri, ContentValues contentValues) {
        l.e(abstractC8448a, "provider");
        l.e(c8456a, "helper");
        l.e(uri, "uri");
        l.e(contentValues, "values");
        String asString = contentValues.getAsString("normalized_number");
        String asString2 = contentValues.getAsString("im_peer_id");
        AssertionUtil.AlwaysFatal.isTrue((asString == null && asString2 == null) ? false : true, new String[0]);
        SQLiteDatabase m28528m = abstractC8448a.m28528m();
        l.d(m28528m, "provider.database");
        if ((asString == null || m28528m.updateWithOnConflict("msg_im_users", contentValues, "normalized_number=?", new String[]{asString}, 5) <= 0) && (asString2 == null || m28528m.updateWithOnConflict("msg_im_users", contentValues, "im_peer_id=?", new String[]{asString2}, 5) <= 0)) {
            m28528m.insertWithOnConflict("msg_im_users", null, contentValues, 5);
        }
        if (contentValues.containsKey("im_peer_id") && asString != null) {
            SQLiteDatabase m28528m2 = abstractC8448a.m28528m();
            l.d(m28528m2, "provider.database");
            if (C19291g.m13584U0(m28528m2, "msg_participants", "_id", "normalized_destination = ?", new String[]{asString}) != null) {
                ContentValues contentValues2 = new ContentValues();
                contentValues2.put("type", (Integer) 0);
                contentValues2.put("normalized_destination", asString);
                contentValues2.put("tc_im_peer_id", asString2);
                abstractC8448a.insert(C17891a1.C17902k.m15675H(), contentValues2);
            }
        }
        return uri;
    }
}
