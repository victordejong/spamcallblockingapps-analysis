package p193e.p194a.p1053m0;

import android.content.ContentProviderOperation;
import android.content.ContentResolver;
import android.content.OperationApplicationException;
import android.database.Cursor;
import android.net.Uri;
import java.io.IOException;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.Map;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1129p5.AbstractC19244l0;
import p193e.p194a.p437c.p578p.C10480a;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.content.ParticipantsUpdateHelper$updateParticipantsCountryCodesAsync$1", f = "ParticipantsUpdateHelper.kt", l = {}, m = "invokeSuspend")
/* renamed from: e.a.m0.y0 */
/* loaded from: classes8-dex2jar.jar:e/a/m0/y0.class */
public final class C18138y0 extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public final /* synthetic */ C18140z0 f51047e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C18138y0(C18140z0 c18140z0, d dVar) {
        super(2, dVar);
        this.f51047e = c18140z0;
    }

    /* renamed from: i */
    public final d<s> m15462i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C18138y0(this.f51047e, dVar);
    }

    /* renamed from: k */
    public final Object m15461k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        C18138y0 c18138y0 = new C18138y0(this.f51047e, dVar);
        s sVar = s.a;
        c18138y0.m15460s(sVar);
        return sVar;
    }

    /* renamed from: s */
    public final Object m15460s(Object obj) {
        String mo28180k;
        C25225a.m3932a3(obj);
        AbstractC19244l0 mo13749a = this.f51047e.f51051d.mo13749a("participants-country-code");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Cursor cursor = null;
        try {
            Cursor query = this.f51047e.f51048a.query(C17891a1.C17902k.m15675H(), new String[]{"normalized_destination"}, "type = ? AND (country_code IS NULL OR country_code = \"\")", new String[]{String.valueOf(0)}, null);
            if (query != null) {
                while (true) {
                    cursor = query;
                    if (!query.moveToNext()) {
                        break;
                    }
                    String string = query.getString(0);
                    l.d(string, "cursor.getString(0)");
                    if ((string.length() > 0) && !linkedHashMap.containsKey(string) && (mo28180k = this.f51047e.f51049b.mo28180k(string)) != null) {
                        if (!(mo28180k.length() == 0)) {
                            linkedHashMap.put(string, mo28180k);
                        }
                    }
                }
            }
            if (query != null) {
                try {
                    query.close();
                } catch (IOException e) {
                }
            }
            if (!linkedHashMap.isEmpty()) {
                ArrayList arrayList = new ArrayList(linkedHashMap.size());
                for (Map.Entry entry : linkedHashMap.entrySet()) {
                    arrayList.add(ContentProviderOperation.newUpdate(C17891a1.C17902k.m15675H()).withValue("country_code", entry.getValue()).withSelection("normalized_destination = ?", new String[]{(String) entry.getKey()}).build());
                }
                try {
                    ContentResolver contentResolver = this.f51047e.f51048a;
                    Uri uri = C17891a1.f50888a;
                    l.d(contentResolver.applyBatch("com.truecaller", new ArrayList<>(arrayList)), "contentResolver.applyBat…), ArrayList(operations))");
                } catch (OperationApplicationException e2) {
                    C10480a.m26057J1(e2, "Updating participants' country codes failed");
                }
            }
            mo13749a.stop();
            return s.a;
        } catch (Throwable th) {
            if (cursor != null) {
                try {
                    cursor.close();
                } catch (IOException e3) {
                }
            }
            throw th;
        }
    }
}
