package p000;

import android.database.Cursor;
import android.text.TextUtils;
import java.util.EnumSet;
import p000.fa1;
import p000.n91;
import p000.q71;
/* renamed from: d81 */
/* loaded from: classes3-dex2jar.jar:d81.class */
public class d81 {
    /* renamed from: a */
    public static void m2745a() {
        int i;
        int i2;
        n91.EnumC1484a enumC1484a;
        try {
            Cursor query = e81.m2192g().query("a", new String[]{"address", "caller", "strftime('%s', stamp)*1000 AS stamp", "reason", "media", "message"}, null, null, null, null, "stamp");
            if (query == null) {
                return;
            }
            if (!query.moveToFirst()) {
                query.close();
                return;
            }
            int i3 = 0;
            int i4 = 0;
            do {
                i = i3 + 1;
                try {
                    try {
                        String m1799p = fa1.C1420e.m1799p(query.getString(query.getColumnIndex("address")));
                        if (TextUtils.isEmpty(m1799p)) {
                            i2 = i4;
                        } else {
                            i91 m1800o = fa1.C1420e.m1800o(m1799p);
                            String string = query.getString(query.getColumnIndex("caller"));
                            if (string != null) {
                                m1799p = string;
                            }
                            long j = query.getLong(query.getColumnIndex("stamp"));
                            switch (query.getInt(query.getColumnIndex("reason"))) {
                                case 101:
                                case 116:
                                case 117:
                                    enumC1484a = n91.EnumC1484a.DND;
                                    break;
                                case 102:
                                    enumC1484a = n91.EnumC1484a.COMMUNITY_BLACKLIST;
                                    break;
                                case 103:
                                    enumC1484a = n91.EnumC1484a.BLACK_LIST;
                                    break;
                                case 104:
                                    enumC1484a = n91.EnumC1484a.PRIVATE_CALL;
                                    break;
                                case 105:
                                    enumC1484a = n91.EnumC1484a.UNKNOWN_CALL;
                                    break;
                                case 106:
                                    enumC1484a = n91.EnumC1484a.BLACK_LIST_MASK;
                                    break;
                                case 107:
                                case 108:
                                case 109:
                                case 110:
                                case 115:
                                default:
                                    enumC1484a = n91.EnumC1484a.NONE;
                                    break;
                                case 111:
                                    enumC1484a = n91.EnumC1484a.FAKE_CALLER;
                                    break;
                                case 112:
                                    enumC1484a = n91.EnumC1484a.NON_NUMERIC_CALLER;
                                    break;
                                case 113:
                                    enumC1484a = n91.EnumC1484a.EMAILED_TEXT_MESSAGE;
                                    break;
                                case 114:
                                    enumC1484a = n91.EnumC1484a.TOLL_FREE_NUMBER;
                                    break;
                            }
                            l81 l81Var = new l81();
                            l81Var.f6932p = enumC1484a;
                            l81Var.f6929m = m1800o;
                            l81Var.f6924g = 0;
                            l81Var.f6935s = Long.valueOf(j).longValue();
                            l81Var.f6934r = 0;
                            l81Var.f6925h = m1799p;
                            l81Var.f6926j = true;
                            int i5 = query.getInt(query.getColumnIndex("media"));
                            if (i5 == 2) {
                                l81Var.f6931o = EnumSet.of(q71.EnumC1618e.SMS);
                            } else if (i5 != 3) {
                                l81Var.f6931o = EnumSet.of(q71.EnumC1618e.CALL);
                            } else {
                                l81Var.f6931o = EnumSet.of(q71.EnumC1618e.MMS);
                            }
                            l81Var.f6930n = 1;
                            String string2 = query.getString(query.getColumnIndex("message"));
                            if (!TextUtils.isEmpty(string2)) {
                                l81Var.f6928l = string2;
                            }
                            if (l81Var.f6931o.contains(q71.EnumC1618e.SMS) || l81Var.f6931o.contains(q71.EnumC1618e.MMS)) {
                                l81Var.m1363F();
                            }
                            i2 = i4;
                            if (l81Var.mo148z()) {
                                String str = "Migrated " + l81Var.f6925h + " (" + l81Var.f6929m.toString() + ")";
                                i2 = i4 + 1;
                            }
                        }
                    } catch (Exception e) {
                        try {
                            j91.m1504l("Migration - BlockedLog", "", e);
                            i2 = i4;
                        } catch (Exception e2) {
                            j91.m1504l("Migration - BlockedLog", "", e2);
                            query.close();
                            return;
                        }
                    }
                    i3 = i;
                    i4 = i2;
                } catch (Throwable th) {
                    query.close();
                    throw th;
                }
            } while (query.moveToNext());
            query.close();
            String str2 = "Records migrated: " + i + ", inserted record: " + i2;
        } catch (Exception e3) {
        }
    }
}
