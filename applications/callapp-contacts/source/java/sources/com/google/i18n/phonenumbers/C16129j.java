package com.google.i18n.phonenumbers;

import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
/* renamed from: com.google.i18n.phonenumbers.j */
/* loaded from: classes4-dex2jar.jar:com/google/i18n/phonenumbers/j.class */
public final class C16129j {

    /* renamed from: com.google.i18n.phonenumbers.j$a */
    /* loaded from: classes4-dex2jar.jar:com/google/i18n/phonenumbers/j$a.class */
    public static class C16130a implements Externalizable {

        /* renamed from: e */
        boolean f56953e;

        /* renamed from: g */
        private boolean f56955g;

        /* renamed from: h */
        private boolean f56956h;

        /* renamed from: j */
        private boolean f56958j;

        /* renamed from: k */
        private boolean f56959k;

        /* renamed from: a */
        String f56949a = "";

        /* renamed from: b */
        String f56950b = "";

        /* renamed from: i */
        private List<String> f56957i = new ArrayList();

        /* renamed from: c */
        String f56951c = "";

        /* renamed from: d */
        boolean f56952d = false;

        /* renamed from: f */
        String f56954f = "";

        /* renamed from: com.google.i18n.phonenumbers.j$a$a */
        /* loaded from: classes4-dex2jar.jar:com/google/i18n/phonenumbers/j$a$a.class */
        public static final class C16131a extends C16130a {
            /* renamed from: a */
            public final C16131a m7785a(C16130a c16130a) {
                if (c16130a.m7796b()) {
                    m7798a(c16130a.f56949a);
                }
                if (c16130a.m7794c()) {
                    m7795b(c16130a.f56950b);
                }
                for (int i = 0; i < c16130a.m7792d(); i++) {
                    m7793c(c16130a.m7799a(i));
                }
                if (c16130a.m7788f()) {
                    m7791d(c16130a.f56951c);
                }
                if (c16130a.f56953e) {
                    m7789e(c16130a.f56954f);
                }
                if (c16130a.m7786h()) {
                    m7797a(c16130a.f56952d);
                }
                return this;
            }
        }

        /* renamed from: a */
        public static C16131a m7800a() {
            return new C16131a();
        }

        /* renamed from: a */
        public final C16130a m7798a(String str) {
            this.f56955g = true;
            this.f56949a = str;
            return this;
        }

        /* renamed from: a */
        public final C16130a m7797a(boolean z) {
            this.f56959k = true;
            this.f56952d = z;
            return this;
        }

        /* renamed from: a */
        public final String m7799a(int i) {
            return this.f56957i.get(i);
        }

        /* renamed from: b */
        public final C16130a m7795b(String str) {
            this.f56956h = true;
            this.f56950b = str;
            return this;
        }

        /* renamed from: b */
        public final boolean m7796b() {
            return this.f56955g;
        }

        /* renamed from: c */
        public final C16130a m7793c(String str) {
            Objects.requireNonNull(str);
            this.f56957i.add(str);
            return this;
        }

        /* renamed from: c */
        public final boolean m7794c() {
            return this.f56956h;
        }

        @Deprecated
        /* renamed from: d */
        public final int m7792d() {
            return m7790e();
        }

        /* renamed from: d */
        public final C16130a m7791d(String str) {
            this.f56958j = true;
            this.f56951c = str;
            return this;
        }

        /* renamed from: e */
        public final int m7790e() {
            return this.f56957i.size();
        }

        /* renamed from: e */
        public final C16130a m7789e(String str) {
            this.f56953e = true;
            this.f56954f = str;
            return this;
        }

        /* renamed from: f */
        public final boolean m7788f() {
            return this.f56958j;
        }

        /* renamed from: g */
        public final C16130a m7787g() {
            this.f56958j = false;
            this.f56951c = "";
            return this;
        }

        /* renamed from: h */
        public final boolean m7786h() {
            return this.f56959k;
        }

        @Override // java.io.Externalizable
        public void readExternal(ObjectInput objectInput) throws IOException {
            m7798a(objectInput.readUTF());
            m7795b(objectInput.readUTF());
            int readInt = objectInput.readInt();
            for (int i = 0; i < readInt; i++) {
                this.f56957i.add(objectInput.readUTF());
            }
            if (objectInput.readBoolean()) {
                m7791d(objectInput.readUTF());
            }
            if (objectInput.readBoolean()) {
                m7789e(objectInput.readUTF());
            }
            m7797a(objectInput.readBoolean());
        }

        @Override // java.io.Externalizable
        public void writeExternal(ObjectOutput objectOutput) throws IOException {
            objectOutput.writeUTF(this.f56949a);
            objectOutput.writeUTF(this.f56950b);
            int m7790e = m7790e();
            objectOutput.writeInt(m7790e);
            for (int i = 0; i < m7790e; i++) {
                objectOutput.writeUTF(this.f56957i.get(i));
            }
            objectOutput.writeBoolean(this.f56958j);
            if (this.f56958j) {
                objectOutput.writeUTF(this.f56951c);
            }
            objectOutput.writeBoolean(this.f56953e);
            if (this.f56953e) {
                objectOutput.writeUTF(this.f56954f);
            }
            objectOutput.writeBoolean(this.f56952d);
        }
    }

    /* renamed from: com.google.i18n.phonenumbers.j$b */
    /* loaded from: classes4-dex2jar.jar:com/google/i18n/phonenumbers/j$b.class */
    public static class C16132b implements Externalizable {

        /* renamed from: A */
        boolean f56960A;

        /* renamed from: D */
        private boolean f56963D;

        /* renamed from: E */
        private boolean f56964E;

        /* renamed from: F */
        private boolean f56965F;

        /* renamed from: G */
        private boolean f56966G;

        /* renamed from: H */
        private boolean f56967H;

        /* renamed from: I */
        private boolean f56968I;

        /* renamed from: J */
        private boolean f56969J;

        /* renamed from: K */
        private boolean f56970K;

        /* renamed from: L */
        private boolean f56971L;

        /* renamed from: M */
        private boolean f56972M;

        /* renamed from: N */
        private boolean f56973N;

        /* renamed from: P */
        private boolean f56975P;

        /* renamed from: Q */
        private boolean f56976Q;

        /* renamed from: S */
        private boolean f56978S;

        /* renamed from: U */
        private boolean f56980U;

        /* renamed from: W */
        private boolean f56982W;

        /* renamed from: Y */
        private boolean f56984Y;

        /* renamed from: Z */
        private boolean f56985Z;

        /* renamed from: ab */
        private boolean f56988ab;

        /* renamed from: ac */
        private boolean f56989ac;

        /* renamed from: ad */
        private boolean f56990ad;

        /* renamed from: ae */
        private boolean f56991ae;

        /* renamed from: af */
        private boolean f56992af;

        /* renamed from: ah */
        private boolean f56994ah;

        /* renamed from: aj */
        private boolean f56996aj;

        /* renamed from: o */
        boolean f57010o;

        /* renamed from: q */
        boolean f57012q;

        /* renamed from: s */
        boolean f57014s;

        /* renamed from: u */
        boolean f57016u;

        /* renamed from: a */
        C16135d f56986a = null;

        /* renamed from: b */
        C16135d f56997b = null;

        /* renamed from: c */
        C16135d f56998c = null;

        /* renamed from: d */
        C16135d f56999d = null;

        /* renamed from: e */
        C16135d f57000e = null;

        /* renamed from: f */
        C16135d f57001f = null;

        /* renamed from: g */
        C16135d f57002g = null;

        /* renamed from: h */
        C16135d f57003h = null;

        /* renamed from: i */
        C16135d f57004i = null;

        /* renamed from: j */
        C16135d f57005j = null;

        /* renamed from: O */
        private C16135d f56974O = null;

        /* renamed from: k */
        C16135d f57006k = null;

        /* renamed from: R */
        private C16135d f56977R = null;

        /* renamed from: T */
        private C16135d f56979T = null;

        /* renamed from: V */
        private C16135d f56981V = null;

        /* renamed from: X */
        private C16135d f56983X = null;

        /* renamed from: l */
        C16135d f57007l = null;

        /* renamed from: aa */
        private String f56987aa = "";

        /* renamed from: m */
        int f57008m = 0;

        /* renamed from: n */
        String f57009n = "";

        /* renamed from: p */
        String f57011p = "";

        /* renamed from: r */
        String f57013r = "";

        /* renamed from: t */
        String f57015t = "";

        /* renamed from: v */
        String f57017v = "";

        /* renamed from: w */
        String f57018w = "";

        /* renamed from: x */
        boolean f57019x = false;

        /* renamed from: y */
        List<C16130a> f57020y = new ArrayList();

        /* renamed from: z */
        List<C16130a> f57021z = new ArrayList();

        /* renamed from: ag */
        private boolean f56993ag = false;

        /* renamed from: B */
        String f56961B = "";

        /* renamed from: ai */
        private boolean f56995ai = false;

        /* renamed from: C */
        boolean f56962C = false;

        /* renamed from: com.google.i18n.phonenumbers.j$b$a */
        /* loaded from: classes4-dex2jar.jar:com/google/i18n/phonenumbers/j$b$a.class */
        public static final class C16133a extends C16132b {
            @Override // com.google.i18n.phonenumbers.C16129j.C16132b
            /* renamed from: a */
            public final /* bridge */ /* synthetic */ C16132b mo7782a(String str) {
                super.mo7782a(str);
                return this;
            }

            @Override // com.google.i18n.phonenumbers.C16129j.C16132b
            /* renamed from: b */
            public final /* bridge */ /* synthetic */ C16132b mo7781b(String str) {
                super.mo7781b(str);
                return this;
            }

            /* renamed from: c */
            public final C16133a m7780c(String str) {
                super.mo7782a(str);
                return this;
            }

            /* renamed from: d */
            public final C16133a m7779d(String str) {
                super.mo7781b(str);
                return this;
            }
        }

        /* renamed from: a */
        public static C16133a m7784a() {
            return new C16133a();
        }

        /* renamed from: a */
        public C16132b mo7782a(String str) {
            this.f56985Z = true;
            this.f56987aa = str;
            return this;
        }

        /* renamed from: b */
        public final int m7783b() {
            return this.f57021z.size();
        }

        /* renamed from: b */
        public C16132b mo7781b(String str) {
            this.f56989ac = true;
            this.f57009n = str;
            return this;
        }

        @Override // java.io.Externalizable
        public void readExternal(ObjectInput objectInput) throws IOException {
            if (objectInput.readBoolean()) {
                C16135d c16135d = new C16135d();
                c16135d.readExternal(objectInput);
                this.f56963D = true;
                this.f56986a = c16135d;
            }
            if (objectInput.readBoolean()) {
                C16135d c16135d2 = new C16135d();
                c16135d2.readExternal(objectInput);
                this.f56964E = true;
                this.f56997b = c16135d2;
            }
            if (objectInput.readBoolean()) {
                C16135d c16135d3 = new C16135d();
                c16135d3.readExternal(objectInput);
                this.f56965F = true;
                this.f56998c = c16135d3;
            }
            if (objectInput.readBoolean()) {
                C16135d c16135d4 = new C16135d();
                c16135d4.readExternal(objectInput);
                this.f56966G = true;
                this.f56999d = c16135d4;
            }
            if (objectInput.readBoolean()) {
                C16135d c16135d5 = new C16135d();
                c16135d5.readExternal(objectInput);
                this.f56967H = true;
                this.f57000e = c16135d5;
            }
            if (objectInput.readBoolean()) {
                C16135d c16135d6 = new C16135d();
                c16135d6.readExternal(objectInput);
                this.f56968I = true;
                this.f57001f = c16135d6;
            }
            if (objectInput.readBoolean()) {
                C16135d c16135d7 = new C16135d();
                c16135d7.readExternal(objectInput);
                this.f56969J = true;
                this.f57002g = c16135d7;
            }
            if (objectInput.readBoolean()) {
                C16135d c16135d8 = new C16135d();
                c16135d8.readExternal(objectInput);
                this.f56970K = true;
                this.f57003h = c16135d8;
            }
            if (objectInput.readBoolean()) {
                C16135d c16135d9 = new C16135d();
                c16135d9.readExternal(objectInput);
                this.f56971L = true;
                this.f57004i = c16135d9;
            }
            if (objectInput.readBoolean()) {
                C16135d c16135d10 = new C16135d();
                c16135d10.readExternal(objectInput);
                this.f56972M = true;
                this.f57005j = c16135d10;
            }
            if (objectInput.readBoolean()) {
                C16135d c16135d11 = new C16135d();
                c16135d11.readExternal(objectInput);
                this.f56973N = true;
                this.f56974O = c16135d11;
            }
            if (objectInput.readBoolean()) {
                C16135d c16135d12 = new C16135d();
                c16135d12.readExternal(objectInput);
                this.f56975P = true;
                this.f57006k = c16135d12;
            }
            if (objectInput.readBoolean()) {
                C16135d c16135d13 = new C16135d();
                c16135d13.readExternal(objectInput);
                this.f56976Q = true;
                this.f56977R = c16135d13;
            }
            if (objectInput.readBoolean()) {
                C16135d c16135d14 = new C16135d();
                c16135d14.readExternal(objectInput);
                this.f56978S = true;
                this.f56979T = c16135d14;
            }
            if (objectInput.readBoolean()) {
                C16135d c16135d15 = new C16135d();
                c16135d15.readExternal(objectInput);
                this.f56980U = true;
                this.f56981V = c16135d15;
            }
            if (objectInput.readBoolean()) {
                C16135d c16135d16 = new C16135d();
                c16135d16.readExternal(objectInput);
                this.f56982W = true;
                this.f56983X = c16135d16;
            }
            if (objectInput.readBoolean()) {
                C16135d c16135d17 = new C16135d();
                c16135d17.readExternal(objectInput);
                this.f56984Y = true;
                this.f57007l = c16135d17;
            }
            mo7782a(objectInput.readUTF());
            int readInt = objectInput.readInt();
            this.f56988ab = true;
            this.f57008m = readInt;
            mo7781b(objectInput.readUTF());
            if (objectInput.readBoolean()) {
                String readUTF = objectInput.readUTF();
                this.f57010o = true;
                this.f57011p = readUTF;
            }
            if (objectInput.readBoolean()) {
                String readUTF2 = objectInput.readUTF();
                this.f57012q = true;
                this.f57013r = readUTF2;
            }
            if (objectInput.readBoolean()) {
                String readUTF3 = objectInput.readUTF();
                this.f57014s = true;
                this.f57015t = readUTF3;
            }
            if (objectInput.readBoolean()) {
                String readUTF4 = objectInput.readUTF();
                this.f57016u = true;
                this.f57017v = readUTF4;
            }
            if (objectInput.readBoolean()) {
                String readUTF5 = objectInput.readUTF();
                this.f56990ad = true;
                this.f57018w = readUTF5;
            }
            boolean readBoolean = objectInput.readBoolean();
            this.f56991ae = true;
            this.f57019x = readBoolean;
            int readInt2 = objectInput.readInt();
            for (int i = 0; i < readInt2; i++) {
                C16130a c16130a = new C16130a();
                c16130a.readExternal(objectInput);
                this.f57020y.add(c16130a);
            }
            int readInt3 = objectInput.readInt();
            for (int i2 = 0; i2 < readInt3; i2++) {
                C16130a c16130a2 = new C16130a();
                c16130a2.readExternal(objectInput);
                this.f57021z.add(c16130a2);
            }
            boolean readBoolean2 = objectInput.readBoolean();
            this.f56992af = true;
            this.f56993ag = readBoolean2;
            if (objectInput.readBoolean()) {
                String readUTF6 = objectInput.readUTF();
                this.f56960A = true;
                this.f56961B = readUTF6;
            }
            boolean readBoolean3 = objectInput.readBoolean();
            this.f56994ah = true;
            this.f56995ai = readBoolean3;
            boolean readBoolean4 = objectInput.readBoolean();
            this.f56996aj = true;
            this.f56962C = readBoolean4;
        }

        @Override // java.io.Externalizable
        public void writeExternal(ObjectOutput objectOutput) throws IOException {
            objectOutput.writeBoolean(this.f56963D);
            if (this.f56963D) {
                this.f56986a.writeExternal(objectOutput);
            }
            objectOutput.writeBoolean(this.f56964E);
            if (this.f56964E) {
                this.f56997b.writeExternal(objectOutput);
            }
            objectOutput.writeBoolean(this.f56965F);
            if (this.f56965F) {
                this.f56998c.writeExternal(objectOutput);
            }
            objectOutput.writeBoolean(this.f56966G);
            if (this.f56966G) {
                this.f56999d.writeExternal(objectOutput);
            }
            objectOutput.writeBoolean(this.f56967H);
            if (this.f56967H) {
                this.f57000e.writeExternal(objectOutput);
            }
            objectOutput.writeBoolean(this.f56968I);
            if (this.f56968I) {
                this.f57001f.writeExternal(objectOutput);
            }
            objectOutput.writeBoolean(this.f56969J);
            if (this.f56969J) {
                this.f57002g.writeExternal(objectOutput);
            }
            objectOutput.writeBoolean(this.f56970K);
            if (this.f56970K) {
                this.f57003h.writeExternal(objectOutput);
            }
            objectOutput.writeBoolean(this.f56971L);
            if (this.f56971L) {
                this.f57004i.writeExternal(objectOutput);
            }
            objectOutput.writeBoolean(this.f56972M);
            if (this.f56972M) {
                this.f57005j.writeExternal(objectOutput);
            }
            objectOutput.writeBoolean(this.f56973N);
            if (this.f56973N) {
                this.f56974O.writeExternal(objectOutput);
            }
            objectOutput.writeBoolean(this.f56975P);
            if (this.f56975P) {
                this.f57006k.writeExternal(objectOutput);
            }
            objectOutput.writeBoolean(this.f56976Q);
            if (this.f56976Q) {
                this.f56977R.writeExternal(objectOutput);
            }
            objectOutput.writeBoolean(this.f56978S);
            if (this.f56978S) {
                this.f56979T.writeExternal(objectOutput);
            }
            objectOutput.writeBoolean(this.f56980U);
            if (this.f56980U) {
                this.f56981V.writeExternal(objectOutput);
            }
            objectOutput.writeBoolean(this.f56982W);
            if (this.f56982W) {
                this.f56983X.writeExternal(objectOutput);
            }
            objectOutput.writeBoolean(this.f56984Y);
            if (this.f56984Y) {
                this.f57007l.writeExternal(objectOutput);
            }
            objectOutput.writeUTF(this.f56987aa);
            objectOutput.writeInt(this.f57008m);
            objectOutput.writeUTF(this.f57009n);
            objectOutput.writeBoolean(this.f57010o);
            if (this.f57010o) {
                objectOutput.writeUTF(this.f57011p);
            }
            objectOutput.writeBoolean(this.f57012q);
            if (this.f57012q) {
                objectOutput.writeUTF(this.f57013r);
            }
            objectOutput.writeBoolean(this.f57014s);
            if (this.f57014s) {
                objectOutput.writeUTF(this.f57015t);
            }
            objectOutput.writeBoolean(this.f57016u);
            if (this.f57016u) {
                objectOutput.writeUTF(this.f57017v);
            }
            objectOutput.writeBoolean(this.f56990ad);
            if (this.f56990ad) {
                objectOutput.writeUTF(this.f57018w);
            }
            objectOutput.writeBoolean(this.f57019x);
            int size = this.f57020y.size();
            objectOutput.writeInt(size);
            for (int i = 0; i < size; i++) {
                this.f57020y.get(i).writeExternal(objectOutput);
            }
            int m7783b = m7783b();
            objectOutput.writeInt(m7783b);
            for (int i2 = 0; i2 < m7783b; i2++) {
                this.f57021z.get(i2).writeExternal(objectOutput);
            }
            objectOutput.writeBoolean(this.f56993ag);
            objectOutput.writeBoolean(this.f56960A);
            if (this.f56960A) {
                objectOutput.writeUTF(this.f56961B);
            }
            objectOutput.writeBoolean(this.f56995ai);
            objectOutput.writeBoolean(this.f56962C);
        }
    }

    /* renamed from: com.google.i18n.phonenumbers.j$c */
    /* loaded from: classes4-dex2jar.jar:com/google/i18n/phonenumbers/j$c.class */
    public static final class C16134c implements Externalizable {

        /* renamed from: a */
        List<C16132b> f57022a = new ArrayList();

        @Override // java.io.Externalizable
        public final void readExternal(ObjectInput objectInput) throws IOException {
            int readInt = objectInput.readInt();
            for (int i = 0; i < readInt; i++) {
                C16132b c16132b = new C16132b();
                c16132b.readExternal(objectInput);
                this.f57022a.add(c16132b);
            }
        }

        @Override // java.io.Externalizable
        public final void writeExternal(ObjectOutput objectOutput) throws IOException {
            int size = this.f57022a.size();
            objectOutput.writeInt(size);
            for (int i = 0; i < size; i++) {
                this.f57022a.get(i).writeExternal(objectOutput);
            }
        }
    }

    /* renamed from: com.google.i18n.phonenumbers.j$d */
    /* loaded from: classes4-dex2jar.jar:com/google/i18n/phonenumbers/j$d.class */
    public static final class C16135d implements Externalizable {

        /* renamed from: a */
        boolean f57023a;

        /* renamed from: e */
        boolean f57027e;

        /* renamed from: b */
        public String f57024b = "";

        /* renamed from: c */
        List<Integer> f57025c = new ArrayList();

        /* renamed from: d */
        List<Integer> f57026d = new ArrayList();

        /* renamed from: f */
        String f57028f = "";

        /* renamed from: a */
        public final int m7778a() {
            return this.f57025c.size();
        }

        @Override // java.io.Externalizable
        public final void readExternal(ObjectInput objectInput) throws IOException {
            if (objectInput.readBoolean()) {
                String readUTF = objectInput.readUTF();
                this.f57023a = true;
                this.f57024b = readUTF;
            }
            int readInt = objectInput.readInt();
            for (int i = 0; i < readInt; i++) {
                this.f57025c.add(Integer.valueOf(objectInput.readInt()));
            }
            int readInt2 = objectInput.readInt();
            for (int i2 = 0; i2 < readInt2; i2++) {
                this.f57026d.add(Integer.valueOf(objectInput.readInt()));
            }
            if (objectInput.readBoolean()) {
                String readUTF2 = objectInput.readUTF();
                this.f57027e = true;
                this.f57028f = readUTF2;
            }
        }

        @Override // java.io.Externalizable
        public final void writeExternal(ObjectOutput objectOutput) throws IOException {
            objectOutput.writeBoolean(this.f57023a);
            if (this.f57023a) {
                objectOutput.writeUTF(this.f57024b);
            }
            int m7778a = m7778a();
            objectOutput.writeInt(m7778a);
            for (int i = 0; i < m7778a; i++) {
                objectOutput.writeInt(this.f57025c.get(i).intValue());
            }
            int size = this.f57026d.size();
            objectOutput.writeInt(size);
            for (int i2 = 0; i2 < size; i2++) {
                objectOutput.writeInt(this.f57026d.get(i2).intValue());
            }
            objectOutput.writeBoolean(this.f57027e);
            if (this.f57027e) {
                objectOutput.writeUTF(this.f57028f);
            }
        }
    }

    private C16129j() {
    }
}
