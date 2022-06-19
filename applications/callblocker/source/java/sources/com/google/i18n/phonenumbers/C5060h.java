package com.google.i18n.phonenumbers;

import java.io.Externalizable;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.google.i18n.phonenumbers.h */
/* loaded from: classes-dex2jar.jar:com/google/i18n/phonenumbers/h.class */
public final class C5060h {

    /* renamed from: com.google.i18n.phonenumbers.h$a */
    /* loaded from: classes-dex2jar.jar:com/google/i18n/phonenumbers/h$a.class */
    public static class C5061a implements Externalizable {

        /* renamed from: a */
        private boolean f21377a;

        /* renamed from: c */
        private boolean f21379c;

        /* renamed from: f */
        private boolean f21382f;

        /* renamed from: h */
        private boolean f21384h;

        /* renamed from: j */
        private boolean f21386j;

        /* renamed from: b */
        private String f21378b = "";

        /* renamed from: d */
        private String f21380d = "";

        /* renamed from: e */
        private List<String> f21381e = new ArrayList();

        /* renamed from: g */
        private String f21383g = "";

        /* renamed from: i */
        private boolean f21385i = false;

        /* renamed from: k */
        private String f21387k = "";

        /* renamed from: a */
        public C5061a m1701a(String str) {
            this.f21377a = true;
            this.f21378b = str;
            return this;
        }

        /* renamed from: a */
        public C5061a m1700a(boolean z) {
            this.f21384h = true;
            this.f21385i = z;
            return this;
        }

        /* renamed from: a */
        public String m1703a() {
            return this.f21378b;
        }

        /* renamed from: a */
        public String m1702a(int i) {
            return this.f21381e.get(i);
        }

        /* renamed from: b */
        public C5061a m1698b(String str) {
            this.f21379c = true;
            this.f21380d = str;
            return this;
        }

        /* renamed from: b */
        public String m1699b() {
            return this.f21380d;
        }

        /* renamed from: c */
        public int m1697c() {
            return this.f21381e.size();
        }

        /* renamed from: c */
        public C5061a m1696c(String str) {
            this.f21382f = true;
            this.f21383g = str;
            return this;
        }

        /* renamed from: d */
        public C5061a m1694d(String str) {
            this.f21386j = true;
            this.f21387k = str;
            return this;
        }

        /* renamed from: d */
        public String m1695d() {
            return this.f21383g;
        }

        /* renamed from: e */
        public String m1693e() {
            return this.f21387k;
        }

        @Override // java.io.Externalizable
        public void readExternal(ObjectInput objectInput) {
            m1701a(objectInput.readUTF());
            m1698b(objectInput.readUTF());
            int readInt = objectInput.readInt();
            for (int i = 0; i < readInt; i++) {
                this.f21381e.add(objectInput.readUTF());
            }
            if (objectInput.readBoolean()) {
                m1696c(objectInput.readUTF());
            }
            if (objectInput.readBoolean()) {
                m1694d(objectInput.readUTF());
            }
            m1700a(objectInput.readBoolean());
        }

        @Override // java.io.Externalizable
        public void writeExternal(ObjectOutput objectOutput) {
            objectOutput.writeUTF(this.f21378b);
            objectOutput.writeUTF(this.f21380d);
            int m1697c = m1697c();
            objectOutput.writeInt(m1697c);
            for (int i = 0; i < m1697c; i++) {
                objectOutput.writeUTF(this.f21381e.get(i));
            }
            objectOutput.writeBoolean(this.f21382f);
            if (this.f21382f) {
                objectOutput.writeUTF(this.f21383g);
            }
            objectOutput.writeBoolean(this.f21386j);
            if (this.f21386j) {
                objectOutput.writeUTF(this.f21387k);
            }
            objectOutput.writeBoolean(this.f21385i);
        }
    }

    /* renamed from: com.google.i18n.phonenumbers.h$b */
    /* loaded from: classes-dex2jar.jar:com/google/i18n/phonenumbers/h$b.class */
    public static class C5062b implements Externalizable {

        /* renamed from: A */
        private boolean f21388A;

        /* renamed from: C */
        private boolean f21390C;

        /* renamed from: E */
        private boolean f21392E;

        /* renamed from: G */
        private boolean f21394G;

        /* renamed from: I */
        private boolean f21396I;

        /* renamed from: K */
        private boolean f21398K;

        /* renamed from: M */
        private boolean f21400M;

        /* renamed from: O */
        private boolean f21402O;

        /* renamed from: Q */
        private boolean f21404Q;

        /* renamed from: S */
        private boolean f21406S;

        /* renamed from: U */
        private boolean f21408U;

        /* renamed from: W */
        private boolean f21410W;

        /* renamed from: Y */
        private boolean f21412Y;

        /* renamed from: a */
        private boolean f21414a;

        /* renamed from: ac */
        private boolean f21417ac;

        /* renamed from: ae */
        private boolean f21419ae;

        /* renamed from: ag */
        private boolean f21421ag;

        /* renamed from: ai */
        private boolean f21423ai;

        /* renamed from: c */
        private boolean f21426c;

        /* renamed from: e */
        private boolean f21428e;

        /* renamed from: g */
        private boolean f21430g;

        /* renamed from: i */
        private boolean f21432i;

        /* renamed from: k */
        private boolean f21434k;

        /* renamed from: m */
        private boolean f21436m;

        /* renamed from: o */
        private boolean f21438o;

        /* renamed from: q */
        private boolean f21440q;

        /* renamed from: s */
        private boolean f21442s;

        /* renamed from: u */
        private boolean f21444u;

        /* renamed from: w */
        private boolean f21446w;

        /* renamed from: y */
        private boolean f21448y;

        /* renamed from: b */
        private C5064d f21425b = null;

        /* renamed from: d */
        private C5064d f21427d = null;

        /* renamed from: f */
        private C5064d f21429f = null;

        /* renamed from: h */
        private C5064d f21431h = null;

        /* renamed from: j */
        private C5064d f21433j = null;

        /* renamed from: l */
        private C5064d f21435l = null;

        /* renamed from: n */
        private C5064d f21437n = null;

        /* renamed from: p */
        private C5064d f21439p = null;

        /* renamed from: r */
        private C5064d f21441r = null;

        /* renamed from: t */
        private C5064d f21443t = null;

        /* renamed from: v */
        private C5064d f21445v = null;

        /* renamed from: x */
        private C5064d f21447x = null;

        /* renamed from: z */
        private C5064d f21449z = null;

        /* renamed from: B */
        private C5064d f21389B = null;

        /* renamed from: D */
        private C5064d f21391D = null;

        /* renamed from: F */
        private C5064d f21393F = null;

        /* renamed from: H */
        private C5064d f21395H = null;

        /* renamed from: J */
        private String f21397J = "";

        /* renamed from: L */
        private int f21399L = 0;

        /* renamed from: N */
        private String f21401N = "";

        /* renamed from: P */
        private String f21403P = "";

        /* renamed from: R */
        private String f21405R = "";

        /* renamed from: T */
        private String f21407T = "";

        /* renamed from: V */
        private String f21409V = "";

        /* renamed from: X */
        private String f21411X = "";

        /* renamed from: Z */
        private boolean f21413Z = false;

        /* renamed from: aa */
        private List<C5061a> f21415aa = new ArrayList();

        /* renamed from: ab */
        private List<C5061a> f21416ab = new ArrayList();

        /* renamed from: ad */
        private boolean f21418ad = false;

        /* renamed from: af */
        private String f21420af = "";

        /* renamed from: ah */
        private boolean f21422ah = false;

        /* renamed from: aj */
        private boolean f21424aj = false;

        /* renamed from: a */
        public C5062b m1691a(int i) {
            this.f21398K = true;
            this.f21399L = i;
            return this;
        }

        /* renamed from: a */
        public C5062b m1690a(C5064d c5064d) {
            if (c5064d == null) {
                throw new NullPointerException();
            }
            this.f21414a = true;
            this.f21425b = c5064d;
            return this;
        }

        /* renamed from: a */
        public C5062b m1689a(String str) {
            this.f21396I = true;
            this.f21397J = str;
            return this;
        }

        /* renamed from: a */
        public C5062b m1688a(boolean z) {
            this.f21412Y = true;
            this.f21413Z = z;
            return this;
        }

        /* renamed from: a */
        public C5064d m1692a() {
            return this.f21425b;
        }

        /* renamed from: b */
        public C5062b m1686b(C5064d c5064d) {
            if (c5064d == null) {
                throw new NullPointerException();
            }
            this.f21426c = true;
            this.f21427d = c5064d;
            return this;
        }

        /* renamed from: b */
        public C5062b m1685b(String str) {
            this.f21400M = true;
            this.f21401N = str;
            return this;
        }

        /* renamed from: b */
        public C5062b m1684b(boolean z) {
            this.f21417ac = true;
            this.f21418ad = z;
            return this;
        }

        /* renamed from: b */
        public C5064d m1687b() {
            return this.f21427d;
        }

        /* renamed from: c */
        public C5062b m1682c(C5064d c5064d) {
            if (c5064d == null) {
                throw new NullPointerException();
            }
            this.f21428e = true;
            this.f21429f = c5064d;
            return this;
        }

        /* renamed from: c */
        public C5062b m1681c(String str) {
            this.f21402O = true;
            this.f21403P = str;
            return this;
        }

        /* renamed from: c */
        public C5062b m1680c(boolean z) {
            this.f21421ag = true;
            this.f21422ah = z;
            return this;
        }

        /* renamed from: c */
        public C5064d m1683c() {
            return this.f21429f;
        }

        /* renamed from: d */
        public C5062b m1678d(C5064d c5064d) {
            if (c5064d == null) {
                throw new NullPointerException();
            }
            this.f21430g = true;
            this.f21431h = c5064d;
            return this;
        }

        /* renamed from: d */
        public C5062b m1677d(String str) {
            this.f21404Q = true;
            this.f21405R = str;
            return this;
        }

        /* renamed from: d */
        public C5062b m1676d(boolean z) {
            this.f21423ai = true;
            this.f21424aj = z;
            return this;
        }

        /* renamed from: d */
        public C5064d m1679d() {
            return this.f21431h;
        }

        /* renamed from: e */
        public C5062b m1674e(C5064d c5064d) {
            if (c5064d == null) {
                throw new NullPointerException();
            }
            this.f21432i = true;
            this.f21433j = c5064d;
            return this;
        }

        /* renamed from: e */
        public C5062b m1673e(String str) {
            this.f21406S = true;
            this.f21407T = str;
            return this;
        }

        /* renamed from: e */
        public C5064d m1675e() {
            return this.f21433j;
        }

        /* renamed from: f */
        public C5062b m1671f(C5064d c5064d) {
            if (c5064d == null) {
                throw new NullPointerException();
            }
            this.f21434k = true;
            this.f21435l = c5064d;
            return this;
        }

        /* renamed from: f */
        public C5062b m1670f(String str) {
            this.f21408U = true;
            this.f21409V = str;
            return this;
        }

        /* renamed from: f */
        public C5064d m1672f() {
            return this.f21435l;
        }

        /* renamed from: g */
        public C5062b m1668g(C5064d c5064d) {
            if (c5064d == null) {
                throw new NullPointerException();
            }
            this.f21436m = true;
            this.f21437n = c5064d;
            return this;
        }

        /* renamed from: g */
        public C5062b m1667g(String str) {
            this.f21410W = true;
            this.f21411X = str;
            return this;
        }

        /* renamed from: g */
        public C5064d m1669g() {
            return this.f21437n;
        }

        /* renamed from: h */
        public C5062b m1665h(C5064d c5064d) {
            if (c5064d == null) {
                throw new NullPointerException();
            }
            this.f21438o = true;
            this.f21439p = c5064d;
            return this;
        }

        /* renamed from: h */
        public C5062b m1664h(String str) {
            this.f21419ae = true;
            this.f21420af = str;
            return this;
        }

        /* renamed from: h */
        public C5064d m1666h() {
            return this.f21439p;
        }

        /* renamed from: i */
        public C5062b m1662i(C5064d c5064d) {
            if (c5064d == null) {
                throw new NullPointerException();
            }
            this.f21440q = true;
            this.f21441r = c5064d;
            return this;
        }

        /* renamed from: i */
        public C5064d m1663i() {
            return this.f21441r;
        }

        /* renamed from: j */
        public C5062b m1660j(C5064d c5064d) {
            if (c5064d == null) {
                throw new NullPointerException();
            }
            this.f21442s = true;
            this.f21443t = c5064d;
            return this;
        }

        /* renamed from: j */
        public C5064d m1661j() {
            return this.f21443t;
        }

        /* renamed from: k */
        public C5062b m1658k(C5064d c5064d) {
            if (c5064d == null) {
                throw new NullPointerException();
            }
            this.f21444u = true;
            this.f21445v = c5064d;
            return this;
        }

        /* renamed from: k */
        public C5064d m1659k() {
            return this.f21447x;
        }

        /* renamed from: l */
        public int m1657l() {
            return this.f21399L;
        }

        /* renamed from: l */
        public C5062b m1656l(C5064d c5064d) {
            if (c5064d == null) {
                throw new NullPointerException();
            }
            this.f21446w = true;
            this.f21447x = c5064d;
            return this;
        }

        /* renamed from: m */
        public C5062b m1654m(C5064d c5064d) {
            if (c5064d == null) {
                throw new NullPointerException();
            }
            this.f21448y = true;
            this.f21449z = c5064d;
            return this;
        }

        /* renamed from: m */
        public String m1655m() {
            return this.f21401N;
        }

        /* renamed from: n */
        public C5062b m1652n(C5064d c5064d) {
            if (c5064d == null) {
                throw new NullPointerException();
            }
            this.f21388A = true;
            this.f21389B = c5064d;
            return this;
        }

        /* renamed from: n */
        public boolean m1653n() {
            return this.f21406S;
        }

        /* renamed from: o */
        public C5062b m1650o(C5064d c5064d) {
            if (c5064d == null) {
                throw new NullPointerException();
            }
            this.f21390C = true;
            this.f21391D = c5064d;
            return this;
        }

        /* renamed from: o */
        public String m1651o() {
            return this.f21407T;
        }

        /* renamed from: p */
        public C5062b m1648p(C5064d c5064d) {
            if (c5064d == null) {
                throw new NullPointerException();
            }
            this.f21392E = true;
            this.f21393F = c5064d;
            return this;
        }

        /* renamed from: p */
        public String m1649p() {
            return this.f21409V;
        }

        /* renamed from: q */
        public C5062b m1646q(C5064d c5064d) {
            if (c5064d == null) {
                throw new NullPointerException();
            }
            this.f21394G = true;
            this.f21395H = c5064d;
            return this;
        }

        /* renamed from: q */
        public String m1647q() {
            return this.f21411X;
        }

        /* renamed from: r */
        public List<C5061a> m1645r() {
            return this.f21415aa;
        }

        @Override // java.io.Externalizable
        public void readExternal(ObjectInput objectInput) {
            if (objectInput.readBoolean()) {
                C5064d c5064d = new C5064d();
                c5064d.readExternal(objectInput);
                m1690a(c5064d);
            }
            if (objectInput.readBoolean()) {
                C5064d c5064d2 = new C5064d();
                c5064d2.readExternal(objectInput);
                m1686b(c5064d2);
            }
            if (objectInput.readBoolean()) {
                C5064d c5064d3 = new C5064d();
                c5064d3.readExternal(objectInput);
                m1682c(c5064d3);
            }
            if (objectInput.readBoolean()) {
                C5064d c5064d4 = new C5064d();
                c5064d4.readExternal(objectInput);
                m1678d(c5064d4);
            }
            if (objectInput.readBoolean()) {
                C5064d c5064d5 = new C5064d();
                c5064d5.readExternal(objectInput);
                m1674e(c5064d5);
            }
            if (objectInput.readBoolean()) {
                C5064d c5064d6 = new C5064d();
                c5064d6.readExternal(objectInput);
                m1671f(c5064d6);
            }
            if (objectInput.readBoolean()) {
                C5064d c5064d7 = new C5064d();
                c5064d7.readExternal(objectInput);
                m1668g(c5064d7);
            }
            if (objectInput.readBoolean()) {
                C5064d c5064d8 = new C5064d();
                c5064d8.readExternal(objectInput);
                m1665h(c5064d8);
            }
            if (objectInput.readBoolean()) {
                C5064d c5064d9 = new C5064d();
                c5064d9.readExternal(objectInput);
                m1662i(c5064d9);
            }
            if (objectInput.readBoolean()) {
                C5064d c5064d10 = new C5064d();
                c5064d10.readExternal(objectInput);
                m1660j(c5064d10);
            }
            if (objectInput.readBoolean()) {
                C5064d c5064d11 = new C5064d();
                c5064d11.readExternal(objectInput);
                m1658k(c5064d11);
            }
            if (objectInput.readBoolean()) {
                C5064d c5064d12 = new C5064d();
                c5064d12.readExternal(objectInput);
                m1656l(c5064d12);
            }
            if (objectInput.readBoolean()) {
                C5064d c5064d13 = new C5064d();
                c5064d13.readExternal(objectInput);
                m1654m(c5064d13);
            }
            if (objectInput.readBoolean()) {
                C5064d c5064d14 = new C5064d();
                c5064d14.readExternal(objectInput);
                m1652n(c5064d14);
            }
            if (objectInput.readBoolean()) {
                C5064d c5064d15 = new C5064d();
                c5064d15.readExternal(objectInput);
                m1650o(c5064d15);
            }
            if (objectInput.readBoolean()) {
                C5064d c5064d16 = new C5064d();
                c5064d16.readExternal(objectInput);
                m1648p(c5064d16);
            }
            if (objectInput.readBoolean()) {
                C5064d c5064d17 = new C5064d();
                c5064d17.readExternal(objectInput);
                m1646q(c5064d17);
            }
            m1689a(objectInput.readUTF());
            m1691a(objectInput.readInt());
            m1685b(objectInput.readUTF());
            if (objectInput.readBoolean()) {
                m1681c(objectInput.readUTF());
            }
            if (objectInput.readBoolean()) {
                m1677d(objectInput.readUTF());
            }
            if (objectInput.readBoolean()) {
                m1673e(objectInput.readUTF());
            }
            if (objectInput.readBoolean()) {
                m1670f(objectInput.readUTF());
            }
            if (objectInput.readBoolean()) {
                m1667g(objectInput.readUTF());
            }
            m1688a(objectInput.readBoolean());
            int readInt = objectInput.readInt();
            for (int i = 0; i < readInt; i++) {
                C5061a c5061a = new C5061a();
                c5061a.readExternal(objectInput);
                this.f21415aa.add(c5061a);
            }
            int readInt2 = objectInput.readInt();
            for (int i2 = 0; i2 < readInt2; i2++) {
                C5061a c5061a2 = new C5061a();
                c5061a2.readExternal(objectInput);
                this.f21416ab.add(c5061a2);
            }
            m1684b(objectInput.readBoolean());
            if (objectInput.readBoolean()) {
                m1664h(objectInput.readUTF());
            }
            m1680c(objectInput.readBoolean());
            m1676d(objectInput.readBoolean());
        }

        /* renamed from: s */
        public int m1644s() {
            return this.f21415aa.size();
        }

        /* renamed from: t */
        public List<C5061a> m1643t() {
            return this.f21416ab;
        }

        /* renamed from: u */
        public int m1642u() {
            return this.f21416ab.size();
        }

        @Override // java.io.Externalizable
        public void writeExternal(ObjectOutput objectOutput) {
            objectOutput.writeBoolean(this.f21414a);
            if (this.f21414a) {
                this.f21425b.writeExternal(objectOutput);
            }
            objectOutput.writeBoolean(this.f21426c);
            if (this.f21426c) {
                this.f21427d.writeExternal(objectOutput);
            }
            objectOutput.writeBoolean(this.f21428e);
            if (this.f21428e) {
                this.f21429f.writeExternal(objectOutput);
            }
            objectOutput.writeBoolean(this.f21430g);
            if (this.f21430g) {
                this.f21431h.writeExternal(objectOutput);
            }
            objectOutput.writeBoolean(this.f21432i);
            if (this.f21432i) {
                this.f21433j.writeExternal(objectOutput);
            }
            objectOutput.writeBoolean(this.f21434k);
            if (this.f21434k) {
                this.f21435l.writeExternal(objectOutput);
            }
            objectOutput.writeBoolean(this.f21436m);
            if (this.f21436m) {
                this.f21437n.writeExternal(objectOutput);
            }
            objectOutput.writeBoolean(this.f21438o);
            if (this.f21438o) {
                this.f21439p.writeExternal(objectOutput);
            }
            objectOutput.writeBoolean(this.f21440q);
            if (this.f21440q) {
                this.f21441r.writeExternal(objectOutput);
            }
            objectOutput.writeBoolean(this.f21442s);
            if (this.f21442s) {
                this.f21443t.writeExternal(objectOutput);
            }
            objectOutput.writeBoolean(this.f21444u);
            if (this.f21444u) {
                this.f21445v.writeExternal(objectOutput);
            }
            objectOutput.writeBoolean(this.f21446w);
            if (this.f21446w) {
                this.f21447x.writeExternal(objectOutput);
            }
            objectOutput.writeBoolean(this.f21448y);
            if (this.f21448y) {
                this.f21449z.writeExternal(objectOutput);
            }
            objectOutput.writeBoolean(this.f21388A);
            if (this.f21388A) {
                this.f21389B.writeExternal(objectOutput);
            }
            objectOutput.writeBoolean(this.f21390C);
            if (this.f21390C) {
                this.f21391D.writeExternal(objectOutput);
            }
            objectOutput.writeBoolean(this.f21392E);
            if (this.f21392E) {
                this.f21393F.writeExternal(objectOutput);
            }
            objectOutput.writeBoolean(this.f21394G);
            if (this.f21394G) {
                this.f21395H.writeExternal(objectOutput);
            }
            objectOutput.writeUTF(this.f21397J);
            objectOutput.writeInt(this.f21399L);
            objectOutput.writeUTF(this.f21401N);
            objectOutput.writeBoolean(this.f21402O);
            if (this.f21402O) {
                objectOutput.writeUTF(this.f21403P);
            }
            objectOutput.writeBoolean(this.f21404Q);
            if (this.f21404Q) {
                objectOutput.writeUTF(this.f21405R);
            }
            objectOutput.writeBoolean(this.f21406S);
            if (this.f21406S) {
                objectOutput.writeUTF(this.f21407T);
            }
            objectOutput.writeBoolean(this.f21408U);
            if (this.f21408U) {
                objectOutput.writeUTF(this.f21409V);
            }
            objectOutput.writeBoolean(this.f21410W);
            if (this.f21410W) {
                objectOutput.writeUTF(this.f21411X);
            }
            objectOutput.writeBoolean(this.f21413Z);
            int m1644s = m1644s();
            objectOutput.writeInt(m1644s);
            for (int i = 0; i < m1644s; i++) {
                this.f21415aa.get(i).writeExternal(objectOutput);
            }
            int m1642u = m1642u();
            objectOutput.writeInt(m1642u);
            for (int i2 = 0; i2 < m1642u; i2++) {
                this.f21416ab.get(i2).writeExternal(objectOutput);
            }
            objectOutput.writeBoolean(this.f21418ad);
            objectOutput.writeBoolean(this.f21419ae);
            if (this.f21419ae) {
                objectOutput.writeUTF(this.f21420af);
            }
            objectOutput.writeBoolean(this.f21422ah);
            objectOutput.writeBoolean(this.f21424aj);
        }
    }

    /* renamed from: com.google.i18n.phonenumbers.h$c */
    /* loaded from: classes-dex2jar.jar:com/google/i18n/phonenumbers/h$c.class */
    public static class C5063c implements Externalizable {

        /* renamed from: a */
        private List<C5062b> f21450a = new ArrayList();

        /* renamed from: a */
        public List<C5062b> m1641a() {
            return this.f21450a;
        }

        /* renamed from: b */
        public int m1640b() {
            return this.f21450a.size();
        }

        @Override // java.io.Externalizable
        public void readExternal(ObjectInput objectInput) {
            int readInt = objectInput.readInt();
            for (int i = 0; i < readInt; i++) {
                C5062b c5062b = new C5062b();
                c5062b.readExternal(objectInput);
                this.f21450a.add(c5062b);
            }
        }

        @Override // java.io.Externalizable
        public void writeExternal(ObjectOutput objectOutput) {
            int m1640b = m1640b();
            objectOutput.writeInt(m1640b);
            for (int i = 0; i < m1640b; i++) {
                this.f21450a.get(i).writeExternal(objectOutput);
            }
        }
    }

    /* renamed from: com.google.i18n.phonenumbers.h$d */
    /* loaded from: classes-dex2jar.jar:com/google/i18n/phonenumbers/h$d.class */
    public static class C5064d implements Externalizable {

        /* renamed from: a */
        private boolean f21451a;

        /* renamed from: e */
        private boolean f21455e;

        /* renamed from: b */
        private String f21452b = "";

        /* renamed from: c */
        private List<Integer> f21453c = new ArrayList();

        /* renamed from: d */
        private List<Integer> f21454d = new ArrayList();

        /* renamed from: f */
        private String f21456f = "";

        /* renamed from: a */
        public int m1638a(int i) {
            return this.f21453c.get(i).intValue();
        }

        /* renamed from: a */
        public C5064d m1637a(String str) {
            this.f21451a = true;
            this.f21452b = str;
            return this;
        }

        /* renamed from: a */
        public String m1639a() {
            return this.f21452b;
        }

        /* renamed from: b */
        public C5064d m1635b(String str) {
            this.f21455e = true;
            this.f21456f = str;
            return this;
        }

        /* renamed from: b */
        public List<Integer> m1636b() {
            return this.f21453c;
        }

        /* renamed from: c */
        public int m1634c() {
            return this.f21453c.size();
        }

        /* renamed from: d */
        public List<Integer> m1633d() {
            return this.f21454d;
        }

        /* renamed from: e */
        public int m1632e() {
            return this.f21454d.size();
        }

        @Override // java.io.Externalizable
        public void readExternal(ObjectInput objectInput) {
            if (objectInput.readBoolean()) {
                m1637a(objectInput.readUTF());
            }
            int readInt = objectInput.readInt();
            for (int i = 0; i < readInt; i++) {
                this.f21453c.add(Integer.valueOf(objectInput.readInt()));
            }
            int readInt2 = objectInput.readInt();
            for (int i2 = 0; i2 < readInt2; i2++) {
                this.f21454d.add(Integer.valueOf(objectInput.readInt()));
            }
            if (objectInput.readBoolean()) {
                m1635b(objectInput.readUTF());
            }
        }

        @Override // java.io.Externalizable
        public void writeExternal(ObjectOutput objectOutput) {
            objectOutput.writeBoolean(this.f21451a);
            if (this.f21451a) {
                objectOutput.writeUTF(this.f21452b);
            }
            int m1634c = m1634c();
            objectOutput.writeInt(m1634c);
            for (int i = 0; i < m1634c; i++) {
                objectOutput.writeInt(this.f21453c.get(i).intValue());
            }
            int m1632e = m1632e();
            objectOutput.writeInt(m1632e);
            for (int i2 = 0; i2 < m1632e; i2++) {
                objectOutput.writeInt(this.f21454d.get(i2).intValue());
            }
            objectOutput.writeBoolean(this.f21455e);
            if (this.f21455e) {
                objectOutput.writeUTF(this.f21456f);
            }
        }
    }
}
