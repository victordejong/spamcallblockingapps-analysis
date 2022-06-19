package org.mistergroup.shouldianswer.model;

import android.database.Cursor;
import androidx.p042i.p043a.AbstractC0786f;
import androidx.room.AbstractC1041c;
import androidx.room.AbstractC1063j;
import androidx.room.AbstractC1075p;
import androidx.room.C1072m;
import androidx.room.p050b.C1033b;
import androidx.room.p050b.C1034c;
import java.util.ArrayList;
import java.util.List;
/* renamed from: org.mistergroup.shouldianswer.model.z */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/model/z.class */
public final class C2466z implements AbstractC2465y {

    /* renamed from: a */
    private final AbstractC1063j f7203a;

    /* renamed from: b */
    private final AbstractC1041c<NumberReport> f7204b;

    /* renamed from: c */
    private final C2404b f7205c = new C2404b();

    /* renamed from: d */
    private final AbstractC1075p f7206d;

    /* renamed from: e */
    private final AbstractC1075p f7207e;

    /* renamed from: f */
    private final AbstractC1075p f7208f;

    public C2466z(AbstractC1063j abstractC1063j) {
        this.f7203a = abstractC1063j;
        this.f7204b = new AbstractC1041c<NumberReport>(abstractC1063j) { // from class: org.mistergroup.shouldianswer.model.z.1
            @Override // androidx.room.AbstractC1075p
            /* renamed from: a */
            public String mo952a() {
                return "INSERT OR REPLACE INTO `NumberReport` (`id`,`uuid`,`number`,`numberNormalized`,`rating`,`category`,`title`,`comment`,`country`,`time`,`uploaded`,`unconfirmed`,`deleted`) VALUES (nullif(?, 0),?,?,?,?,?,?,?,?,?,?,?,?)";
            }

            /* renamed from: a */
            public void mo954a(AbstractC0786f abstractC0786f, NumberReport numberReport) {
                abstractC0786f.mo4411a(1, numberReport.m1430a());
                if (numberReport.m1422b() == null) {
                    abstractC0786f.mo4413a(2);
                } else {
                    abstractC0786f.mo4410a(2, numberReport.m1422b());
                }
                if (numberReport.m1419c() == null) {
                    abstractC0786f.mo4413a(3);
                } else {
                    abstractC0786f.mo4410a(3, numberReport.m1419c());
                }
                if (numberReport.m1416d() == null) {
                    abstractC0786f.mo4413a(4);
                } else {
                    abstractC0786f.mo4410a(4, numberReport.m1416d());
                }
                abstractC0786f.mo4411a(5, C2466z.this.f7205c.m1224a(numberReport.m1414e()));
                abstractC0786f.mo4411a(6, C2466z.this.f7205c.m1221a(numberReport.m1412f()));
                if (numberReport.m1410g() == null) {
                    abstractC0786f.mo4413a(7);
                } else {
                    abstractC0786f.mo4410a(7, numberReport.m1410g());
                }
                if (numberReport.m1409h() == null) {
                    abstractC0786f.mo4413a(8);
                } else {
                    abstractC0786f.mo4410a(8, numberReport.m1409h());
                }
                if (numberReport.m1408i() == null) {
                    abstractC0786f.mo4413a(9);
                } else {
                    abstractC0786f.mo4410a(9, numberReport.m1408i());
                }
                Long m1225a = C2466z.this.f7205c.m1225a(numberReport.m1407j());
                if (m1225a == null) {
                    abstractC0786f.mo4413a(10);
                } else {
                    abstractC0786f.mo4411a(10, m1225a.longValue());
                }
                abstractC0786f.mo4411a(11, numberReport.m1406k() ? 1L : 0L);
                abstractC0786f.mo4411a(12, numberReport.m1405l() ? 1L : 0L);
                abstractC0786f.mo4411a(13, numberReport.m1404m() ? 1L : 0L);
            }
        };
        this.f7206d = new AbstractC1075p(abstractC1063j) { // from class: org.mistergroup.shouldianswer.model.z.2
            @Override // androidx.room.AbstractC1075p
            /* renamed from: a */
            public String mo952a() {
                return "UPDATE numberreport set uploaded=? where id=?";
            }
        };
        this.f7207e = new AbstractC1075p(abstractC1063j) { // from class: org.mistergroup.shouldianswer.model.z.3
            @Override // androidx.room.AbstractC1075p
            /* renamed from: a */
            public String mo952a() {
                return "UPDATE numberreport set deleted=1,uploaded=0 where id=?";
            }
        };
        this.f7208f = new AbstractC1075p(abstractC1063j) { // from class: org.mistergroup.shouldianswer.model.z.4
            @Override // androidx.room.AbstractC1075p
            /* renamed from: a */
            public String mo952a() {
                return "DELETE FROM numberreport";
            }
        };
    }

    @Override // org.mistergroup.shouldianswer.model.AbstractC2465y
    /* renamed from: a */
    public List<NumberReport> mo963a() {
        Throwable th;
        int m4496a;
        int m4496a2;
        int m4496a3;
        int m4496a4;
        int m4496a5;
        int m4496a6;
        int m4496a7;
        int m4496a8;
        int m4496a9;
        int m4496a10;
        int m4496a11;
        int m4496a12;
        int m4496a13;
        C1072m m4407a = C1072m.m4407a("SELECT * FROM numberreport where deleted=0 order by number asc", 0);
        this.f7203a.m4441f();
        Cursor m4494a = C1034c.m4494a(this.f7203a, m4407a, false, null);
        try {
            m4496a = C1033b.m4496a(m4494a, "id");
            m4496a2 = C1033b.m4496a(m4494a, "uuid");
            m4496a3 = C1033b.m4496a(m4494a, "number");
            m4496a4 = C1033b.m4496a(m4494a, "numberNormalized");
            m4496a5 = C1033b.m4496a(m4494a, "rating");
            m4496a6 = C1033b.m4496a(m4494a, "category");
            m4496a7 = C1033b.m4496a(m4494a, "title");
            m4496a8 = C1033b.m4496a(m4494a, "comment");
            m4496a9 = C1033b.m4496a(m4494a, "country");
            m4496a10 = C1033b.m4496a(m4494a, "time");
            m4496a11 = C1033b.m4496a(m4494a, "uploaded");
            m4496a12 = C1033b.m4496a(m4494a, "unconfirmed");
            m4496a13 = C1033b.m4496a(m4494a, "deleted");
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            ArrayList arrayList = new ArrayList(m4494a.getCount());
            while (m4494a.moveToNext()) {
                NumberReport numberReport = new NumberReport();
                numberReport.m1429a(m4494a.getInt(m4496a));
                numberReport.m1428a(m4494a.getString(m4496a2));
                numberReport.m1421b(m4494a.getString(m4496a3));
                numberReport.m1418c(m4494a.getString(m4496a4));
                numberReport.m1425a(this.f7205c.m1219c(m4494a.getInt(m4496a5)));
                numberReport.m1424a(this.f7205c.m1218d(m4494a.getInt(m4496a6)));
                numberReport.m1415d(m4494a.getString(m4496a7));
                numberReport.m1413e(m4494a.getString(m4496a8));
                numberReport.m1411f(m4494a.getString(m4496a9));
                numberReport.m1427a(this.f7205c.m1226a(m4494a.isNull(m4496a10) ? null : Long.valueOf(m4494a.getLong(m4496a10))));
                numberReport.m1423a(m4494a.getInt(m4496a11) != 0);
                numberReport.m1420b(m4494a.getInt(m4496a12) != 0);
                numberReport.m1417c(m4494a.getInt(m4496a13) != 0);
                arrayList.add(numberReport);
            }
            m4494a.close();
            m4407a.m4414a();
            return arrayList;
        } catch (Throwable th3) {
            th = th3;
            m4494a.close();
            m4407a.m4414a();
            throw th;
        }
    }

    @Override // org.mistergroup.shouldianswer.model.AbstractC2465y
    /* renamed from: a */
    public List<NumberReport> mo960a(String str, String str2) {
        Throwable th;
        C1072m m4407a = C1072m.m4407a("SELECT * FROM numberreport WHERE number=? and country=? and deleted=0", 2);
        if (str == null) {
            m4407a.mo4413a(1);
        } else {
            m4407a.mo4410a(1, str);
        }
        if (str2 == null) {
            m4407a.mo4413a(2);
        } else {
            m4407a.mo4410a(2, str2);
        }
        this.f7203a.m4441f();
        Cursor m4494a = C1034c.m4494a(this.f7203a, m4407a, false, null);
        try {
            int m4496a = C1033b.m4496a(m4494a, "id");
            int m4496a2 = C1033b.m4496a(m4494a, "uuid");
            int m4496a3 = C1033b.m4496a(m4494a, "number");
            int m4496a4 = C1033b.m4496a(m4494a, "numberNormalized");
            int m4496a5 = C1033b.m4496a(m4494a, "rating");
            int m4496a6 = C1033b.m4496a(m4494a, "category");
            int m4496a7 = C1033b.m4496a(m4494a, "title");
            int m4496a8 = C1033b.m4496a(m4494a, "comment");
            int m4496a9 = C1033b.m4496a(m4494a, "country");
            int m4496a10 = C1033b.m4496a(m4494a, "time");
            int m4496a11 = C1033b.m4496a(m4494a, "uploaded");
            int m4496a12 = C1033b.m4496a(m4494a, "unconfirmed");
            int m4496a13 = C1033b.m4496a(m4494a, "deleted");
            try {
                ArrayList arrayList = new ArrayList(m4494a.getCount());
                while (m4494a.moveToNext()) {
                    NumberReport numberReport = new NumberReport();
                    numberReport.m1429a(m4494a.getInt(m4496a));
                    numberReport.m1428a(m4494a.getString(m4496a2));
                    numberReport.m1421b(m4494a.getString(m4496a3));
                    numberReport.m1418c(m4494a.getString(m4496a4));
                    numberReport.m1425a(this.f7205c.m1219c(m4494a.getInt(m4496a5)));
                    numberReport.m1424a(this.f7205c.m1218d(m4494a.getInt(m4496a6)));
                    numberReport.m1415d(m4494a.getString(m4496a7));
                    numberReport.m1413e(m4494a.getString(m4496a8));
                    numberReport.m1411f(m4494a.getString(m4496a9));
                    numberReport.m1427a(this.f7205c.m1226a(m4494a.isNull(m4496a10) ? null : Long.valueOf(m4494a.getLong(m4496a10))));
                    numberReport.m1423a(m4494a.getInt(m4496a11) != 0);
                    numberReport.m1420b(m4494a.getInt(m4496a12) != 0);
                    numberReport.m1417c(m4494a.getInt(m4496a13) != 0);
                    arrayList.add(numberReport);
                }
                m4494a.close();
                m4407a.m4414a();
                return arrayList;
            } catch (Throwable th2) {
                th = th2;
                m4494a.close();
                m4407a.m4414a();
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    @Override // org.mistergroup.shouldianswer.model.AbstractC2465y
    /* renamed from: a */
    public void mo962a(int i) {
        this.f7203a.m4441f();
        AbstractC0786f m4393c = this.f7207e.m4393c();
        m4393c.mo4411a(1, i);
        this.f7203a.m4440g();
        try {
            m4393c.mo5354a();
            this.f7203a.m4437j();
        } finally {
            this.f7203a.m4439h();
            this.f7207e.m4396a(m4393c);
        }
    }

    @Override // org.mistergroup.shouldianswer.model.AbstractC2465y
    /* renamed from: a */
    public void mo961a(int i, boolean z) {
        this.f7203a.m4441f();
        AbstractC0786f m4393c = this.f7206d.m4393c();
        m4393c.mo4411a(1, z ? 1L : 0L);
        m4393c.mo4411a(2, i);
        this.f7203a.m4440g();
        try {
            m4393c.mo5354a();
            this.f7203a.m4437j();
        } finally {
            this.f7203a.m4439h();
            this.f7206d.m4396a(m4393c);
        }
    }

    @Override // org.mistergroup.shouldianswer.model.AbstractC2465y
    /* renamed from: a */
    public void mo959a(NumberReport numberReport) {
        this.f7203a.m4441f();
        this.f7203a.m4440g();
        try {
            this.f7204b.m4482a((AbstractC1041c<NumberReport>) numberReport);
            this.f7203a.m4437j();
        } finally {
            this.f7203a.m4439h();
        }
    }

    @Override // org.mistergroup.shouldianswer.model.AbstractC2465y
    /* renamed from: b */
    public List<NumberReport> mo957b() {
        Throwable th;
        int m4496a;
        int m4496a2;
        int m4496a3;
        int m4496a4;
        int m4496a5;
        int m4496a6;
        int m4496a7;
        int m4496a8;
        int m4496a9;
        int m4496a10;
        int m4496a11;
        int m4496a12;
        int m4496a13;
        C1072m m4407a = C1072m.m4407a("SELECT * FROM numberreport WHERE uploaded=0 and unconfirmed=0", 0);
        this.f7203a.m4441f();
        Cursor m4494a = C1034c.m4494a(this.f7203a, m4407a, false, null);
        try {
            m4496a = C1033b.m4496a(m4494a, "id");
            m4496a2 = C1033b.m4496a(m4494a, "uuid");
            m4496a3 = C1033b.m4496a(m4494a, "number");
            m4496a4 = C1033b.m4496a(m4494a, "numberNormalized");
            m4496a5 = C1033b.m4496a(m4494a, "rating");
            m4496a6 = C1033b.m4496a(m4494a, "category");
            m4496a7 = C1033b.m4496a(m4494a, "title");
            m4496a8 = C1033b.m4496a(m4494a, "comment");
            m4496a9 = C1033b.m4496a(m4494a, "country");
            m4496a10 = C1033b.m4496a(m4494a, "time");
            m4496a11 = C1033b.m4496a(m4494a, "uploaded");
            m4496a12 = C1033b.m4496a(m4494a, "unconfirmed");
            m4496a13 = C1033b.m4496a(m4494a, "deleted");
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            ArrayList arrayList = new ArrayList(m4494a.getCount());
            while (m4494a.moveToNext()) {
                NumberReport numberReport = new NumberReport();
                numberReport.m1429a(m4494a.getInt(m4496a));
                numberReport.m1428a(m4494a.getString(m4496a2));
                numberReport.m1421b(m4494a.getString(m4496a3));
                numberReport.m1418c(m4494a.getString(m4496a4));
                numberReport.m1425a(this.f7205c.m1219c(m4494a.getInt(m4496a5)));
                numberReport.m1424a(this.f7205c.m1218d(m4494a.getInt(m4496a6)));
                numberReport.m1415d(m4494a.getString(m4496a7));
                numberReport.m1413e(m4494a.getString(m4496a8));
                numberReport.m1411f(m4494a.getString(m4496a9));
                numberReport.m1427a(this.f7205c.m1226a(m4494a.isNull(m4496a10) ? null : Long.valueOf(m4494a.getLong(m4496a10))));
                numberReport.m1423a(m4494a.getInt(m4496a11) != 0);
                numberReport.m1420b(m4494a.getInt(m4496a12) != 0);
                numberReport.m1417c(m4494a.getInt(m4496a13) != 0);
                arrayList.add(numberReport);
            }
            m4494a.close();
            m4407a.m4414a();
            return arrayList;
        } catch (Throwable th3) {
            th = th3;
            m4494a.close();
            m4407a.m4414a();
            throw th;
        }
    }

    @Override // org.mistergroup.shouldianswer.model.AbstractC2465y
    /* renamed from: b */
    public List<NumberReport> mo956b(String str, String str2) {
        Throwable th;
        C1072m m4407a = C1072m.m4407a("SELECT * FROM numberreport WHERE numberNormalized=? and country=? and deleted=0", 2);
        if (str == null) {
            m4407a.mo4413a(1);
        } else {
            m4407a.mo4410a(1, str);
        }
        if (str2 == null) {
            m4407a.mo4413a(2);
        } else {
            m4407a.mo4410a(2, str2);
        }
        this.f7203a.m4441f();
        Cursor m4494a = C1034c.m4494a(this.f7203a, m4407a, false, null);
        try {
            int m4496a = C1033b.m4496a(m4494a, "id");
            int m4496a2 = C1033b.m4496a(m4494a, "uuid");
            int m4496a3 = C1033b.m4496a(m4494a, "number");
            int m4496a4 = C1033b.m4496a(m4494a, "numberNormalized");
            int m4496a5 = C1033b.m4496a(m4494a, "rating");
            int m4496a6 = C1033b.m4496a(m4494a, "category");
            int m4496a7 = C1033b.m4496a(m4494a, "title");
            int m4496a8 = C1033b.m4496a(m4494a, "comment");
            int m4496a9 = C1033b.m4496a(m4494a, "country");
            int m4496a10 = C1033b.m4496a(m4494a, "time");
            int m4496a11 = C1033b.m4496a(m4494a, "uploaded");
            int m4496a12 = C1033b.m4496a(m4494a, "unconfirmed");
            int m4496a13 = C1033b.m4496a(m4494a, "deleted");
            try {
                ArrayList arrayList = new ArrayList(m4494a.getCount());
                while (m4494a.moveToNext()) {
                    NumberReport numberReport = new NumberReport();
                    numberReport.m1429a(m4494a.getInt(m4496a));
                    numberReport.m1428a(m4494a.getString(m4496a2));
                    numberReport.m1421b(m4494a.getString(m4496a3));
                    numberReport.m1418c(m4494a.getString(m4496a4));
                    numberReport.m1425a(this.f7205c.m1219c(m4494a.getInt(m4496a5)));
                    numberReport.m1424a(this.f7205c.m1218d(m4494a.getInt(m4496a6)));
                    numberReport.m1415d(m4494a.getString(m4496a7));
                    numberReport.m1413e(m4494a.getString(m4496a8));
                    numberReport.m1411f(m4494a.getString(m4496a9));
                    numberReport.m1427a(this.f7205c.m1226a(m4494a.isNull(m4496a10) ? null : Long.valueOf(m4494a.getLong(m4496a10))));
                    numberReport.m1423a(m4494a.getInt(m4496a11) != 0);
                    numberReport.m1420b(m4494a.getInt(m4496a12) != 0);
                    numberReport.m1417c(m4494a.getInt(m4496a13) != 0);
                    arrayList.add(numberReport);
                }
                m4494a.close();
                m4407a.m4414a();
                return arrayList;
            } catch (Throwable th2) {
                th = th2;
                m4494a.close();
                m4407a.m4414a();
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    @Override // org.mistergroup.shouldianswer.model.AbstractC2465y
    /* renamed from: c */
    public void mo955c() {
        this.f7203a.m4441f();
        AbstractC0786f m4393c = this.f7208f.m4393c();
        this.f7203a.m4440g();
        try {
            m4393c.mo5354a();
            this.f7203a.m4437j();
        } finally {
            this.f7203a.m4439h();
            this.f7208f.m4396a(m4393c);
        }
    }
}
