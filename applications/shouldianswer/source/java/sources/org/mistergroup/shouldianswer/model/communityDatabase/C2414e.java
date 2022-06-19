package org.mistergroup.shouldianswer.model.communityDatabase;

import android.content.Context;
import android.content.res.AssetManager;
import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.InvalidObjectException;
import java.util.HashMap;
import java.util.Observable;
import kotlin.p081e.p083b.C1694h;
import kotlin.p087i.C1747g;
import org.mistergroup.shouldianswer.utils.C3104j;
import org.mistergroup.shouldianswer.utils.C3115o;
import org.mistergroup.shouldianswer.utils.C3132v;
import org.mistergroup.shouldianswer.utils.C3133w;
/* renamed from: org.mistergroup.shouldianswer.model.communityDatabase.e */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/model/communityDatabase/e.class */
public final class C2414e extends Observable {

    /* renamed from: a */
    public static final C2414e f7003a;

    /* renamed from: b */
    private static boolean f7004b;

    /* renamed from: c */
    private static int f7005c;

    /* renamed from: d */
    private static int f7006d;

    /* renamed from: e */
    private static final HashMap<Integer, C2415a> f7007e = new HashMap<>();

    /* renamed from: f */
    private static C2417f f7008f;

    /* renamed from: org.mistergroup.shouldianswer.model.communityDatabase.e$a */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/model/communityDatabase/e$a.class */
    public static final class C2415a {

        /* renamed from: a */
        private int f7009a;

        /* renamed from: b */
        private int f7010b;

        /* renamed from: c */
        private long f7011c;

        /* renamed from: d */
        private long[] f7012d = new long[0];

        /* renamed from: e */
        private String[] f7013e = new String[0];

        /* renamed from: a */
        private final boolean m1099a(BufferedInputStream bufferedInputStream) {
            try {
                long currentTimeMillis = System.currentTimeMillis();
                this.f7010b = 0;
                String m37a = C3132v.f9266a.m37a(bufferedInputStream, 4);
                if (!C1747g.m3036a(m37a, "MTZX", true)) {
                    C3104j.m157a(C3104j.f9124a, "FeaturedSlice.Load Error Invalid header! " + m37a, (String) null, 2, (Object) null);
                    throw new InvalidObjectException("Invalid header!");
                }
                this.f7010b = C3132v.f9266a.m38a(bufferedInputStream);
                this.f7009a = C3132v.f9266a.m38a(bufferedInputStream);
                this.f7012d = new long[this.f7009a];
                this.f7013e = new String[this.f7009a];
                int i = this.f7009a;
                int i2 = 0;
                while (i > 0) {
                    long m32b = C3132v.f9266a.m32b(bufferedInputStream);
                    String m37a2 = C3132v.f9266a.m37a(bufferedInputStream, C3132v.f9266a.m38a(bufferedInputStream));
                    this.f7012d[i2] = m32b;
                    this.f7013e[i2] = m37a2;
                    i--;
                    i2++;
                }
                String m37a3 = C3132v.f9266a.m37a(bufferedInputStream, 2);
                if (!C1747g.m3036a(m37a3, "CP", true)) {
                    throw new Exception("CP not found! readed " + m37a3);
                }
                C3132v.f9266a.m38a(bufferedInputStream);
                String m37a4 = C3132v.f9266a.m37a(bufferedInputStream, 6);
                if (!C1747g.m3036a(m37a4, "MTZEND", true)) {
                    throw new Exception("DB Endmark not found! readed " + m37a4);
                }
                long currentTimeMillis2 = System.currentTimeMillis();
                C3104j.m157a(C3104j.f9124a, "Loaded FeaturedSlice with " + String.valueOf(this.f7009a) + " items in " + String.valueOf(currentTimeMillis2 - currentTimeMillis) + " ms", (String) null, 2, (Object) null);
                return true;
            } catch (Exception e) {
                C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
                return false;
            }
        }

        /* renamed from: b */
        private final int m1098b(long j) {
            int i = this.f7009a;
            if (i > 0) {
                int i2 = i / 2;
                int i3 = i / 4;
                for (int i4 = 0; i4 <= 999; i4++) {
                    long[] jArr = this.f7012d;
                    if (j == jArr[i2]) {
                        return i2;
                    }
                    if (j > jArr[i2]) {
                        int i5 = i2 + i3;
                        if (i5 >= this.f7009a) {
                            return -1;
                        }
                        i2 = i5;
                        if (i3 == 1) {
                            i2 = i5;
                            if (j < jArr[i5]) {
                                return -1;
                            }
                        }
                    } else {
                        int i6 = i2 - i3;
                        if (i6 < 0) {
                            return -1;
                        }
                        i2 = i6;
                        if (i3 == 1) {
                            i2 = i6;
                            if (j > jArr[i6]) {
                                return -1;
                            }
                        }
                    }
                    int i7 = i3 / 2;
                    i3 = i7;
                    if (i7 == 0) {
                        i3 = 1;
                    }
                }
                C3104j.m152c(C3104j.f9124a, "FeaturedSlice.indexOf Maximum 1000 iterations reached!", null, 2, null);
                return -1;
            }
            return -1;
        }

        /* renamed from: a */
        public final C2416b m1101a(long j) {
            this.f7011c = System.currentTimeMillis();
            int m1098b = m1098b(j);
            C2416b c2416b = null;
            if (m1098b > 0) {
                c2416b = new C2416b();
                c2416b.m1096a(this.f7012d[m1098b]);
                c2416b.m1095a(this.f7013e[m1098b]);
            }
            return c2416b;
        }

        /* renamed from: a */
        public final void m1100a(Context context, int i) {
            C1694h.m3117b(context, "context");
            try {
                AssetManager assets = context.getAssets();
                InputStream open = assets.open("featured_slice_" + String.valueOf(i) + ".dat");
                C1694h.m3122a((Object) open, "context.assets.open(\"fea…ceId.toString() + \".dat\")");
                BufferedInputStream bufferedInputStream = new BufferedInputStream(open);
                if (!m1099a(bufferedInputStream)) {
                    throw new Exception("Load from assets " + String.valueOf(i) + " failed!");
                }
                try {
                    bufferedInputStream.close();
                    open.close();
                } catch (Exception e) {
                    C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
                }
            } catch (Exception e2) {
                C3104j.m158a(C3104j.f9124a, e2, (String) null, 2, (Object) null);
            }
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.model.communityDatabase.e$b */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/model/communityDatabase/e$b.class */
    public static final class C2416b {

        /* renamed from: a */
        private long f7014a;

        /* renamed from: b */
        private String f7015b;

        /* renamed from: a */
        public final String m1097a() {
            return this.f7015b;
        }

        /* renamed from: a */
        public final void m1096a(long j) {
            this.f7014a = j;
        }

        /* renamed from: a */
        public final void m1095a(String str) {
            this.f7015b = str;
        }
    }

    static {
        C2414e c2414e = new C2414e();
        f7003a = c2414e;
        c2414e.m1106a();
    }

    private C2414e() {
    }

    /* renamed from: a */
    private final C2415a m1105a(long j) {
        synchronized (this) {
            try {
                Context m119d = C3115o.f9175a.m119d();
                if (j > 0) {
                    C2417f c2417f = f7008f;
                    if (c2417f == null) {
                        C1694h.m3124a();
                    }
                    int m1094a = c2417f.m1094a(0, String.valueOf(j));
                    C2415a c2415a = null;
                    if (m1094a > 0) {
                        C2415a c2415a2 = f7007e.get(Integer.valueOf(m1094a));
                        c2415a = c2415a2;
                        if (c2415a2 == null) {
                            c2415a = new C2415a();
                            C3104j.m157a(C3104j.f9124a, "FeaturedDatabase.getMainFeaturedSlice loadFromRawResource slice " + String.valueOf(m1094a), (String) null, 2, (Object) null);
                            c2415a.m1100a(m119d, m1094a);
                            f7007e.put(Integer.valueOf(m1094a), c2415a);
                        }
                    }
                    return c2415a;
                }
            } catch (Exception e) {
                C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
            }
            return null;
        }
    }

    /* renamed from: a */
    private final boolean m1106a() {
        synchronized (this) {
            if (!f7004b) {
                m1103b();
                m1102c();
                f7004b = true;
            }
        }
        return true;
    }

    /* renamed from: b */
    private final void m1103b() {
        try {
            InputStream open = C3115o.f9175a.m119d().getAssets().open("featured_slice_info.dat");
            C1694h.m3122a((Object) open, "storageContext.assets.op…featured_slice_info.dat\")");
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(open));
            try {
                if (C3133w.f9268a.m29a(bufferedReader.readLine(), "MDI")) {
                    C3133w c3133w = C3133w.f9268a;
                    String readLine = bufferedReader.readLine();
                    C1694h.m3122a((Object) readLine, "br.readLine()");
                    f7005c = c3133w.m28b(readLine);
                    C3133w c3133w2 = C3133w.f9268a;
                    String readLine2 = bufferedReader.readLine();
                    C1694h.m3122a((Object) readLine2, "br.readLine()");
                    f7006d = c3133w2.m28b(readLine2);
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

    /* renamed from: c */
    private final void m1102c() {
        try {
            InputStream open = C3115o.f9175a.m119d().getAssets().open("featured_slice_list.dat");
            C1694h.m3122a((Object) open, "storageContext.assets.op…featured_slice_list.dat\")");
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(open));
            try {
                String readLine = bufferedReader.readLine();
                f7008f = new C2417f();
                C2417f c2417f = f7008f;
                if (c2417f == null) {
                    C1694h.m3124a();
                }
                C1694h.m3122a((Object) readLine, "nodes");
                c2417f.m1093a(readLine, 0);
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
    public final String m1104a(String str) {
        C2416b c2416b;
        C1694h.m3117b(str, "number");
        if (!f7004b) {
            m1106a();
        }
        String str2 = str;
        if (C1747g.m3033b(str, "+", false, 2, (Object) null)) {
            str2 = str.substring(1);
            C1694h.m3122a((Object) str2, "(this as java.lang.String).substring(startIndex)");
        }
        try {
            long parseLong = Long.parseLong(str2);
            C2416b c2416b2 = null;
            try {
                C2415a m1105a = m1105a(parseLong);
                c2416b = c2416b2;
                if (m1105a != null) {
                    c2416b = m1105a.m1101a(parseLong);
                }
            } catch (Exception e) {
                C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
                c2416b = c2416b2;
            }
            String str3 = "";
            if (c2416b != null) {
                String m1097a = c2416b.m1097a();
                str3 = m1097a;
                if (m1097a == null) {
                    C1694h.m3124a();
                    str3 = m1097a;
                }
            }
            return str3;
        } catch (Exception e2) {
            C3104j.f9124a.m163a(e2);
            return "";
        }
    }
}
