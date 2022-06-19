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
/* renamed from: org.mistergroup.shouldianswer.model.v */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/model/v.class */
public final class C2457v implements AbstractC2456u {

    /* renamed from: a */
    private final AbstractC1063j f7190a;

    /* renamed from: b */
    private final AbstractC1041c<NumberCaption> f7191b;

    /* renamed from: c */
    private final AbstractC1031b<NumberCaption> f7192c;

    /* renamed from: d */
    private final AbstractC1075p f7193d;

    /* renamed from: e */
    private final AbstractC1075p f7194e;

    /* renamed from: f */
    private final AbstractC1075p f7195f;

    public C2457v(AbstractC1063j abstractC1063j) {
        this.f7190a = abstractC1063j;
        this.f7191b = new AbstractC1041c<NumberCaption>(abstractC1063j) { // from class: org.mistergroup.shouldianswer.model.v.1
            @Override // androidx.room.AbstractC1075p
            /* renamed from: a */
            public String mo952a() {
                return "INSERT OR REPLACE INTO `NumberCaption` (`id`,`number`,`numberNormalized`,`caption`,`country`,`uploaded`) VALUES (nullif(?, 0),?,?,?,?,?)";
            }

            /* renamed from: a */
            public void mo954a(AbstractC0786f abstractC0786f, NumberCaption numberCaption) {
                abstractC0786f.mo4411a(1, numberCaption.m1499a());
                if (numberCaption.m1495b() == null) {
                    abstractC0786f.mo4413a(2);
                } else {
                    abstractC0786f.mo4410a(2, numberCaption.m1495b());
                }
                if (numberCaption.m1493c() == null) {
                    abstractC0786f.mo4413a(3);
                } else {
                    abstractC0786f.mo4410a(3, numberCaption.m1493c());
                }
                if (numberCaption.m1491d() == null) {
                    abstractC0786f.mo4413a(4);
                } else {
                    abstractC0786f.mo4410a(4, numberCaption.m1491d());
                }
                if (numberCaption.m1489e() == null) {
                    abstractC0786f.mo4413a(5);
                } else {
                    abstractC0786f.mo4410a(5, numberCaption.m1489e());
                }
                abstractC0786f.mo4411a(6, numberCaption.m1488f() ? 1L : 0L);
            }
        };
        this.f7192c = new AbstractC1031b<NumberCaption>(abstractC1063j) { // from class: org.mistergroup.shouldianswer.model.v.2
            @Override // androidx.room.AbstractC1031b, androidx.room.AbstractC1075p
            /* renamed from: a */
            public String mo952a() {
                return "DELETE FROM `NumberCaption` WHERE `id` = ?";
            }

            /* renamed from: a */
            public void mo975a(AbstractC0786f abstractC0786f, NumberCaption numberCaption) {
                abstractC0786f.mo4411a(1, numberCaption.m1499a());
            }
        };
        this.f7193d = new AbstractC1075p(abstractC1063j) { // from class: org.mistergroup.shouldianswer.model.v.3
            @Override // androidx.room.AbstractC1075p
            /* renamed from: a */
            public String mo952a() {
                return "UPDATE numbercaption set uploaded=1 where id=?";
            }
        };
        this.f7194e = new AbstractC1075p(abstractC1063j) { // from class: org.mistergroup.shouldianswer.model.v.4
            @Override // androidx.room.AbstractC1075p
            /* renamed from: a */
            public String mo952a() {
                return "DELETE FROM numbercaption where id=?";
            }
        };
        this.f7195f = new AbstractC1075p(abstractC1063j) { // from class: org.mistergroup.shouldianswer.model.v.5
            @Override // androidx.room.AbstractC1075p
            /* renamed from: a */
            public String mo952a() {
                return "DELETE FROM numbercaption";
            }
        };
    }

    @Override // org.mistergroup.shouldianswer.model.AbstractC2456u
    /* renamed from: a */
    public List<NumberCaption> mo980a() {
        C1072m m4407a = C1072m.m4407a("SELECT * FROM numbercaption WHERE uploaded=0", 0);
        this.f7190a.m4441f();
        Cursor m4494a = C1034c.m4494a(this.f7190a, m4407a, false, null);
        try {
            int m4496a = C1033b.m4496a(m4494a, "id");
            int m4496a2 = C1033b.m4496a(m4494a, "number");
            int m4496a3 = C1033b.m4496a(m4494a, "numberNormalized");
            int m4496a4 = C1033b.m4496a(m4494a, "caption");
            int m4496a5 = C1033b.m4496a(m4494a, "country");
            int m4496a6 = C1033b.m4496a(m4494a, "uploaded");
            ArrayList arrayList = new ArrayList(m4494a.getCount());
            while (m4494a.moveToNext()) {
                NumberCaption numberCaption = new NumberCaption();
                numberCaption.m1498a(m4494a.getInt(m4496a));
                numberCaption.m1497a(m4494a.getString(m4496a2));
                numberCaption.m1494b(m4494a.getString(m4496a3));
                numberCaption.m1492c(m4494a.getString(m4496a4));
                numberCaption.m1490d(m4494a.getString(m4496a5));
                numberCaption.m1496a(m4494a.getInt(m4496a6) != 0);
                arrayList.add(numberCaption);
            }
            return arrayList;
        } finally {
            m4494a.close();
            m4407a.m4414a();
        }
    }

    @Override // org.mistergroup.shouldianswer.model.AbstractC2456u
    /* renamed from: a */
    public List<NumberCaption> mo978a(String str, String str2) {
        C1072m m4407a = C1072m.m4407a("SELECT * FROM numbercaption WHERE number=? and country=?", 2);
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
        this.f7190a.m4441f();
        Cursor m4494a = C1034c.m4494a(this.f7190a, m4407a, false, null);
        try {
            int m4496a = C1033b.m4496a(m4494a, "id");
            int m4496a2 = C1033b.m4496a(m4494a, "number");
            int m4496a3 = C1033b.m4496a(m4494a, "numberNormalized");
            int m4496a4 = C1033b.m4496a(m4494a, "caption");
            int m4496a5 = C1033b.m4496a(m4494a, "country");
            int m4496a6 = C1033b.m4496a(m4494a, "uploaded");
            ArrayList arrayList = new ArrayList(m4494a.getCount());
            while (m4494a.moveToNext()) {
                NumberCaption numberCaption = new NumberCaption();
                numberCaption.m1498a(m4494a.getInt(m4496a));
                numberCaption.m1497a(m4494a.getString(m4496a2));
                numberCaption.m1494b(m4494a.getString(m4496a3));
                numberCaption.m1492c(m4494a.getString(m4496a4));
                numberCaption.m1490d(m4494a.getString(m4496a5));
                numberCaption.m1496a(m4494a.getInt(m4496a6) != 0);
                arrayList.add(numberCaption);
            }
            return arrayList;
        } finally {
            m4494a.close();
            m4407a.m4414a();
        }
    }

    @Override // org.mistergroup.shouldianswer.model.AbstractC2456u
    /* renamed from: a */
    public void mo979a(int i) {
        this.f7190a.m4441f();
        AbstractC0786f m4393c = this.f7193d.m4393c();
        m4393c.mo4411a(1, i);
        this.f7190a.m4440g();
        try {
            m4393c.mo5354a();
            this.f7190a.m4437j();
        } finally {
            this.f7190a.m4439h();
            this.f7193d.m4396a(m4393c);
        }
    }

    @Override // org.mistergroup.shouldianswer.model.AbstractC2456u
    /* renamed from: b */
    public List<NumberCaption> mo977b(String str, String str2) {
        C1072m m4407a = C1072m.m4407a("SELECT * FROM numbercaption WHERE numberNormalized=? and country=?", 2);
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
        this.f7190a.m4441f();
        Cursor m4494a = C1034c.m4494a(this.f7190a, m4407a, false, null);
        try {
            int m4496a = C1033b.m4496a(m4494a, "id");
            int m4496a2 = C1033b.m4496a(m4494a, "number");
            int m4496a3 = C1033b.m4496a(m4494a, "numberNormalized");
            int m4496a4 = C1033b.m4496a(m4494a, "caption");
            int m4496a5 = C1033b.m4496a(m4494a, "country");
            int m4496a6 = C1033b.m4496a(m4494a, "uploaded");
            ArrayList arrayList = new ArrayList(m4494a.getCount());
            while (m4494a.moveToNext()) {
                NumberCaption numberCaption = new NumberCaption();
                numberCaption.m1498a(m4494a.getInt(m4496a));
                numberCaption.m1497a(m4494a.getString(m4496a2));
                numberCaption.m1494b(m4494a.getString(m4496a3));
                numberCaption.m1492c(m4494a.getString(m4496a4));
                numberCaption.m1490d(m4494a.getString(m4496a5));
                numberCaption.m1496a(m4494a.getInt(m4496a6) != 0);
                arrayList.add(numberCaption);
            }
            return arrayList;
        } finally {
            m4494a.close();
            m4407a.m4414a();
        }
    }
}
