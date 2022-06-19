package org.mistergroup.shouldianswer.model;

import android.database.Cursor;
import androidx.p042i.p043a.AbstractC0786f;
import androidx.room.AbstractC1031b;
import androidx.room.AbstractC1041c;
import androidx.room.AbstractC1063j;
import androidx.room.AbstractC1075p;
import androidx.room.C1072m;
import androidx.room.p050b.C1033b;
import androidx.room.p050b.C1034c;
import java.util.ArrayList;
import java.util.List;
/* renamed from: org.mistergroup.shouldianswer.model.f */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/model/f.class */
public final class C2420f implements AbstractC2419e {

    /* renamed from: a */
    private final AbstractC1063j f7023a;

    /* renamed from: b */
    private final AbstractC1041c<C2418d> f7024b;

    /* renamed from: c */
    private final AbstractC1031b<C2418d> f7025c;

    /* renamed from: d */
    private final AbstractC1075p f7026d;

    public C2420f(AbstractC1063j abstractC1063j) {
        this.f7023a = abstractC1063j;
        this.f7024b = new AbstractC1041c<C2418d>(abstractC1063j) { // from class: org.mistergroup.shouldianswer.model.f.1
            @Override // androidx.room.AbstractC1075p
            /* renamed from: a */
            public String mo952a() {
                return "INSERT OR REPLACE INTO `BlockException` (`id`,`number`,`numberNormalized`,`country`,`block`,`masked`) VALUES (nullif(?, 0),?,?,?,?,?)";
            }

            /* renamed from: a */
            public void mo954a(AbstractC0786f abstractC0786f, C2418d c2418d) {
                abstractC0786f.mo4411a(1, c2418d.m1092a());
                if (c2418d.m1087b() == null) {
                    abstractC0786f.mo4413a(2);
                } else {
                    abstractC0786f.mo4410a(2, c2418d.m1087b());
                }
                if (c2418d.m1084c() == null) {
                    abstractC0786f.mo4413a(3);
                } else {
                    abstractC0786f.mo4410a(3, c2418d.m1084c());
                }
                if (c2418d.m1082d() == null) {
                    abstractC0786f.mo4413a(4);
                } else {
                    abstractC0786f.mo4410a(4, c2418d.m1082d());
                }
                abstractC0786f.mo4411a(5, c2418d.m1081e() ? 1L : 0L);
                abstractC0786f.mo4411a(6, c2418d.m1080f() ? 1L : 0L);
            }
        };
        this.f7025c = new AbstractC1031b<C2418d>(abstractC1063j) { // from class: org.mistergroup.shouldianswer.model.f.2
            @Override // androidx.room.AbstractC1031b, androidx.room.AbstractC1075p
            /* renamed from: a */
            public String mo952a() {
                return "DELETE FROM `BlockException` WHERE `id` = ?";
            }

            /* renamed from: a */
            public void mo975a(AbstractC0786f abstractC0786f, C2418d c2418d) {
                abstractC0786f.mo4411a(1, c2418d.m1092a());
            }
        };
        this.f7026d = new AbstractC1075p(abstractC1063j) { // from class: org.mistergroup.shouldianswer.model.f.3
            @Override // androidx.room.AbstractC1075p
            /* renamed from: a */
            public String mo952a() {
                return "DELETE FROM blockexception";
            }
        };
    }

    @Override // org.mistergroup.shouldianswer.model.AbstractC2419e
    /* renamed from: a */
    public List<C2418d> mo1078a() {
        C1072m m4407a = C1072m.m4407a("SELECT * FROM blockexception", 0);
        this.f7023a.m4441f();
        Cursor m4494a = C1034c.m4494a(this.f7023a, m4407a, false, null);
        try {
            int m4496a = C1033b.m4496a(m4494a, "id");
            int m4496a2 = C1033b.m4496a(m4494a, "number");
            int m4496a3 = C1033b.m4496a(m4494a, "numberNormalized");
            int m4496a4 = C1033b.m4496a(m4494a, "country");
            int m4496a5 = C1033b.m4496a(m4494a, "block");
            int m4496a6 = C1033b.m4496a(m4494a, "masked");
            ArrayList arrayList = new ArrayList(m4494a.getCount());
            while (m4494a.moveToNext()) {
                C2418d c2418d = new C2418d();
                c2418d.m1091a(m4494a.getInt(m4496a));
                c2418d.m1090a(m4494a.getString(m4496a2));
                c2418d.m1086b(m4494a.getString(m4496a3));
                c2418d.m1083c(m4494a.getString(m4496a4));
                c2418d.m1088a(m4494a.getInt(m4496a5) != 0);
                c2418d.m1085b(m4494a.getInt(m4496a6) != 0);
                arrayList.add(c2418d);
            }
            return arrayList;
        } finally {
            m4494a.close();
            m4407a.m4414a();
        }
    }

    @Override // org.mistergroup.shouldianswer.model.AbstractC2419e
    /* renamed from: a */
    public List<C2418d> mo1077a(String str) {
        C1072m m4407a = C1072m.m4407a("SELECT * FROM blockexception WHERE numberNormalized=?", 1);
        if (str == null) {
            m4407a.mo4413a(1);
        } else {
            m4407a.mo4410a(1, str);
        }
        this.f7023a.m4441f();
        Cursor m4494a = C1034c.m4494a(this.f7023a, m4407a, false, null);
        try {
            int m4496a = C1033b.m4496a(m4494a, "id");
            int m4496a2 = C1033b.m4496a(m4494a, "number");
            int m4496a3 = C1033b.m4496a(m4494a, "numberNormalized");
            int m4496a4 = C1033b.m4496a(m4494a, "country");
            int m4496a5 = C1033b.m4496a(m4494a, "block");
            int m4496a6 = C1033b.m4496a(m4494a, "masked");
            ArrayList arrayList = new ArrayList(m4494a.getCount());
            while (m4494a.moveToNext()) {
                C2418d c2418d = new C2418d();
                c2418d.m1091a(m4494a.getInt(m4496a));
                c2418d.m1090a(m4494a.getString(m4496a2));
                c2418d.m1086b(m4494a.getString(m4496a3));
                c2418d.m1083c(m4494a.getString(m4496a4));
                c2418d.m1088a(m4494a.getInt(m4496a5) != 0);
                c2418d.m1085b(m4494a.getInt(m4496a6) != 0);
                arrayList.add(c2418d);
            }
            return arrayList;
        } finally {
            m4494a.close();
            m4407a.m4414a();
        }
    }

    @Override // org.mistergroup.shouldianswer.model.AbstractC2419e
    /* renamed from: a */
    public List<C2418d> mo1076a(String str, String str2) {
        C1072m m4407a = C1072m.m4407a("SELECT * FROM blockexception WHERE number=? and country=?", 2);
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
        this.f7023a.m4441f();
        Cursor m4494a = C1034c.m4494a(this.f7023a, m4407a, false, null);
        try {
            int m4496a = C1033b.m4496a(m4494a, "id");
            int m4496a2 = C1033b.m4496a(m4494a, "number");
            int m4496a3 = C1033b.m4496a(m4494a, "numberNormalized");
            int m4496a4 = C1033b.m4496a(m4494a, "country");
            int m4496a5 = C1033b.m4496a(m4494a, "block");
            int m4496a6 = C1033b.m4496a(m4494a, "masked");
            ArrayList arrayList = new ArrayList(m4494a.getCount());
            while (m4494a.moveToNext()) {
                C2418d c2418d = new C2418d();
                c2418d.m1091a(m4494a.getInt(m4496a));
                c2418d.m1090a(m4494a.getString(m4496a2));
                c2418d.m1086b(m4494a.getString(m4496a3));
                c2418d.m1083c(m4494a.getString(m4496a4));
                c2418d.m1088a(m4494a.getInt(m4496a5) != 0);
                c2418d.m1085b(m4494a.getInt(m4496a6) != 0);
                arrayList.add(c2418d);
            }
            return arrayList;
        } finally {
            m4494a.close();
            m4407a.m4414a();
        }
    }

    @Override // org.mistergroup.shouldianswer.model.AbstractC2419e
    /* renamed from: a */
    public void mo1075a(C2418d c2418d) {
        this.f7023a.m4441f();
        this.f7023a.m4440g();
        try {
            this.f7025c.m4501a((AbstractC1031b<C2418d>) c2418d);
            this.f7023a.m4437j();
        } finally {
            this.f7023a.m4439h();
        }
    }

    @Override // org.mistergroup.shouldianswer.model.AbstractC2419e
    /* renamed from: a */
    public void mo1074a(C2418d... c2418dArr) {
        this.f7023a.m4441f();
        this.f7023a.m4440g();
        try {
            this.f7024b.m4481a(c2418dArr);
            this.f7023a.m4437j();
        } finally {
            this.f7023a.m4439h();
        }
    }

    /* JADX WARN: Finally extract failed */
    @Override // org.mistergroup.shouldianswer.model.AbstractC2419e
    /* renamed from: b */
    public C2418d mo1073b() {
        C1072m m4407a = C1072m.m4407a("SELECT * FROM blockexception WHERE block=1 limit 0,1", 0);
        this.f7023a.m4441f();
        C2418d c2418d = null;
        Cursor m4494a = C1034c.m4494a(this.f7023a, m4407a, false, null);
        try {
            int m4496a = C1033b.m4496a(m4494a, "id");
            int m4496a2 = C1033b.m4496a(m4494a, "number");
            int m4496a3 = C1033b.m4496a(m4494a, "numberNormalized");
            int m4496a4 = C1033b.m4496a(m4494a, "country");
            int m4496a5 = C1033b.m4496a(m4494a, "block");
            int m4496a6 = C1033b.m4496a(m4494a, "masked");
            if (m4494a.moveToFirst()) {
                c2418d = new C2418d();
                c2418d.m1091a(m4494a.getInt(m4496a));
                c2418d.m1090a(m4494a.getString(m4496a2));
                c2418d.m1086b(m4494a.getString(m4496a3));
                c2418d.m1083c(m4494a.getString(m4496a4));
                c2418d.m1088a(m4494a.getInt(m4496a5) != 0);
                boolean z = false;
                if (m4494a.getInt(m4496a6) != 0) {
                    z = true;
                }
                c2418d.m1085b(z);
            }
            m4494a.close();
            m4407a.m4414a();
            return c2418d;
        } catch (Throwable th) {
            m4494a.close();
            m4407a.m4414a();
            throw th;
        }
    }

    @Override // org.mistergroup.shouldianswer.model.AbstractC2419e
    /* renamed from: c */
    public void mo1072c() {
        this.f7023a.m4441f();
        AbstractC0786f m4393c = this.f7026d.m4393c();
        this.f7023a.m4440g();
        try {
            m4393c.mo5354a();
            this.f7023a.m4437j();
        } finally {
            this.f7023a.m4439h();
            this.f7026d.m4396a(m4393c);
        }
    }

    @Override // org.mistergroup.shouldianswer.model.AbstractC2419e
    /* renamed from: d */
    public List<C2418d> mo1071d() {
        C1072m m4407a = C1072m.m4407a("SELECT * FROM blockexception WHERE block=1", 0);
        this.f7023a.m4441f();
        Cursor m4494a = C1034c.m4494a(this.f7023a, m4407a, false, null);
        try {
            int m4496a = C1033b.m4496a(m4494a, "id");
            int m4496a2 = C1033b.m4496a(m4494a, "number");
            int m4496a3 = C1033b.m4496a(m4494a, "numberNormalized");
            int m4496a4 = C1033b.m4496a(m4494a, "country");
            int m4496a5 = C1033b.m4496a(m4494a, "block");
            int m4496a6 = C1033b.m4496a(m4494a, "masked");
            ArrayList arrayList = new ArrayList(m4494a.getCount());
            while (m4494a.moveToNext()) {
                C2418d c2418d = new C2418d();
                c2418d.m1091a(m4494a.getInt(m4496a));
                c2418d.m1090a(m4494a.getString(m4496a2));
                c2418d.m1086b(m4494a.getString(m4496a3));
                c2418d.m1083c(m4494a.getString(m4496a4));
                c2418d.m1088a(m4494a.getInt(m4496a5) != 0);
                c2418d.m1085b(m4494a.getInt(m4496a6) != 0);
                arrayList.add(c2418d);
            }
            return arrayList;
        } finally {
            m4494a.close();
            m4407a.m4414a();
        }
    }

    @Override // org.mistergroup.shouldianswer.model.AbstractC2419e
    /* renamed from: e */
    public List<C2418d> mo1070e() {
        C1072m m4407a = C1072m.m4407a("SELECT * FROM blockexception WHERE block=0", 0);
        this.f7023a.m4441f();
        Cursor m4494a = C1034c.m4494a(this.f7023a, m4407a, false, null);
        try {
            int m4496a = C1033b.m4496a(m4494a, "id");
            int m4496a2 = C1033b.m4496a(m4494a, "number");
            int m4496a3 = C1033b.m4496a(m4494a, "numberNormalized");
            int m4496a4 = C1033b.m4496a(m4494a, "country");
            int m4496a5 = C1033b.m4496a(m4494a, "block");
            int m4496a6 = C1033b.m4496a(m4494a, "masked");
            ArrayList arrayList = new ArrayList(m4494a.getCount());
            while (m4494a.moveToNext()) {
                C2418d c2418d = new C2418d();
                c2418d.m1091a(m4494a.getInt(m4496a));
                c2418d.m1090a(m4494a.getString(m4496a2));
                c2418d.m1086b(m4494a.getString(m4496a3));
                c2418d.m1083c(m4494a.getString(m4496a4));
                c2418d.m1088a(m4494a.getInt(m4496a5) != 0);
                c2418d.m1085b(m4494a.getInt(m4496a6) != 0);
                arrayList.add(c2418d);
            }
            return arrayList;
        } finally {
            m4494a.close();
            m4407a.m4414a();
        }
    }

    @Override // org.mistergroup.shouldianswer.model.AbstractC2419e
    /* renamed from: f */
    public List<C2418d> mo1069f() {
        C1072m m4407a = C1072m.m4407a("SELECT * FROM blockexception WHERE masked=1", 0);
        this.f7023a.m4441f();
        Cursor m4494a = C1034c.m4494a(this.f7023a, m4407a, false, null);
        try {
            int m4496a = C1033b.m4496a(m4494a, "id");
            int m4496a2 = C1033b.m4496a(m4494a, "number");
            int m4496a3 = C1033b.m4496a(m4494a, "numberNormalized");
            int m4496a4 = C1033b.m4496a(m4494a, "country");
            int m4496a5 = C1033b.m4496a(m4494a, "block");
            int m4496a6 = C1033b.m4496a(m4494a, "masked");
            ArrayList arrayList = new ArrayList(m4494a.getCount());
            while (m4494a.moveToNext()) {
                C2418d c2418d = new C2418d();
                c2418d.m1091a(m4494a.getInt(m4496a));
                c2418d.m1090a(m4494a.getString(m4496a2));
                c2418d.m1086b(m4494a.getString(m4496a3));
                c2418d.m1083c(m4494a.getString(m4496a4));
                c2418d.m1088a(m4494a.getInt(m4496a5) != 0);
                c2418d.m1085b(m4494a.getInt(m4496a6) != 0);
                arrayList.add(c2418d);
            }
            return arrayList;
        } finally {
            m4494a.close();
            m4407a.m4414a();
        }
    }
}
