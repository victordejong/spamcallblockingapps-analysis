package p000;

import android.content.SharedPreferences;
import android.database.Cursor;
import android.util.SparseArray;
/* renamed from: i81 */
/* loaded from: classes3-dex2jar.jar:i81.class */
public class i81 {
    /* renamed from: a */
    public static void m1614a() {
        int i;
        Object obj;
        Object obj2;
        String[] split;
        String[] split2;
        Object obj3 = "allcontacts";
        Object obj4 = "whitelist";
        try {
            SharedPreferences m1640a = h81.m1640a();
            if (m1640a.getString("KEY_BLOCKING_MODE_CURRENT", "").equals("PRIVACY_MODE")) {
                u71.m420w(true);
                for (String str : m1640a.getString("KEY_BLOCKING_MODE_GROUPS", "").split(",")) {
                    if (str.equals("whitelist")) {
                        u71.m447C(true);
                    }
                    if (str.equals("allcontacts")) {
                        u71.m419x(true);
                    }
                }
            }
        } catch (Throwable th) {
            j91.m1504l("Migration - Schedule", "", th);
        }
        try {
            Cursor query = e81.m2192g().query("ba", new String[]{"_id", "IS_ACTIVE"}, null, null, null, null, null);
            if (query == null) {
                return;
            }
            if (!query.moveToFirst()) {
                return;
            }
            int i2 = -1;
            while (true) {
                try {
                    try {
                        int i3 = query.getInt(query.getColumnIndex("_id"));
                        i = i3;
                        if (query.getInt(query.getColumnIndex("IS_ACTIVE")) == 1) {
                            StringBuilder sb = new StringBuilder();
                            sb.append("Active scheduleId: ");
                            sb.append(i3);
                            i2 = i3;
                            sb.toString();
                            i = i3;
                            break;
                        }
                    } catch (Exception e) {
                        try {
                            j91.m1505k("Migration - Schedule", e.getLocalizedMessage());
                            i = i2;
                        } catch (Exception e2) {
                            j91.m1504l("Migration - Schedule", "", e2);
                            return;
                        }
                    }
                    i2 = i;
                    if (!query.moveToNext()) {
                        break;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            query.close();
            String str2 = "SCHEDULE_ID";
            query = e81.m2192g().query("bb", new String[]{"_id", "SCHEDULE_ID", "WEEK_DAY_SET"}, null, null, null, null, null);
            if (query == null) {
                return;
            }
            if (!query.moveToFirst()) {
                return;
            }
            SparseArray sparseArray = new SparseArray();
            do {
                try {
                    try {
                        if (query.getInt(query.getColumnIndex("SCHEDULE_ID")) == i) {
                            int i4 = query.getInt(query.getColumnIndex("_id"));
                            String string = query.getString(query.getColumnIndex("WEEK_DAY_SET"));
                            sparseArray.put(i4, string);
                            String str3 = "ScheduleId: " + i + ", day set: " + string + ", daysetId: " + i4;
                        }
                    } catch (Exception e3) {
                        try {
                            j91.m1505k("Migration - Schedule", e3.getLocalizedMessage());
                        } catch (Exception e4) {
                            j91.m1504l("Migration - Schedule", "", e4);
                            return;
                        }
                    }
                } catch (Throwable th3) {
                    throw th3;
                }
            } while (query.moveToNext());
            query.close();
            query = e81.m2192g().query("b", new String[]{"SCHEDULE_ID", "DAY_SET_ID", "ACTION", "DTRANGE_START", "DTRANGE_END", "ALLOWED_GROUPS"}, null, null, null, null, null);
            if (query == null) {
                return;
            }
            if (!query.moveToFirst()) {
                return;
            }
            while (true) {
                try {
                    try {
                        int i5 = query.getInt(query.getColumnIndex(str2));
                        if (i5 != i) {
                            String str4 = "Skip passive schedule with ID: " + i5;
                            Object obj5 = obj3;
                            obj2 = obj4;
                            obj = obj5;
                        } else {
                            String string2 = query.getString(query.getColumnIndex("ACTION"));
                            int i6 = query.getInt(query.getColumnIndex("DTRANGE_START"));
                            int i7 = query.getInt(query.getColumnIndex("DTRANGE_END"));
                            String string3 = query.getString(query.getColumnIndex("ALLOWED_GROUPS"));
                            String[] split3 = ((String) sparseArray.get(query.getInt(query.getColumnIndex("DAY_SET_ID")))).split(",");
                            for (String str5 : string3.split(",")) {
                                if (str5.equals(obj3)) {
                                    if (b81.m5750e()) {
                                        u71.m418y(b81.m5754a());
                                    } else {
                                        u71.m419x(true);
                                    }
                                }
                                if (str5.equals(obj4)) {
                                    u71.m447C(true);
                                }
                            }
                            for (String str6 : split3) {
                                int parseInt = Integer.parseInt(str6);
                                int i8 = parseInt;
                                if (parseInt == 1) {
                                    i8 = 8;
                                }
                                u71.m417z(i8 - 2, i6, i7, true);
                                String str7 = "For day #" + str6 + "ScheduleId: " + i5 + ", scheduleAction: " + string2 + ", range_start: " + i6 + ", rangeEnd: " + i7;
                            }
                            Object obj6 = obj3;
                            obj2 = obj4;
                            obj = obj6;
                        }
                        if (!query.moveToNext()) {
                            return;
                        }
                        Object obj7 = obj;
                        obj4 = obj2;
                        obj3 = obj7;
                        str2 = str2;
                    } catch (Exception e5) {
                        j91.m1504l("Migration - Schedule", "Error migration schedule", e5);
                        return;
                    }
                } catch (Exception e6) {
                    j91.m1504l("Migration - Schedule", "", e6);
                    return;
                } finally {
                    query.close();
                }
            }
        } catch (Exception e7) {
        }
    }
}
