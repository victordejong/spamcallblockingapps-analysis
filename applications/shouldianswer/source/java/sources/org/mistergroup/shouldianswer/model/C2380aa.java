package org.mistergroup.shouldianswer.model;

import androidx.customview.p026a.AbstractC0610a;
import io.fabric.sdk.android.services.p069c.AbstractC1507b;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Observable;
import java.util.TimeZone;
import kotlin.C1775o;
import kotlin.p075c.AbstractC1641c;
import kotlin.p075c.p077b.p078a.AbstractC1632d;
import kotlin.p075c.p077b.p078a.AbstractC1634f;
import kotlin.p081e.p083b.C1694h;
import org.json.JSONArray;
import org.json.JSONObject;
import org.mistergroup.shouldianswer.utils.C3104j;
/* renamed from: org.mistergroup.shouldianswer.model.aa */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/model/aa.class */
public final class C2380aa extends Observable {

    /* renamed from: a */
    public static final C2380aa f6848a = new C2380aa();

    /* renamed from: b */
    private static final AbstractC2465y f6849b = AppDatabase.f6633d.m1524a().mo1510l();

    @AbstractC1634f(m3162b = "NumberReports.kt", m3161c = {201, 213}, m3160d = "importFromJSON", m3159e = "org.mistergroup.shouldianswer.model.NumberReports")
    /* renamed from: org.mistergroup.shouldianswer.model.aa$a */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/model/aa$a.class */
    public static final class C2381a extends AbstractC1632d {

        /* renamed from: a */
        /* synthetic */ Object f6850a;

        /* renamed from: b */
        int f6851b;

        /* renamed from: d */
        Object f6853d;

        /* renamed from: e */
        Object f6854e;

        /* renamed from: f */
        Object f6855f;

        /* renamed from: g */
        Object f6856g;

        /* renamed from: h */
        int f6857h;

        /* renamed from: i */
        int f6858i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C2381a(AbstractC1641c abstractC1641c) {
            super(abstractC1641c);
            C2380aa.this = r4;
        }

        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: b */
        public final Object mo42b(Object obj) {
            this.f6850a = obj;
            this.f6851b |= AbstractC0610a.INVALID_ID;
            return C2380aa.this.m1381a((JSONArray) null, this);
        }
    }

    @AbstractC1634f(m3162b = "NumberReports.kt", m3161c = {104, 106}, m3160d = "seekByNumber", m3159e = "org.mistergroup.shouldianswer.model.NumberReports")
    /* renamed from: org.mistergroup.shouldianswer.model.aa$b */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/model/aa$b.class */
    public static final class C2382b extends AbstractC1632d {

        /* renamed from: a */
        /* synthetic */ Object f6859a;

        /* renamed from: b */
        int f6860b;

        /* renamed from: d */
        Object f6862d;

        /* renamed from: e */
        Object f6863e;

        /* renamed from: f */
        Object f6864f;

        /* renamed from: g */
        Object f6865g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C2382b(AbstractC1641c abstractC1641c) {
            super(abstractC1641c);
            C2380aa.this = r4;
        }

        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: b */
        public final Object mo42b(Object obj) {
            this.f6859a = obj;
            this.f6860b |= AbstractC0610a.INVALID_ID;
            return C2380aa.this.m1380a((NumberInfo) null, (Boolean) null, this);
        }
    }

    @AbstractC1634f(m3162b = "NumberReports.kt", m3161c = {143}, m3160d = "store", m3159e = "org.mistergroup.shouldianswer.model.NumberReports")
    /* renamed from: org.mistergroup.shouldianswer.model.aa$c */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/model/aa$c.class */
    public static final class C2383c extends AbstractC1632d {

        /* renamed from: a */
        /* synthetic */ Object f6866a;

        /* renamed from: b */
        int f6867b;

        /* renamed from: d */
        Object f6869d;

        /* renamed from: e */
        Object f6870e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C2383c(AbstractC1641c abstractC1641c) {
            super(abstractC1641c);
            C2380aa.this = r4;
        }

        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: b */
        public final Object mo42b(Object obj) {
            this.f6866a = obj;
            this.f6867b |= AbstractC0610a.INVALID_ID;
            return C2380aa.this.m1375b((NumberReport) null, this);
        }
    }

    private C2380aa() {
    }

    /* renamed from: a */
    private final void m1385a() {
        setChanged();
        notifyObservers();
    }

    /* renamed from: a */
    public final Object m1384a(String str, String str2, boolean z, boolean z2, AbstractC1641c<? super NumberReport> abstractC1641c) {
        NumberReport numberReport;
        List<NumberReport> mo956b;
        NumberReport numberReport2 = null;
        try {
            mo956b = z ? f6849b.mo956b(str, str2) : f6849b.mo960a(str, str2);
        } catch (Exception e) {
            C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
        }
        if (!mo956b.isEmpty()) {
            if (mo956b.size() > 1) {
                throw new Exception("NumberReports.getByNumber findByNumberNormalized returns more than 1 item!");
            }
            numberReport = mo956b.get(0);
            if (z2 && numberReport != null) {
                C3104j.m157a(C3104j.f9124a, "NumberReports.getInternal " + str + " returns localReviewId=" + String.valueOf(numberReport.m1430a()) + " rating=" + numberReport.m1414e().toString(), (String) null, 2, (Object) null);
            }
            return numberReport;
        }
        numberReport = numberReport2;
        if (z2) {
            C3104j.m157a(C3104j.f9124a, "NumberReports.getInternal " + str + " returns localReviewId=" + String.valueOf(numberReport.m1430a()) + " rating=" + numberReport.m1414e().toString(), (String) null, 2, (Object) null);
        }
        return numberReport;
    }

    /* renamed from: a */
    public final Object m1383a(List<NumberReport> list, AbstractC1641c<? super C1775o> abstractC1641c) {
        for (NumberReport numberReport : list) {
            f6849b.mo961a(numberReport.m1430a(), true);
        }
        return C1775o.f4450a;
    }

    /* renamed from: a */
    public final Object m1382a(AbstractC1641c<? super List<NumberReport>> abstractC1641c) {
        return f6849b.mo963a();
    }

    /* JADX WARN: Can't wrap try/catch for region: R(12:2|(2:4|(10:6|8|40|(2:10|(2:12|(7:14|15|35|28|(6:30|31|(2:33|34)|35|28|(0))|38|39)(2:16|17))(2:18|19))(3:20|21|(2:23|24)(1:25))|26|27|28|(0)|38|39))|7|8|40|(0)(0)|26|27|28|(0)|38|39) */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x01d3, code lost:
        r7 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x01d4, code lost:
        org.mistergroup.shouldianswer.utils.C3104j.m158a(org.mistergroup.shouldianswer.utils.C3104j.f9124a, r7, (java.lang.String) null, 2, (java.lang.Object) null);
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00a8  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0114 A[Catch: Exception -> 0x01d3, TRY_ENTER, TRY_LEAVE, TryCatch #0 {Exception -> 0x01d3, blocks: (B:15:0x007e, B:19:0x00a0, B:21:0x00ad, B:26:0x00cb, B:30:0x0114), top: B:40:0x0043 }] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:32:0x01c7 -> B:35:0x01cd). Please submit an issue!!! */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m1381a(org.json.JSONArray r7, kotlin.p075c.AbstractC1641c<? super kotlin.C1775o> r8) {
        /*
            Method dump skipped, instructions count: 482
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mistergroup.shouldianswer.model.C2380aa.m1381a(org.json.JSONArray, kotlin.c.c):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x004b  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x00aa  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x010d  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m1380a(org.mistergroup.shouldianswer.model.NumberInfo r8, java.lang.Boolean r9, kotlin.p075c.AbstractC1641c<? super org.mistergroup.shouldianswer.model.NumberReport> r10) {
        /*
            Method dump skipped, instructions count: 350
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mistergroup.shouldianswer.model.C2380aa.m1380a(org.mistergroup.shouldianswer.model.NumberInfo, java.lang.Boolean, kotlin.c.c):java.lang.Object");
    }

    /* renamed from: a */
    public final Object m1379a(NumberInfo numberInfo, boolean z, AbstractC1641c<? super NumberReport> abstractC1641c) {
        NumberReport numberReport;
        NumberReport numberReport2 = null;
        try {
            List<NumberReport> mo956b = f6849b.mo956b(numberInfo.m1465h(), numberInfo.m1475c());
            List<NumberReport> list = mo956b;
            if (mo956b.isEmpty()) {
                list = f6849b.mo960a(numberInfo.m1485a(), numberInfo.m1475c());
            }
            numberReport = numberReport2;
            if (!list.isEmpty()) {
                if (list.size() > 1) {
                    throw new Exception("NumberReports.getByNumberInfo findByNumberNormalized returns more than 1 item!");
                }
                numberReport = list.get(0);
            }
        } catch (Exception e) {
            C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
            numberReport = numberReport2;
        }
        if (z && numberReport != null) {
            C3104j.m157a(C3104j.f9124a, "NumberReports.getInternal " + numberInfo.m1485a() + " returns localReviewId=" + String.valueOf(numberReport.m1430a()) + " rating=" + numberReport.m1414e().toString(), (String) null, 2, (Object) null);
        }
        return numberReport;
    }

    /* renamed from: a */
    final /* synthetic */ Object m1378a(NumberReport numberReport, AbstractC1641c<? super C1775o> abstractC1641c) {
        try {
            C3104j c3104j = C3104j.f9124a;
            C3104j.m157a(c3104j, "NumberReports.storeInternal number=" + numberReport.m1419c() + " country=" + numberReport.m1408i() + " rating=" + numberReport.m1414e().toString(), (String) null, 2, (Object) null);
            f6849b.mo959a(numberReport);
        } catch (Exception e) {
            C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
        }
        return C1775o.f4450a;
    }

    /* renamed from: b */
    public final Object m1377b(List<NumberReport> list, AbstractC1641c<? super JSONArray> abstractC1641c) {
        C3104j c3104j = C3104j.f9124a;
        C3104j.m157a(c3104j, "NumberReports.exportToJSON count=" + String.valueOf(list.size()), (String) null, 2, (Object) null);
        JSONArray jSONArray = new JSONArray();
        for (NumberReport numberReport : list) {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("uuid", numberReport.m1422b());
            jSONObject.put("number", numberReport.m1419c());
            jSONObject.put("numberNormalized", numberReport.m1416d());
            jSONObject.put("country", numberReport.m1408i());
            jSONObject.put("rating", numberReport.m1414e().m1315a());
            jSONObject.put("category", numberReport.m1412f().m1019a());
            jSONObject.put("comment", numberReport.m1409h());
            if (numberReport.m1410g() != null) {
                String m1410g = numberReport.m1410g();
                if (m1410g == null) {
                    C1694h.m3124a();
                }
                if ((m1410g.length() > 0 ? 1 : null) != null) {
                    String m1410g2 = numberReport.m1410g();
                    if (m1410g2 == null) {
                        C1694h.m3124a();
                    }
                    jSONObject.put("realDbId", m1410g2);
                }
            }
            jSONObject.put("deleted", numberReport.m1404m() ? 1 : 0);
            jSONArray.put(jSONObject);
        }
        return jSONArray;
    }

    /* renamed from: b */
    public final Object m1376b(AbstractC1641c<? super String> abstractC1641c) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("dd.MM.yyyy HH:mm:ss");
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTF"));
        List<NumberReport> mo963a = f6849b.mo963a();
        StringBuilder sb = new StringBuilder();
        for (NumberReport numberReport : mo963a) {
            sb.append(String.valueOf(numberReport.m1430a()));
            sb.append(", ");
            sb.append(numberReport.m1419c());
            sb.append(AbstractC1507b.ROLL_OVER_FILE_NAME_SEPARATOR);
            sb.append(numberReport.m1408i());
            sb.append(AbstractC1507b.ROLL_OVER_FILE_NAME_SEPARATOR);
            sb.append(simpleDateFormat.format(numberReport.m1407j()));
            sb.append("=");
            sb.append(numberReport.m1414e());
            sb.append("|");
        }
        String sb2 = sb.toString();
        C1694h.m3122a((Object) sb2, "strBuilder.toString()");
        return sb2;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(9:2|(2:4|(7:6|8|27|(2:10|(2:12|13)(2:14|15))(3:16|17|(2:19|20)(1:21))|22|25|26))|7|8|27|(0)(0)|22|25|26) */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x00b3, code lost:
        r7 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x00b4, code lost:
        org.mistergroup.shouldianswer.utils.C3104j.m158a(org.mistergroup.shouldianswer.utils.C3104j.f9124a, r7, (java.lang.String) null, 2, (java.lang.Object) null);
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x006c  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m1375b(org.mistergroup.shouldianswer.model.NumberReport r7, kotlin.p075c.AbstractC1641c<? super kotlin.C1775o> r8) {
        /*
            Method dump skipped, instructions count: 194
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mistergroup.shouldianswer.model.C2380aa.m1375b(org.mistergroup.shouldianswer.model.NumberReport, kotlin.c.c):java.lang.Object");
    }

    /* renamed from: c */
    public final Object m1374c(AbstractC1641c<? super C1775o> abstractC1641c) {
        f6849b.mo955c();
        return C1775o.f4450a;
    }

    /* renamed from: c */
    public final Object m1373c(NumberReport numberReport, AbstractC1641c<? super C1775o> abstractC1641c) {
        f6849b.mo962a(numberReport.m1430a());
        C2384ab.f6871a.m1370a(new Date().getTime());
        setChanged();
        m1385a();
        return C1775o.f4450a;
    }

    /* renamed from: d */
    public final Object m1372d(AbstractC1641c<? super List<NumberReport>> abstractC1641c) {
        return f6849b.mo957b();
    }
}
