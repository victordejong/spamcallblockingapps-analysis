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
/* renamed from: org.mistergroup.shouldianswer.model.q */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/model/q.class */
public final class C2446q implements AbstractC2445p {

    /* renamed from: a */
    private final AbstractC1063j f7162a;

    /* renamed from: b */
    private final AbstractC1041c<C2442o> f7163b;

    /* renamed from: c */
    private final C2404b f7164c = new C2404b();

    /* renamed from: d */
    private final AbstractC1031b<C2442o> f7165d;

    /* renamed from: e */
    private final AbstractC1075p f7166e;

    public C2446q(AbstractC1063j abstractC1063j) {
        this.f7162a = abstractC1063j;
        this.f7163b = new AbstractC1041c<C2442o>(abstractC1063j) { // from class: org.mistergroup.shouldianswer.model.q.1
            @Override // androidx.room.AbstractC1075p
            /* renamed from: a */
            public String mo952a() {
                return "INSERT OR ABORT INTO `CheckedCall` (`id`,`number`,`numberNormalized`,`country`,`rating`,`callDuration`,`callType`,`blockReason`,`time`) VALUES (nullif(?, 0),?,?,?,?,?,?,?,?)";
            }

            /* renamed from: a */
            public void mo954a(AbstractC0786f abstractC0786f, C2442o c2442o) {
                abstractC0786f.mo4411a(1, c2442o.m1014a());
                if (c2442o.m1007b() == null) {
                    abstractC0786f.mo4413a(2);
                } else {
                    abstractC0786f.mo4410a(2, c2442o.m1007b());
                }
                if (c2442o.m1004c() == null) {
                    abstractC0786f.mo4413a(3);
                } else {
                    abstractC0786f.mo4410a(3, c2442o.m1004c());
                }
                if (c2442o.m1002d() == null) {
                    abstractC0786f.mo4413a(4);
                } else {
                    abstractC0786f.mo4410a(4, c2442o.m1002d());
                }
                abstractC0786f.mo4411a(5, C2446q.this.f7164c.m1224a(c2442o.m1001e()));
                abstractC0786f.mo4411a(6, c2442o.m1000f());
                abstractC0786f.mo4411a(7, C2446q.this.f7164c.m1222a(c2442o.m999g()));
                abstractC0786f.mo4411a(8, C2446q.this.f7164c.m1223a(c2442o.m998h()));
                if (c2442o.m997i() == null) {
                    abstractC0786f.mo4413a(9);
                } else {
                    abstractC0786f.mo4411a(9, c2442o.m997i().longValue());
                }
            }
        };
        this.f7165d = new AbstractC1031b<C2442o>(abstractC1063j) { // from class: org.mistergroup.shouldianswer.model.q.2
            @Override // androidx.room.AbstractC1031b, androidx.room.AbstractC1075p
            /* renamed from: a */
            public String mo952a() {
                return "DELETE FROM `CheckedCall` WHERE `id` = ?";
            }

            /* renamed from: a */
            public void mo975a(AbstractC0786f abstractC0786f, C2442o c2442o) {
                abstractC0786f.mo4411a(1, c2442o.m1014a());
            }
        };
        this.f7166e = new AbstractC1075p(abstractC1063j) { // from class: org.mistergroup.shouldianswer.model.q.3
            @Override // androidx.room.AbstractC1075p
            /* renamed from: a */
            public String mo952a() {
                return "DELETE FROM checkedcall";
            }
        };
    }

    @Override // org.mistergroup.shouldianswer.model.AbstractC2445p
    /* renamed from: a */
    public List<C2442o> mo995a(int i) {
        C1072m m4407a = C1072m.m4407a("SELECT * FROM checkedCall WHERE id>?", 1);
        m4407a.mo4411a(1, i);
        this.f7162a.m4441f();
        Cursor m4494a = C1034c.m4494a(this.f7162a, m4407a, false, null);
        try {
            int m4496a = C1033b.m4496a(m4494a, "id");
            int m4496a2 = C1033b.m4496a(m4494a, "number");
            int m4496a3 = C1033b.m4496a(m4494a, "numberNormalized");
            int m4496a4 = C1033b.m4496a(m4494a, "country");
            int m4496a5 = C1033b.m4496a(m4494a, "rating");
            int m4496a6 = C1033b.m4496a(m4494a, "callDuration");
            int m4496a7 = C1033b.m4496a(m4494a, "callType");
            int m4496a8 = C1033b.m4496a(m4494a, "blockReason");
            int m4496a9 = C1033b.m4496a(m4494a, "time");
            ArrayList arrayList = new ArrayList(m4494a.getCount());
            while (m4494a.moveToNext()) {
                C2442o c2442o = new C2442o();
                c2442o.m1013a(m4494a.getInt(m4496a));
                c2442o.m1011a(m4494a.getString(m4496a2));
                c2442o.m1005b(m4494a.getString(m4496a3));
                c2442o.m1003c(m4494a.getString(m4496a4));
                c2442o.m1010a(this.f7164c.m1219c(m4494a.getInt(m4496a5)));
                c2442o.m1006b(m4494a.getInt(m4496a6));
                c2442o.m1008a(this.f7164c.m1227a(m4494a.getInt(m4496a7)));
                c2442o.m1009a(this.f7164c.m1220b(m4494a.getInt(m4496a8)));
                c2442o.m1012a(m4494a.isNull(m4496a9) ? null : Long.valueOf(m4494a.getLong(m4496a9)));
                arrayList.add(c2442o);
            }
            return arrayList;
        } finally {
            m4494a.close();
            m4407a.m4414a();
        }
    }

    /* JADX WARN: Finally extract failed */
    @Override // org.mistergroup.shouldianswer.model.AbstractC2445p
    /* renamed from: a */
    public C2442o mo994a(String str, long j) {
        C1072m m4407a = C1072m.m4407a("SELECT * FROM checkedcall WHERE number=? and time<=? order by time desc limit 1", 2);
        if (str == null) {
            m4407a.mo4413a(1);
        } else {
            m4407a.mo4410a(1, str);
        }
        m4407a.mo4411a(2, j);
        this.f7162a.m4441f();
        C2442o c2442o = null;
        Cursor m4494a = C1034c.m4494a(this.f7162a, m4407a, false, null);
        try {
            int m4496a = C1033b.m4496a(m4494a, "id");
            int m4496a2 = C1033b.m4496a(m4494a, "number");
            int m4496a3 = C1033b.m4496a(m4494a, "numberNormalized");
            int m4496a4 = C1033b.m4496a(m4494a, "country");
            int m4496a5 = C1033b.m4496a(m4494a, "rating");
            int m4496a6 = C1033b.m4496a(m4494a, "callDuration");
            int m4496a7 = C1033b.m4496a(m4494a, "callType");
            int m4496a8 = C1033b.m4496a(m4494a, "blockReason");
            int m4496a9 = C1033b.m4496a(m4494a, "time");
            if (m4494a.moveToFirst()) {
                C2442o c2442o2 = new C2442o();
                c2442o2.m1013a(m4494a.getInt(m4496a));
                c2442o2.m1011a(m4494a.getString(m4496a2));
                c2442o2.m1005b(m4494a.getString(m4496a3));
                c2442o2.m1003c(m4494a.getString(m4496a4));
                c2442o2.m1010a(this.f7164c.m1219c(m4494a.getInt(m4496a5)));
                c2442o2.m1006b(m4494a.getInt(m4496a6));
                c2442o2.m1008a(this.f7164c.m1227a(m4494a.getInt(m4496a7)));
                c2442o2.m1009a(this.f7164c.m1220b(m4494a.getInt(m4496a8)));
                c2442o2.m1012a(m4494a.isNull(m4496a9) ? null : Long.valueOf(m4494a.getLong(m4496a9)));
                c2442o = c2442o2;
            }
            m4494a.close();
            m4407a.m4414a();
            return c2442o;
        } catch (Throwable th) {
            m4494a.close();
            m4407a.m4414a();
            throw th;
        }
    }

    @Override // org.mistergroup.shouldianswer.model.AbstractC2445p
    /* renamed from: a */
    public void mo992a(C2442o... c2442oArr) {
        this.f7162a.m4441f();
        this.f7162a.m4440g();
        try {
            this.f7163b.m4481a(c2442oArr);
            this.f7162a.m4437j();
        } finally {
            this.f7162a.m4439h();
        }
    }

    /* JADX WARN: Finally extract failed */
    @Override // org.mistergroup.shouldianswer.model.AbstractC2445p
    /* renamed from: b */
    public C2442o mo991b(String str, long j) {
        C1072m m4407a = C1072m.m4407a("SELECT * FROM checkedcall WHERE number=? and time>=? order by time asc limit 1", 2);
        if (str == null) {
            m4407a.mo4413a(1);
        } else {
            m4407a.mo4410a(1, str);
        }
        m4407a.mo4411a(2, j);
        this.f7162a.m4441f();
        C2442o c2442o = null;
        Cursor m4494a = C1034c.m4494a(this.f7162a, m4407a, false, null);
        try {
            int m4496a = C1033b.m4496a(m4494a, "id");
            int m4496a2 = C1033b.m4496a(m4494a, "number");
            int m4496a3 = C1033b.m4496a(m4494a, "numberNormalized");
            int m4496a4 = C1033b.m4496a(m4494a, "country");
            int m4496a5 = C1033b.m4496a(m4494a, "rating");
            int m4496a6 = C1033b.m4496a(m4494a, "callDuration");
            int m4496a7 = C1033b.m4496a(m4494a, "callType");
            int m4496a8 = C1033b.m4496a(m4494a, "blockReason");
            int m4496a9 = C1033b.m4496a(m4494a, "time");
            if (m4494a.moveToFirst()) {
                C2442o c2442o2 = new C2442o();
                c2442o2.m1013a(m4494a.getInt(m4496a));
                c2442o2.m1011a(m4494a.getString(m4496a2));
                c2442o2.m1005b(m4494a.getString(m4496a3));
                c2442o2.m1003c(m4494a.getString(m4496a4));
                c2442o2.m1010a(this.f7164c.m1219c(m4494a.getInt(m4496a5)));
                c2442o2.m1006b(m4494a.getInt(m4496a6));
                c2442o2.m1008a(this.f7164c.m1227a(m4494a.getInt(m4496a7)));
                c2442o2.m1009a(this.f7164c.m1220b(m4494a.getInt(m4496a8)));
                c2442o2.m1012a(m4494a.isNull(m4496a9) ? null : Long.valueOf(m4494a.getLong(m4496a9)));
                c2442o = c2442o2;
            }
            m4494a.close();
            m4407a.m4414a();
            return c2442o;
        } catch (Throwable th) {
            m4494a.close();
            m4407a.m4414a();
            throw th;
        }
    }
}
