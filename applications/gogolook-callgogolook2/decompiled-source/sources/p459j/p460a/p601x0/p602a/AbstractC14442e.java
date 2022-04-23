package p459j.p460a.p601x0.p602a;

import android.database.Cursor;
import android.database.sqlite.SQLiteException;
import android.net.Uri;
import android.os.Build;
import android.provider.ContactsContract;
import android.text.TextUtils;
import androidx.annotation.VisibleForTesting;
import androidx.collection.LruCache;
import gogolook.callgogolook2.MyApplication;
import gogolook.callgogolook2.developmode.LogManager;
import gogolook.callgogolook2.realm.obj.index.CacheIndexRealmObject;
import java.io.Serializable;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Locale;
import java.util.Map;
import p459j.p460a.p471b1.p472a.C11507b;
import p459j.p460a.p582w0.C13915b3;
import p459j.p460a.p582w0.C13973d4;
import p459j.p460a.p582w0.C14080m2;
import p459j.p460a.p582w0.p587d5.C13978e;
import p459j.p460a.p582w0.p590x4.C14247d;
import p626l.C14989s;
import p626l.p641z.p642c.AbstractC15118l;
/* renamed from: j.a.x0.a.e */
/* loaded from: classes3-dex2jar.jar:j/a/x0/a/e.class */
public abstract class AbstractC14442e implements AbstractC14441d {

    /* renamed from: A */
    public static final String f32298A = "e";

    /* renamed from: B */
    public static final LruCache<String, C14443a<Long, String>> f32299B = new LruCache<>(128);

    /* renamed from: C */
    public static final HashSet<String> f32300C = new HashSet<>();

    /* renamed from: a */
    public Uri f32301a;

    /* renamed from: b */
    public Cursor f32302b;

    /* renamed from: c */
    public int f32303c = -1;

    /* renamed from: d */
    public long f32304d = 0;

    /* renamed from: e */
    public long f32305e = Long.MAX_VALUE;

    /* renamed from: f */
    public long f32306f = 0;

    /* renamed from: g */
    public String f32307g = null;

    /* renamed from: h */
    public int f32308h = 0;

    /* renamed from: i */
    public int f32309i = -2;

    /* renamed from: j */
    public String f32310j = "_id";

    /* renamed from: k */
    public int f32311k = -2;

    /* renamed from: l */
    public String f32312l = "number";

    /* renamed from: m */
    public int f32313m = -2;

    /* renamed from: n */
    public String f32314n = "lookup_uri";

    /* renamed from: o */
    public int f32315o = -2;

    /* renamed from: p */
    public String f32316p = "name";

    /* renamed from: q */
    public int f32317q = -2;

    /* renamed from: r */
    public String f32318r = "date";

    /* renamed from: s */
    public int f32319s = -2;

    /* renamed from: t */
    public String f32320t = "duration";

    /* renamed from: u */
    public int f32321u = -2;

    /* renamed from: v */
    public String f32322v = "type";

    /* renamed from: w */
    public int f32323w = -2;

    /* renamed from: x */
    public String f32324x = "new";

    /* renamed from: y */
    public int f32325y = -2;

    /* renamed from: z */
    public String f32326z = "body";

    /* renamed from: j.a.x0.a.e$a */
    /* loaded from: classes3-dex2jar.jar:j/a/x0/a/e$a.class */
    public static class C14443a<K, V> implements Map.Entry<K, V>, Serializable {

        /* renamed from: a */
        public final K f32327a;

        /* renamed from: b */
        public V f32328b;

        public C14443a(K k, V v) {
            this.f32327a = k;
            this.f32328b = v;
        }

        @Override // java.util.Map.Entry
        public boolean equals(Object obj) {
            boolean z = true;
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            K k = this.f32327a;
            if (k != null ? k.equals(entry.getKey()) : entry.getKey() == null) {
                V v = this.f32328b;
                if (v != null) {
                }
            }
            z = false;
            return z;
        }

        @Override // java.util.Map.Entry
        public K getKey() {
            return this.f32327a;
        }

        @Override // java.util.Map.Entry
        public V getValue() {
            return this.f32328b;
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            K k = this.f32327a;
            int i = 0;
            int hashCode = k == null ? 0 : k.hashCode();
            V v = this.f32328b;
            if (v != null) {
                i = v.hashCode();
            }
            return hashCode ^ i;
        }

        @Override // java.util.Map.Entry
        public V setValue(V v) {
            V v2 = this.f32328b;
            this.f32328b = v;
            return v2;
        }

        public String toString() {
            return this.f32327a + "=" + this.f32328b;
        }
    }

    /* renamed from: H */
    public static AbstractC14442e m1328H() {
        return new C14439b();
    }

    /* renamed from: I */
    public static final AbstractC14442e m1327I() {
        String lowerCase = Build.MANUFACTURER.toLowerCase(Locale.US);
        return ((lowerCase.hashCode() == 1864941562 && lowerCase.equals("samsung")) ? (char) 0 : (char) 65535) != 0 ? new C14440c() : new C14445g();
    }

    /* renamed from: J */
    public static AbstractC14442e m1326J() {
        return new C14444f();
    }

    /* renamed from: K */
    public static AbstractC14442e m1325K() {
        return new C14446h();
    }

    /* renamed from: A */
    public abstract boolean mo1289A();

    /* renamed from: B */
    public boolean mo1333B() {
        return mo1324a() && this.f32302b.moveToFirst();
    }

    /* renamed from: C */
    public boolean mo1332C() {
        return mo1324a() && this.f32302b.moveToNext();
    }

    /* renamed from: D */
    public void mo1299D() {
        if (mo1289A()) {
            this.f32302b = MyApplication.m29013o().getContentResolver().query(this.f32301a, mo1284r(), m1303w(), m1302x(), m1301y());
            String str = f32298A;
            StringBuilder sb = new StringBuilder();
            sb.append("uri=");
            sb.append(this.f32301a);
            sb.append(", projection=");
            sb.append(Arrays.toString(mo1284r()));
            sb.append(", selection=");
            sb.append(m1303w());
            sb.append(", selectionArgs=");
            sb.append(Arrays.toString(m1302x()));
            sb.append(", sortOrder=");
            sb.append(m1301y());
            sb.append(", cursorSize=");
            Cursor cursor = this.f32302b;
            sb.append(cursor == null ? C14247d.f31851f : String.valueOf(cursor.getCount()));
            LogManager.m28579a(str, sb.toString());
        }
    }

    /* renamed from: E */
    public HashSet<Long> mo1331E() {
        Throwable th;
        Cursor cursor;
        SecurityException e;
        SQLiteException e2;
        try {
            if (!mo1289A()) {
                return null;
            }
            try {
                cursor = MyApplication.m29013o().getContentResolver().query(this.f32301a, new String[]{this.f32310j}, TextUtils.isEmpty(this.f32307g) ? null : this.f32307g, null, null);
            } catch (SQLiteException e3) {
                e2 = e3;
                cursor = null;
            } catch (SecurityException e4) {
                e = e4;
                cursor = null;
            } catch (Throwable th2) {
                th = th2;
                Cursor cursor2 = null;
                if (0 != 0 && !cursor2.isClosed()) {
                    cursor2.close();
                }
                throw th;
            }
            if (cursor != null) {
                try {
                    HashSet<Long> hashSet = new HashSet<>();
                    if (cursor.moveToFirst()) {
                        do {
                            hashSet.add(Long.valueOf(cursor.getLong(0)));
                        } while (cursor.moveToNext());
                        cursor.close();
                        if (cursor != null && !cursor.isClosed()) {
                            cursor.close();
                        }
                        return hashSet;
                    }
                    cursor.close();
                    if (cursor != null) {
                        cursor.close();
                    }
                    return hashSet;
                } catch (SQLiteException e5) {
                    e2 = e5;
                    C13973d4.m2952a(e2);
                    if (cursor == null || cursor.isClosed()) {
                        return null;
                    }
                    cursor.close();
                    return null;
                } catch (SecurityException e6) {
                    e = e6;
                    C14080m2.m2613a(f32298A, e, true);
                    if (cursor == null || cursor.isClosed()) {
                        return null;
                    }
                    cursor.close();
                    return null;
                }
            } else {
                if (cursor == null || cursor.isClosed()) {
                    return null;
                }
                cursor.close();
                return null;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    /* renamed from: F */
    public void m1330F() {
        C13978e.f31386a.m9457a(new AbstractC15118l() { // from class: j.a.x0.a.a
            @Override // p626l.p641z.p642c.AbstractC15118l
            public final Object invoke(Object obj) {
                return AbstractC14442e.this.m1322a((C11507b.C11508a) obj);
            }
        });
    }

    /* renamed from: G */
    public void m1329G() {
        C13915b3.m3057b(m1311k(), 0L);
    }

    @VisibleForTesting
    /* renamed from: a */
    public abstract int mo1286a(int i);

    /* renamed from: a */
    public long m1321a(String str) {
        C14443a<Long, String> b = m1319b(str);
        return b == null ? 0L : b.getKey().longValue();
    }

    /* renamed from: a */
    public /* synthetic */ C14989s m1322a(C11507b.C11508a aVar) {
        if (!TextUtils.isEmpty(m1309m())) {
            aVar.m9449a(m1309m(), this.f32304d);
        }
        if (!TextUtils.isEmpty(m1311k()) && this.f32305e < C13915b3.m3065a(m1311k(), Long.MAX_VALUE)) {
            aVar.m9449a(m1311k(), this.f32305e);
        }
        if (TextUtils.isEmpty(m1313i())) {
            return null;
        }
        if (this.f32306f == 0) {
            this.f32306f = System.currentTimeMillis();
        }
        aVar.m9449a(m1313i(), this.f32306f);
        return null;
    }

    /* renamed from: a */
    public void m1323a(long j, long j2) {
        if (j > this.f32304d) {
            this.f32304d = j;
        }
        if (j2 < this.f32305e) {
            this.f32305e = j2;
        }
        if (j2 > this.f32306f) {
            this.f32306f = j2;
        }
    }

    /* renamed from: a */
    public boolean mo1324a() {
        Cursor cursor = this.f32302b;
        return cursor != null && !cursor.isClosed();
    }

    /* renamed from: b */
    public final C14443a<Long, String> m1319b(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        String replaceAll = str.replaceAll("[^+\\d]", "");
        if (TextUtils.isEmpty(replaceAll)) {
            return null;
        }
        C14443a<Long, String> aVar = f32299B.get(replaceAll);
        aVar = aVar;
        if (aVar == null) {
            aVar = aVar;
            if (!f32300C.contains(replaceAll)) {
                try {
                    Cursor query = MyApplication.m29013o().getContentResolver().query(Uri.withAppendedPath(ContactsContract.PhoneLookup.CONTENT_FILTER_URI, Uri.encode(replaceAll)), new String[]{"_id", CacheIndexRealmObject.DISPLAY_NAME}, null, null, null);
                    if (query != null) {
                        if (query.moveToFirst()) {
                            aVar = new C14443a<>(Long.valueOf(query.getLong(0)), query.getString(1));
                            f32299B.put(replaceAll, aVar);
                        } else {
                            f32300C.add(replaceAll);
                        }
                        query.close();
                    } else {
                        f32300C.add(replaceAll);
                        aVar = aVar;
                    }
                } catch (Exception e) {
                    C13973d4.m2952a(e);
                    return null;
                }
            }
        }
        return aVar;
    }

    /* renamed from: b */
    public void mo1295b() {
        Cursor cursor;
        if (mo1324a() && (cursor = this.f32302b) != null) {
            cursor.close();
        }
        f32299B.evictAll();
        f32300C.clear();
    }

    /* renamed from: b */
    public void m1320b(int i) {
        this.f32308h = i;
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0067  */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long mo1318c() {
        /*
            r5 = this;
            r0 = r5
            boolean r0 = r0.mo1324a()
            if (r0 == 0) goto L_0x0069
            r0 = -2
            r1 = r5
            int r1 = r1.f32313m
            if (r0 != r1) goto L_0x002b
            r0 = r5
            java.lang.String r0 = r0.f32314n
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 != 0) goto L_0x002b
            r0 = r5
            r1 = r5
            android.database.Cursor r1 = r1.f32302b
            r2 = r5
            java.lang.String r2 = r2.f32314n
            int r1 = r1.getColumnIndex(r2)
            r0.f32313m = r1
        L_0x002b:
            r0 = r5
            int r0 = r0.f32313m
            r6 = r0
            r0 = r6
            if (r0 < 0) goto L_0x0069
            r0 = r5
            android.database.Cursor r0 = r0.f32302b
            r1 = r6
            java.lang.String r0 = r0.getString(r1)
            r7 = r0
            r0 = r7
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 != 0) goto L_0x004e
            r0 = r7
            android.net.Uri r0 = android.net.Uri.parse(r0)
            r7 = r0
            goto L_0x0050
        L_0x004e:
            r0 = 0
            r7 = r0
        L_0x0050:
            r0 = r7
            if (r0 == 0) goto L_0x005f
            r0 = r7
            java.lang.String r0 = r0.getLastPathSegment()     // Catch: NumberFormatException -> 0x0072
            long r0 = java.lang.Long.parseLong(r0)     // Catch: NumberFormatException -> 0x0072
            r8 = r0
            goto L_0x0061
        L_0x005f:
            r0 = 0
            r8 = r0
        L_0x0061:
            r0 = r8
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x0069
            r0 = r8
            return r0
        L_0x0069:
            r0 = r5
            r1 = r5
            java.lang.String r1 = r1.mo1292p()
            long r0 = r0.m1321a(r1)
            return r0
        L_0x0072:
            r7 = move-exception
            goto L_0x005f
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p601x0.p602a.AbstractC14442e.mo1318c():long");
    }

    /* renamed from: c */
    public String m1317c(String str) {
        C14443a<Long, String> b = m1319b(str);
        return b == null ? null : b.getValue();
    }

    /* renamed from: d */
    public String mo1294d() {
        if (!mo1324a()) {
            return null;
        }
        if (-2 == this.f32325y && !TextUtils.isEmpty(this.f32326z)) {
            this.f32325y = this.f32302b.getColumnIndex(this.f32326z);
        }
        int i = this.f32325y;
        if (i < 0) {
            return null;
        }
        try {
            return this.f32302b.getString(i);
        } catch (Throwable th) {
            C14080m2.m2612a(th);
            return null;
        }
    }

    /* renamed from: e */
    public int mo1316e() {
        if (this.f32303c < 0) {
            this.f32303c = mo1324a() ? this.f32302b.getCount() : 0;
        }
        return this.f32303c;
    }

    /* renamed from: f */
    public long mo1293f() {
        if (!mo1324a()) {
            return 0L;
        }
        if (-2 == this.f32317q && !TextUtils.isEmpty(this.f32318r)) {
            this.f32317q = this.f32302b.getColumnIndex(this.f32318r);
        }
        int i = this.f32317q;
        if (i >= 0) {
            return this.f32302b.getLong(i);
        }
        return 0L;
    }

    /* renamed from: g */
    public int mo1315g() {
        if (!mo1324a()) {
            return 0;
        }
        if (-2 == this.f32319s && !TextUtils.isEmpty(this.f32320t)) {
            this.f32319s = this.f32302b.getColumnIndex(this.f32320t);
        }
        int i = this.f32319s;
        if (i >= 0) {
            return this.f32302b.getInt(i);
        }
        return 0;
    }

    /* renamed from: h */
    public long m1314h() {
        this.f32306f = C13915b3.m3065a(m1313i(), 0L);
        return this instanceof C14444f ? this.f32306f / 1000 : this.f32306f;
    }

    /* renamed from: i */
    public final String m1313i() {
        if (this instanceof C14440c) {
            return "dialer_loaded_realm_log_of_call_date";
        }
        if (this instanceof C14446h) {
            return "dialer_loaded_realm_log_of_sms_date";
        }
        if (this instanceof C14444f) {
            return "dialer_loaded_realm_log_of_mms_date";
        }
        if (this instanceof C14439b) {
            return "dialer_loaded_realm_log_of_block_date";
        }
        return null;
    }

    /* renamed from: j */
    public long m1312j() {
        this.f32306f = C13915b3.m3065a(m1313i(), 0L);
        this.f32305e = C13915b3.m3065a(m1311k(), this.f32306f == 0 ? Long.MAX_VALUE : 0L);
        long j = this.f32305e;
        if (j == 0 || j == Long.MAX_VALUE) {
            C13915b3.m3057b(m1311k(), this.f32305e);
        }
        return this instanceof C14444f ? this.f32305e / 1000 : this.f32305e;
    }

    /* renamed from: k */
    public final String m1311k() {
        if (this instanceof C14440c) {
            return "dialer_loaded_realm_log_of_call_date_min";
        }
        if (this instanceof C14446h) {
            return "dialer_loaded_realm_log_of_sms_date_min";
        }
        if (this instanceof C14444f) {
            return "dialer_loaded_realm_log_of_mms_date_min";
        }
        if (this instanceof C14439b) {
            return "dialer_loaded_realm_log_of_block_date_min";
        }
        return null;
    }

    /* renamed from: l */
    public long m1310l() {
        this.f32304d = C13915b3.m3065a(m1309m(), 0L);
        return this.f32304d;
    }

    /* renamed from: m */
    public final String m1309m() {
        if (this instanceof C14440c) {
            return "dialer_loaded_realm_log_of_call_id";
        }
        if (this instanceof C14446h) {
            return "dialer_loaded_realm_log_of_sms_id";
        }
        if (this instanceof C14444f) {
            return "dialer_loaded_realm_log_of_mms_id";
        }
        if (this instanceof C14439b) {
            return "dialer_loaded_realm_log_of_block_id";
        }
        return null;
    }

    /* renamed from: n */
    public String mo1308n() {
        if (mo1324a()) {
            if (-2 == this.f32315o && !TextUtils.isEmpty(this.f32316p)) {
                this.f32315o = this.f32302b.getColumnIndex(this.f32316p);
            }
            int i = this.f32315o;
            if (i >= 0) {
                String string = this.f32302b.getString(i);
                if (!TextUtils.isEmpty(string)) {
                    return string;
                }
            }
        }
        return m1317c(mo1292p());
    }

    /* renamed from: o */
    public int mo1285o() {
        if (!mo1324a()) {
            return 0;
        }
        if (-2 == this.f32323w && !TextUtils.isEmpty(this.f32324x)) {
            this.f32323w = this.f32302b.getColumnIndex(this.f32324x);
        }
        int i = this.f32323w;
        if (i >= 0) {
            return this.f32302b.getInt(i);
        }
        return 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0077, code lost:
        if (android.text.TextUtils.equals(r0, "-5") != false) goto L_0x007a;
     */
    /* renamed from: p */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String mo1292p() {
        /*
            r4 = this;
            r0 = r4
            boolean r0 = r0.mo1324a()
            if (r0 == 0) goto L_0x007e
            r0 = -2
            r1 = r4
            int r1 = r1.f32311k
            if (r0 != r1) goto L_0x002b
            r0 = r4
            java.lang.String r0 = r0.f32312l
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 != 0) goto L_0x002b
            r0 = r4
            r1 = r4
            android.database.Cursor r1 = r1.f32302b
            r2 = r4
            java.lang.String r2 = r2.f32312l
            int r1 = r1.getColumnIndex(r2)
            r0.f32311k = r1
        L_0x002b:
            r0 = r4
            int r0 = r0.f32311k
            r5 = r0
            r0 = r5
            if (r0 < 0) goto L_0x007e
            r0 = r4
            android.database.Cursor r0 = r0.f32302b
            r1 = r5
            java.lang.String r0 = r0.getString(r1)
            r6 = r0
            r0 = r6
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 != 0) goto L_0x007a
            r0 = r6
            java.lang.String r1 = "-1"
            boolean r0 = android.text.TextUtils.equals(r0, r1)
            if (r0 != 0) goto L_0x007a
            r0 = r6
            java.lang.String r1 = "-2"
            boolean r0 = android.text.TextUtils.equals(r0, r1)
            if (r0 != 0) goto L_0x007a
            r0 = r6
            java.lang.String r1 = "-3"
            boolean r0 = android.text.TextUtils.equals(r0, r1)
            if (r0 != 0) goto L_0x007a
            r0 = r6
            java.lang.String r1 = "-4"
            boolean r0 = android.text.TextUtils.equals(r0, r1)
            if (r0 != 0) goto L_0x007a
            r0 = r6
            r7 = r0
            r0 = r6
            java.lang.String r1 = "-5"
            boolean r0 = android.text.TextUtils.equals(r0, r1)
            if (r0 == 0) goto L_0x007c
        L_0x007a:
            r0 = 0
            r7 = r0
        L_0x007c:
            r0 = r7
            return r0
        L_0x007e:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p601x0.p602a.AbstractC14442e.mo1292p():java.lang.String");
    }

    /* renamed from: q */
    public int mo1307q() {
        return mo1324a() ? this.f32302b.getPosition() : mo1316e();
    }

    /* renamed from: r */
    public String[] mo1284r() {
        return null;
    }

    /* renamed from: s */
    public String m1306s() {
        if (!mo1324a()) {
            return "";
        }
        if (-2 == this.f32319s && !TextUtils.isEmpty(this.f32320t)) {
            this.f32319s = this.f32302b.getColumnIndex(this.f32320t);
        }
        int i = this.f32319s;
        return i >= 0 ? this.f32302b.getString(i) : "";
    }

    /* renamed from: t */
    public int mo1305t() {
        if (!mo1324a()) {
            return -1;
        }
        if (-2 == this.f32321u && !TextUtils.isEmpty(this.f32322v)) {
            this.f32321u = this.f32302b.getColumnIndex(this.f32322v);
        }
        int i = this.f32321u;
        if (i >= 0) {
            return this.f32302b.getInt(i);
        }
        return -1;
    }

    /* renamed from: u */
    public long mo1304u() {
        if (!mo1324a()) {
            return 0L;
        }
        if (-2 == this.f32309i && !TextUtils.isEmpty(this.f32310j)) {
            this.f32309i = this.f32302b.getColumnIndex(this.f32310j);
        }
        int i = this.f32309i;
        if (i >= 0) {
            return this.f32302b.getLong(i);
        }
        return 0L;
    }

    /* renamed from: v */
    public String mo1283v() {
        return null;
    }

    /* renamed from: w */
    public String m1303w() {
        String str;
        int i = this.f32308h;
        String str2 = "";
        if (i == 2 || i == 3) {
            StringBuilder sb = new StringBuilder();
            sb.append("(");
            sb.append(this.f32310j);
            sb.append(">? OR ");
            sb.append(this.f32318r);
            sb.append(">?)");
            if (!TextUtils.isEmpty(this.f32307g)) {
                str2 = " AND (" + this.f32307g + ")";
            }
            sb.append(str2);
            return sb.toString();
        } else if (i == 4 || i == 5) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("(");
            sb2.append(this.f32310j);
            sb2.append(">? OR ");
            sb2.append(this.f32318r);
            sb2.append("<?)");
            if (!TextUtils.isEmpty(this.f32307g)) {
                str2 = " AND (" + this.f32307g + ")";
            }
            sb2.append(str2);
            return sb2.toString();
        } else {
            if (TextUtils.isEmpty(this.f32307g)) {
                str = null;
            } else {
                str = "(" + this.f32307g + ")";
            }
            return str;
        }
    }

    /* renamed from: x */
    public String[] m1302x() {
        int i = this.f32308h;
        if (i == 2 || i == 3) {
            return new String[]{String.valueOf(m1310l()), String.valueOf(m1314h())};
        }
        if (i == 4 || i == 5) {
            return new String[]{String.valueOf(m1310l()), String.valueOf(m1312j())};
        }
        return null;
    }

    /* renamed from: y */
    public String m1301y() {
        if (TextUtils.isEmpty(this.f32318r)) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(this.f32318r);
        sb.append(this.f32308h % 2 == 0 ? " DESC" : " ASC");
        return sb.toString();
    }

    /* renamed from: z */
    public int m1300z() {
        return mo1286a(mo1305t());
    }
}
