package org.mistergroup.shouldianswer.model.communityDatabase;

import android.content.Context;
import android.net.NetworkInfo;
import android.util.SparseArray;
import com.google.android.gms.gcm.Task;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileFilter;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Observable;
import java.util.zip.GZIPInputStream;
import kotlin.TypeCastException;
import kotlin.p081e.p083b.C1694h;
import kotlin.p087i.C1747g;
import okhttp3.AbstractC1957ac;
import okhttp3.C1955ab;
import okhttp3.C2094u;
import org.mistergroup.shouldianswer.model.C2398ai;
import org.mistergroup.shouldianswer.model.C2405c;
import org.mistergroup.shouldianswer.utils.C3079ad;
import org.mistergroup.shouldianswer.utils.C3104j;
import org.mistergroup.shouldianswer.utils.C3115o;
import org.mistergroup.shouldianswer.utils.C3133w;
import org.mistergroup.shouldianswer.utils.C3135y;
/* renamed from: org.mistergroup.shouldianswer.model.communityDatabase.a */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/model/communityDatabase/a.class */
public final class C2408a extends Observable {

    /* renamed from: a */
    public static final C2408a f6967a;

    /* renamed from: b */
    private static int f6968b;

    /* renamed from: c */
    private static int f6969c;

    /* renamed from: e */
    private static C2412c f6971e;

    /* renamed from: d */
    private static final SparseArray<C2411b> f6970d = new SparseArray<>();

    /* renamed from: f */
    private static final SparseArray<C2411b> f6972f = new SparseArray<>();

    /* renamed from: g */
    private static final SparseArray<Boolean> f6973g = new SparseArray<>();

    /* renamed from: org.mistergroup.shouldianswer.model.communityDatabase.a$a */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/model/communityDatabase/a$a.class */
    public static final class C2409a {

        /* renamed from: a */
        private long f6974a;

        /* renamed from: b */
        private int f6975b;

        /* renamed from: c */
        private int f6976c;

        /* renamed from: d */
        private int f6977d;

        /* renamed from: e */
        private int f6978e;

        /* renamed from: f */
        private int f6979f;

        /* renamed from: a */
        public final int m1140a() {
            return this.f6975b;
        }

        /* renamed from: a */
        public final void m1139a(int i) {
            this.f6975b = i;
        }

        /* renamed from: a */
        public final void m1138a(long j) {
            this.f6974a = j;
        }

        /* renamed from: b */
        public final int m1137b() {
            return this.f6976c;
        }

        /* renamed from: b */
        public final void m1136b(int i) {
            this.f6976c = i;
        }

        /* renamed from: c */
        public final int m1135c() {
            return this.f6977d;
        }

        /* renamed from: c */
        public final void m1134c(int i) {
            this.f6977d = i;
        }

        /* renamed from: d */
        public final int m1133d() {
            return this.f6979f;
        }

        /* renamed from: d */
        public final void m1132d(int i) {
            this.f6978e = i;
        }

        /* renamed from: e */
        public final void m1131e(int i) {
            this.f6979f = i;
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.model.communityDatabase.a$b */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/model/communityDatabase/a$b.class */
    public static final class C2410b implements FileFilter {

        /* renamed from: a */
        public static final C2410b f6980a = new C2410b();

        C2410b() {
        }

        @Override // java.io.FileFilter
        public final boolean accept(File file) {
            C1694h.m3122a((Object) file, "file");
            String name = file.getName();
            C1694h.m3122a((Object) name, "file.name");
            return C1747g.m3031c(name, "secdb", false, 2, null);
        }
    }

    static {
        C2408a c2408a = new C2408a();
        f6967a = c2408a;
        c2408a.m1145d();
    }

    private C2408a() {
    }

    /* renamed from: a */
    private final String m1155a(int i) {
        File filesDir = C3115o.f9175a.m119d().getFilesDir();
        C1694h.m3122a((Object) filesDir, "dir");
        String absolutePath = filesDir.getAbsolutePath();
        return absolutePath + "/ratings_" + i + ".secdb";
    }

    /* renamed from: a */
    private final C2411b m1154a(long j) {
        synchronized (this) {
            try {
                Context m119d = C3115o.f9175a.m119d();
                if (j > 0) {
                    C2412c c2412c = f6971e;
                    if (c2412c == null) {
                        C1694h.m3124a();
                    }
                    int m1120a = c2412c.m1120a(0, String.valueOf(j));
                    C2411b c2411b = null;
                    if (m1120a > 0) {
                        C2411b c2411b2 = f6970d.get(m1120a);
                        c2411b = c2411b2;
                        if (c2411b2 == null) {
                            c2411b = new C2411b();
                            C3104j.m157a(C3104j.f9124a, "CommunityDatabase.getDataSliceMain loadFromRawResource slice " + String.valueOf(m1120a), (String) null, 2, (Object) null);
                            c2411b.m1128a(m119d, m1120a);
                            f6970d.put(m1120a, c2411b);
                        }
                    }
                    return c2411b;
                }
            } catch (Exception e) {
                C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
            }
            return null;
        }
    }

    /* renamed from: b */
    private final String m1149b(int i) {
        String m1155a = m1155a(i);
        Boolean bool = f6973g.get(i, null);
        Boolean bool2 = bool;
        if (bool == null) {
            bool2 = Boolean.valueOf(new File(m1155a).exists());
            f6973g.put(i, bool2);
        }
        return bool2.booleanValue() ? m1155a : null;
    }

    /* renamed from: b */
    private final C2411b m1148b(long j) {
        synchronized (this) {
            try {
                Context m119d = C3115o.f9175a.m119d();
                if (j > 0) {
                    String valueOf = String.valueOf(j);
                    if (valueOf.length() < 2) {
                        return null;
                    }
                    if (valueOf == null) {
                        throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
                    }
                    String substring = valueOf.substring(0, 2);
                    C1694h.m3122a((Object) substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                    Integer valueOf2 = Integer.valueOf(substring);
                    C1694h.m3122a((Object) valueOf2, "Integer.valueOf(num.substring(0, 2))");
                    int intValue = valueOf2.intValue();
                    C2411b c2411b = null;
                    if (intValue > 0) {
                        C2411b c2411b2 = f6972f.get(intValue);
                        c2411b = c2411b2;
                        if (c2411b2 == null) {
                            c2411b = new C2411b();
                            C3104j.m157a(C3104j.f9124a, "CommunityDatabase.getDataSliceSecondary loadFromFileResource slice " + String.valueOf(intValue), (String) null, 2, (Object) null);
                            String m1149b = m1149b(intValue);
                            if (m1149b != null) {
                                c2411b.m1127a(m119d, m1149b);
                            }
                            f6972f.put(intValue, c2411b);
                        }
                    }
                    return c2411b;
                }
            } catch (Exception e) {
                C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
                m1144e();
            }
            return null;
        }
    }

    /* renamed from: g */
    private final void m1142g() {
        try {
            InputStream open = C3115o.f9175a.m119d().getAssets().open("data_slice_info.dat");
            C1694h.m3122a((Object) open, "storageContext.assets.open(\"data_slice_info.dat\")");
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(open));
            try {
                if (C3133w.f9268a.m29a(bufferedReader.readLine(), "MDI")) {
                    C3133w c3133w = C3133w.f9268a;
                    String readLine = bufferedReader.readLine();
                    C1694h.m3122a((Object) readLine, "br.readLine()");
                    f6968b = c3133w.m28b(readLine);
                    C3133w c3133w2 = C3133w.f9268a;
                    String readLine2 = bufferedReader.readLine();
                    C1694h.m3122a((Object) readLine2, "br.readLine()");
                    f6969c = c3133w2.m28b(readLine2);
                    if (f6968b != C2405c.f6946b.m1166s()) {
                        C3104j.m157a(C3104j.f9124a, "loadMainDataInfo different BaseDatabaseVersion, reset secondary data", (String) null, 2, (Object) null);
                        C2405c.f6946b.m1201a(f6968b);
                        m1144e();
                    }
                } else {
                    C3104j.m158a(C3104j.f9124a, new Exception("loadMainDataInfo MDI header not found!"), (String) null, 2, (Object) null);
                }
            } catch (Exception e) {
                C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
            }
            try {
                bufferedReader.close();
                open.close();
            } catch (Exception e2) {
                C3104j.m158a(C3104j.f9124a, e2, (String) null, 2, (Object) null);
            }
        } catch (Exception e3) {
            C3104j.m158a(C3104j.f9124a, e3, (String) null, 2, (Object) null);
        }
    }

    /* renamed from: h */
    private final void m1141h() {
        try {
            InputStream open = C3115o.f9175a.m119d().getAssets().open("data_slice_list.dat");
            C1694h.m3122a((Object) open, "storageContext.assets.open(\"data_slice_list.dat\")");
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(open));
            try {
                String readLine = bufferedReader.readLine();
                f6971e = new C2412c();
                C2412c c2412c = f6971e;
                if (c2412c == null) {
                    C1694h.m3124a();
                }
                C1694h.m3122a((Object) readLine, "nodes");
                c2412c.m1119a(readLine, 0);
            } catch (Exception e) {
                C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
            }
            try {
                bufferedReader.close();
                open.close();
            } catch (Exception e2) {
                C3104j.m158a(C3104j.f9124a, e2, (String) null, 2, (Object) null);
            }
        } catch (Exception e3) {
            C3104j.m158a(C3104j.f9124a, e3, (String) null, 2, (Object) null);
        }
    }

    /* renamed from: a */
    public final int m1156a() {
        return f6969c;
    }

    /* renamed from: a */
    public final C2409a m1153a(String str) {
        C2409a c2409a;
        C1694h.m3117b(str, "number");
        if (C3133w.f9268a.m30a(str) || C1694h.m3123a((Object) str, (Object) "-1")) {
            return null;
        }
        String str2 = str;
        if (C1747g.m3033b(str, "+", false, 2, (Object) null)) {
            str2 = str.substring(1);
            C1694h.m3122a((Object) str2, "(this as java.lang.String).substring(startIndex)");
        }
        try {
            long parseLong = Long.parseLong(str2);
            C2409a c2409a2 = null;
            try {
                C2411b m1148b = m1148b(parseLong);
                C2409a m1129a = m1148b != null ? m1148b.m1129a(parseLong) : null;
                C2409a c2409a3 = m1129a;
                if (m1129a == null) {
                    C2411b m1154a = m1154a(parseLong);
                    c2409a3 = m1154a != null ? m1154a.m1129a(parseLong) : null;
                }
                c2409a = c2409a3;
                if (c2409a3 != null) {
                    c2409a = c2409a3;
                    if (c2409a3.m1140a() == 0) {
                        C2409a c2409a4 = c2409a3;
                        c2409a = c2409a3;
                        if (c2409a3.m1137b() == 0) {
                            C2409a c2409a5 = c2409a3;
                            c2409a = c2409a3;
                            if (c2409a3.m1135c() == 0) {
                                c2409a2 = c2409a3;
                                c2409a = null;
                            }
                        }
                    }
                }
            } catch (Exception e) {
                C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
                c2409a = c2409a2;
            }
            return c2409a;
        } catch (Exception e2) {
            C3104j.f9124a.m163a(e2);
            return null;
        }
    }

    /* renamed from: a */
    public final void m1151a(boolean z) {
        synchronized (this) {
            try {
                long currentTimeMillis = System.currentTimeMillis();
                long j = 1800000;
                ArrayList arrayList = new ArrayList();
                int size = f6970d.size();
                for (int i = 0; i < size; i++) {
                    C2411b c2411b = f6970d.get(f6970d.keyAt(i));
                    if (c2411b != null && z && currentTimeMillis > c2411b.m1121c() + j) {
                        arrayList.add(Integer.valueOf(i));
                    }
                }
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    Integer num = (Integer) it.next();
                    C3104j.m157a(C3104j.f9124a, "CommunityDatabase.recycle nav_main slice " + String.valueOf(num.intValue()) + " released", (String) null, 2, (Object) null);
                    SparseArray<C2411b> sparseArray = f6970d;
                    C1694h.m3122a((Object) num, "id");
                    sparseArray.remove(num.intValue());
                }
                arrayList.clear();
                int size2 = f6972f.size();
                for (int i2 = 0; i2 < size2; i2++) {
                    C2411b c2411b2 = f6972f.get(f6972f.keyAt(i2));
                    if (c2411b2 != null && z && currentTimeMillis > c2411b2.m1121c() + j) {
                        arrayList.add(Integer.valueOf(i2));
                    }
                }
                Iterator it2 = arrayList.iterator();
                while (it2.hasNext()) {
                    Integer num2 = (Integer) it2.next();
                    C3104j.m157a(C3104j.f9124a, "CommunityDatabase.recycle secondary slice " + String.valueOf(num2.intValue()) + " released", (String) null, 2, (Object) null);
                    SparseArray<C2411b> sparseArray2 = f6972f;
                    C1694h.m3122a((Object) num2, "id");
                    sparseArray2.remove(num2.intValue());
                }
            } catch (Exception e) {
                C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
            }
        }
    }

    /* renamed from: a */
    public final boolean m1152a(C2411b c2411b) {
        C3104j.m157a(C3104j.f9124a, "RatingDatabase.distributeSlice", (String) null, 2, (Object) null);
        if (c2411b == null) {
            C1694h.m3124a();
        }
        int m1123b = c2411b.m1123b();
        long currentTimeMillis = System.currentTimeMillis();
        try {
            Context m119d = C3115o.f9175a.m119d();
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i <= 9; i++) {
                for (int i2 = 0; i2 <= 9; i2++) {
                    int i3 = (i * 10) + i2;
                    String m1155a = m1155a(i3);
                    C2411b c2411b2 = new C2411b();
                    if (c2411b2.m1125a(c2411b, i3)) {
                        C2411b c2411b3 = new C2411b();
                        if (m1149b(i3) != null) {
                            c2411b3.m1127a(m119d, m1155a);
                        }
                        BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(m1155a + ".update", false));
                        c2411b3.m1124a(c2411b2, bufferedOutputStream);
                        bufferedOutputStream.close();
                        arrayList.add(Integer.valueOf(i3));
                        C3104j.m157a(C3104j.f9124a, "RatingDatabase.distributeSlice added " + String.valueOf(c2411b2.m1130a()) + " items to sliceId=" + String.valueOf(i3), (String) null, 2, (Object) null);
                    }
                }
            }
            C3104j.m157a(C3104j.f9124a, "RatingDatabase.distributeSlice prepared successfully,renaming", (String) null, 2, (Object) null);
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                Integer num = (Integer) it.next();
                C1694h.m3122a((Object) num, "sliceId");
                String m1155a2 = m1155a(num.intValue());
                File file = new File(m1155a2 + ".update");
                File file2 = new File(m1155a2);
                if (file2.exists() && !file2.delete()) {
                    C3104j.m158a(C3104j.f9124a, new Exception("Cant delete " + m1155a2), (String) null, 2, (Object) null);
                }
                if (!file.renameTo(file2)) {
                    C3104j.m158a(C3104j.f9124a, new Exception("Cant replace slice " + m1155a2), (String) null, 2, (Object) null);
                }
            }
            C2405c.f6946b.m1193b(m1123b);
            f6972f.clear();
            f6973g.clear();
            long currentTimeMillis2 = System.currentTimeMillis();
            C3104j.m157a(C3104j.f9124a, "RatingDatabase.distributeSlice finished in " + String.valueOf(currentTimeMillis2 - currentTimeMillis) + " ms", (String) null, 2, (Object) null);
            return true;
        } catch (Exception e) {
            C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
            return false;
        }
    }

    /* renamed from: b */
    public final int m1150b() {
        int m1165t = C2405c.f6946b.m1165t();
        if (m1165t <= 0) {
            m1165t = f6968b;
        }
        return m1165t;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v304, types: [long] */
    /* JADX WARN: Type inference failed for: r0v306, types: [long] */
    /* JADX WARN: Type inference failed for: r0v309, types: [long] */
    /* JADX WARN: Type inference failed for: r14v0 */
    /* JADX WARN: Type inference failed for: r14v1 */
    /* JADX WARN: Type inference failed for: r14v3 */
    /* JADX WARN: Type inference failed for: r16v0 */
    /* JADX WARN: Type inference failed for: r16v1 */
    /* JADX WARN: Type inference failed for: r16v2 */
    /* JADX WARN: Type inference failed for: r18v0 */
    /* JADX WARN: Type inference failed for: r18v2 */
    /* JADX WARN: Type inference failed for: r18v3 */
    /* JADX WARN: Type inference failed for: r1v120, types: [long] */
    /* JADX WARN: Type inference failed for: r1v30 */
    /* JADX WARN: Type inference failed for: r1v35, types: [long] */
    /* renamed from: b */
    public final boolean m1147b(boolean z) {
        C2094u mo2372a;
        C3104j c3104j;
        int i;
        C3104j c3104j2;
        NetworkInfo networkInfo;
        synchronized (this) {
            Context m119d = C3115o.f9175a.m119d();
            C3104j.m157a(C3104j.f9124a, "CommunityDatabase.update.begin", (String) null, 2, (Object) null);
            int i2 = 0;
            while (i2 <= 100) {
                C3104j.m157a(C3104j.f9124a, "CommunityDatabase.update loop " + i2, (String) null, 2, (Object) null);
                int m1165t = C2405c.f6946b.m1165t();
                C3104j.m157a(C3104j.f9124a, "CommunityDatabase.update mainDB=" + String.valueOf(f6968b) + " items=" + String.valueOf(f6969c), (String) null, 2, (Object) null);
                C3104j c3104j3 = C3104j.f9124a;
                StringBuilder sb = new StringBuilder();
                sb.append("CommunityDatabase.update secondaryDB=");
                sb.append(String.valueOf(m1165t));
                C3104j.m157a(c3104j3, sb.toString(), (String) null, 2, (Object) null);
                C3104j.m157a(C3104j.f9124a, "CommunityDatabase.update force=" + Boolean.toString(z), (String) null, 2, (Object) null);
                ?? r14 = false;
                ?? m1210H = z ? (char) 0 : C2405c.f6946b.m1210H();
                ?? m1208J = z ? (char) 0 : C2405c.f6946b.m1208J();
                if (!z) {
                    r14 = C2405c.f6946b.m1209I();
                }
                long time = new Date().getTime();
                Calendar calendar = Calendar.getInstance();
                C1694h.m3122a((Object) calendar, "cal");
                calendar.setTimeInMillis(time);
                calendar.set(11, 0);
                calendar.set(12, 0);
                calendar.set(13, 0);
                calendar.set(14, 0);
                long timeInMillis = calendar.getTimeInMillis();
                calendar.setTimeInMillis(r14 == true ? 1L : 0L);
                calendar.set(11, 0);
                calendar.set(12, 0);
                calendar.set(13, 0);
                calendar.set(14, 0);
                long timeInMillis2 = calendar.getTimeInMillis();
                if (z || timeInMillis != timeInMillis2) {
                    long j = time - m1208J;
                    if (j > C2405c.f6946b.m1184e()) {
                        C3104j.m157a(C3104j.f9124a, "CommunityDatabase.checkAndUpdate Set force checkAndUpdate due last success check in more than 23 hours ", (String) null, 2, (Object) null);
                        z = true;
                    }
                    if (!z && (networkInfo = C3135y.f9272b.m18f().getNetworkInfo(1)) != null && !networkInfo.isConnected()) {
                        C3104j.m157a(C3104j.f9124a, "CommunityDatabase.checkAndUpdate Skipping due standard checkAndUpdate and no wifi connection", (String) null, 2, (Object) null);
                        c3104j2 = C3104j.f9124a;
                    } else if (!z && j < C2405c.f6946b.m1186d()) {
                        C3104j.m157a(C3104j.f9124a, "CommunityDatabase.update Skipping due success check in less than 12 hours", (String) null, 2, (Object) null);
                        c3104j2 = C3104j.f9124a;
                    } else if (z || time - m1210H >= C2405c.f6946b.m1194b()) {
                        C2405c.f6946b.m1185d(time);
                        try {
                            new Date().getTime();
                            C2405c.f6946b.m1170o();
                            HashMap<String, String> hashMap = new HashMap<>();
                            C3079ad c3079ad = C3079ad.f8982a;
                            C1955ab m217a = c3079ad.m217a(C3079ad.f8982a.m209e() + "/cached?" + ("_dbVer=" + String.valueOf(f6967a.m1150b())), hashMap);
                            if (m217a == null) {
                                C3104j.f9124a.m163a(new Exception("CommunityDatabase.update callService NETWORK not CONNECTED!"));
                                C3104j.m157a(C3104j.f9124a, "CommunityDatabase.update.end", (String) null, 2, (Object) null);
                                return false;
                            }
                            if (m217a.m2490c() && m217a.m2486g() != null) {
                                C2405c.f6946b.m1159z();
                                C2405c.f6946b.m1160y();
                                if (m119d == null) {
                                    C1694h.m3124a();
                                }
                                File createTempFile = File.createTempFile("mtz", "database", m119d.getCacheDir());
                                try {
                                    AbstractC1957ac m2486g = m217a.m2486g();
                                    if (m2486g == null) {
                                        C3104j.m158a(C3104j.f9124a, new Exception("CommunityDatabase.update callService failed no response body!"), (String) null, 2, (Object) null);
                                        if (!createTempFile.delete()) {
                                            C3104j.m152c(C3104j.f9124a, "Cant delete tempFile", null, 2, null);
                                        }
                                        C3104j.m157a(C3104j.f9124a, "CommunityDatabase.update.end", (String) null, 2, (Object) null);
                                        return false;
                                    }
                                    if (m2486g.mo2372a() != null && !(!C1694h.m3123a((Object) mo2372a.m1897a(), (Object) "application"))) {
                                        InputStream m2462c = m2486g.m2462c();
                                        FileOutputStream fileOutputStream = new FileOutputStream(createTempFile);
                                        byte[] bArr = new byte[Task.EXTRAS_LIMIT_BYTES];
                                        int i3 = 0;
                                        while (true) {
                                            i = i3;
                                            int read = m2462c.read(bArr);
                                            if (read == -1) {
                                                break;
                                            }
                                            fileOutputStream.write(bArr, 0, read);
                                            i3 = i + read;
                                        }
                                        m2462c.close();
                                        fileOutputStream.close();
                                        m2486g.close();
                                        if (i == 0) {
                                            C3104j.m158a(C3104j.f9124a, new Exception("CommunityDatabase.update callService failed no data!"), (String) null, 2, (Object) null);
                                            if (!createTempFile.delete()) {
                                                C3104j.m152c(C3104j.f9124a, "Cant delete tempFile", null, 2, null);
                                            }
                                            C3104j.m157a(C3104j.f9124a, "CommunityDatabase.update.end", (String) null, 2, (Object) null);
                                            return false;
                                        }
                                        C3104j.m157a(C3104j.f9124a, "CommunityDatabase.checkAndUpdate Downloaded checkAndUpdate", (String) null, 2, (Object) null);
                                        BufferedInputStream bufferedInputStream = new BufferedInputStream(new GZIPInputStream(new FileInputStream(createTempFile)));
                                        C2411b c2411b = new C2411b();
                                        if (!c2411b.m1126a(bufferedInputStream)) {
                                            m1144e();
                                            throw new Exception("CommunityDatabase.update dataSlice not loaded,reseting!");
                                        }
                                        m1152a(c2411b);
                                        bufferedInputStream.close();
                                        C2405c.f6946b.m1181f(time);
                                        C3104j.m157a(C3104j.f9124a, "CommunityDatabase.update setCommunityDatabaseLastUpdatedTime to " + String.valueOf(time), (String) null, 2, (Object) null);
                                        C2405c.f6946b.m1183e(time);
                                        if (!createTempFile.delete()) {
                                            C3104j.m152c(C3104j.f9124a, "Cant delete tempFile", null, 2, null);
                                        }
                                        C3104j.m157a(C3104j.f9124a, "CommunityDatabase.update.end", (String) null, 2, (Object) null);
                                        i2++;
                                        z = true;
                                    }
                                    String m2461e = m2486g.m2461e();
                                    if (!C3133w.f9268a.m30a(m2461e)) {
                                        C1694h.m3122a((Object) m2461e, "responseString");
                                        String a = C1747g.m3037a(m2461e, "\n", "", false, 4, (Object) null);
                                        if (C1694h.m3123a((Object) a, (Object) "OAP")) {
                                            C3104j.m157a(C3104j.f9124a, "CommunityDatabase.update outdated app!", (String) null, 2, (Object) null);
                                            C2398ai.f6930a.m1247r(true);
                                            if (!createTempFile.delete()) {
                                                C3104j.m152c(C3104j.f9124a, "Cant delete tempFile", null, 2, null);
                                            }
                                            c3104j = C3104j.f9124a;
                                        } else if (a.compareTo("NC") == 0) {
                                            C3104j.m157a(C3104j.f9124a, "CommunityDatabase.checkAndUpdate No checkAndUpdate available", (String) null, 2, (Object) null);
                                            C2405c.f6946b.m1181f(time);
                                            if (!createTempFile.delete()) {
                                                C3104j.m152c(C3104j.f9124a, "Cant delete tempFile", null, 2, null);
                                            }
                                            c3104j = C3104j.f9124a;
                                        } else if (a.compareTo("OOD") == 0) {
                                            C3104j.m158a(C3104j.f9124a, new Exception("CommunityDatabase.checkAndUpdate Cant checkAndUpdate db! OOD received!"), (String) null, 2, (Object) null);
                                            if (m1165t != 0) {
                                                C3104j.m157a(C3104j.f9124a, "Try to restart update from nav_main db", (String) null, 2, (Object) null);
                                                m1144e();
                                                boolean m1147b = m1147b(true);
                                                if (!createTempFile.delete()) {
                                                    C3104j.m152c(C3104j.f9124a, "Cant delete tempFile", null, 2, null);
                                                }
                                                C3104j.m157a(C3104j.f9124a, "CommunityDatabase.update.end", (String) null, 2, (Object) null);
                                                return m1147b;
                                            }
                                            C2405c.f6946b.m1181f(time);
                                            if (!createTempFile.delete()) {
                                                C3104j.m152c(C3104j.f9124a, "Cant delete tempFile", null, 2, null);
                                            }
                                            c3104j = C3104j.f9124a;
                                        }
                                        C3104j.m157a(c3104j, "CommunityDatabase.update.end", (String) null, 2, (Object) null);
                                        return true;
                                    }
                                    C3104j.m157a(C3104j.f9124a, "CommunityDatabase.update Unknown response", (String) null, 2, (Object) null);
                                    if (!createTempFile.delete()) {
                                        C3104j.m152c(C3104j.f9124a, "Cant delete tempFile", null, 2, null);
                                    }
                                    C3104j.m157a(C3104j.f9124a, "CommunityDatabase.update.end", (String) null, 2, (Object) null);
                                    return false;
                                } catch (Throwable th) {
                                    if (!createTempFile.delete()) {
                                        C3104j.m152c(C3104j.f9124a, "Cant delete tempFile", null, 2, null);
                                    }
                                    throw th;
                                }
                            }
                            C3104j.m158a(C3104j.f9124a, new Exception("CommunityDatabase.update callService failed!"), (String) null, 2, (Object) null);
                            C3104j.m157a(C3104j.f9124a, "CommunityDatabase.update.end", (String) null, 2, (Object) null);
                            return false;
                        } catch (IOException e) {
                            C3104j.f9124a.m163a(e);
                            C3104j.m157a(C3104j.f9124a, "CommunityDatabase.update.end", (String) null, 2, (Object) null);
                            return false;
                        } catch (Exception e2) {
                            C3104j.m157a(C3104j.f9124a, "CommunityDatabase.update Exception catched!", (String) null, 2, (Object) null);
                            C3104j.m158a(C3104j.f9124a, e2, (String) null, 2, (Object) null);
                            C3104j.m157a(C3104j.f9124a, "CommunityDatabase.update.end", (String) null, 2, (Object) null);
                            return false;
                        }
                    } else {
                        C3104j.m157a(C3104j.f9124a, "CommunityDatabase.update Skipping due last check in less than 4 hours", (String) null, 2, (Object) null);
                        c3104j2 = C3104j.f9124a;
                    }
                } else {
                    C3104j.m157a(C3104j.f9124a, "CommunityDatabase.update Skipping due lastDatabaseUpdateDate is same as actTimeDate", (String) null, 2, (Object) null);
                    c3104j2 = C3104j.f9124a;
                }
                C3104j.m157a(c3104j2, "CommunityDatabase.update.end", (String) null, 2, (Object) null);
                return true;
            }
            return false;
        }
    }

    /* renamed from: c */
    public final String m1146c() {
        long m1150b = m1150b();
        return String.valueOf(m1150b) + "WW";
    }

    /* renamed from: d */
    public final void m1145d() {
        synchronized (this) {
            m1142g();
            m1141h();
        }
    }

    /* renamed from: e */
    public final void m1144e() {
        File[] listFiles;
        C3104j.m157a(C3104j.f9124a, "CommunityDatabase.resetToDefault", (String) null, 2, (Object) null);
        for (File file : C3115o.f9175a.m119d().getFilesDir().listFiles(C2410b.f6980a)) {
            if (!file.delete()) {
                C3104j c3104j = C3104j.f9124a;
                StringBuilder sb = new StringBuilder();
                sb.append("CommunityDatabase.resetToDefault Can't delete file ");
                C1694h.m3122a((Object) file, "file");
                sb.append(file.getName());
                C3104j.m152c(c3104j, sb.toString(), null, 2, null);
            }
        }
        f6973g.clear();
        C2405c.f6946b.m1193b(0);
    }

    /* renamed from: f */
    public final boolean m1143f() {
        long m1208J = C2405c.f6946b.m1208J();
        boolean z = true;
        if (m1208J == 0) {
            return true;
        }
        if (new Date().getTime() - m1208J <= C2405c.f6946b.m1180g()) {
            z = false;
        }
        C3104j.m157a(C3104j.f9124a, "CommunityDatabase.isUpdateNeeded returns " + String.valueOf(z), (String) null, 2, (Object) null);
        return z;
    }
}
