package p193e.p194a.p1053m0;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.net.Uri;
import com.mopub.mobileads.VastIconXmlManager;
import com.truecaller.messaging.data.types.Mention;
import e.m.e.k;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import p193e.p194a.p195a.AbstractC6392i0;
import p193e.p194a.p372b0.p413i.AbstractC8448a;
import p193e.p194a.p372b0.p413i.p414e.C8456a;
import p193e.p194a.p372b0.p430q.C8582g0;
import s1.u.i;
import s1.z.c.l;
/* renamed from: e.a.m0.u */
/* loaded from: classes8-dex2jar.jar:e/a/m0/u.class */
public final class C18129u implements C8456a.AbstractC8462f {

    /* renamed from: a */
    public final AbstractC6392i0 f51046a;

    public C18129u(AbstractC6392i0 abstractC6392i0) {
        l.e(abstractC6392i0, "messagingSettings");
        this.f51046a = abstractC6392i0;
    }

    /* renamed from: a */
    public final List<Mention> m15468a(SQLiteDatabase sQLiteDatabase, int i) {
        Cursor query = sQLiteDatabase.query("msg_im_mentions", new String[]{"_id", "im_id", "m_offset", "m_length", "private_name", "public_name"}, "message_id = ?", new String[]{String.valueOf(i)}, null, null, "m_offset ASC");
        ArrayList arrayList = null;
        if (query != null) {
            try {
                arrayList = new ArrayList();
                while (query.moveToNext()) {
                    long j = query.getLong(0);
                    String string = query.getString(1);
                    l.d(string, "getString(1)");
                    int i2 = query.getInt(2);
                    int i3 = query.getInt(3);
                    String string2 = query.getString(4);
                    l.d(string2, "getString(4)");
                    String string3 = query.getString(5);
                    l.d(string3, "getString(5)");
                    arrayList.add(new Mention(j, string, i2, i3, string2, string3));
                }
                th = null;
            } finally {
                try {
                    throw th;
                } finally {
                }
            }
        }
        return arrayList;
    }

    @Override // p193e.p194a.p372b0.p413i.p414e.C8456a.AbstractC8462f
    /* renamed from: c */
    public Uri mo15464c(AbstractC8448a abstractC8448a, C8456a c8456a, Uri uri, ContentValues contentValues) {
        l.e(abstractC8448a, "provider");
        l.e(c8456a, "helper");
        l.e(uri, "uri");
        l.e(contentValues, "values");
        SQLiteDatabase m28528m = abstractC8448a.m28528m();
        l.d(m28528m, "provider.database");
        long insert = m28528m.insert("msg_im_mentions", null, contentValues);
        Integer asInteger = contentValues.getAsInteger("message_id");
        l.d(asInteger, "values.getAsInteger(ImMentionsTable.MESSAGE_ID)");
        int intValue = asInteger.intValue();
        if (intValue != -1 && insert != -1) {
            List<Mention> m15468a = m15468a(m28528m, intValue);
            ArrayList a1 = m15468a != null ? i.a1(m15468a) : new ArrayList();
            String asString = contentValues.getAsString("im_id");
            Integer asInteger2 = contentValues.getAsInteger("m_offset");
            Integer asInteger3 = contentValues.getAsInteger("m_length");
            String asString2 = contentValues.getAsString("private_name");
            String asString3 = contentValues.getAsString("public_name");
            l.d(asString, "imId");
            l.d(asInteger2, VastIconXmlManager.OFFSET);
            int intValue2 = asInteger2.intValue();
            l.d(asInteger3, "length");
            int intValue3 = asInteger3.intValue();
            l.d(asString2, "privateName");
            l.d(asString3, "publicName");
            a1.add(new Mention(insert, asString, intValue2, intValue3, asString2, asString3));
            ContentValues contentValues2 = new ContentValues();
            boolean z = false;
            Object[] array = a1.toArray(new Mention[0]);
            Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
            Mention[] mentionArr = (Mention[]) array;
            l.e(mentionArr, "$this$mentionsToJson");
            String n = new k().n(mentionArr, Mention[].class);
            l.d(n, "Gson().toJson(this, Array<Mention>::class.java)");
            contentValues2.put("info11", n);
            if (m28528m.update("msg_messages", contentValues2, "_id = ?", new String[]{String.valueOf(intValue)}) > 0) {
                z = true;
            }
            if (z) {
                abstractC8448a.m28532i(C8582g0.m28295y());
            }
        }
        Uri m28516a = c8456a.m28516a(insert);
        l.d(m28516a, "helper.getContentUri(ins…abase, provider, values))");
        return m28516a;
    }
}
