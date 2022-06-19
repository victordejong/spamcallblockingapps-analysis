package org.mistergroup.shouldianswer.model;

import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import android.provider.CallLog;
import androidx.customview.p026a.AbstractC0610a;
import androidx.p014c.C0379d;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.util.ArrayList;
import java.util.List;
import kotlin.C1775o;
import kotlin.TypeCastException;
import kotlin.p073a.C1600g;
import kotlin.p075c.AbstractC1641c;
import kotlin.p075c.p077b.p078a.AbstractC1632d;
import kotlin.p075c.p077b.p078a.AbstractC1634f;
import kotlin.p075c.p077b.p078a.C1630b;
import kotlin.p081e.p082a.AbstractC1678q;
import kotlin.p081e.p083b.C1694h;
import kotlin.p088io.C1763a;
import org.mistergroup.shouldianswer.MyApp;
import org.mistergroup.shouldianswer.utils.C3099f;
import org.mistergroup.shouldianswer.utils.C3100g;
import org.mistergroup.shouldianswer.utils.C3104j;
import org.mistergroup.shouldianswer.utils.C3131u;
/* renamed from: org.mistergroup.shouldianswer.model.j */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/model/j.class */
public final class C2432j {

    /* renamed from: b */
    private final String f7070b;

    /* renamed from: c */
    private String f7071c;

    /* renamed from: f */
    private C2434b f7074f;

    /* renamed from: g */
    private int f7075g;

    /* renamed from: h */
    private final String f7076h;

    /* renamed from: a */
    private final int f7069a = 40;

    /* renamed from: d */
    private final ArrayList<C2434b> f7072d = new ArrayList<>();

    /* renamed from: e */
    private C0379d<C2434b> f7073e = new C0379d<>();

    /* renamed from: org.mistergroup.shouldianswer.model.j$a */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/model/j$a.class */
    public enum EnumC2433a {
        NEW,
        DELETE
    }

    /* renamed from: org.mistergroup.shouldianswer.model.j$b */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/model/j$b.class */
    public static final class C2434b {

        /* renamed from: a */
        public String f7080a;

        /* renamed from: b */
        public String f7081b;

        /* renamed from: c */
        private long f7082c;

        /* renamed from: d */
        private int f7083d;

        /* renamed from: e */
        private int f7084e;

        /* renamed from: f */
        private String f7085f;

        /* renamed from: g */
        private int f7086g;

        /* renamed from: h */
        private String f7087h;

        /* renamed from: i */
        private EnumC2436k f7088i = EnumC2436k.UNKNOWN;

        /* renamed from: j */
        private long f7089j;

        /* renamed from: k */
        private int f7090k;

        /* renamed from: l */
        private int f7091l;

        /* renamed from: m */
        private int f7092m;

        /* renamed from: a */
        public final long m1044a() {
            return this.f7082c;
        }

        /* renamed from: a */
        public final void m1043a(int i) {
            this.f7083d = i;
        }

        /* renamed from: a */
        public final void m1042a(long j) {
            this.f7082c = j;
        }

        /* renamed from: a */
        public final void m1041a(String str) {
            C1694h.m3117b(str, "<set-?>");
            this.f7080a = str;
        }

        /* renamed from: a */
        public final void m1040a(EnumC2436k enumC2436k) {
            C1694h.m3117b(enumC2436k, "<set-?>");
            this.f7088i = enumC2436k;
        }

        /* renamed from: b */
        public final String m1039b() {
            String str = this.f7080a;
            if (str == null) {
                C1694h.m3116b("number");
            }
            return str;
        }

        /* renamed from: b */
        public final void m1038b(int i) {
            this.f7084e = i;
        }

        /* renamed from: b */
        public final void m1037b(long j) {
            this.f7089j = j;
        }

        /* renamed from: b */
        public final void m1036b(String str) {
            C1694h.m3117b(str, "<set-?>");
            this.f7081b = str;
        }

        /* renamed from: c */
        public final String m1035c() {
            String str = this.f7081b;
            if (str == null) {
                C1694h.m3116b("country");
            }
            return str;
        }

        /* renamed from: c */
        public final void m1034c(int i) {
            this.f7086g = i;
        }

        /* renamed from: c */
        public final void m1033c(String str) {
            this.f7085f = str;
        }

        /* renamed from: d */
        public final EnumC2436k m1032d() {
            return this.f7088i;
        }

        /* renamed from: d */
        public final void m1031d(int i) {
            this.f7090k = i;
        }

        /* renamed from: d */
        public final void m1030d(String str) {
            this.f7087h = str;
        }

        /* renamed from: e */
        public final long m1029e() {
            return this.f7089j;
        }

        /* renamed from: e */
        public final void m1028e(int i) {
            this.f7091l = i;
        }

        /* renamed from: f */
        public final int m1027f() {
            return this.f7090k;
        }

        /* renamed from: f */
        public final void m1026f(int i) {
            this.f7092m = i;
        }
    }

    @AbstractC1634f(m3162b = "CallLogs.kt", m3161c = {189, 207}, m3160d = "update", m3159e = "org.mistergroup.shouldianswer.model.CallLogs")
    /* renamed from: org.mistergroup.shouldianswer.model.j$c */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/model/j$c.class */
    public static final class C2435c extends AbstractC1632d {

        /* renamed from: a */
        /* synthetic */ Object f7093a;

        /* renamed from: b */
        int f7094b;

        /* renamed from: d */
        Object f7096d;

        /* renamed from: e */
        Object f7097e;

        /* renamed from: f */
        Object f7098f;

        /* renamed from: g */
        Object f7099g;

        /* renamed from: h */
        Object f7100h;

        /* renamed from: i */
        Object f7101i;

        /* renamed from: j */
        Object f7102j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C2435c(AbstractC1641c abstractC1641c) {
            super(abstractC1641c);
            C2432j.this = r4;
        }

        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: b */
        public final Object mo42b(Object obj) {
            this.f7093a = obj;
            this.f7094b |= AbstractC0610a.INVALID_ID;
            return C2432j.this.m1047a((ArrayList<C2434b>) null, (AbstractC1678q<? super EnumC2433a, ? super ArrayList<C2434b>, ? super AbstractC1641c<? super C1775o>, ? extends Object>) null, this);
        }
    }

    public C2432j(String str) {
        C1694h.m3117b(str, "id");
        this.f7076h = str;
        this.f7070b = "calllog-" + this.f7076h;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Type inference failed for: r10v4 */
    /* renamed from: a */
    private final ArrayList<C2434b> m1049a(long j, Long l, Integer num) {
        String str;
        Exception e;
        ContentResolver contentResolver;
        Uri uri;
        Object[] array;
        Throwable th;
        Throwable th2;
        long m41a = C3131u.f9265a.m41a();
        ArrayList<C2434b> arrayList = new ArrayList<>();
        ArrayList arrayList2 = new ArrayList();
        String str2 = null;
        if (l != null) {
            arrayList2.add(String.valueOf(l.longValue()));
            str = "_id >= ?";
        } else {
            str = str2;
            if (j > 0) {
                arrayList2.add(String.valueOf(j));
                str = "_id < ?";
            }
        }
        String str3 = "_id DESC";
        if (num != null) {
            str3 = "_id DESC LIMIT " + String.valueOf(num.intValue());
        }
        String str4 = this.f7071c;
        String str5 = str;
        if (str4 != null) {
            str5 = C1694h.m3120a(str != null ? C1694h.m3120a(str, (Object) " and ") : "", (Object) "number = ? ");
            arrayList2.add(str4);
        }
        String m177a = C3099f.f9116a.m177a();
        try {
            contentResolver = MyApp.f5480c.m1801b();
            uri = CallLog.Calls.CONTENT_URI;
            array = arrayList2.toArray(new String[0]);
            try {
            } catch (Exception e2) {
                e = e2;
                C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
                arrayList = contentResolver;
                int size = arrayList.size();
                long m40a = C3131u.f9265a.m40a(m41a);
                C3104j.f9124a.m155b("CallLogs.readData readed=" + size + " in " + m40a + " ms", this.f7070b);
                return arrayList;
            }
        } catch (Exception e3) {
            e = e3;
            contentResolver = arrayList;
        }
        if (array != null) {
            Cursor query = contentResolver.query(uri, null, str5, (String[]) array, str3);
            if (query != null) {
                Cursor cursor = query;
                Throwable th3 = null;
                try {
                    Cursor cursor2 = cursor;
                    C3100g c3100g = C3100g.f9119a;
                    C1694h.m3122a((Object) cursor2, "cursor");
                    int m174a = c3100g.m174a(cursor2, "_id");
                    int m174a2 = C3100g.f9119a.m174a(cursor2, "number");
                    int m174a3 = C3100g.f9119a.m174a(cursor2, "numbertype");
                    int m174a4 = C3100g.f9119a.m174a(cursor2, "presentation");
                    int m174a5 = C3100g.f9119a.m174a(cursor2, AppMeasurementSdk.ConditionalUserProperty.NAME);
                    int m174a6 = C3100g.f9119a.m174a(cursor2, "photo_id");
                    int m174a7 = C3100g.f9119a.m174a(cursor2, "lookup_uri");
                    int m174a8 = C3100g.f9119a.m174a(cursor2, "type");
                    int m174a9 = C3100g.f9119a.m174a(cursor2, "date");
                    try {
                        int m174a10 = C3100g.f9119a.m174a(cursor2, "duration");
                        int m174a11 = C3100g.f9119a.m174a(cursor2, "countryiso");
                        int m174a12 = C3100g.f9119a.m174a(cursor2, "new");
                        ArrayList<C2434b> arrayList3 = arrayList;
                        try {
                            int m174a13 = C3100g.f9119a.m174a(cursor2, "is_read");
                            while (cursor2.moveToNext()) {
                                C2434b c2434b = new C2434b();
                                try {
                                    c2434b.m1042a(C3100g.f9119a.m170c(cursor2, m174a));
                                    String m175a = C3100g.f9119a.m175a(cursor2, m174a2);
                                    if (m175a == null) {
                                        m175a = "-1";
                                    }
                                    c2434b.m1041a(m175a);
                                    String m175a2 = C3100g.f9119a.m175a(cursor2, m174a11);
                                    if (m175a2 == null) {
                                        m175a2 = m177a;
                                    }
                                    c2434b.m1036b(m175a2);
                                    c2434b.m1040a(EnumC2436k.f7111i.m1024a(C3100g.f9119a.m172b(cursor2, m174a8)));
                                    c2434b.m1037b(C3100g.f9119a.m170c(cursor2, m174a9));
                                    c2434b.m1034c(C3100g.f9119a.m172b(cursor2, m174a6));
                                    c2434b.m1033c(C3100g.f9119a.m175a(cursor2, m174a5));
                                    c2434b.m1043a(C3100g.f9119a.m172b(cursor2, m174a3));
                                    c2434b.m1038b(C3100g.f9119a.m172b(cursor2, m174a4));
                                    c2434b.m1030d(C3100g.f9119a.m175a(cursor2, m174a7));
                                    c2434b.m1031d(C3100g.f9119a.m172b(cursor2, m174a10));
                                    c2434b.m1028e(C3100g.f9119a.m172b(cursor2, m174a12));
                                    c2434b.m1026f(C3100g.f9119a.m172b(cursor2, m174a13));
                                    arrayList.add(c2434b);
                                } catch (Throwable th4) {
                                    th = th4;
                                    arrayList3 = arrayList;
                                    throw th;
                                }
                            }
                            arrayList3 = arrayList;
                            C1775o c1775o = C1775o.f4450a;
                            C1763a.m2995a(cursor, th3);
                        } catch (Throwable th5) {
                            th = th5;
                        }
                    } catch (Throwable th6) {
                        th2 = th6;
                        th = th2;
                        throw th;
                    }
                } catch (Throwable th7) {
                    th2 = th7;
                }
            }
            int size2 = arrayList.size();
            long m40a2 = C3131u.f9265a.m40a(m41a);
            C3104j.f9124a.m155b("CallLogs.readData readed=" + size2 + " in " + m40a2 + " ms", this.f7070b);
            return arrayList;
        }
        throw new TypeCastException("null cannot be cast to non-null type kotlin.Array<T>");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v0, types: [org.mistergroup.shouldianswer.model.j] */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* renamed from: a */
    static /* synthetic */ ArrayList m1045a(C2432j c2432j, long j, Long l, Integer num, int i, Object obj) {
        ?? r7 = j;
        if ((i & 1) != 0) {
            r7 = 0;
        }
        if ((i & 4) != 0) {
            num = null;
        }
        return c2432j.m1049a(r7, l, num);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(10:2|(2:4|(8:6|8|71|(2:10|(2:12|(4:14|15|69|70)(2:17|18))(1:19))(8:20|(1:22)(1:23)|24|(4:27|(1:75)(7:72|29|(1:31)|32|(1:34)|35|76)|74|25)|73|36|(2:38|(2:40|41))|42)|43|(6:47|(4:50|(4:52|53|54|(1:(2:56|(3:82|58|80)(2:59|(1:61))))(1:79))(1:78)|62|48)|77|63|64|(2:66|67))|69|70))|7|8|71|(0)(0)|43|(7:45|47|(1:48)|77|63|64|(0))|69|70) */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x008d, code lost:
        r9 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0314, code lost:
        org.mistergroup.shouldianswer.utils.C3104j.m158a(org.mistergroup.shouldianswer.utils.C3104j.f9124a, r9, (java.lang.String) null, 2, (java.lang.Object) null);
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0049  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00e0  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0252 A[Catch: Exception -> 0x008d, TRY_ENTER, TRY_LEAVE, TryCatch #0 {Exception -> 0x008d, blocks: (B:15:0x0085, B:47:0x0244, B:50:0x0252, B:52:0x027d, B:54:0x028a, B:56:0x029c, B:58:0x02b2, B:63:0x02d3), top: B:71:0x0046 }] */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0311  */
    /* JADX WARN: Type inference failed for: r1v22, types: [T, java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r1v47, types: [T, java.util.ArrayList] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m1047a(java.util.ArrayList<org.mistergroup.shouldianswer.model.C2432j.C2434b> r9, kotlin.p081e.p082a.AbstractC1678q<? super org.mistergroup.shouldianswer.model.C2432j.EnumC2433a, ? super java.util.ArrayList<org.mistergroup.shouldianswer.model.C2432j.C2434b>, ? super kotlin.p075c.AbstractC1641c<? super kotlin.C1775o>, ? extends java.lang.Object> r10, kotlin.p075c.AbstractC1641c<? super kotlin.C1775o> r11) {
        /*
            Method dump skipped, instructions count: 802
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mistergroup.shouldianswer.model.C2432j.m1047a(java.util.ArrayList, kotlin.e.a.q, kotlin.c.c):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v40, types: [long] */
    /* JADX WARN: Type inference failed for: r1v13 */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* renamed from: a */
    public final Object m1046a(AbstractC1641c<? super C2434b> abstractC1641c) {
        Long m3167a;
        if (this.f7075g > C1600g.m3201a((List) this.f7072d)) {
            C2434b c2434b = (C2434b) C1600g.m3188e(this.f7072d);
            ArrayList<C2434b> m1049a = m1049a(((c2434b == null || (m3167a = C1630b.m3167a(c2434b.m1044a())) == null) ? false : m3167a.longValue()) == true ? 1L : 0L, (Long) null, C1630b.m3168a(this.f7069a));
            this.f7072d.addAll(m1049a);
            for (C2434b c2434b2 : m1049a) {
                this.f7073e.m6847b(c2434b2.m1044a(), c2434b2);
            }
        }
        if (this.f7075g <= C1600g.m3201a((List) this.f7072d)) {
            ArrayList<C2434b> arrayList = this.f7072d;
            int i = this.f7075g;
            this.f7075g = i + 1;
            this.f7074f = arrayList.get(i);
            return this.f7074f;
        }
        return null;
    }

    /* renamed from: a */
    public final void m1048a(String str) {
        this.f7071c = str;
    }
}
