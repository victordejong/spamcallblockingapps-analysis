package p459j.p460a.p582w0.p594z4;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.provider.CallLog;
import android.text.TextUtils;
import androidx.core.app.NotificationCompat;
import androidx.media2.exoplayer.external.text.webvtt.CssParser;
import gogolook.callgogolook2.MyApplication;
import gogolook.callgogolook2.gson.UserProfile;
import gogolook.callgogolook2.realm.obj.block.BlockLogRealmObject;
import gogolook.callgogolook2.realm.obj.favorite.FavoriteGroupRealmObject;
import gogolook.callgogolook2.realm.obj.logsgroup.LogsGroupRealmObject;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import p459j.p460a.p521j0.p529x.C12810o;
import p459j.p460a.p541n0.C13041b;
import p459j.p460a.p541n0.C13131j;
import p459j.p460a.p541n0.C13193p;
import p459j.p460a.p582w0.C13973d4;
import p459j.p460a.p582w0.C14037j3;
import p459j.p460a.p582w0.C14080m2;
import p459j.p460a.p582w0.C14108o4;
import p459j.p460a.p582w0.C14217x3;
import p660rx.Single;
import p660rx.SingleSubscriber;
import p660rx.android.schedulers.AndroidSchedulers;
import p660rx.schedulers.Schedulers;
/* renamed from: j.a.w0.z4.b */
/* loaded from: classes3-dex2jar.jar:j/a/w0/z4/b.class */
public class C14330b {

    /* renamed from: b */
    public static C14330b f32117b;

    /* renamed from: a */
    public List<Map<EnumC14329a, String>> f32118a;

    /* renamed from: j.a.w0.z4.b$a */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/z4/b$a.class */
    public class C14331a extends SingleSubscriber<Object> {

        /* renamed from: a */
        public final /* synthetic */ Object f32119a;

        /* renamed from: b */
        public final /* synthetic */ Object f32120b;

        public C14331a(C14330b bVar, Object obj, Object obj2) {
            this.f32119a = obj;
            this.f32120b = obj2;
        }

        @Override // p660rx.SingleSubscriber
        public void onError(Throwable th) {
            if (this.f32120b != null) {
                C14037j3.m2731a().mo2704a(this.f32120b);
            }
        }

        @Override // p660rx.SingleSubscriber
        public void onSuccess(Object obj) {
            if (this.f32119a != null) {
                C14037j3.m2731a().mo2704a(this.f32119a);
            }
        }
    }

    /* renamed from: j.a.w0.z4.b$b */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/z4/b$b.class */
    public class C14332b implements Single.OnSubscribe<Object> {
        public C14332b(C14330b bVar) {
        }

        /* renamed from: a */
        public void call(SingleSubscriber<? super Object> singleSubscriber) {
            if (C13131j.m4554a(7) > -1) {
                singleSubscriber.onSuccess(null);
            } else {
                singleSubscriber.onError(null);
            }
        }
    }

    /* renamed from: j.a.w0.z4.b$c */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/z4/b$c.class */
    public static class C14333c {

        /* renamed from: f */
        public static final Uri f32121f = CallLog.Calls.CONTENT_URI;

        /* renamed from: g */
        public static final Uri f32122g = Uri.parse("content://sms");

        /* renamed from: h */
        public static final Uri f32123h = Uri.parse("content://mms");

        /* renamed from: e */
        public Comparator<Map<EnumC14329a, String>> f32128e = new C14334a(this);

        /* renamed from: a */
        public Context f32124a = MyApplication.m29013o();

        /* renamed from: b */
        public ContentResolver f32125b = this.f32124a.getContentResolver();

        /* renamed from: c */
        public Map<String, Cursor> f32126c = Collections.synchronizedMap(new HashMap());

        /* renamed from: d */
        public HashMap<String, List<Map<EnumC14329a, String>>> f32127d = new HashMap<>();

        /* renamed from: j.a.w0.z4.b$c$a */
        /* loaded from: classes3-dex2jar.jar:j/a/w0/z4/b$c$a.class */
        public class C14334a implements Comparator<Map<EnumC14329a, String>> {
            public C14334a(C14333c cVar) {
            }

            /* renamed from: a */
            public int compare(Map<EnumC14329a, String> map, Map<EnumC14329a, String> map2) {
                if (map == null || map2 == null) {
                    if (map != null) {
                        return 1;
                    }
                    return map2 != null ? -1 : 0;
                } else if (Long.valueOf(map.get(EnumC14329a.DATE)).longValue() - Long.valueOf(map2.get(EnumC14329a.DATE)).longValue() > 0) {
                    return 1;
                } else {
                    return Long.valueOf(map.get(EnumC14329a.DATE)).longValue() - Long.valueOf(map2.get(EnumC14329a.DATE)).longValue() < 0 ? -1 : 0;
                }
            }
        }

        /* renamed from: a */
        public final Cursor m1539a(String str, String str2, int i) {
            try {
                if (str != null && i == 1) {
                    Map<String, Cursor> map = this.f32126c;
                    Cursor cursor = map.get(f32121f.toString() + str + "_" + i);
                    Cursor cursor2 = cursor;
                    if (cursor == null) {
                        cursor2 = this.f32125b.query(f32121f, new String[]{"number", "new", "name", "type", "duration", "date"}, "number= ? OR number= ? OR number=?", new String[]{str, C14108o4.m2474l(str), C14108o4.m2473m(str)}, "date DESC limit 1");
                        Map<String, Cursor> map2 = this.f32126c;
                        map2.put(f32121f.toString() + str + "_" + i, cursor2);
                    }
                    return cursor2;
                } else if (str != null) {
                    Map<String, Cursor> map3 = this.f32126c;
                    Cursor cursor3 = map3.get(f32121f.toString() + str);
                    Cursor cursor4 = cursor3;
                    if (cursor3 == null) {
                        cursor4 = this.f32125b.query(f32121f, new String[]{"number", "new", "name", "type", "duration", "date"}, "number= ? OR number= ? OR number=?", new String[]{str, C14108o4.m2474l(str), C14108o4.m2473m(str)}, "date DESC");
                        Map<String, Cursor> map4 = this.f32126c;
                        map4.put(f32121f.toString() + str, cursor4);
                    }
                    return cursor4;
                } else if (str2 == null) {
                    return null;
                } else {
                    Map<String, Cursor> map5 = this.f32126c;
                    Cursor cursor5 = map5.get(f32121f.toString() + str2);
                    Cursor cursor6 = cursor5;
                    if (cursor5 == null) {
                        cursor6 = this.f32125b.query(f32121f, new String[]{"number", "new", "name", "type", "duration", "date"}, str2, null, "date DESC");
                        Map<String, Cursor> map6 = this.f32126c;
                        map6.put(f32121f.toString() + str2, cursor6);
                    }
                    return cursor6;
                }
            } catch (Exception e) {
                return null;
            }
        }

        /* renamed from: a */
        public List<Map<EnumC14329a, String>> m1541a(String str) {
            ArrayList arrayList;
            synchronized (this) {
                arrayList = new ArrayList();
                Map<EnumC14329a, String> b = m1535b(str, null, 1, 0);
                Map<EnumC14329a, String> c = m1534c(str, null, 1, 0);
                Map<EnumC14329a, String> a = m1538a(str, null, 1, 0);
                Map<EnumC14329a, String> a2 = m1540a(str, 0, 1);
                if (!(c == null && a2 == null)) {
                    b = null;
                    a = null;
                }
                if (!(b == null && c == null && a == null && a2 == null)) {
                    int i = 0;
                    while (b != null && b.get(EnumC14329a.DATE).equals("0")) {
                        i++;
                        b = m1535b(str, null, 1, i);
                    }
                    if (!(b == null && c == null && a == null && a2 == null)) {
                        arrayList.add(m1537a(b, c, a, a2));
                    }
                }
                m1542a();
            }
            return arrayList;
        }

        /* JADX WARN: Code restructure failed: missing block: B:84:0x037b, code lost:
            if (r0.hasNext() == false) goto L_0x03a2;
         */
        /* JADX WARN: Code restructure failed: missing block: B:85:0x037e, code lost:
            r0.next();
            r0.remove();
         */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.util.Map<p459j.p460a.p582w0.p594z4.EnumC14329a, java.lang.String> m1540a(java.lang.String r10, int r11, int r12) {
            /*
                Method dump skipped, instructions count: 1177
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p582w0.p594z4.C14330b.C14333c.m1540a(java.lang.String, int, int):java.util.Map");
        }

        /* renamed from: a */
        public final Map<EnumC14329a, String> m1538a(String str, String str2, int i, int i2) {
            List<BlockLogRealmObject> a = C13041b.m4723a(C13193p.m4437a("_e164"), C13193p.m4438a(C14108o4.m2474l(str)), C13193p.m4439a(C13193p.EnumC13194a.EQUAL_TO), null, null);
            if (a == null || a.isEmpty()) {
                return null;
            }
            HashMap hashMap = new HashMap();
            for (BlockLogRealmObject blockLogRealmObject : a) {
                String str3 = blockLogRealmObject.get_e164();
                String str4 = blockLogRealmObject.get_number();
                int i3 = blockLogRealmObject.get_kind();
                String str5 = blockLogRealmObject.get_content();
                long j = blockLogRealmObject.get_createtime();
                String e = C14217x3.m2146e(this.f32124a, str);
                hashMap.put(EnumC14329a.NUMBER, str4);
                hashMap.put(EnumC14329a.E164NUMBER, str3);
                hashMap.put(EnumC14329a.CALLTYPE, Integer.toString(6));
                hashMap.put(EnumC14329a.BODY, str5);
                hashMap.put(EnumC14329a.KIND, String.valueOf(i3));
                hashMap.put(EnumC14329a.DATE, Long.toString(j));
                hashMap.put(EnumC14329a.NAME, e);
            }
            return hashMap;
        }

        /* renamed from: a */
        public final Map<EnumC14329a, String> m1537a(Map<EnumC14329a, String>... mapArr) {
            return (Map) Collections.max(new ArrayList(Arrays.asList(mapArr)), this.f32128e);
        }

        /* renamed from: a */
        public final void m1542a() {
            for (String str : this.f32126c.keySet()) {
                Cursor cursor = this.f32126c.get(str);
                if (cursor != null) {
                    cursor.close();
                }
            }
            this.f32126c.clear();
            HashMap<String, List<Map<EnumC14329a, String>>> hashMap = this.f32127d;
            if (hashMap != null) {
                for (List<Map<EnumC14329a, String>> list : hashMap.values()) {
                    list.clear();
                }
                this.f32127d.clear();
                this.f32127d = null;
            }
        }

        /* renamed from: b */
        public final Cursor m1536b(String str, String str2, int i) {
            if (!C12810o.m5233l()) {
                return null;
            }
            try {
                if (str != null && i == 1) {
                    Map<String, Cursor> map = this.f32126c;
                    Cursor cursor = map.get(f32122g.toString() + str + "_" + i);
                    Cursor cursor2 = cursor;
                    if (cursor == null) {
                        cursor2 = this.f32125b.query(f32122g, new String[]{"_id", "address", NotificationCompat.MessagingStyle.Message.KEY_PERSON, "body", "date", "type"}, "address = ? OR address = ? OR address = ?", new String[]{str, C14108o4.m2474l(str), C14108o4.m2473m(str)}, "date desc limit 1");
                        Map<String, Cursor> map2 = this.f32126c;
                        map2.put(f32122g.toString() + str + "_" + i, cursor2);
                    }
                    return cursor2;
                } else if (str != null) {
                    Map<String, Cursor> map3 = this.f32126c;
                    Cursor cursor3 = map3.get(f32122g.toString() + str);
                    Cursor cursor4 = cursor3;
                    if (cursor3 == null) {
                        cursor4 = this.f32125b.query(f32122g, new String[]{"_id", "address", NotificationCompat.MessagingStyle.Message.KEY_PERSON, "body", "date", "type"}, "address = ? OR address = ? OR address = ?", new String[]{str, C14108o4.m2474l(str), C14108o4.m2473m(str)}, "date desc");
                        Map<String, Cursor> map4 = this.f32126c;
                        map4.put(f32122g.toString() + str, cursor4);
                    }
                    return cursor4;
                } else if (str2 == null) {
                    return null;
                } else {
                    Map<String, Cursor> map5 = this.f32126c;
                    Cursor cursor5 = map5.get(f32122g.toString() + str2);
                    Cursor cursor6 = cursor5;
                    if (cursor5 == null) {
                        cursor6 = this.f32125b.query(f32122g, new String[]{"_id", "address", NotificationCompat.MessagingStyle.Message.KEY_PERSON, "body", "date", "type"}, str2, null, "date desc");
                        Map<String, Cursor> map6 = this.f32126c;
                        map6.put(f32122g.toString() + str2, cursor6);
                    }
                    return cursor6;
                }
            } catch (Exception e) {
                return null;
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:13:0x0091, code lost:
            if ("-2".equals(r0) != false) goto L_0x0094;
         */
        /* renamed from: b */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.util.Map<p459j.p460a.p582w0.p594z4.EnumC14329a, java.lang.String> m1535b(java.lang.String r6, java.lang.String r7, int r8, int r9) {
            /*
                Method dump skipped, instructions count: 343
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p582w0.p594z4.C14330b.C14333c.m1535b(java.lang.String, java.lang.String, int, int):java.util.Map");
        }

        /* renamed from: c */
        public final Map<EnumC14329a, String> m1534c(String str, String str2, int i, int i2) {
            Cursor b = m1536b(str, str2, i);
            if (b == null || i2 >= b.getCount()) {
                return null;
            }
            b.moveToPosition(i2);
            String string = b.getString(b.getColumnIndex("address"));
            String string2 = b.getString(b.getColumnIndex("body"));
            String string3 = b.getString(b.getColumnIndex("type"));
            long j = b.getLong(b.getColumnIndex("date"));
            String str3 = "";
            if (string != null) {
                str3 = "";
                if (!"".equals(string)) {
                    str3 = "";
                    if (!FavoriteGroupRealmObject.PARENDID_DELETED.equals(string)) {
                        str3 = "-2".equals(string) ? "" : string;
                    }
                }
            }
            String l = !TextUtils.isEmpty(str3) ? C14108o4.m2474l(str3) : str3;
            try {
                if (!string3.equals("1") && !string3.equals("2")) {
                    return null;
                }
                HashMap hashMap = new HashMap();
                hashMap.put(EnumC14329a.NUMBER, str3);
                hashMap.put(EnumC14329a.E164NUMBER, l);
                if (string3.equals("1")) {
                    hashMap.put(EnumC14329a.CALLTYPE, Integer.toString(4));
                } else if (string3.equals("2")) {
                    hashMap.put(EnumC14329a.CALLTYPE, Integer.toString(5));
                }
                hashMap.put(EnumC14329a.KIND, String.valueOf(2));
                hashMap.put(EnumC14329a.DATE, Long.toString(j));
                hashMap.put(EnumC14329a.BODY, string2);
                return hashMap;
            } catch (Exception e) {
                return null;
            }
        }
    }

    /* renamed from: j.a.w0.z4.b$d */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/z4/b$d.class */
    public static class C14335d {

        /* renamed from: a */
        public String f32129a = "";

        /* renamed from: b */
        public String f32130b;

        /* renamed from: c */
        public int f32131c;

        /* renamed from: d */
        public long f32132d;

        public String toString() {
            return "{number=" + this.f32129a + ",date=" + this.f32132d + ",date=" + this.f32132d + CssParser.BLOCK_END;
        }
    }

    /* renamed from: a */
    public static final int m1559a(int i, boolean z) {
        if (z) {
            return 6;
        }
        if (i == 17) {
            return 1;
        }
        if (i == 18) {
            return 2;
        }
        if (i == 19) {
            return 3;
        }
        if (i == 33) {
            return 4;
        }
        if (i == 34) {
            return 5;
        }
        if (i == 65) {
            return 7;
        }
        return i == 66 ? 8 : 6;
    }

    /* renamed from: a */
    public static boolean m1560a(int i) {
        return i == 1 || i == 3 || i == 6;
    }

    /* renamed from: b */
    public static final int m1550b(int i) {
        return LogsGroupRealmObject.isCallType(i) ? 1 : 2;
    }

    /* renamed from: b */
    public static C14330b m1551b() {
        if (f32117b == null) {
            f32117b = new C14330b();
        }
        return f32117b;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r19v0 */
    /* JADX WARN: Type inference failed for: r19v1 */
    /* JADX WARN: Type inference failed for: r19v5 */
    /* JADX WARN: Unknown variable types count: 1 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long m1553a(java.lang.String r10) {
        /*
            r9 = this;
            r0 = 0
            r11 = r0
            android.content.Context r0 = gogolook.callgogolook2.MyApplication.m29013o()     // Catch: Exception -> 0x0089
            android.content.ContentResolver r0 = r0.getContentResolver()     // Catch: Exception -> 0x0089
            r13 = r0
            android.net.Uri r0 = android.provider.CallLog.Calls.CONTENT_URI     // Catch: Exception -> 0x0089
            r14 = r0
            r0 = r10
            java.lang.String r0 = p459j.p460a.p582w0.C14108o4.m2474l(r0)     // Catch: Exception -> 0x0089
            r15 = r0
            r0 = r10
            java.lang.String r0 = p459j.p460a.p582w0.C14108o4.m2473m(r0)     // Catch: Exception -> 0x0089
            r16 = r0
            r0 = 1
            java.lang.String r0 = java.lang.Integer.toString(r0)     // Catch: Exception -> 0x0089
            r17 = r0
            r0 = 3
            java.lang.String r0 = java.lang.Integer.toString(r0)     // Catch: Exception -> 0x0089
            r18 = r0
            r0 = r13
            r1 = r14
            r2 = 1
            java.lang.String[] r2 = new java.lang.String[r2]     // Catch: Exception -> 0x0089
            r3 = r2
            r4 = 0
            java.lang.String r5 = "duration"
            r3[r4] = r5     // Catch: Exception -> 0x0089
            java.lang.String r3 = "(number= ? OR number= ? OR number=? ) AND ( type= ? OR type= ? OR type=? )"
            r4 = 6
            java.lang.String[] r4 = new java.lang.String[r4]     // Catch: Exception -> 0x0089
            r5 = r4
            r6 = 0
            r7 = r10
            r5[r6] = r7     // Catch: Exception -> 0x0089
            r5 = r4
            r6 = 1
            r7 = r15
            r5[r6] = r7     // Catch: Exception -> 0x0089
            r5 = r4
            r6 = 2
            r7 = r16
            r5[r6] = r7     // Catch: Exception -> 0x0089
            r5 = r4
            r6 = 3
            r7 = r17
            r5[r6] = r7     // Catch: Exception -> 0x0089
            r5 = r4
            r6 = 4
            r7 = r18
            r5[r6] = r7     // Catch: Exception -> 0x0089
            r5 = r4
            r6 = 5
            java.lang.String r7 = "5"
            r5[r6] = r7     // Catch: Exception -> 0x0089
            java.lang.String r5 = "date DESC limit 1"
            android.database.Cursor r0 = r0.query(r1, r2, r3, r4, r5)     // Catch: Exception -> 0x0089
            r10 = r0
            r0 = r11
            r19 = r0
            r0 = r10
            if (r0 == 0) goto L_0x0086
            r0 = r10
            boolean r0 = r0.moveToFirst()     // Catch: Exception -> 0x0089
            if (r0 == 0) goto L_0x007d
            r0 = r10
            r1 = r10
            java.lang.String r2 = "duration"
            int r1 = r1.getColumnIndex(r2)     // Catch: Exception -> 0x0089
            long r0 = r0.getLong(r1)     // Catch: Exception -> 0x0089
            r11 = r0
        L_0x007d:
            r0 = r10
            r0.close()     // Catch: Exception -> 0x0089
            r0 = r11
            r19 = r0
        L_0x0086:
            r0 = r19
            return r0
        L_0x0089:
            r10 = move-exception
            r0 = r10
            p459j.p460a.p582w0.C14080m2.m2612a(r0)
            r0 = -1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p582w0.p594z4.C14330b.m1553a(java.lang.String):long");
    }

    /* renamed from: a */
    public C14335d m1557a(Context context, String str) {
        List<Map<EnumC14329a, String>> a = new C14333c().m1541a(str);
        if (a.size() <= 0) {
            return null;
        }
        C14335d dVar = new C14335d();
        dVar.f32132d = Long.valueOf(a.get(0).get(EnumC14329a.DATE)).longValue();
        dVar.f32131c = Integer.valueOf(a.get(0).get(EnumC14329a.CALLTYPE)).intValue();
        dVar.f32129a = str;
        dVar.f32130b = a.get(0).get(EnumC14329a.BODY);
        if (a.get(0).get(EnumC14329a.DURATION) != null) {
            a.get(0).get(EnumC14329a.DURATION);
        }
        return dVar;
    }

    /* renamed from: a */
    public List<Map<EnumC14329a, String>> m1561a() {
        return this.f32118a;
    }

    /* renamed from: a */
    public List<Map<EnumC14329a, String>> m1558a(Context context) {
        List<Map<EnumC14329a, String>> a;
        synchronized (this) {
            a = m1556a(context, null, 0);
        }
        return a;
    }

    /* renamed from: a */
    public final List<Map<EnumC14329a, String>> m1556a(Context context, String str, int i) {
        return m1555a(context, str, i, true);
    }

    /* renamed from: a */
    public final List<Map<EnumC14329a, String>> m1555a(Context context, String str, int i, boolean z) {
        boolean isEmpty = TextUtils.isEmpty(str);
        Integer[] numArr = null;
        String trim = isEmpty ? null : str.trim();
        ArrayList arrayList = new ArrayList();
        String l = C14108o4.m2474l(trim);
        if (!C12810o.m5233l()) {
            numArr = new Integer[]{33, 34, 65, 66};
        }
        List<LogsGroupRealmObject> a = C13131j.m4546a(trim, l, i, z, numArr);
        if (a != null && !a.isEmpty()) {
            for (LogsGroupRealmObject logsGroupRealmObject : a) {
                try {
                    int intValue = logsGroupRealmObject.getType().intValue();
                    boolean z2 = logsGroupRealmObject.getBlocked() > 0;
                    HashMap hashMap = new HashMap();
                    String str2 = "";
                    if (TextUtils.isEmpty(trim)) {
                        String number = logsGroupRealmObject.getNumber();
                        String e164 = logsGroupRealmObject.getE164();
                        EnumC14329a aVar = EnumC14329a.NUMBER;
                        String str3 = number;
                        if (TextUtils.isEmpty(number)) {
                            str3 = "";
                        }
                        hashMap.put(aVar, str3);
                        EnumC14329a aVar2 = EnumC14329a.E164NUMBER;
                        if (!TextUtils.isEmpty(e164)) {
                            str2 = e164;
                        }
                        hashMap.put(aVar2, str2);
                    } else {
                        hashMap.put(EnumC14329a.NUMBER, logsGroupRealmObject.getNumber());
                        EnumC14329a aVar3 = EnumC14329a.E164NUMBER;
                        if (!TextUtils.isEmpty(l)) {
                            str2 = l;
                        }
                        hashMap.put(aVar3, str2);
                    }
                    hashMap.put(EnumC14329a.NAME, logsGroupRealmObject.getDisplayName());
                    hashMap.put(EnumC14329a.BODY, logsGroupRealmObject.getContent());
                    hashMap.put(EnumC14329a.DATE, String.valueOf(logsGroupRealmObject.getDate()));
                    hashMap.put(EnumC14329a.CALLTYPE, String.valueOf(m1559a(intValue, z2)));
                    hashMap.put(EnumC14329a.DURATION, String.valueOf(logsGroupRealmObject.getDuration()));
                    hashMap.put(EnumC14329a.KIND, String.valueOf(m1550b(intValue)));
                    hashMap.put(EnumC14329a.REF_ID, String.valueOf(logsGroupRealmObject.getRef_id()));
                    arrayList.add(hashMap);
                } catch (Exception e) {
                    C13973d4.m2952a(new Exception("Unexpected call log: " + logsGroupRealmObject.toString() + UserProfile.CARD_CATE_SEPARATOR + e));
                }
            }
        }
        return arrayList;
    }

    /* renamed from: a */
    public void m1554a(Object obj, Object obj2) {
        Single.create(new C14332b(this)).subscribeOn(Schedulers.m0io()).observeOn(AndroidSchedulers.mainThread()).subscribe(new C14331a(this, obj, obj2));
    }

    /* renamed from: a */
    public void m1552a(List<Map<EnumC14329a, String>> list) {
        this.f32118a = list;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r19v0 */
    /* JADX WARN: Type inference failed for: r19v1 */
    /* JADX WARN: Type inference failed for: r19v5 */
    /* JADX WARN: Unknown variable types count: 1 */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long m1547b(java.lang.String r10) {
        /*
            r9 = this;
            r0 = 0
            r11 = r0
            android.content.Context r0 = gogolook.callgogolook2.MyApplication.m29013o()     // Catch: Exception -> 0x008b
            android.content.ContentResolver r0 = r0.getContentResolver()     // Catch: Exception -> 0x008b
            r13 = r0
            android.net.Uri r0 = android.provider.CallLog.Calls.CONTENT_URI     // Catch: Exception -> 0x008b
            r14 = r0
            r0 = r10
            java.lang.String r0 = p459j.p460a.p582w0.C14108o4.m2474l(r0)     // Catch: Exception -> 0x008b
            r15 = r0
            r0 = r10
            java.lang.String r0 = p459j.p460a.p582w0.C14108o4.m2473m(r0)     // Catch: Exception -> 0x008b
            r16 = r0
            r0 = 1
            java.lang.String r0 = java.lang.Integer.toString(r0)     // Catch: Exception -> 0x008b
            r17 = r0
            r0 = 3
            java.lang.String r0 = java.lang.Integer.toString(r0)     // Catch: Exception -> 0x008b
            r18 = r0
            r0 = r13
            r1 = r14
            r2 = 1
            java.lang.String[] r2 = new java.lang.String[r2]     // Catch: Exception -> 0x008b
            r3 = r2
            r4 = 0
            java.lang.String r5 = "date"
            r3[r4] = r5     // Catch: Exception -> 0x008b
            java.lang.String r3 = "(number= ? OR number= ? OR number=? ) AND ( type= ? OR type= ? OR type=? )"
            r4 = 6
            java.lang.String[] r4 = new java.lang.String[r4]     // Catch: Exception -> 0x008b
            r5 = r4
            r6 = 0
            r7 = r10
            r5[r6] = r7     // Catch: Exception -> 0x008b
            r5 = r4
            r6 = 1
            r7 = r15
            r5[r6] = r7     // Catch: Exception -> 0x008b
            r5 = r4
            r6 = 2
            r7 = r16
            r5[r6] = r7     // Catch: Exception -> 0x008b
            r5 = r4
            r6 = 3
            r7 = r17
            r5[r6] = r7     // Catch: Exception -> 0x008b
            r5 = r4
            r6 = 4
            r7 = r18
            r5[r6] = r7     // Catch: Exception -> 0x008b
            r5 = r4
            r6 = 5
            java.lang.String r7 = "5"
            r5[r6] = r7     // Catch: Exception -> 0x008b
            java.lang.String r5 = "date DESC limit 1"
            android.database.Cursor r0 = r0.query(r1, r2, r3, r4, r5)     // Catch: Exception -> 0x008b
            r10 = r0
            r0 = r11
            r19 = r0
            r0 = r10
            if (r0 == 0) goto L_0x0088
            r0 = r10
            boolean r0 = r0.moveToFirst()     // Catch: Exception -> 0x008b
            if (r0 == 0) goto L_0x007f
            r0 = r10
            r1 = r10
            java.lang.String r2 = "date"
            int r1 = r1.getColumnIndex(r2)     // Catch: Exception -> 0x008b
            long r0 = r0.getLong(r1)     // Catch: Exception -> 0x008b
            r11 = r0
        L_0x007f:
            r0 = r10
            r0.close()     // Catch: Exception -> 0x008b
            r0 = r11
            r19 = r0
        L_0x0088:
            r0 = r19
            return r0
        L_0x008b:
            r10 = move-exception
            r0 = r10
            p459j.p460a.p582w0.C14080m2.m2612a(r0)
            r0 = -1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p582w0.p594z4.C14330b.m1547b(java.lang.String):long");
    }

    /* renamed from: b */
    public List<Map<EnumC14329a, String>> m1549b(Context context, String str) {
        List<Map<EnumC14329a, String>> b;
        synchronized (this) {
            b = m1548b(context, str, 0);
        }
        return b;
    }

    /* renamed from: b */
    public final List<Map<EnumC14329a, String>> m1548b(Context context, String str, int i) {
        return m1555a(context, str, i, false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r18v7 */
    /* renamed from: c */
    public long m1546c(String str) {
        try {
            Cursor query = MyApplication.m29013o().getContentResolver().query(CallLog.Calls.CONTENT_URI, new String[]{"duration"}, "(number= ? OR number= ? OR number = ? ) AND ( type = ?  )", new String[]{str, C14108o4.m2474l(str), C14108o4.m2473m(str), Integer.toString(2)}, "date DESC limit 1");
            boolean z = false;
            if (query != null) {
                boolean z2 = false;
                if (query.moveToFirst()) {
                    z2 = query.getLong(query.getColumnIndex("duration"));
                }
                query.close();
                z = z2;
            }
            long j = z ? 1L : 0L;
            long j2 = z ? 1L : 0L;
            return j;
        } catch (Exception e) {
            C14080m2.m2612a((Throwable) e);
            return -1L;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r18v0 */
    /* JADX WARN: Type inference failed for: r18v1 */
    /* JADX WARN: Type inference failed for: r18v5 */
    /* JADX WARN: Unknown variable types count: 1 */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long m1545d(java.lang.String r10) {
        /*
            r9 = this;
            r0 = 0
            r11 = r0
            android.content.Context r0 = gogolook.callgogolook2.MyApplication.m29013o()     // Catch: Exception -> 0x007b
            android.content.ContentResolver r0 = r0.getContentResolver()     // Catch: Exception -> 0x007b
            r13 = r0
            android.net.Uri r0 = android.provider.CallLog.Calls.CONTENT_URI     // Catch: Exception -> 0x007b
            r14 = r0
            r0 = r10
            java.lang.String r0 = p459j.p460a.p582w0.C14108o4.m2474l(r0)     // Catch: Exception -> 0x007b
            r15 = r0
            r0 = r10
            java.lang.String r0 = p459j.p460a.p582w0.C14108o4.m2473m(r0)     // Catch: Exception -> 0x007b
            r16 = r0
            r0 = 2
            java.lang.String r0 = java.lang.Integer.toString(r0)     // Catch: Exception -> 0x007b
            r17 = r0
            r0 = r13
            r1 = r14
            r2 = 1
            java.lang.String[] r2 = new java.lang.String[r2]     // Catch: Exception -> 0x007b
            r3 = r2
            r4 = 0
            java.lang.String r5 = "date"
            r3[r4] = r5     // Catch: Exception -> 0x007b
            java.lang.String r3 = "(number= ? OR number= ? OR number = ? ) AND ( type = ?  )"
            r4 = 4
            java.lang.String[] r4 = new java.lang.String[r4]     // Catch: Exception -> 0x007b
            r5 = r4
            r6 = 0
            r7 = r10
            r5[r6] = r7     // Catch: Exception -> 0x007b
            r5 = r4
            r6 = 1
            r7 = r15
            r5[r6] = r7     // Catch: Exception -> 0x007b
            r5 = r4
            r6 = 2
            r7 = r16
            r5[r6] = r7     // Catch: Exception -> 0x007b
            r5 = r4
            r6 = 3
            r7 = r17
            r5[r6] = r7     // Catch: Exception -> 0x007b
            java.lang.String r5 = "date DESC limit 1"
            android.database.Cursor r0 = r0.query(r1, r2, r3, r4, r5)     // Catch: Exception -> 0x007b
            r10 = r0
            r0 = r11
            r18 = r0
            r0 = r10
            if (r0 == 0) goto L_0x0078
            r0 = r10
            boolean r0 = r0.moveToFirst()     // Catch: Exception -> 0x007b
            if (r0 == 0) goto L_0x006f
            r0 = r10
            r1 = r10
            java.lang.String r2 = "date"
            int r1 = r1.getColumnIndex(r2)     // Catch: Exception -> 0x007b
            long r0 = r0.getLong(r1)     // Catch: Exception -> 0x007b
            r11 = r0
        L_0x006f:
            r0 = r10
            r0.close()     // Catch: Exception -> 0x007b
            r0 = r11
            r18 = r0
        L_0x0078:
            r0 = r18
            return r0
        L_0x007b:
            r10 = move-exception
            r0 = r10
            p459j.p460a.p582w0.C14080m2.m2612a(r0)
            r0 = -1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p582w0.p594z4.C14330b.m1545d(java.lang.String):long");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r16v0 */
    /* JADX WARN: Type inference failed for: r16v1 */
    /* JADX WARN: Type inference failed for: r16v5 */
    /* JADX WARN: Unknown variable types count: 1 */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long m1544e(java.lang.String r10) {
        /*
            r9 = this;
            boolean r0 = p459j.p460a.p521j0.p529x.C12810o.m5233l()
            if (r0 != 0) goto L_0x000a
            r0 = -1
            return r0
        L_0x000a:
            r0 = 0
            r11 = r0
            android.content.Context r0 = gogolook.callgogolook2.MyApplication.m29013o()     // Catch: Exception -> 0x0080
            r13 = r0
            r0 = r10
            java.lang.String r0 = p459j.p460a.p582w0.C14108o4.m2474l(r0)     // Catch: Exception -> 0x0080
            r14 = r0
            r0 = r10
            java.lang.String r0 = p459j.p460a.p582w0.C14108o4.m2473m(r0)     // Catch: Exception -> 0x0080
            r15 = r0
            r0 = r13
            android.content.ContentResolver r0 = r0.getContentResolver()     // Catch: Exception -> 0x0080
            java.lang.String r1 = "content://sms"
            android.net.Uri r1 = android.net.Uri.parse(r1)     // Catch: Exception -> 0x0080
            r2 = 1
            java.lang.String[] r2 = new java.lang.String[r2]     // Catch: Exception -> 0x0080
            r3 = r2
            r4 = 0
            java.lang.String r5 = "date"
            r3[r4] = r5     // Catch: Exception -> 0x0080
            java.lang.String r3 = "(address = ? OR address = ? OR address = ?) AND type = ?"
            r4 = 4
            java.lang.String[] r4 = new java.lang.String[r4]     // Catch: Exception -> 0x0080
            r5 = r4
            r6 = 0
            r7 = r10
            r5[r6] = r7     // Catch: Exception -> 0x0080
            r5 = r4
            r6 = 1
            r7 = r14
            r5[r6] = r7     // Catch: Exception -> 0x0080
            r5 = r4
            r6 = 2
            r7 = r15
            r5[r6] = r7     // Catch: Exception -> 0x0080
            r5 = r4
            r6 = 3
            java.lang.String r7 = "1"
            r5[r6] = r7     // Catch: Exception -> 0x0080
            java.lang.String r5 = "date desc limit 1"
            android.database.Cursor r0 = r0.query(r1, r2, r3, r4, r5)     // Catch: Exception -> 0x0080
            r10 = r0
            r0 = r11
            r16 = r0
            r0 = r10
            if (r0 == 0) goto L_0x007d
            r0 = r10
            boolean r0 = r0.moveToFirst()     // Catch: Exception -> 0x0080
            if (r0 == 0) goto L_0x0074
            r0 = r10
            r1 = r10
            java.lang.String r2 = "date"
            int r1 = r1.getColumnIndex(r2)     // Catch: Exception -> 0x0080
            long r0 = r0.getLong(r1)     // Catch: Exception -> 0x0080
            r11 = r0
        L_0x0074:
            r0 = r10
            r0.close()     // Catch: Exception -> 0x0080
            r0 = r11
            r16 = r0
        L_0x007d:
            r0 = r16
            return r0
        L_0x0080:
            r10 = move-exception
            r0 = r10
            p459j.p460a.p582w0.C14080m2.m2612a(r0)
            r0 = -1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p582w0.p594z4.C14330b.m1544e(java.lang.String):long");
    }
}
