package p000;

import android.database.Cursor;
import android.text.TextUtils;
import com.android.internal.telephony.PhoneConstants;
import p000.fa1;
import p000.i91;
import p000.q71;
/* renamed from: f81 */
/* loaded from: classes3-dex2jar.jar:f81.class */
public class f81 {
    /* renamed from: a */
    public static void m1919a() {
        m1918b(false);
        m1918b(true);
    }

    /* renamed from: b */
    public static void m1918b(boolean z) {
        int i;
        int i2;
        try {
            Cursor query = e81.m2192g().query(z ? "lf" : "jc", new String[]{"display", "strftime('%s', stamp)*1000 AS stamp", "name", "typeid"}, null, null, null, null, "stamp");
            if (query == null) {
                return;
            }
            if (!query.moveToFirst()) {
                query.close();
                return;
            }
            q71.EnumC1620g enumC1620g = z ? q71.EnumC1620g.WHITE_LIST : q71.EnumC1620g.BLACK_LIST;
            int i3 = 0;
            int i4 = 0;
            do {
                i = i3 + 1;
                try {
                    try {
                        String replaceAll = query.getString(query.getColumnIndex("display")).replaceAll("[^\\d\\?]+", "").replaceAll(" ", "");
                        i2 = i4;
                        if (replaceAll != null) {
                            if (TextUtils.isEmpty(replaceAll)) {
                                i2 = i4;
                            } else {
                                long j = query.getLong(query.getColumnIndex("stamp"));
                                String str = "Pattern is " + replaceAll;
                                x81 x81Var = new x81();
                                x81Var.f8641l = enumC1620g;
                                x81Var.f8642m = Long.valueOf(j).longValue();
                                x81Var.f8636f = query.getString(query.getColumnIndex("name"));
                                x81Var.f8640k = q71.EnumC1614a.DEFAULT;
                                x81Var.f8639j = e81.m2193f(query.getString(query.getColumnIndex("typeid")));
                                x81Var.f8638h = i91.EnumC1446b.ARBITRARY;
                                x81Var.f8637g = fa1.C1420e.m1800o(replaceAll.replaceAll("\\D", "5"));
                                x81Var.f8637g.m1591w(PhoneConstants.APN_TYPE_ALL + replaceAll);
                                i2 = i4;
                                if (x81Var.mo148z()) {
                                    i2 = i4 + 1;
                                }
                            }
                        }
                    } catch (Throwable th) {
                        query.close();
                        throw th;
                    }
                } catch (Exception e) {
                    try {
                        j91.m1505k("Migration - MaskRules", "Error migration rule row");
                        i2 = i4;
                    } catch (Exception e2) {
                        j91.m1504l("Migration - MaskRules", "", e2);
                        query.close();
                        return;
                    }
                }
                i3 = i;
                i4 = i2;
            } while (query.moveToNext());
            query.close();
            String str2 = "Migrating rules. Count record: " + i + ", inserted record: " + i2;
        } catch (Exception e3) {
        }
    }
}
