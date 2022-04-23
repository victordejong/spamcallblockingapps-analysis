package com.android.contacts.a;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.database.ContentObserver;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Handler;
import android.preference.PreferenceManager;
import android.util.Log;
import com.android.contacts.util.PhoneCapabilityTester;
import com.asus.updatesdk.BuildConfig;
import com.google.android.gms.analytics.GoogleAnalytics;
import com.google.android.gms.analytics.HitBuilders;
import com.google.android.gms.analytics.Tracker;
import java.util.HashMap;
/* loaded from: classes-dex2jar.jar:com/android/contacts/a/b.class */
public final class b {
    private static boolean c;
    private static String d;
    private static b f;
    private static GoogleAnalytics g;
    private static a h;
    private static Context i;
    private static SharedPreferences j;
    private static HashMap<Integer, d> l;
    private c k;

    /* renamed from: a  reason: collision with root package name */
    private static final String[] f502a = {"0-5", "6-10", "11-15", "16-20", "21-25", "25-30", "31-"};

    /* renamed from: b  reason: collision with root package name */
    private static final String[] f503b = {"0-10", "11-20", "21-30", "31-40", "41-50", "51-60", "61-70", "71-80", "81-90", "91-100"};
    private static final boolean e = Build.TYPE.equals("user");
    private static final String[] m = {"0-0", "1-9", "10-49", "50-99", "100-199", "200-299", "300-399", "400-499", "500-"};
    private static final String[] n = {"0-0", "1-49", "50-99", "100-499", "500-999", "1000-1999", "2000-4999", "5000-"};
    private static final String[] o = {"0-0", "1-9", "10-19", "20-29", "30-39", "40-49", "50-100", "101-"};
    private static final String[] p = {"0.0-0.0", "0.0-0.1", "0.1-0.2", "0.2-0.3", "0.3-0.4", "0.4-0.5", "0.5-0.6", "0.6-0.7", "0.7-0.8", "0.8-0.9", "0.9-1.0"};
    private static final String[] q = {"0.0-0.0", "0.0-0.1", "0.1-0.2", "0.2-0.3", "0.3-0.4", "0.4-0.5", "0.5-0.6", "0.6-0.7", "0.7-0.8", "0.8-0.9", "0.9-1.0"};
    private static final String[] r = {"0.0-0.0", "0.0-0.02", "0.02-0.04", "0.04-0.06", "0.06-0.08", "0.08-0.1", "0.1-0.2", "0.2-0.4", "0.4-0.6", "0.6-0.8", "0.8-1.0"};
    private static final String[] s = {"0-0", "1-2", "3-4", "5-6", "7-8", "9-10", "10-29", "20-49", "50-99", "100-"};
    private static final String[] t = {"0-0", "1-5", "5-10", "10-15", "15-20", "20-25", "25-30", "30-40", "40-50", "50-60", "60-80", "80-100", "80-100", "100-"};

    /* loaded from: classes-dex2jar.jar:com/android/contacts/a/b$a.class */
    final class a extends ContentObserver {
        public a(Handler handler) {
            super(handler);
        }

        @Override // android.database.ContentObserver
        public final void onChange(boolean z) {
            boolean unused = b.c = com.android.contacts.a.a.a(b.i);
            if (b.g != null) {
                b.g.setAppOptOut(b.c);
            }
            if (!b.e) {
                Log.d("GATracker", "AnalyticsObserver onChange:" + b.c);
            }
        }
    }

    /* renamed from: com.android.contacts.a.b$b  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/a/b$b.class */
    public interface AbstractC0020b {
        void onInitComplete(b bVar);
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/a/b$c.class */
    final class c implements SharedPreferences.OnSharedPreferenceChangeListener {
        c() {
        }

        @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
        public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
            if (str.equals("NON_ASUS_GA_ENABLE")) {
                boolean unused = b.c = com.android.contacts.a.a.a(b.i);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/a/b$d.class */
    public final class d {

        /* renamed from: a  reason: collision with root package name */
        Tracker f506a;

        /* renamed from: b  reason: collision with root package name */
        String f507b;
        private int d;

        public d(int i, String str) {
            this.d = i;
            this.f507b = str;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/a/b$e.class */
    private static final class e extends AsyncTask<Void, Void, Void> {

        /* renamed from: a  reason: collision with root package name */
        AbstractC0020b f508a;

        /* renamed from: b  reason: collision with root package name */
        Context f509b;

        public e(Context context, AbstractC0020b bVar) {
            this.f508a = bVar;
            this.f509b = context;
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ Void doInBackground(Void[] voidArr) {
            b.a(this.f509b);
            return null;
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ void onPostExecute(Void r4) {
            super.onPostExecute(r4);
            this.f508a.onInitComplete(b.a());
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/a/b$f.class */
    private final class f extends AsyncTask<Void, Void, Void> {

        /* renamed from: a  reason: collision with root package name */
        HashMap<String, String> f510a = new HashMap<>();

        /* renamed from: b  reason: collision with root package name */
        HashMap<String, String> f511b = new HashMap<>();
        HashMap<String, String> c = new HashMap<>();
        HashMap<String, String> d = new HashMap<>();
        Context e;
        Long f;

        f(Context context, Long l) {
            this.e = context;
            this.f = l;
        }

        /* JADX WARN: Removed duplicated region for block: B:102:0x03a6  */
        /* JADX WARN: Removed duplicated region for block: B:105:0x03cc  */
        /* JADX WARN: Removed duplicated region for block: B:108:0x03f2  */
        /* JADX WARN: Removed duplicated region for block: B:111:0x0418  */
        /* JADX WARN: Removed duplicated region for block: B:114:0x0441  */
        /* JADX WARN: Removed duplicated region for block: B:117:0x0484  */
        /* JADX WARN: Removed duplicated region for block: B:120:0x049d  */
        /* JADX WARN: Removed duplicated region for block: B:123:0x04b6  */
        /* JADX WARN: Removed duplicated region for block: B:126:0x04d2  */
        /* JADX WARN: Removed duplicated region for block: B:131:0x0534  */
        /* JADX WARN: Removed duplicated region for block: B:134:0x054f  */
        /* JADX WARN: Removed duplicated region for block: B:142:0x05b1  */
        /* JADX WARN: Removed duplicated region for block: B:145:0x05d3  */
        /* JADX WARN: Removed duplicated region for block: B:156:0x0638  */
        /* JADX WARN: Removed duplicated region for block: B:162:0x06ee  */
        /* JADX WARN: Removed duplicated region for block: B:171:0x07aa  */
        /* JADX WARN: Removed duplicated region for block: B:174:0x07b5  */
        /* JADX WARN: Removed duplicated region for block: B:177:0x07ca  */
        /* JADX WARN: Removed duplicated region for block: B:180:0x07d4  */
        /* JADX WARN: Removed duplicated region for block: B:197:0x0937  */
        /* JADX WARN: Removed duplicated region for block: B:200:0x0940  */
        /* JADX WARN: Removed duplicated region for block: B:201:0x0947  */
        /* JADX WARN: Removed duplicated region for block: B:202:0x094e  */
        /* JADX WARN: Removed duplicated region for block: B:211:0x096d  */
        /* JADX WARN: Removed duplicated region for block: B:212:0x0974  */
        /* JADX WARN: Removed duplicated region for block: B:213:0x097b  */
        /* JADX WARN: Removed duplicated region for block: B:214:0x0982  */
        /* JADX WARN: Removed duplicated region for block: B:215:0x0989  */
        /* JADX WARN: Removed duplicated region for block: B:219:0x099d  */
        /* JADX WARN: Removed duplicated region for block: B:220:0x09a4  */
        /* JADX WARN: Removed duplicated region for block: B:221:0x09ab  */
        /* JADX WARN: Removed duplicated region for block: B:232:0x0a13  */
        /* JADX WARN: Removed duplicated region for block: B:233:0x0a1a  */
        /* JADX WARN: Removed duplicated region for block: B:241:0x0a43  */
        /* JADX WARN: Removed duplicated region for block: B:249:0x0a5b  */
        /* JADX WARN: Removed duplicated region for block: B:272:0x0b5c A[ORIG_RETURN, RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:296:0x0381 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:298:0x05e6 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:29:0x0157  */
        /* JADX WARN: Removed duplicated region for block: B:314:0x0820 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:320:0x0162 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:71:0x02af  */
        /* JADX WARN: Removed duplicated region for block: B:74:0x02d2  */
        /* JADX WARN: Removed duplicated region for block: B:81:0x0313  */
        /* JADX WARN: Removed duplicated region for block: B:85:0x0329  */
        /* JADX WARN: Removed duplicated region for block: B:99:0x0395  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private java.lang.Void a() {
            /*
                Method dump skipped, instructions count: 3028
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.a.b.f.a():java.lang.Void");
        }

        /* JADX WARN: Can't wrap try/catch for region: R(28:(50:300|2|(2:4|5)(2:45|46)|6|7|278|8|9|287|10|(20:15|16|17|(2:19|20)|21|22|(2:24|25)|26|27|(2:29|30)|31|32|(2:34|35)|36|37|(6:306|39|40|41|42|(3:308|44|312)(1:311))(1:310)|309|11|12|13)|307|90|91|92|93|94|95|96|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|(5:117|118|119|120|121)|122|(1:124)|125|126|127|128|129|130|131|132|133)|(20:(44:135|304|58|59|274|60|61|62|63|64|(1:66)|67|289|68|69|(21:72|302|73|74|75|272|76|315|77|78|79|80|81|82|83|84|85|86|87|(4:316|89|319|318)(4:313|224|321|318)|70)|283|179|(3:296|181|(25:183|184|(1:186)|187|(1:189)|190|294|191|(3:292|193|(16:195|196|(1:198)|199|(1:201)|202|276|203|(3:285|205|(7:207|208|(1:210)|211|(7:298|213|(3:281|215|(4:217|218|(1:220)|221))|267|218|(0)|221)|222|223))|268|208|(0)|211|(0)|222|223))|269|196|(0)|199|(0)|202|276|203|(0)|268|208|(0)|211|(0)|222|223))|270|184|(0)|187|(0)|190|294|191|(0)|269|196|(0)|199|(0)|202|276|203|(0)|268|208|(0)|211|(0)|222|223)|294|191|(0)|269|196|(0)|199|(0)|202|276|203|(0)|268|208|(0)|211|(0)|222|223)|271|304|58|59|274|60|61|62|63|64|(0)|67|289|68|69|(1:70)|283|179|(0)|270|184|(0)|187|(0)|190|(2:(0)|(1:290))) */
        /* JADX WARN: Can't wrap try/catch for region: R(43:266|49|50|51|52|53|54|55|(11:(44:57|304|58|59|274|60|61|62|63|64|(0)|67|289|68|69|(1:70)|283|179|(0)|270|184|(0)|187|(0)|190|294|191|(0)|269|196|(0)|199|(0)|202|276|203|(0)|268|208|(0)|211|(0)|222|223)|276|203|(0)|268|208|(0)|211|(0)|222|223)|271|304|58|59|274|60|61|62|63|64|(0)|67|289|68|69|(1:70)|283|179|(0)|270|184|(0)|187|(0)|190|294|191|(0)|269|196|(0)|199|(0)|202) */
        /* JADX WARN: Can't wrap try/catch for region: R(96:300|2|(2:4|5)(2:45|46)|6|7|278|8|9|287|10|(20:15|16|17|(2:19|20)|21|22|(2:24|25)|26|27|(2:29|30)|31|32|(2:34|35)|36|37|(6:306|39|40|41|42|(3:308|44|312)(1:311))(1:310)|309|11|12|13)|307|90|91|92|93|94|95|96|97|98|99|100|101|102|103|104|105|106|107|108|109|110|111|112|113|114|115|(5:117|118|119|120|121)|122|(1:124)|125|126|127|128|129|130|131|132|133|(44:135|304|58|59|274|60|61|62|63|64|(1:66)|67|289|68|69|(21:72|302|73|74|75|272|76|315|77|78|79|80|81|82|83|84|85|86|87|(4:316|89|319|318)(4:313|224|321|318)|70)|283|179|(3:296|181|(25:183|184|(1:186)|187|(1:189)|190|294|191|(3:292|193|(16:195|196|(1:198)|199|(1:201)|202|276|203|(3:285|205|(7:207|208|(1:210)|211|(7:298|213|(3:281|215|(4:217|218|(1:220)|221))|267|218|(0)|221)|222|223))|268|208|(0)|211|(0)|222|223))|269|196|(0)|199|(0)|202|276|203|(0)|268|208|(0)|211|(0)|222|223))|270|184|(0)|187|(0)|190|294|191|(0)|269|196|(0)|199|(0)|202|276|203|(0)|268|208|(0)|211|(0)|222|223)|271|304|58|59|274|60|61|62|63|64|(0)|67|289|68|69|(1:70)|283|179|(0)|270|184|(0)|187|(0)|190|294|191|(0)|269|196|(0)|199|(0)|202|276|203|(0)|268|208|(0)|211|(0)|222|223|(2:(0)|(1:290))) */
        /* JADX WARN: Code restructure failed: missing block: B:143:0x0425, code lost:
            r22 = e;
         */
        /* JADX WARN: Code restructure failed: missing block: B:144:0x0427, code lost:
            r9 = null;
         */
        /* JADX WARN: Code restructure failed: missing block: B:149:0x043b, code lost:
            r8 = r9;
         */
        /* JADX WARN: Code restructure failed: missing block: B:150:0x043c, code lost:
            android.util.Log.e("GATracker", "Fail to get raw contact info due to " + r22.toString());
         */
        /* JADX WARN: Code restructure failed: missing block: B:151:0x0450, code lost:
            if (r9 != null) goto L_0x0453;
         */
        /* JADX WARN: Code restructure failed: missing block: B:152:0x0453, code lost:
            r9.close();
         */
        /* JADX WARN: Code restructure failed: missing block: B:153:0x045c, code lost:
            r9 = th;
         */
        /* JADX WARN: Code restructure failed: missing block: B:154:0x045d, code lost:
            r8 = null;
         */
        /* JADX WARN: Code restructure failed: missing block: B:177:0x04b3, code lost:
            r8 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:178:0x04b4, code lost:
            android.util.Log.w("GATracker", "ConcurrentModificationException: " + r8.toString());
         */
        /* JADX WARN: Code restructure failed: missing block: B:262:0x06ee, code lost:
            r22 = e;
         */
        /* JADX WARN: Removed duplicated region for block: B:140:0x041d  */
        /* JADX WARN: Removed duplicated region for block: B:157:0x0463  */
        /* JADX WARN: Removed duplicated region for block: B:186:0x0503  */
        /* JADX WARN: Removed duplicated region for block: B:189:0x0510  */
        /* JADX WARN: Removed duplicated region for block: B:198:0x0583  */
        /* JADX WARN: Removed duplicated region for block: B:201:0x0590  */
        /* JADX WARN: Removed duplicated region for block: B:210:0x05fe  */
        /* JADX WARN: Removed duplicated region for block: B:220:0x0656  */
        /* JADX WARN: Removed duplicated region for block: B:285:0x05ea A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:292:0x056e A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:296:0x04ee A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:298:0x0626 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:66:0x01ff  */
        /* JADX WARN: Removed duplicated region for block: B:72:0x0225 A[Catch: ConcurrentModificationException -> 0x04b3, TryCatch #11 {ConcurrentModificationException -> 0x04b3, blocks: (B:68:0x0211, B:70:0x021b, B:72:0x0225, B:73:0x0231, B:89:0x02c5, B:169:0x0499, B:174:0x04aa, B:176:0x04b2), top: B:289:0x0211 }] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private void b() {
            /*
                Method dump skipped, instructions count: 1823
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.a.b.f.b():void");
        }

        /* JADX WARN: Removed duplicated region for block: B:87:0x026b  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private void c() {
            /*
                Method dump skipped, instructions count: 649
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.a.b.f.c():void");
        }

        /* JADX WARN: Removed duplicated region for block: B:25:0x00db A[Catch: all -> 0x018e, TryCatch #3 {all -> 0x018e, blocks: (B:9:0x0031, B:12:0x0059, B:15:0x008e, B:20:0x00a9, B:22:0x00b3, B:23:0x00b7, B:25:0x00db, B:26:0x00e8, B:27:0x00ec, B:29:0x010b, B:31:0x0114, B:32:0x0126, B:33:0x012a, B:45:0x0168), top: B:74:0x0031, inners: #1 }] */
        /* JADX WARN: Removed duplicated region for block: B:29:0x010b A[Catch: all -> 0x018e, TRY_ENTER, TryCatch #3 {all -> 0x018e, blocks: (B:9:0x0031, B:12:0x0059, B:15:0x008e, B:20:0x00a9, B:22:0x00b3, B:23:0x00b7, B:25:0x00db, B:26:0x00e8, B:27:0x00ec, B:29:0x010b, B:31:0x0114, B:32:0x0126, B:33:0x012a, B:45:0x0168), top: B:74:0x0031, inners: #1 }] */
        /* JADX WARN: Removed duplicated region for block: B:67:0x01fc  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private void d() {
            /*
                Method dump skipped, instructions count: 514
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.a.b.f.d():void");
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ Void doInBackground(Void[] voidArr) {
            return a();
        }

        @Override // android.os.AsyncTask
        protected final /* bridge */ /* synthetic */ void onPostExecute(Void r2) {
        }

        @Override // android.os.AsyncTask
        protected final void onPreExecute() {
            this.f510a.clear();
            this.f511b.clear();
        }
    }

    public b() {
        h = new a(new Handler());
        HashMap<Integer, d> hashMap = new HashMap<>();
        l = hashMap;
        hashMap.put(0, new d(0, "UA-56205918-7"));
        l.put(1, new d(1, "UA-56205918-2"));
        l.put(2, new d(2, "UA-56205918-3"));
        l.put(3, new d(3, "UA-56205918-9"));
        l.put(4, new d(4, "UA-56205918-11"));
        l.put(5, new d(5, "UA-56205918-12"));
        l.put(6, new d(6, "UA-56205918-13"));
        l.put(8, new d(8, "UA-56205918-15"));
        l.put(9, new d(9, "UA-56205918-16"));
        l.put(10, new d(10, "UA-56205918-17"));
        l.put(111, new d(111, "UA-56205918-10"));
        l.put(12, new d(12, "UA-56205918-18"));
        l.put(14, new d(14, "UA-56205918-24"));
        l.put(15, new d(15, "UA-56205918-28"));
        l.put(16, new d(15, "UA-56205918-33"));
        l.put(17, new d(17, "UA-56205918-34"));
        l.put(18, new d(18, "UA-56205918-35"));
        l.put(19, new d(19, "UA-56205918-38"));
        d = new String(BuildConfig.FLAVOR);
    }

    static /* synthetic */ int a(String[] strArr, float f2) {
        int i2 = 0;
        while (i2 < strArr.length) {
            String[] split = strArr[i2].split("-");
            float parseFloat = Float.parseFloat(split[0]);
            float parseFloat2 = Float.parseFloat(split[1]);
            if ((parseFloat <= f2 && f2 <= parseFloat2) || (parseFloat <= f2 && parseFloat2 == 1.0d)) {
                break;
            }
            i2++;
        }
        return i2;
    }

    static /* synthetic */ int a(String[] strArr, int i2) {
        int i3 = 0;
        while (i3 < strArr.length) {
            String[] split = strArr[i3].split("-");
            int parseInt = Integer.parseInt(split[0]);
            int parseInt2 = Integer.parseInt(split.length == 1 ? "-1" : split[1]);
            if ((parseInt <= i2 && i2 <= parseInt2) || (parseInt <= i2 && parseInt2 == -1)) {
                break;
            }
            i3++;
        }
        return i3;
    }

    public static b a() {
        if (f == null) {
            f = new b();
        }
        return f;
    }

    public static GoogleAnalytics a(Context context) {
        GoogleAnalytics googleAnalytics;
        synchronized (b.class) {
            try {
                i = context;
                boolean a2 = com.android.contacts.a.a.a(context);
                c = a2;
                if (a2 && g == null) {
                    g = GoogleAnalytics.getInstance(context);
                }
                googleAnalytics = g;
            } catch (Throwable th) {
                throw th;
            }
        }
        return googleAnalytics;
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x009b A[Catch: NullPointerException -> 0x0146, TRY_ENTER, TryCatch #0 {NullPointerException -> 0x0146, blocks: (B:4:0x0016, B:6:0x001c, B:9:0x0028, B:11:0x0053, B:12:0x007e, B:12:0x007e, B:14:0x0084, B:18:0x0090, B:21:0x009b, B:23:0x00a1, B:25:0x00aa, B:27:0x00b8, B:29:0x00c1, B:31:0x00cb, B:32:0x0100, B:32:0x0100, B:34:0x0106, B:36:0x010f, B:38:0x0119, B:44:0x013c, B:50:0x0155, B:53:0x0165, B:56:0x0174, B:59:0x0184, B:62:0x0194, B:65:0x01a4, B:68:0x01b7, B:75:0x01d7, B:79:0x01df, B:89:0x01fc, B:97:0x0212, B:106:0x022b, B:115:0x0244, B:122:0x0257, B:131:0x0272, B:138:0x0285, B:144:0x0298), top: B:148:0x0016 }] */
    /* JADX WARN: Removed duplicated region for block: B:73:0x01d1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static com.google.android.gms.analytics.Tracker a(android.content.Context r7, int r8) {
        /*
            Method dump skipped, instructions count: 681
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.a.b.a(android.content.Context, int):com.google.android.gms.analytics.Tracker");
    }

    public static void a(int i2, Activity activity, String str, boolean z) {
        Tracker a2 = a(activity, i2);
        if (c && z) {
            if (!e) {
                Log.d("GATracker", "sendView, Target Activity:" + activity.getClass().getName() + ", ViewName:" + str);
            }
            if (a2 != null) {
                a2.setScreenName(str);
                a2.send(new HitBuilders.ScreenViewBuilder().build());
            } else if (!e) {
                Log.d("GATracker", "sendAppViewWithName() mTracker is null");
            }
        }
    }

    public static void a(int i2, Context context, String str, String str2, String str3, Long l2) {
        Tracker a2 = a(context, i2);
        if (c) {
            if (!e) {
                Log.d("GATracker", "sendEvent, Activity:" + context.getClass().getName() + ", [" + str + ", " + str2 + ", " + str3 + ", " + l2 + "]");
            }
            if (a2 != null) {
                HitBuilders.EventBuilder eventBuilder = new HitBuilders.EventBuilder();
                eventBuilder.setCategory(str);
                eventBuilder.setAction(str2);
                eventBuilder.setLabel(str3);
                if (l2 != null) {
                    eventBuilder.setValue(l2.longValue());
                }
                a2.send(eventBuilder.build());
            }
        } else if (!e) {
            Log.d("GATracker", "sendEvent() mTracker is null");
        }
    }

    public static void a(Activity activity, String str, boolean z) {
        Tracker a2 = a(activity, 0);
        if (c && z) {
            if (!e) {
                Log.d("GATracker", "sendView, Target Activity:" + activity.getClass().getName() + ", ViewName:" + str);
            }
            if (a2 != null) {
                a2.setScreenName(str);
                a2.send(new HitBuilders.ScreenViewBuilder().build());
            } else if (!e) {
                Log.d("GATracker", "sendAppViewWithName() mTracker is null");
            }
        }
    }

    public static void a(Context context, AbstractC0020b bVar) {
        if (g == null) {
            new e(context, bVar).execute(new Void[0]);
        } else {
            bVar.onInitComplete(a());
        }
    }

    public static void a(Context context, String str, String str2, String str3) {
        Tracker a2 = a(context, 0);
        if (c) {
            if (!e) {
                Log.d("GATracker", "sendEvent, Activity:" + context.getClass().getName() + ", [" + str + ", " + str2 + ", " + str3 + ", " + ((Object) null) + "]");
            }
            if (a2 != null) {
                HitBuilders.EventBuilder eventBuilder = new HitBuilders.EventBuilder();
                eventBuilder.setCategory(str);
                eventBuilder.setAction(str2);
                eventBuilder.setLabel(str3);
                a2.send(eventBuilder.build());
            } else if (!e) {
                Log.d("GATracker", "sendEvent() mTracker is null");
            }
        }
    }

    public final void b(Context context) {
        if (!e) {
            Log.d("GATracker", "registerContentObserver");
        }
        if (PhoneCapabilityTester.IsSystemApp()) {
            com.android.contacts.a.a.a(context, h);
            return;
        }
        j = PreferenceManager.getDefaultSharedPreferences(context);
        this.k = new c();
        j.registerOnSharedPreferenceChangeListener(this.k);
    }

    public final void c(Context context) {
        if (!e) {
            Log.d("GATracker", "unregisterContentObserver");
        }
        if (PhoneCapabilityTester.IsSystemApp()) {
            com.android.contacts.a.a.b(context, h);
        } else if (j != null && this.k != null) {
            j.unregisterOnSharedPreferenceChangeListener(this.k);
        }
    }

    public final void d(Context context) {
        if (e) {
            SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
            Long valueOf = Long.valueOf(defaultSharedPreferences.getLong("CONTACTS_GA_TRACKER_TIMESTAMP", 0L));
            Log.d("GATracker", "Obtain device info periodically, last time stamp=" + valueOf + ", current time stamp=" + System.currentTimeMillis());
            if (valueOf.longValue() == 0 || System.currentTimeMillis() - valueOf.longValue() >= 604800000) {
                Log.d("GATracker", "Start obtaining device info.");
                new f(context, valueOf).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
                SharedPreferences.Editor edit = defaultSharedPreferences.edit();
                edit.putLong("CONTACTS_GA_TRACKER_TIMESTAMP", System.currentTimeMillis());
                edit.commit();
            }
        }
    }
}
