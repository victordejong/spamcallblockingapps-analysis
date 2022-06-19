package p000;

import android.database.Cursor;
import android.text.TextUtils;
import p000.fa1;
import p000.i91;
import p000.q71;
/* renamed from: g81 */
/* loaded from: classes3-dex2jar.jar:g81.class */
public class g81 {
    /* renamed from: a */
    public static void m1688a() {
        m1687b(false);
        m1687b(true);
    }

    /* renamed from: b */
    public static void m1687b(boolean z) {
        int i;
        q71.EnumC1620g enumC1620g;
        int i2;
        try {
            Cursor query = e81.m2192g().query(z ? "ld" : "ja", new String[]{"display", "strftime('%s', stamp)*1000 AS stamp", "name", "typeid"}, null, null, null, null, "stamp");
            if (query == null) {
                return;
            }
            if (!query.moveToFirst()) {
                return;
            }
            int i3 = 0;
            int i4 = 0;
            do {
                i = i3 + 1;
                if (z) {
                    try {
                        enumC1620g = q71.EnumC1620g.WHITE_LIST;
                    } catch (Exception e) {
                        j91.m1504l("Migration - NumberRules", "", e);
                        return;
                    } finally {
                        query.close();
                    }
                } else {
                    enumC1620g = q71.EnumC1620g.BLACK_LIST;
                }
                try {
                    String m1799p = fa1.C1420e.m1799p(query.getString(query.getColumnIndex("display")));
                    if (TextUtils.isEmpty(m1799p)) {
                        i2 = i4;
                    } else {
                        i91 m1800o = fa1.C1420e.m1800o(m1799p);
                        Long valueOf = Long.valueOf(query.getLong(query.getColumnIndex("stamp")));
                        String string = query.getString(query.getColumnIndex("name"));
                        x81 x81Var = new x81();
                        x81Var.f8637g = m1800o;
                        x81Var.f8636f = string;
                        x81Var.f8641l = enumC1620g;
                        x81Var.f8642m = valueOf.longValue();
                        x81Var.f8640k = q71.EnumC1614a.DEFAULT;
                        x81Var.f8639j = e81.m2193f(query.getString(query.getColumnIndex("typeid")));
                        x81Var.f8638h = i91.EnumC1446b.FULL;
                        String str = "Phone: " + m1800o + ", stamp: " + valueOf + ", Name: " + string;
                        if (x81Var.mo148z()) {
                            i2 = i4 + 1;
                        } else {
                            j91.m1505k("Migration - NumberRules", "Save fails");
                            i2 = i4;
                        }
                    }
                } catch (Exception e2) {
                    j91.m1504l("Migration - NumberRules", "Skip wrong record", e2);
                    i2 = i4;
                }
                i3 = i;
                i4 = i2;
            } while (query.moveToNext());
            query.close();
            String str2 = "Migrating phone list. Count record: " + i + ", inserted record: " + i2;
        } catch (Exception e3) {
        }
    }
}
