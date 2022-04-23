package com.google.i18n.phonenumbers;

import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
/* loaded from: classes4-dex2jar.jar:com/google/i18n/phonenumbers/j.class */
public final class j {

    /* loaded from: classes4-dex2jar.jar:com/google/i18n/phonenumbers/j$a.class */
    public static class a implements Externalizable {
        boolean e;
        private boolean g;
        private boolean h;
        private boolean j;
        private boolean k;

        /* renamed from: a  reason: collision with root package name */
        String f32877a = "";

        /* renamed from: b  reason: collision with root package name */
        String f32878b = "";
        private List<String> i = new ArrayList();

        /* renamed from: c  reason: collision with root package name */
        String f32879c = "";

        /* renamed from: d  reason: collision with root package name */
        boolean f32880d = false;
        String f = "";

        /* renamed from: com.google.i18n.phonenumbers.j$a$a  reason: collision with other inner class name */
        /* loaded from: classes4-dex2jar.jar:com/google/i18n/phonenumbers/j$a$a.class */
        public static final class C0526a extends a {
            public final C0526a a(a aVar) {
                if (aVar.b()) {
                    a(aVar.f32877a);
                }
                if (aVar.c()) {
                    b(aVar.f32878b);
                }
                for (int i = 0; i < aVar.d(); i++) {
                    c(aVar.a(i));
                }
                if (aVar.f()) {
                    d(aVar.f32879c);
                }
                if (aVar.e) {
                    e(aVar.f);
                }
                if (aVar.h()) {
                    a(aVar.f32880d);
                }
                return this;
            }
        }

        public static C0526a a() {
            return new C0526a();
        }

        public final a a(String str) {
            this.g = true;
            this.f32877a = str;
            return this;
        }

        public final a a(boolean z) {
            this.k = true;
            this.f32880d = z;
            return this;
        }

        public final String a(int i) {
            return this.i.get(i);
        }

        public final a b(String str) {
            this.h = true;
            this.f32878b = str;
            return this;
        }

        public final boolean b() {
            return this.g;
        }

        public final a c(String str) {
            Objects.requireNonNull(str);
            this.i.add(str);
            return this;
        }

        public final boolean c() {
            return this.h;
        }

        @Deprecated
        public final int d() {
            return e();
        }

        public final a d(String str) {
            this.j = true;
            this.f32879c = str;
            return this;
        }

        public final int e() {
            return this.i.size();
        }

        public final a e(String str) {
            this.e = true;
            this.f = str;
            return this;
        }

        public final boolean f() {
            return this.j;
        }

        public final a g() {
            this.j = false;
            this.f32879c = "";
            return this;
        }

        public final boolean h() {
            return this.k;
        }

        @Override // java.io.Externalizable
        public void readExternal(ObjectInput objectInput) throws IOException {
            a(objectInput.readUTF());
            b(objectInput.readUTF());
            int readInt = objectInput.readInt();
            for (int i = 0; i < readInt; i++) {
                this.i.add(objectInput.readUTF());
            }
            if (objectInput.readBoolean()) {
                d(objectInput.readUTF());
            }
            if (objectInput.readBoolean()) {
                e(objectInput.readUTF());
            }
            a(objectInput.readBoolean());
        }

        @Override // java.io.Externalizable
        public void writeExternal(ObjectOutput objectOutput) throws IOException {
            objectOutput.writeUTF(this.f32877a);
            objectOutput.writeUTF(this.f32878b);
            int e = e();
            objectOutput.writeInt(e);
            for (int i = 0; i < e; i++) {
                objectOutput.writeUTF(this.i.get(i));
            }
            objectOutput.writeBoolean(this.j);
            if (this.j) {
                objectOutput.writeUTF(this.f32879c);
            }
            objectOutput.writeBoolean(this.e);
            if (this.e) {
                objectOutput.writeUTF(this.f);
            }
            objectOutput.writeBoolean(this.f32880d);
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/i18n/phonenumbers/j$b.class */
    public static class b implements Externalizable {
        boolean A;
        private boolean D;
        private boolean E;
        private boolean F;
        private boolean G;
        private boolean H;
        private boolean I;
        private boolean J;
        private boolean K;
        private boolean L;
        private boolean M;
        private boolean N;
        private boolean P;
        private boolean Q;
        private boolean S;
        private boolean U;
        private boolean W;
        private boolean Y;
        private boolean Z;
        private boolean ab;
        private boolean ac;
        private boolean ad;
        private boolean ae;
        private boolean af;
        private boolean ah;
        private boolean aj;
        boolean o;
        boolean q;
        boolean s;
        boolean u;

        /* renamed from: a  reason: collision with root package name */
        d f32881a = null;

        /* renamed from: b  reason: collision with root package name */
        d f32882b = null;

        /* renamed from: c  reason: collision with root package name */
        d f32883c = null;

        /* renamed from: d  reason: collision with root package name */
        d f32884d = null;
        d e = null;
        d f = null;
        d g = null;
        d h = null;
        d i = null;
        d j = null;
        private d O = null;
        d k = null;
        private d R = null;
        private d T = null;
        private d V = null;
        private d X = null;
        d l = null;
        private String aa = "";
        int m = 0;
        String n = "";
        String p = "";
        String r = "";
        String t = "";
        String v = "";
        String w = "";
        boolean x = false;
        List<a> y = new ArrayList();
        List<a> z = new ArrayList();
        private boolean ag = false;
        String B = "";
        private boolean ai = false;
        boolean C = false;

        /* loaded from: classes4-dex2jar.jar:com/google/i18n/phonenumbers/j$b$a.class */
        public static final class a extends b {
            @Override // com.google.i18n.phonenumbers.j.b
            public final /* bridge */ /* synthetic */ b a(String str) {
                super.a(str);
                return this;
            }

            @Override // com.google.i18n.phonenumbers.j.b
            public final /* bridge */ /* synthetic */ b b(String str) {
                super.b(str);
                return this;
            }

            public final a c(String str) {
                super.a(str);
                return this;
            }

            public final a d(String str) {
                super.b(str);
                return this;
            }
        }

        public static a a() {
            return new a();
        }

        public b a(String str) {
            this.Z = true;
            this.aa = str;
            return this;
        }

        public final int b() {
            return this.z.size();
        }

        public b b(String str) {
            this.ac = true;
            this.n = str;
            return this;
        }

        @Override // java.io.Externalizable
        public void readExternal(ObjectInput objectInput) throws IOException {
            if (objectInput.readBoolean()) {
                d dVar = new d();
                dVar.readExternal(objectInput);
                this.D = true;
                this.f32881a = dVar;
            }
            if (objectInput.readBoolean()) {
                d dVar2 = new d();
                dVar2.readExternal(objectInput);
                this.E = true;
                this.f32882b = dVar2;
            }
            if (objectInput.readBoolean()) {
                d dVar3 = new d();
                dVar3.readExternal(objectInput);
                this.F = true;
                this.f32883c = dVar3;
            }
            if (objectInput.readBoolean()) {
                d dVar4 = new d();
                dVar4.readExternal(objectInput);
                this.G = true;
                this.f32884d = dVar4;
            }
            if (objectInput.readBoolean()) {
                d dVar5 = new d();
                dVar5.readExternal(objectInput);
                this.H = true;
                this.e = dVar5;
            }
            if (objectInput.readBoolean()) {
                d dVar6 = new d();
                dVar6.readExternal(objectInput);
                this.I = true;
                this.f = dVar6;
            }
            if (objectInput.readBoolean()) {
                d dVar7 = new d();
                dVar7.readExternal(objectInput);
                this.J = true;
                this.g = dVar7;
            }
            if (objectInput.readBoolean()) {
                d dVar8 = new d();
                dVar8.readExternal(objectInput);
                this.K = true;
                this.h = dVar8;
            }
            if (objectInput.readBoolean()) {
                d dVar9 = new d();
                dVar9.readExternal(objectInput);
                this.L = true;
                this.i = dVar9;
            }
            if (objectInput.readBoolean()) {
                d dVar10 = new d();
                dVar10.readExternal(objectInput);
                this.M = true;
                this.j = dVar10;
            }
            if (objectInput.readBoolean()) {
                d dVar11 = new d();
                dVar11.readExternal(objectInput);
                this.N = true;
                this.O = dVar11;
            }
            if (objectInput.readBoolean()) {
                d dVar12 = new d();
                dVar12.readExternal(objectInput);
                this.P = true;
                this.k = dVar12;
            }
            if (objectInput.readBoolean()) {
                d dVar13 = new d();
                dVar13.readExternal(objectInput);
                this.Q = true;
                this.R = dVar13;
            }
            if (objectInput.readBoolean()) {
                d dVar14 = new d();
                dVar14.readExternal(objectInput);
                this.S = true;
                this.T = dVar14;
            }
            if (objectInput.readBoolean()) {
                d dVar15 = new d();
                dVar15.readExternal(objectInput);
                this.U = true;
                this.V = dVar15;
            }
            if (objectInput.readBoolean()) {
                d dVar16 = new d();
                dVar16.readExternal(objectInput);
                this.W = true;
                this.X = dVar16;
            }
            if (objectInput.readBoolean()) {
                d dVar17 = new d();
                dVar17.readExternal(objectInput);
                this.Y = true;
                this.l = dVar17;
            }
            a(objectInput.readUTF());
            int readInt = objectInput.readInt();
            this.ab = true;
            this.m = readInt;
            b(objectInput.readUTF());
            if (objectInput.readBoolean()) {
                String readUTF = objectInput.readUTF();
                this.o = true;
                this.p = readUTF;
            }
            if (objectInput.readBoolean()) {
                String readUTF2 = objectInput.readUTF();
                this.q = true;
                this.r = readUTF2;
            }
            if (objectInput.readBoolean()) {
                String readUTF3 = objectInput.readUTF();
                this.s = true;
                this.t = readUTF3;
            }
            if (objectInput.readBoolean()) {
                String readUTF4 = objectInput.readUTF();
                this.u = true;
                this.v = readUTF4;
            }
            if (objectInput.readBoolean()) {
                String readUTF5 = objectInput.readUTF();
                this.ad = true;
                this.w = readUTF5;
            }
            boolean readBoolean = objectInput.readBoolean();
            this.ae = true;
            this.x = readBoolean;
            int readInt2 = objectInput.readInt();
            for (int i = 0; i < readInt2; i++) {
                a aVar = new a();
                aVar.readExternal(objectInput);
                this.y.add(aVar);
            }
            int readInt3 = objectInput.readInt();
            for (int i2 = 0; i2 < readInt3; i2++) {
                a aVar2 = new a();
                aVar2.readExternal(objectInput);
                this.z.add(aVar2);
            }
            boolean readBoolean2 = objectInput.readBoolean();
            this.af = true;
            this.ag = readBoolean2;
            if (objectInput.readBoolean()) {
                String readUTF6 = objectInput.readUTF();
                this.A = true;
                this.B = readUTF6;
            }
            boolean readBoolean3 = objectInput.readBoolean();
            this.ah = true;
            this.ai = readBoolean3;
            boolean readBoolean4 = objectInput.readBoolean();
            this.aj = true;
            this.C = readBoolean4;
        }

        @Override // java.io.Externalizable
        public void writeExternal(ObjectOutput objectOutput) throws IOException {
            objectOutput.writeBoolean(this.D);
            if (this.D) {
                this.f32881a.writeExternal(objectOutput);
            }
            objectOutput.writeBoolean(this.E);
            if (this.E) {
                this.f32882b.writeExternal(objectOutput);
            }
            objectOutput.writeBoolean(this.F);
            if (this.F) {
                this.f32883c.writeExternal(objectOutput);
            }
            objectOutput.writeBoolean(this.G);
            if (this.G) {
                this.f32884d.writeExternal(objectOutput);
            }
            objectOutput.writeBoolean(this.H);
            if (this.H) {
                this.e.writeExternal(objectOutput);
            }
            objectOutput.writeBoolean(this.I);
            if (this.I) {
                this.f.writeExternal(objectOutput);
            }
            objectOutput.writeBoolean(this.J);
            if (this.J) {
                this.g.writeExternal(objectOutput);
            }
            objectOutput.writeBoolean(this.K);
            if (this.K) {
                this.h.writeExternal(objectOutput);
            }
            objectOutput.writeBoolean(this.L);
            if (this.L) {
                this.i.writeExternal(objectOutput);
            }
            objectOutput.writeBoolean(this.M);
            if (this.M) {
                this.j.writeExternal(objectOutput);
            }
            objectOutput.writeBoolean(this.N);
            if (this.N) {
                this.O.writeExternal(objectOutput);
            }
            objectOutput.writeBoolean(this.P);
            if (this.P) {
                this.k.writeExternal(objectOutput);
            }
            objectOutput.writeBoolean(this.Q);
            if (this.Q) {
                this.R.writeExternal(objectOutput);
            }
            objectOutput.writeBoolean(this.S);
            if (this.S) {
                this.T.writeExternal(objectOutput);
            }
            objectOutput.writeBoolean(this.U);
            if (this.U) {
                this.V.writeExternal(objectOutput);
            }
            objectOutput.writeBoolean(this.W);
            if (this.W) {
                this.X.writeExternal(objectOutput);
            }
            objectOutput.writeBoolean(this.Y);
            if (this.Y) {
                this.l.writeExternal(objectOutput);
            }
            objectOutput.writeUTF(this.aa);
            objectOutput.writeInt(this.m);
            objectOutput.writeUTF(this.n);
            objectOutput.writeBoolean(this.o);
            if (this.o) {
                objectOutput.writeUTF(this.p);
            }
            objectOutput.writeBoolean(this.q);
            if (this.q) {
                objectOutput.writeUTF(this.r);
            }
            objectOutput.writeBoolean(this.s);
            if (this.s) {
                objectOutput.writeUTF(this.t);
            }
            objectOutput.writeBoolean(this.u);
            if (this.u) {
                objectOutput.writeUTF(this.v);
            }
            objectOutput.writeBoolean(this.ad);
            if (this.ad) {
                objectOutput.writeUTF(this.w);
            }
            objectOutput.writeBoolean(this.x);
            int size = this.y.size();
            objectOutput.writeInt(size);
            for (int i = 0; i < size; i++) {
                this.y.get(i).writeExternal(objectOutput);
            }
            int b2 = b();
            objectOutput.writeInt(b2);
            for (int i2 = 0; i2 < b2; i2++) {
                this.z.get(i2).writeExternal(objectOutput);
            }
            objectOutput.writeBoolean(this.ag);
            objectOutput.writeBoolean(this.A);
            if (this.A) {
                objectOutput.writeUTF(this.B);
            }
            objectOutput.writeBoolean(this.ai);
            objectOutput.writeBoolean(this.C);
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/i18n/phonenumbers/j$c.class */
    public static final class c implements Externalizable {

        /* renamed from: a  reason: collision with root package name */
        List<b> f32885a = new ArrayList();

        @Override // java.io.Externalizable
        public final void readExternal(ObjectInput objectInput) throws IOException {
            int readInt = objectInput.readInt();
            for (int i = 0; i < readInt; i++) {
                b bVar = new b();
                bVar.readExternal(objectInput);
                this.f32885a.add(bVar);
            }
        }

        @Override // java.io.Externalizable
        public final void writeExternal(ObjectOutput objectOutput) throws IOException {
            int size = this.f32885a.size();
            objectOutput.writeInt(size);
            for (int i = 0; i < size; i++) {
                this.f32885a.get(i).writeExternal(objectOutput);
            }
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/i18n/phonenumbers/j$d.class */
    public static final class d implements Externalizable {

        /* renamed from: a  reason: collision with root package name */
        boolean f32886a;
        boolean e;

        /* renamed from: b  reason: collision with root package name */
        public String f32887b = "";

        /* renamed from: c  reason: collision with root package name */
        List<Integer> f32888c = new ArrayList();

        /* renamed from: d  reason: collision with root package name */
        List<Integer> f32889d = new ArrayList();
        String f = "";

        public final int a() {
            return this.f32888c.size();
        }

        @Override // java.io.Externalizable
        public final void readExternal(ObjectInput objectInput) throws IOException {
            if (objectInput.readBoolean()) {
                String readUTF = objectInput.readUTF();
                this.f32886a = true;
                this.f32887b = readUTF;
            }
            int readInt = objectInput.readInt();
            for (int i = 0; i < readInt; i++) {
                this.f32888c.add(Integer.valueOf(objectInput.readInt()));
            }
            int readInt2 = objectInput.readInt();
            for (int i2 = 0; i2 < readInt2; i2++) {
                this.f32889d.add(Integer.valueOf(objectInput.readInt()));
            }
            if (objectInput.readBoolean()) {
                String readUTF2 = objectInput.readUTF();
                this.e = true;
                this.f = readUTF2;
            }
        }

        @Override // java.io.Externalizable
        public final void writeExternal(ObjectOutput objectOutput) throws IOException {
            objectOutput.writeBoolean(this.f32886a);
            if (this.f32886a) {
                objectOutput.writeUTF(this.f32887b);
            }
            int a2 = a();
            objectOutput.writeInt(a2);
            for (int i = 0; i < a2; i++) {
                objectOutput.writeInt(this.f32888c.get(i).intValue());
            }
            int size = this.f32889d.size();
            objectOutput.writeInt(size);
            for (int i2 = 0; i2 < size; i2++) {
                objectOutput.writeInt(this.f32889d.get(i2).intValue());
            }
            objectOutput.writeBoolean(this.e);
            if (this.e) {
                objectOutput.writeUTF(this.f);
            }
        }
    }

    private j() {
    }
}
