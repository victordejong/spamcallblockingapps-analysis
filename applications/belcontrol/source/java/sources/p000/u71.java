package p000;

import com.google.android.exoplayer2.source.chunk.ChunkedTrackBlacklistUtil;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStreamReader;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Iterator;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONObject;
import p000.r71;
/* renamed from: u71 */
/* loaded from: classes3-dex2jar.jar:u71.class */
public class u71 implements Serializable {

    /* renamed from: h */
    public static final String f8270h = u71.class.getSimpleName();

    /* renamed from: j */
    public static HashMap<String, long[]> f8271j = new HashMap<>();

    /* renamed from: k */
    public static u71 f8272k = null;

    /* renamed from: l */
    public static ScheduledExecutorService f8273l;

    /* renamed from: m */
    public static ScheduledFuture<?> f8274m;

    /* renamed from: c */
    public ArrayList<C1674b> f8277c;

    /* renamed from: g */
    public String f8280g;

    /* renamed from: a */
    public boolean f8275a = false;

    /* renamed from: b */
    public boolean f8276b = false;

    /* renamed from: f */
    public byte f8279f = (byte) 0;

    /* renamed from: d */
    public Integer[] f8278d = new Integer[0];

    /* renamed from: u71$a */
    /* loaded from: classes3-dex2jar.jar:u71$a.class */
    public class RunnableC1673a implements Runnable {
        public RunnableC1673a(u71 u71Var) {
        }

        @Override // java.lang.Runnable
        public void run() {
            u71.m422u();
        }
    }

    /* renamed from: u71$b */
    /* loaded from: classes3-dex2jar.jar:u71$b.class */
    public static class C1674b implements Serializable {

        /* renamed from: a */
        public int f8281a;

        /* renamed from: b */
        public int f8282b;

        /* renamed from: c */
        public boolean f8283c;

        public C1674b(int i, int i2, boolean z) {
            this.f8281a = i;
            this.f8282b = i2;
            this.f8283c = z;
        }

        /* renamed from: a */
        public static C1674b m416a(JSONObject jSONObject) {
            try {
                return new C1674b(jSONObject.getInt("begin"), jSONObject.getInt(TtmlNode.END), jSONObject.getBoolean("isActive"));
            } catch (Throwable th) {
                j91.m1504l(C1674b.class.getSimpleName(), "Unable to parse JSON", th);
                return null;
            }
        }

        /* renamed from: b */
        public JSONObject m415b() {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("begin", this.f8281a).put(TtmlNode.END, this.f8282b).put("isActive", this.f8283c);
            } catch (Throwable th) {
                j91.m1504l(this, "Unable to create JSON", th);
            }
            return jSONObject;
        }
    }

    public u71() {
        ArrayList<C1674b> arrayList = new ArrayList<>();
        this.f8277c = arrayList;
        arrayList.add(new C1674b(700, 165, false));
        this.f8277c.add(new C1674b(0, 1440, false));
        this.f8277c.add(new C1674b(0, 1440, false));
        this.f8277c.add(new C1674b(0, 1440, false));
        this.f8277c.add(new C1674b(0, 1440, false));
        this.f8277c.add(new C1674b(0, 1440, false));
        this.f8277c.add(new C1674b(0, 1440, false));
    }

    /* renamed from: A */
    public static void m449A(boolean z) {
        int i;
        u71 u71Var;
        if (z) {
            m419x(false);
            u71Var = m432k();
            i = u71Var.f8279f | 1;
        } else {
            u71Var = m432k();
            i = u71Var.f8279f & (-2);
        }
        u71Var.f8279f = (byte) i;
        f8272k.m421v();
    }

    /* renamed from: B */
    public static void m448B(boolean z) {
        u71 m432k = m432k();
        if (m432k.f8276b == z) {
            return;
        }
        m432k.f8276b = z;
    }

    /* renamed from: C */
    public static void m447C(boolean z) {
        int i;
        u71 u71Var;
        if (z) {
            u71Var = m432k();
            i = u71Var.f8279f | 2;
        } else {
            u71Var = m432k();
            i = u71Var.f8279f & (-3);
        }
        u71Var.f8279f = (byte) i;
        f8272k.m421v();
    }

    /* renamed from: D */
    public static String m446D() {
        if (f8272k == null) {
            j91.m1505k(f8270h, "Cannot be exported without instance!");
            return null;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("is24_7", f8272k.f8275a);
            jSONObject.put("isRepeatedCallsAllowed", f8272k.f8276b);
            JSONArray jSONArray = new JSONArray();
            Iterator<C1674b> it = f8272k.f8277c.iterator();
            while (it.hasNext()) {
                jSONArray.put(it.next().m415b());
            }
            jSONObject.put("schedule", jSONArray);
            JSONArray jSONArray2 = new JSONArray();
            for (Integer num : f8272k.f8278d) {
                jSONArray2.put(num.intValue());
            }
            jSONObject.put("groupsAllowed", jSONArray2);
            jSONObject.put("allowedContent", (int) f8272k.f8279f);
            String str = "Saving: " + jSONObject.toString();
            return jSONObject.toString();
        } catch (Throwable th) {
            j91.m1504l(f8270h, "Unable to export", th);
            return null;
        }
    }

    /* renamed from: E */
    public static boolean m445E(String str) {
        if (!m426q()) {
            return false;
        }
        long[] jArr = f8271j.get(str);
        long currentTimeMillis = System.currentTimeMillis();
        if (jArr == null) {
            return false;
        }
        if (currentTimeMillis - jArr[0] > ChunkedTrackBlacklistUtil.DEFAULT_TRACK_BLACKLIST_MS) {
            f8271j.remove(str);
            return false;
        }
        jArr[1] = jArr[1] + 1;
        f8271j.put(str, jArr);
        return jArr[1] >= 3;
    }

    /* renamed from: F */
    public static void m444F(String str) {
        if (!m429n() || !m426q()) {
            return;
        }
        long currentTimeMillis = System.currentTimeMillis();
        long[] jArr = f8271j.get(str);
        if (jArr == null) {
            jArr = new long[]{currentTimeMillis, 1};
        } else {
            jArr[0] = currentTimeMillis;
        }
        f8271j.put(str, jArr);
    }

    /* renamed from: G */
    public static void m443G() {
        m432k();
    }

    /* renamed from: b */
    public static Integer[] m441b() {
        return m432k().f8278d;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0034, code lost:
        if (p000.ka1.m1413k(r4, m441b()) != false) goto L13;
     */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m440c(java.lang.Integer[] r4) {
        /*
            r0 = r4
            int r0 = r0.length
            r5 = r0
            r0 = 0
            r6 = r0
            r0 = r5
            if (r0 != 0) goto L17
            r0 = 1
            java.lang.Integer[] r0 = new java.lang.Integer[r0]
            r4 = r0
            r0 = r4
            r1 = 0
            int r2 = p000.b81.f1825e
            java.lang.Integer r2 = java.lang.Integer.valueOf(r2)
            r0[r1] = r2
        L17:
            boolean r0 = m429n()
            if (r0 == 0) goto L37
            boolean r0 = m428o()
            if (r0 != 0) goto L37
            r0 = r6
            r7 = r0
            boolean r0 = m427p()
            if (r0 == 0) goto L39
            r0 = r6
            r7 = r0
            r0 = r4
            java.lang.Integer[] r1 = m441b()
            boolean r0 = p000.ka1.m1413k(r0, r1)
            if (r0 == 0) goto L39
        L37:
            r0 = 1
            r7 = r0
        L39:
            r0 = r7
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p000.u71.m440c(java.lang.Integer[]):boolean");
    }

    /* renamed from: d */
    public static boolean m439d() {
        return m432k().f8279f != 0 || !m429n();
    }

    /* renamed from: e */
    public static boolean m438e() {
        if (m429n()) {
            return true;
        }
        for (int i = 0; i < 7; i++) {
            C1674b m433j = m433j(i);
            if (m433j != null && m433j.f8283c) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: f */
    public static void m437f() {
        try {
            fa1.m1840j().deleteFile("DndData");
        } catch (Throwable th) {
        }
    }

    /* renamed from: g */
    public static String m436g() {
        return m446D();
    }

    /* renamed from: h */
    public static void m435h(String str) {
        if (f8272k == null) {
            j91.m1505k(f8270h, "Cannot be imported without instance!");
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            f8272k.f8276b = jSONObject.optBoolean("isRepeatedCallsAllowed");
            f8272k.f8275a = jSONObject.optBoolean("is24_7");
            f8272k.f8279f = (byte) jSONObject.optInt("allowedContent");
            JSONArray optJSONArray = jSONObject.optJSONArray("schedule");
            if (optJSONArray != null) {
                f8272k.f8277c.clear();
                int length = optJSONArray.length();
                for (int i = 0; i < length; i++) {
                    f8272k.f8277c.add(C1674b.m416a(optJSONArray.getJSONObject(i)));
                }
            }
            JSONArray optJSONArray2 = jSONObject.optJSONArray("groupsAllowed");
            if (optJSONArray2 != null) {
                f8272k.f8278d = new Integer[optJSONArray2.length()];
                int length2 = optJSONArray2.length();
                for (int i2 = 0; i2 < length2; i2++) {
                    f8272k.f8278d[i2] = (Integer) optJSONArray2.get(i2);
                }
            }
            f8272k.f8280g = ka1.m1410n(str);
        } catch (Throwable th) {
            j91.m1504l(f8270h, "Unable to import", th);
        }
    }

    /* renamed from: i */
    public static int m434i(int i) {
        switch (i) {
            case 1:
                return 6;
            case 2:
                return 0;
            case 3:
                return 1;
            case 4:
                return 2;
            case 5:
                return 3;
            case 6:
                return 4;
            case 7:
                return 5;
            default:
                return i % 7;
        }
    }

    /* renamed from: j */
    public static C1674b m433j(int i) {
        if (i < 0 || i > 6) {
            return null;
        }
        try {
            return m432k().f8277c.get(i);
        } catch (IndexOutOfBoundsException e) {
            f8272k = new u71();
            return m432k().f8277c.get(i);
        }
    }

    /* renamed from: k */
    public static u71 m432k() {
        if (f8272k == null) {
            m424s();
        }
        return f8272k;
    }

    /* renamed from: l */
    public static void m431l(String str) {
        m435h(str);
        u71 u71Var = f8272k;
        if (u71Var != null) {
            u71Var.m421v();
        }
    }

    /* renamed from: m */
    public static boolean m430m() {
        return m432k().f8275a;
    }

    /* renamed from: n */
    public static boolean m429n() {
        boolean z = true;
        if (m432k().f8275a) {
            return true;
        }
        Calendar calendar = Calendar.getInstance();
        C1674b m433j = m433j(m434i(calendar.get(7)));
        if (!m433j.f8283c) {
            return false;
        }
        int i = (calendar.get(11) * 60) + calendar.get(12);
        int i2 = m433j.f8281a;
        int i3 = m433j.f8282b;
        if (i2 < i3) {
            if (i < i2 || i > i3) {
                z = false;
            }
            return z;
        }
        boolean z2 = true;
        if (i > i3) {
            z2 = i >= i2;
        }
        return z2;
    }

    /* renamed from: o */
    public static boolean m428o() {
        return (m432k().f8279f & 4) == 4;
    }

    /* renamed from: p */
    public static boolean m427p() {
        boolean z = true;
        if ((m432k().f8279f & 1) != 1 || m432k().f8278d.length <= 0) {
            z = false;
        }
        return z;
    }

    /* renamed from: q */
    public static boolean m426q() {
        return r71.EnumC1638a.f7942d.m695a() && m432k().f8276b;
    }

    /* renamed from: r */
    public static boolean m425r() {
        return (m432k().f8279f & 2) == 2;
    }

    /* renamed from: s */
    public static void m424s() {
        try {
            FileInputStream openFileInput = fa1.m1840j().openFileInput("DndData");
            InputStreamReader inputStreamReader = new InputStreamReader(openFileInput);
            BufferedReader bufferedReader = new BufferedReader(inputStreamReader);
            String str = "";
            for (String readLine = bufferedReader.readLine(); readLine != null; readLine = bufferedReader.readLine()) {
                str = str + readLine;
            }
            bufferedReader.close();
            inputStreamReader.close();
            openFileInput.close();
            f8272k = new u71();
            m435h(str);
        } catch (Throwable th) {
            f8272k = new u71();
        }
    }

    /* renamed from: t */
    public static void m423t(String str) {
        long[] jArr;
        if (!m429n() || !m426q() || (jArr = f8271j.get(str)) == null || jArr[1] <= 0) {
            return;
        }
        jArr[1] = jArr[1] - 1;
        f8271j.put(str, jArr);
    }

    /* renamed from: u */
    public static void m422u() {
        if (f8272k == null) {
            return;
        }
        try {
            String m446D = m446D();
            FileOutputStream openFileOutput = fa1.m1840j().openFileOutput("DndData", 0);
            openFileOutput.write(m446D.getBytes());
            openFileOutput.close();
            String m1410n = ka1.m1410n(m446D);
            if (!m1410n.equals(f8272k.f8280g)) {
                m91.m1279c(null, null);
                f8272k.f8280g = m1410n;
            }
            String str = "Instance saved: " + m446D;
        } catch (Throwable th) {
            j91.m1494v(th, "Unable to save DnD to DndData");
        }
    }

    /* renamed from: w */
    public static void m420w(boolean z) {
        u71 m432k = m432k();
        if (m432k.f8275a == z) {
            return;
        }
        m432k.f8275a = z;
    }

    /* renamed from: x */
    public static void m419x(boolean z) {
        int i;
        u71 u71Var;
        if (z) {
            m449A(false);
            u71Var = m432k();
            i = u71Var.f8279f | 4;
        } else {
            u71Var = m432k();
            i = u71Var.f8279f & (-5);
        }
        u71Var.f8279f = (byte) i;
        f8272k.m421v();
    }

    /* renamed from: y */
    public static void m418y(Integer[] numArr) {
        int i;
        u71 u71Var;
        if (numArr == null || numArr.length <= 0) {
            u71Var = m432k();
            i = u71Var.f8279f & (-2);
        } else {
            m419x(false);
            u71Var = m432k();
            i = u71Var.f8279f | 1;
        }
        u71Var.f8279f = (byte) i;
        u71 u71Var2 = f8272k;
        u71Var2.f8278d = numArr;
        u71Var2.m421v();
    }

    /* renamed from: z */
    public static void m417z(int i, int i2, int i3, boolean z) {
        if (i < 0 || i > 6) {
            return;
        }
        m432k().f8277c.set(i, new C1674b(i2, i3, z));
        f8272k.m421v();
    }

    /* renamed from: v */
    public final void m421v() {
        if (f8273l == null) {
            f8273l = Executors.newSingleThreadScheduledExecutor();
        }
        ScheduledFuture<?> scheduledFuture = f8274m;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(false);
        }
        f8274m = f8273l.schedule(new RunnableC1673a(this), 5000L, TimeUnit.MILLISECONDS);
    }
}
