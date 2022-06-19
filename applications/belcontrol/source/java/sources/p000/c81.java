package p000;

import android.database.Cursor;
import android.text.TextUtils;
import com.mopub.network.ImpressionData;
import p000.fa1;
import p000.i91;
import p000.q71;
/* renamed from: c81 */
/* loaded from: classes3-dex2jar.jar:c81.class */
public class c81 {
    /* renamed from: a */
    public static void m5417a() {
        m5416b(false);
        m5416b(true);
    }

    /* renamed from: b */
    public static void m5416b(boolean z) {
        int i;
        q71.EnumC1620g enumC1620g;
        int i2;
        i91.EnumC1446b enumC1446b;
        try {
            Cursor query = e81.m2192g().query(z ? "le" : "jb", new String[]{"display", "strftime('%s', stamp)*1000 AS stamp", ImpressionData.COUNTRY, "name", "typeid"}, null, null, null, null, "stamp");
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
                        j91.m1504l("Migration - AreaRules", "", e);
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
                        long j = query.getLong(query.getColumnIndex("stamp"));
                        String str = query.getString(query.getColumnIndex(ImpressionData.COUNTRY)) + m1799p;
                        int length = str.length();
                        if (length == 3 || length == 4 || length == 5 || length == 6) {
                            enumC1446b = i91.EnumC1446b.AREA_CODE;
                            str = str + "555555555555".substring(0, 11 - str.length());
                        } else {
                            enumC1446b = i91.EnumC1446b.FULL;
                        }
                        i91 m1800o = fa1.C1420e.m1800o(str);
                        x81 x81Var = new x81();
                        x81Var.f8641l = enumC1620g;
                        x81Var.f8637g = m1800o;
                        x81Var.f8642m = Long.valueOf(j).longValue();
                        x81Var.f8636f = query.getString(query.getColumnIndex("name"));
                        x81Var.f8640k = q71.EnumC1614a.DEFAULT;
                        x81Var.f8639j = e81.m2193f(query.getString(query.getColumnIndex("typeid")));
                        x81Var.f8638h = enumC1446b;
                        i2 = i4;
                        if (m1800o.m1594t()) {
                            i2 = i4;
                            if (x81Var.mo148z()) {
                                i2 = i4 + 1;
                            }
                        }
                    }
                } catch (Exception e2) {
                    j91.m1505k("Migration - AreaRules", "Area migration error");
                    i2 = i4;
                }
                i3 = i;
                i4 = i2;
            } while (query.moveToNext());
            query.close();
            String str2 = "Migrating area rules. Count record: " + i + ", inserted record: " + i2;
        } catch (Exception e3) {
        }
    }
}
