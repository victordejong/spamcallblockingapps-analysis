package com.google.android.gms.internal;

import com.android.contacts.activities.AsusDeleteDuplicateActivity;
import com.asus.updatesdk.BuildConfig;
import com.google.android.gms.internal.k;
import com.google.android.gms.internal.o;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/j.class */
public interface j {

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/j$a.class */
    public static final class a extends p<a> {

        /* renamed from: a  reason: collision with root package name */
        public int f4190a = 1;

        /* renamed from: b  reason: collision with root package name */
        public int f4191b = 0;
        public int c = 0;

        public a() {
            this.r = null;
            this.s = -1;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.p, com.google.android.gms.internal.v
        public final int a() {
            int a2 = super.a();
            int i = a2;
            if (this.f4190a != 1) {
                i = a2 + o.b(1, this.f4190a);
            }
            int i2 = i;
            if (this.f4191b != 0) {
                i2 = i + o.b(2, this.f4191b);
            }
            int i3 = i2;
            if (this.c != 0) {
                i3 = i2 + o.b(3, this.c);
            }
            return i3;
        }

        @Override // com.google.android.gms.internal.v
        public final /* synthetic */ v a(n nVar) {
            while (true) {
                int a2 = nVar.a();
                switch (a2) {
                    case 0:
                        break;
                    case 8:
                        int e = nVar.e();
                        switch (e) {
                            case 1:
                            case 2:
                            case 3:
                                this.f4190a = e;
                                continue;
                        }
                    case 16:
                        this.f4191b = nVar.e();
                        break;
                    case 24:
                        this.c = nVar.e();
                        break;
                    default:
                        if (super.a(nVar, a2)) {
                            break;
                        } else {
                            break;
                        }
                }
            }
            return this;
        }

        @Override // com.google.android.gms.internal.p, com.google.android.gms.internal.v
        public final void a(o oVar) {
            if (this.f4190a != 1) {
                oVar.a(1, this.f4190a);
            }
            if (this.f4191b != 0) {
                oVar.a(2, this.f4191b);
            }
            if (this.c != 0) {
                oVar.a(3, this.c);
            }
            super.a(oVar);
        }

        public final boolean equals(Object obj) {
            boolean z;
            if (obj == this) {
                z = true;
            } else if (!(obj instanceof a)) {
                z = false;
            } else {
                a aVar = (a) obj;
                if (this.f4190a != aVar.f4190a) {
                    z = false;
                } else if (this.f4191b != aVar.f4191b) {
                    z = false;
                } else if (this.c != aVar.c) {
                    z = false;
                } else if (this.r == null || this.r.c()) {
                    z = true;
                    if (aVar.r != null) {
                        z = true;
                        if (!aVar.r.c()) {
                            z = false;
                        }
                    }
                } else {
                    z = this.r.equals(aVar.r);
                }
            }
            return z;
        }

        public final int hashCode() {
            int hashCode = getClass().getName().hashCode();
            int i = this.f4190a;
            int i2 = this.f4191b;
            return ((this.r == null || this.r.c()) ? 0 : this.r.hashCode()) + ((((((((hashCode + 527) * 31) + i) * 31) + i2) * 31) + this.c) * 31);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/j$b.class */
    public static final class b extends p<b> {
        private static volatile b[] f;

        /* renamed from: a  reason: collision with root package name */
        public int[] f4192a = y.f4228a;

        /* renamed from: b  reason: collision with root package name */
        public int f4193b = 0;
        public int c = 0;
        public boolean d = false;
        public boolean e = false;

        public b() {
            this.r = null;
            this.s = -1;
        }

        public static b[] b() {
            if (f == null) {
                synchronized (t.c) {
                    if (f == null) {
                        f = new b[0];
                    }
                }
            }
            return f;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.p, com.google.android.gms.internal.v
        public final int a() {
            int i;
            int a2 = super.a();
            int i2 = a2;
            if (this.e) {
                i2 = a2 + o.b(1) + 1;
            }
            int b2 = i2 + o.b(2, this.f4193b);
            if (this.f4192a == null || this.f4192a.length <= 0) {
                i = b2;
            } else {
                int i3 = 0;
                int i4 = 0;
                while (i3 < this.f4192a.length) {
                    i3++;
                    i4 = o.a(this.f4192a[i3]) + i4;
                }
                i = b2 + i4 + (this.f4192a.length * 1);
            }
            int i5 = i;
            if (this.c != 0) {
                i5 = i + o.b(4, this.c);
            }
            int i6 = i5;
            if (this.d) {
                i6 = i5 + o.b(6) + 1;
            }
            return i6;
        }

        @Override // com.google.android.gms.internal.v
        public final /* synthetic */ v a(n nVar) {
            while (true) {
                int a2 = nVar.a();
                switch (a2) {
                    case 0:
                        break;
                    case 8:
                        this.e = nVar.b();
                        break;
                    case 16:
                        this.f4193b = nVar.e();
                        break;
                    case 24:
                        int a3 = y.a(nVar, 24);
                        int length = this.f4192a == null ? 0 : this.f4192a.length;
                        int[] iArr = new int[a3 + length];
                        int i = length;
                        if (length != 0) {
                            System.arraycopy(this.f4192a, 0, iArr, 0, length);
                            i = length;
                        }
                        while (i < iArr.length - 1) {
                            iArr[i] = nVar.e();
                            nVar.a();
                            i++;
                        }
                        iArr[i] = nVar.e();
                        this.f4192a = iArr;
                        break;
                    case 26:
                        int c = nVar.c(nVar.e());
                        int i2 = nVar.i();
                        int i3 = 0;
                        while (nVar.h() > 0) {
                            nVar.e();
                            i3++;
                        }
                        nVar.e(i2);
                        int length2 = this.f4192a == null ? 0 : this.f4192a.length;
                        int[] iArr2 = new int[i3 + length2];
                        int i4 = length2;
                        if (length2 != 0) {
                            System.arraycopy(this.f4192a, 0, iArr2, 0, length2);
                            i4 = length2;
                        }
                        while (i4 < iArr2.length) {
                            iArr2[i4] = nVar.e();
                            i4++;
                        }
                        this.f4192a = iArr2;
                        nVar.d(c);
                        break;
                    case 32:
                        this.c = nVar.e();
                        break;
                    case 48:
                        this.d = nVar.b();
                        break;
                    default:
                        if (super.a(nVar, a2)) {
                            break;
                        } else {
                            break;
                        }
                }
            }
            return this;
        }

        @Override // com.google.android.gms.internal.p, com.google.android.gms.internal.v
        public final void a(o oVar) {
            if (this.e) {
                oVar.a(1, this.e);
            }
            oVar.a(2, this.f4193b);
            if (this.f4192a != null && this.f4192a.length > 0) {
                for (int i = 0; i < this.f4192a.length; i++) {
                    oVar.a(3, this.f4192a[i]);
                }
            }
            if (this.c != 0) {
                oVar.a(4, this.c);
            }
            if (this.d) {
                oVar.a(6, this.d);
            }
            super.a(oVar);
        }

        public final boolean equals(Object obj) {
            boolean z;
            if (obj == this) {
                z = true;
            } else if (!(obj instanceof b)) {
                z = false;
            } else {
                b bVar = (b) obj;
                if (!t.a(this.f4192a, bVar.f4192a)) {
                    z = false;
                } else if (this.f4193b != bVar.f4193b) {
                    z = false;
                } else if (this.c != bVar.c) {
                    z = false;
                } else if (this.d != bVar.d) {
                    z = false;
                } else if (this.e != bVar.e) {
                    z = false;
                } else if (this.r == null || this.r.c()) {
                    z = true;
                    if (bVar.r != null) {
                        z = true;
                        if (!bVar.r.c()) {
                            z = false;
                        }
                    }
                } else {
                    z = this.r.equals(bVar.r);
                }
            }
            return z;
        }

        public final int hashCode() {
            int i = 1231;
            int hashCode = getClass().getName().hashCode();
            int a2 = t.a(this.f4192a);
            int i2 = this.f4193b;
            int i3 = this.c;
            int i4 = this.d ? 1231 : 1237;
            if (!this.e) {
                i = 1237;
            }
            return ((this.r == null || this.r.c()) ? 0 : this.r.hashCode()) + ((((i4 + ((((((((hashCode + 527) * 31) + a2) * 31) + i2) * 31) + i3) * 31)) * 31) + i) * 31);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/j$c.class */
    public static final class c extends p<c> {
        private static volatile c[] f;

        /* renamed from: a  reason: collision with root package name */
        public String f4194a = BuildConfig.FLAVOR;

        /* renamed from: b  reason: collision with root package name */
        public long f4195b = 0;
        public long c = 2147483647L;
        public boolean d = false;
        public long e = 0;

        public c() {
            this.r = null;
            this.s = -1;
        }

        public static c[] b() {
            if (f == null) {
                synchronized (t.c) {
                    if (f == null) {
                        f = new c[0];
                    }
                }
            }
            return f;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.p, com.google.android.gms.internal.v
        public final int a() {
            int a2 = super.a();
            int i = a2;
            if (!this.f4194a.equals(BuildConfig.FLAVOR)) {
                i = a2 + o.b(1, this.f4194a);
            }
            int i2 = i;
            if (this.f4195b != 0) {
                i2 = i + o.b(2, this.f4195b);
            }
            int i3 = i2;
            if (this.c != 2147483647L) {
                i3 = i2 + o.b(3, this.c);
            }
            int i4 = i3;
            if (this.d) {
                i4 = i3 + o.b(4) + 1;
            }
            int i5 = i4;
            if (this.e != 0) {
                i5 = i4 + o.b(5, this.e);
            }
            return i5;
        }

        @Override // com.google.android.gms.internal.v
        public final /* synthetic */ v a(n nVar) {
            while (true) {
                int a2 = nVar.a();
                switch (a2) {
                    case 0:
                        break;
                    case 10:
                        this.f4194a = nVar.c();
                        break;
                    case 16:
                        this.f4195b = nVar.f();
                        break;
                    case 24:
                        this.c = nVar.f();
                        break;
                    case 32:
                        this.d = nVar.b();
                        break;
                    case 40:
                        this.e = nVar.f();
                        break;
                    default:
                        if (super.a(nVar, a2)) {
                            break;
                        } else {
                            break;
                        }
                }
            }
            return this;
        }

        @Override // com.google.android.gms.internal.p, com.google.android.gms.internal.v
        public final void a(o oVar) {
            if (!this.f4194a.equals(BuildConfig.FLAVOR)) {
                oVar.a(1, this.f4194a);
            }
            if (this.f4195b != 0) {
                oVar.a(2, this.f4195b);
            }
            if (this.c != 2147483647L) {
                oVar.a(3, this.c);
            }
            if (this.d) {
                oVar.a(4, this.d);
            }
            if (this.e != 0) {
                oVar.a(5, this.e);
            }
            super.a(oVar);
        }

        /* JADX WARN: Removed duplicated region for block: B:20:0x004e  */
        /* JADX WARN: Removed duplicated region for block: B:21:0x0053  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final boolean equals(java.lang.Object r6) {
            /*
                r5 = this;
                r0 = 1
                r7 = r0
                r0 = r6
                r1 = r5
                if (r0 != r1) goto L_0x000b
                r0 = r7
                r8 = r0
            L_0x0009:
                r0 = r8
                return r0
            L_0x000b:
                r0 = r6
                boolean r0 = r0 instanceof com.google.android.gms.internal.j.c
                if (r0 != 0) goto L_0x0017
                r0 = 0
                r8 = r0
                goto L_0x0009
            L_0x0017:
                r0 = r6
                com.google.android.gms.internal.j$c r0 = (com.google.android.gms.internal.j.c) r0
                r6 = r0
                r0 = r5
                java.lang.String r0 = r0.f4194a
                if (r0 != 0) goto L_0x002f
                r0 = r6
                java.lang.String r0 = r0.f4194a
                if (r0 == 0) goto L_0x0042
                r0 = 0
                r8 = r0
                goto L_0x0009
            L_0x002f:
                r0 = r5
                java.lang.String r0 = r0.f4194a
                r1 = r6
                java.lang.String r1 = r1.f4194a
                boolean r0 = r0.equals(r1)
                if (r0 != 0) goto L_0x0042
                r0 = 0
                r8 = r0
                goto L_0x0009
            L_0x0042:
                r0 = r5
                long r0 = r0.f4195b
                r1 = r6
                long r1 = r1.f4195b
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 == 0) goto L_0x0053
                r0 = 0
                r8 = r0
                goto L_0x0009
            L_0x0053:
                r0 = r5
                long r0 = r0.c
                r1 = r6
                long r1 = r1.c
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 == 0) goto L_0x0064
                r0 = 0
                r8 = r0
                goto L_0x0009
            L_0x0064:
                r0 = r5
                boolean r0 = r0.d
                r1 = r6
                boolean r1 = r1.d
                if (r0 == r1) goto L_0x0074
                r0 = 0
                r8 = r0
                goto L_0x0009
            L_0x0074:
                r0 = r5
                long r0 = r0.e
                r1 = r6
                long r1 = r1.e
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 == 0) goto L_0x0085
                r0 = 0
                r8 = r0
                goto L_0x0009
            L_0x0085:
                r0 = r5
                com.google.android.gms.internal.r r0 = r0.r
                if (r0 == 0) goto L_0x0096
                r0 = r5
                com.google.android.gms.internal.r r0 = r0.r
                boolean r0 = r0.c()
                if (r0 == 0) goto L_0x00b0
            L_0x0096:
                r0 = r7
                r8 = r0
                r0 = r6
                com.google.android.gms.internal.r r0 = r0.r
                if (r0 == 0) goto L_0x0009
                r0 = r7
                r8 = r0
                r0 = r6
                com.google.android.gms.internal.r r0 = r0.r
                boolean r0 = r0.c()
                if (r0 != 0) goto L_0x0009
                r0 = 0
                r8 = r0
                goto L_0x0009
            L_0x00b0:
                r0 = r5
                com.google.android.gms.internal.r r0 = r0.r
                r1 = r6
                com.google.android.gms.internal.r r1 = r1.r
                boolean r0 = r0.equals(r1)
                r8 = r0
                goto L_0x0009
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.j.c.equals(java.lang.Object):boolean");
        }

        public final int hashCode() {
            int hashCode = getClass().getName().hashCode();
            int hashCode2 = this.f4194a == null ? 0 : this.f4194a.hashCode();
            int i = (int) (this.f4195b ^ (this.f4195b >>> 32));
            int i2 = (int) (this.c ^ (this.c >>> 32));
            int i3 = this.d ? 1231 : 1237;
            int i4 = (int) (this.e ^ (this.e >>> 32));
            int i5 = 0;
            if (this.r != null) {
                i5 = this.r.c() ? 0 : this.r.hashCode();
            }
            return ((((i3 + ((((((hashCode2 + ((hashCode + 527) * 31)) * 31) + i) * 31) + i2) * 31)) * 31) + i4) * 31) + i5;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/j$d.class */
    public static final class d extends p<d> {

        /* renamed from: a  reason: collision with root package name */
        public k.a[] f4196a = k.a.b();

        /* renamed from: b  reason: collision with root package name */
        public k.a[] f4197b = k.a.b();
        public c[] c = c.b();

        public d() {
            this.r = null;
            this.s = -1;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.p, com.google.android.gms.internal.v
        public final int a() {
            int i = 0;
            int a2 = super.a();
            int i2 = a2;
            if (this.f4196a != null) {
                i2 = a2;
                if (this.f4196a.length > 0) {
                    int i3 = 0;
                    while (true) {
                        i2 = a2;
                        if (i3 >= this.f4196a.length) {
                            break;
                        }
                        k.a aVar = this.f4196a[i3];
                        a2 = a2;
                        if (aVar != null) {
                            a2 += o.b(1, aVar);
                        }
                        i3++;
                    }
                }
            }
            int i4 = i2;
            if (this.f4197b != null) {
                i4 = i2;
                if (this.f4197b.length > 0) {
                    int i5 = 0;
                    while (true) {
                        i4 = i2;
                        if (i5 >= this.f4197b.length) {
                            break;
                        }
                        k.a aVar2 = this.f4197b[i5];
                        i2 = i2;
                        if (aVar2 != null) {
                            i2 += o.b(2, aVar2);
                        }
                        i5++;
                    }
                }
            }
            int i6 = i4;
            if (this.c != null) {
                i6 = i4;
                if (this.c.length > 0) {
                    while (true) {
                        i6 = i4;
                        if (i >= this.c.length) {
                            break;
                        }
                        c cVar = this.c[i];
                        i4 = i4;
                        if (cVar != null) {
                            i4 += o.b(3, cVar);
                        }
                        i++;
                    }
                }
            }
            return i6;
        }

        @Override // com.google.android.gms.internal.v
        public final /* synthetic */ v a(n nVar) {
            while (true) {
                int a2 = nVar.a();
                switch (a2) {
                    case 0:
                        break;
                    case 10:
                        int a3 = y.a(nVar, 10);
                        int length = this.f4196a == null ? 0 : this.f4196a.length;
                        k.a[] aVarArr = new k.a[a3 + length];
                        int i = length;
                        if (length != 0) {
                            System.arraycopy(this.f4196a, 0, aVarArr, 0, length);
                            i = length;
                        }
                        while (i < aVarArr.length - 1) {
                            aVarArr[i] = new k.a();
                            nVar.a(aVarArr[i]);
                            nVar.a();
                            i++;
                        }
                        aVarArr[i] = new k.a();
                        nVar.a(aVarArr[i]);
                        this.f4196a = aVarArr;
                        break;
                    case 18:
                        int a4 = y.a(nVar, 18);
                        int length2 = this.f4197b == null ? 0 : this.f4197b.length;
                        k.a[] aVarArr2 = new k.a[a4 + length2];
                        int i2 = length2;
                        if (length2 != 0) {
                            System.arraycopy(this.f4197b, 0, aVarArr2, 0, length2);
                            i2 = length2;
                        }
                        while (i2 < aVarArr2.length - 1) {
                            aVarArr2[i2] = new k.a();
                            nVar.a(aVarArr2[i2]);
                            nVar.a();
                            i2++;
                        }
                        aVarArr2[i2] = new k.a();
                        nVar.a(aVarArr2[i2]);
                        this.f4197b = aVarArr2;
                        break;
                    case 26:
                        int a5 = y.a(nVar, 26);
                        int length3 = this.c == null ? 0 : this.c.length;
                        c[] cVarArr = new c[a5 + length3];
                        int i3 = length3;
                        if (length3 != 0) {
                            System.arraycopy(this.c, 0, cVarArr, 0, length3);
                            i3 = length3;
                        }
                        while (i3 < cVarArr.length - 1) {
                            cVarArr[i3] = new c();
                            nVar.a(cVarArr[i3]);
                            nVar.a();
                            i3++;
                        }
                        cVarArr[i3] = new c();
                        nVar.a(cVarArr[i3]);
                        this.c = cVarArr;
                        break;
                    default:
                        if (super.a(nVar, a2)) {
                            break;
                        } else {
                            break;
                        }
                }
            }
            return this;
        }

        @Override // com.google.android.gms.internal.p, com.google.android.gms.internal.v
        public final void a(o oVar) {
            if (this.f4196a != null && this.f4196a.length > 0) {
                for (int i = 0; i < this.f4196a.length; i++) {
                    k.a aVar = this.f4196a[i];
                    if (aVar != null) {
                        oVar.a(1, aVar);
                    }
                }
            }
            if (this.f4197b != null && this.f4197b.length > 0) {
                for (int i2 = 0; i2 < this.f4197b.length; i2++) {
                    k.a aVar2 = this.f4197b[i2];
                    if (aVar2 != null) {
                        oVar.a(2, aVar2);
                    }
                }
            }
            if (this.c != null && this.c.length > 0) {
                for (int i3 = 0; i3 < this.c.length; i3++) {
                    c cVar = this.c[i3];
                    if (cVar != null) {
                        oVar.a(3, cVar);
                    }
                }
            }
            super.a(oVar);
        }

        public final boolean equals(Object obj) {
            boolean z;
            if (obj == this) {
                z = true;
            } else if (!(obj instanceof d)) {
                z = false;
            } else {
                d dVar = (d) obj;
                if (!t.a(this.f4196a, dVar.f4196a)) {
                    z = false;
                } else if (!t.a(this.f4197b, dVar.f4197b)) {
                    z = false;
                } else if (!t.a(this.c, dVar.c)) {
                    z = false;
                } else if (this.r == null || this.r.c()) {
                    z = true;
                    if (dVar.r != null) {
                        z = true;
                        if (!dVar.r.c()) {
                            z = false;
                        }
                    }
                } else {
                    z = this.r.equals(dVar.r);
                }
            }
            return z;
        }

        public final int hashCode() {
            int hashCode = getClass().getName().hashCode();
            int a2 = t.a(this.f4196a);
            int a3 = t.a(this.f4197b);
            return ((this.r == null || this.r.c()) ? 0 : this.r.hashCode()) + ((((((((hashCode + 527) * 31) + a2) * 31) + a3) * 31) + t.a(this.c)) * 31);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/j$e.class */
    public static final class e extends p<e> {
        private static volatile e[] c;

        /* renamed from: a  reason: collision with root package name */
        public int f4198a = 0;

        /* renamed from: b  reason: collision with root package name */
        public int f4199b = 0;

        public e() {
            this.r = null;
            this.s = -1;
        }

        public static e[] b() {
            if (c == null) {
                synchronized (t.c) {
                    if (c == null) {
                        c = new e[0];
                    }
                }
            }
            return c;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.p, com.google.android.gms.internal.v
        public final int a() {
            return super.a() + o.b(1, this.f4198a) + o.b(2, this.f4199b);
        }

        @Override // com.google.android.gms.internal.v
        public final /* synthetic */ v a(n nVar) {
            while (true) {
                int a2 = nVar.a();
                switch (a2) {
                    case 0:
                        break;
                    case 8:
                        this.f4198a = nVar.e();
                        break;
                    case 16:
                        this.f4199b = nVar.e();
                        break;
                    default:
                        if (super.a(nVar, a2)) {
                            break;
                        } else {
                            break;
                        }
                }
            }
            return this;
        }

        @Override // com.google.android.gms.internal.p, com.google.android.gms.internal.v
        public final void a(o oVar) {
            oVar.a(1, this.f4198a);
            oVar.a(2, this.f4199b);
            super.a(oVar);
        }

        public final boolean equals(Object obj) {
            boolean z;
            if (obj == this) {
                z = true;
            } else if (!(obj instanceof e)) {
                z = false;
            } else {
                e eVar = (e) obj;
                if (this.f4198a != eVar.f4198a) {
                    z = false;
                } else if (this.f4199b != eVar.f4199b) {
                    z = false;
                } else if (this.r == null || this.r.c()) {
                    z = true;
                    if (eVar.r != null) {
                        z = true;
                        if (!eVar.r.c()) {
                            z = false;
                        }
                    }
                } else {
                    z = this.r.equals(eVar.r);
                }
            }
            return z;
        }

        public final int hashCode() {
            int hashCode = getClass().getName().hashCode();
            int i = this.f4198a;
            return ((this.r == null || this.r.c()) ? 0 : this.r.hashCode()) + ((((((hashCode + 527) * 31) + i) * 31) + this.f4199b) * 31);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/j$f.class */
    public static final class f extends p<f> {

        /* renamed from: a  reason: collision with root package name */
        public String[] f4200a = y.f;

        /* renamed from: b  reason: collision with root package name */
        public String[] f4201b = y.f;
        public k.a[] c = k.a.b();
        public e[] d = e.b();
        public b[] e = b.b();
        public b[] f = b.b();
        public b[] g = b.b();
        public g[] h = g.b();
        public String i = BuildConfig.FLAVOR;
        public String j = BuildConfig.FLAVOR;
        public String k = "0";
        public String l = BuildConfig.FLAVOR;
        public a m = null;
        public float n = 0.0f;
        public boolean o = false;
        public String[] p = y.f;
        public int q = 0;

        public f() {
            this.r = null;
            this.s = -1;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.p, com.google.android.gms.internal.v
        public final int a() {
            int i;
            int a2 = super.a();
            if (this.f4201b == null || this.f4201b.length <= 0) {
                i = a2;
            } else {
                int i2 = 0;
                int i3 = 0;
                for (int i4 = 0; i4 < this.f4201b.length; i4++) {
                    String str = this.f4201b[i4];
                    i2 = i2;
                    i3 = i3;
                    if (str != null) {
                        i3++;
                        i2 += o.a(str);
                    }
                }
                i = a2 + i2 + (i3 * 1);
            }
            int i5 = i;
            if (this.c != null) {
                i5 = i;
                if (this.c.length > 0) {
                    i5 = i;
                    for (int i6 = 0; i6 < this.c.length; i6++) {
                        k.a aVar = this.c[i6];
                        i5 = i5;
                        if (aVar != null) {
                            i5 += o.b(2, aVar);
                        }
                    }
                }
            }
            int i7 = i5;
            if (this.d != null) {
                i7 = i5;
                if (this.d.length > 0) {
                    for (int i8 = 0; i8 < this.d.length; i8++) {
                        e eVar = this.d[i8];
                        i5 = i5;
                        if (eVar != null) {
                            i5 += o.b(3, eVar);
                        }
                    }
                    i7 = i5;
                }
            }
            int i9 = i7;
            if (this.e != null) {
                i9 = i7;
                if (this.e.length > 0) {
                    for (int i10 = 0; i10 < this.e.length; i10++) {
                        b bVar = this.e[i10];
                        i7 = i7;
                        if (bVar != null) {
                            i7 += o.b(4, bVar);
                        }
                    }
                    i9 = i7;
                }
            }
            i9 = i9;
            if (this.f != null) {
                i9 = i9;
                if (this.f.length > 0) {
                    for (int i11 = 0; i11 < this.f.length; i11++) {
                        b bVar2 = this.f[i11];
                        i9 = i9;
                        if (bVar2 != null) {
                            i9 += o.b(5, bVar2);
                        }
                    }
                }
            }
            int i12 = i9;
            if (this.g != null) {
                i12 = i9;
                if (this.g.length > 0) {
                    for (int i13 = 0; i13 < this.g.length; i13++) {
                        b bVar3 = this.g[i13];
                        i9 = i9;
                        if (bVar3 != null) {
                            i9 += o.b(6, bVar3);
                        }
                    }
                    i12 = i9;
                }
            }
            i12 = i12;
            if (this.h != null) {
                i12 = i12;
                if (this.h.length > 0) {
                    for (int i14 = 0; i14 < this.h.length; i14++) {
                        g gVar = this.h[i14];
                        i12 = i12;
                        if (gVar != null) {
                            i12 += o.b(7, gVar);
                        }
                    }
                }
            }
            int i15 = i12;
            if (!this.i.equals(BuildConfig.FLAVOR)) {
                i15 = i12 + o.b(9, this.i);
            }
            int i16 = i15;
            if (!this.j.equals(BuildConfig.FLAVOR)) {
                i16 = i15 + o.b(10, this.j);
            }
            int i17 = i16;
            if (!this.k.equals("0")) {
                i17 = i16 + o.b(12, this.k);
            }
            int i18 = i17;
            if (!this.l.equals(BuildConfig.FLAVOR)) {
                i18 = i17 + o.b(13, this.l);
            }
            int i19 = i18;
            if (this.m != null) {
                i19 = i18 + o.b(14, this.m);
            }
            int i20 = i19;
            if (Float.floatToIntBits(this.n) != Float.floatToIntBits(0.0f)) {
                i20 = i19 + o.b(15) + 4;
            }
            int i21 = i20;
            if (this.p != null) {
                i21 = i20;
                if (this.p.length > 0) {
                    int i22 = 0;
                    int i23 = 0;
                    for (int i24 = 0; i24 < this.p.length; i24++) {
                        String str2 = this.p[i24];
                        i22 = i22;
                        i23 = i23;
                        if (str2 != null) {
                            i23++;
                            i22 += o.a(str2);
                        }
                    }
                    i21 = i20 + i22 + (i23 * 2);
                }
            }
            int i25 = i21;
            if (this.q != 0) {
                i25 = i21 + o.b(17, this.q);
            }
            int i26 = i25;
            if (this.o) {
                i26 = i25 + o.b(18) + 1;
            }
            int i27 = i26;
            if (this.f4200a != null) {
                i27 = i26;
                if (this.f4200a.length > 0) {
                    int i28 = 0;
                    int i29 = 0;
                    for (int i30 = 0; i30 < this.f4200a.length; i30++) {
                        String str3 = this.f4200a[i30];
                        i28 = i28;
                        i29 = i29;
                        if (str3 != null) {
                            i29++;
                            i28 += o.a(str3);
                        }
                    }
                    i27 = i26 + i28 + (i29 * 2);
                }
            }
            return i27;
        }

        @Override // com.google.android.gms.internal.v
        public final /* synthetic */ v a(n nVar) {
            while (true) {
                int a2 = nVar.a();
                switch (a2) {
                    case 0:
                        break;
                    case 10:
                        int a3 = y.a(nVar, 10);
                        int length = this.f4201b == null ? 0 : this.f4201b.length;
                        String[] strArr = new String[a3 + length];
                        int i = length;
                        if (length != 0) {
                            System.arraycopy(this.f4201b, 0, strArr, 0, length);
                            i = length;
                        }
                        while (i < strArr.length - 1) {
                            strArr[i] = nVar.c();
                            nVar.a();
                            i++;
                        }
                        strArr[i] = nVar.c();
                        this.f4201b = strArr;
                        break;
                    case 18:
                        int a4 = y.a(nVar, 18);
                        int length2 = this.c == null ? 0 : this.c.length;
                        k.a[] aVarArr = new k.a[a4 + length2];
                        int i2 = length2;
                        if (length2 != 0) {
                            System.arraycopy(this.c, 0, aVarArr, 0, length2);
                            i2 = length2;
                        }
                        while (i2 < aVarArr.length - 1) {
                            aVarArr[i2] = new k.a();
                            nVar.a(aVarArr[i2]);
                            nVar.a();
                            i2++;
                        }
                        aVarArr[i2] = new k.a();
                        nVar.a(aVarArr[i2]);
                        this.c = aVarArr;
                        break;
                    case 26:
                        int a5 = y.a(nVar, 26);
                        int length3 = this.d == null ? 0 : this.d.length;
                        e[] eVarArr = new e[a5 + length3];
                        int i3 = length3;
                        if (length3 != 0) {
                            System.arraycopy(this.d, 0, eVarArr, 0, length3);
                            i3 = length3;
                        }
                        while (i3 < eVarArr.length - 1) {
                            eVarArr[i3] = new e();
                            nVar.a(eVarArr[i3]);
                            nVar.a();
                            i3++;
                        }
                        eVarArr[i3] = new e();
                        nVar.a(eVarArr[i3]);
                        this.d = eVarArr;
                        break;
                    case 34:
                        int a6 = y.a(nVar, 34);
                        int length4 = this.e == null ? 0 : this.e.length;
                        b[] bVarArr = new b[a6 + length4];
                        int i4 = length4;
                        if (length4 != 0) {
                            System.arraycopy(this.e, 0, bVarArr, 0, length4);
                            i4 = length4;
                        }
                        while (i4 < bVarArr.length - 1) {
                            bVarArr[i4] = new b();
                            nVar.a(bVarArr[i4]);
                            nVar.a();
                            i4++;
                        }
                        bVarArr[i4] = new b();
                        nVar.a(bVarArr[i4]);
                        this.e = bVarArr;
                        break;
                    case 42:
                        int a7 = y.a(nVar, 42);
                        int length5 = this.f == null ? 0 : this.f.length;
                        b[] bVarArr2 = new b[a7 + length5];
                        int i5 = length5;
                        if (length5 != 0) {
                            System.arraycopy(this.f, 0, bVarArr2, 0, length5);
                            i5 = length5;
                        }
                        while (i5 < bVarArr2.length - 1) {
                            bVarArr2[i5] = new b();
                            nVar.a(bVarArr2[i5]);
                            nVar.a();
                            i5++;
                        }
                        bVarArr2[i5] = new b();
                        nVar.a(bVarArr2[i5]);
                        this.f = bVarArr2;
                        break;
                    case AsusDeleteDuplicateActivity.DeleteDuplicateTask.DELETE_BATCH_LIMIT /* 50 */:
                        int a8 = y.a(nVar, 50);
                        int length6 = this.g == null ? 0 : this.g.length;
                        b[] bVarArr3 = new b[a8 + length6];
                        int i6 = length6;
                        if (length6 != 0) {
                            System.arraycopy(this.g, 0, bVarArr3, 0, length6);
                            i6 = length6;
                        }
                        while (i6 < bVarArr3.length - 1) {
                            bVarArr3[i6] = new b();
                            nVar.a(bVarArr3[i6]);
                            nVar.a();
                            i6++;
                        }
                        bVarArr3[i6] = new b();
                        nVar.a(bVarArr3[i6]);
                        this.g = bVarArr3;
                        break;
                    case 58:
                        int a9 = y.a(nVar, 58);
                        int length7 = this.h == null ? 0 : this.h.length;
                        g[] gVarArr = new g[a9 + length7];
                        int i7 = length7;
                        if (length7 != 0) {
                            System.arraycopy(this.h, 0, gVarArr, 0, length7);
                            i7 = length7;
                        }
                        while (i7 < gVarArr.length - 1) {
                            gVarArr[i7] = new g();
                            nVar.a(gVarArr[i7]);
                            nVar.a();
                            i7++;
                        }
                        gVarArr[i7] = new g();
                        nVar.a(gVarArr[i7]);
                        this.h = gVarArr;
                        break;
                    case 74:
                        this.i = nVar.c();
                        break;
                    case 82:
                        this.j = nVar.c();
                        break;
                    case 98:
                        this.k = nVar.c();
                        break;
                    case 106:
                        this.l = nVar.c();
                        break;
                    case 114:
                        if (this.m == null) {
                            this.m = new a();
                        }
                        nVar.a(this.m);
                        break;
                    case 125:
                        this.n = Float.intBitsToFloat(nVar.g());
                        break;
                    case 130:
                        int a10 = y.a(nVar, 130);
                        int length8 = this.p == null ? 0 : this.p.length;
                        String[] strArr2 = new String[a10 + length8];
                        int i8 = length8;
                        if (length8 != 0) {
                            System.arraycopy(this.p, 0, strArr2, 0, length8);
                            i8 = length8;
                        }
                        while (i8 < strArr2.length - 1) {
                            strArr2[i8] = nVar.c();
                            nVar.a();
                            i8++;
                        }
                        strArr2[i8] = nVar.c();
                        this.p = strArr2;
                        break;
                    case 136:
                        this.q = nVar.e();
                        break;
                    case 144:
                        this.o = nVar.b();
                        break;
                    case 154:
                        int a11 = y.a(nVar, 154);
                        int length9 = this.f4200a == null ? 0 : this.f4200a.length;
                        String[] strArr3 = new String[a11 + length9];
                        int i9 = length9;
                        if (length9 != 0) {
                            System.arraycopy(this.f4200a, 0, strArr3, 0, length9);
                            i9 = length9;
                        }
                        while (i9 < strArr3.length - 1) {
                            strArr3[i9] = nVar.c();
                            nVar.a();
                            i9++;
                        }
                        strArr3[i9] = nVar.c();
                        this.f4200a = strArr3;
                        break;
                    default:
                        if (super.a(nVar, a2)) {
                            break;
                        } else {
                            break;
                        }
                }
            }
            return this;
        }

        @Override // com.google.android.gms.internal.p, com.google.android.gms.internal.v
        public final void a(o oVar) {
            if (this.f4201b != null && this.f4201b.length > 0) {
                for (int i = 0; i < this.f4201b.length; i++) {
                    String str = this.f4201b[i];
                    if (str != null) {
                        oVar.a(1, str);
                    }
                }
            }
            if (this.c != null && this.c.length > 0) {
                for (int i2 = 0; i2 < this.c.length; i2++) {
                    k.a aVar = this.c[i2];
                    if (aVar != null) {
                        oVar.a(2, aVar);
                    }
                }
            }
            if (this.d != null && this.d.length > 0) {
                for (int i3 = 0; i3 < this.d.length; i3++) {
                    e eVar = this.d[i3];
                    if (eVar != null) {
                        oVar.a(3, eVar);
                    }
                }
            }
            if (this.e != null && this.e.length > 0) {
                for (int i4 = 0; i4 < this.e.length; i4++) {
                    b bVar = this.e[i4];
                    if (bVar != null) {
                        oVar.a(4, bVar);
                    }
                }
            }
            if (this.f != null && this.f.length > 0) {
                for (int i5 = 0; i5 < this.f.length; i5++) {
                    b bVar2 = this.f[i5];
                    if (bVar2 != null) {
                        oVar.a(5, bVar2);
                    }
                }
            }
            if (this.g != null && this.g.length > 0) {
                for (int i6 = 0; i6 < this.g.length; i6++) {
                    b bVar3 = this.g[i6];
                    if (bVar3 != null) {
                        oVar.a(6, bVar3);
                    }
                }
            }
            if (this.h != null && this.h.length > 0) {
                for (int i7 = 0; i7 < this.h.length; i7++) {
                    g gVar = this.h[i7];
                    if (gVar != null) {
                        oVar.a(7, gVar);
                    }
                }
            }
            if (!this.i.equals(BuildConfig.FLAVOR)) {
                oVar.a(9, this.i);
            }
            if (!this.j.equals(BuildConfig.FLAVOR)) {
                oVar.a(10, this.j);
            }
            if (!this.k.equals("0")) {
                oVar.a(12, this.k);
            }
            if (!this.l.equals(BuildConfig.FLAVOR)) {
                oVar.a(13, this.l);
            }
            if (this.m != null) {
                oVar.a(14, this.m);
            }
            if (Float.floatToIntBits(this.n) != Float.floatToIntBits(0.0f)) {
                float f = this.n;
                oVar.c(15, 5);
                int floatToIntBits = Float.floatToIntBits(f);
                if (oVar.f4217a.remaining() < 4) {
                    throw new o.a(oVar.f4217a.position(), oVar.f4217a.limit());
                }
                oVar.f4217a.putInt(floatToIntBits);
            }
            if (this.p != null && this.p.length > 0) {
                for (int i8 = 0; i8 < this.p.length; i8++) {
                    String str2 = this.p[i8];
                    if (str2 != null) {
                        oVar.a(16, str2);
                    }
                }
            }
            if (this.q != 0) {
                oVar.a(17, this.q);
            }
            if (this.o) {
                oVar.a(18, this.o);
            }
            if (this.f4200a != null && this.f4200a.length > 0) {
                for (int i9 = 0; i9 < this.f4200a.length; i9++) {
                    String str3 = this.f4200a[i9];
                    if (str3 != null) {
                        oVar.a(19, str3);
                    }
                }
            }
            super.a(oVar);
        }

        /* JADX WARN: Removed duplicated region for block: B:44:0x00e1  */
        /* JADX WARN: Removed duplicated region for block: B:47:0x00ed  */
        /* JADX WARN: Removed duplicated region for block: B:52:0x0107  */
        /* JADX WARN: Removed duplicated region for block: B:55:0x0113  */
        /* JADX WARN: Removed duplicated region for block: B:60:0x012d  */
        /* JADX WARN: Removed duplicated region for block: B:63:0x0139  */
        /* JADX WARN: Removed duplicated region for block: B:68:0x0153  */
        /* JADX WARN: Removed duplicated region for block: B:71:0x015f  */
        /* JADX WARN: Removed duplicated region for block: B:76:0x0183  */
        /* JADX WARN: Removed duplicated region for block: B:77:0x0188  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final boolean equals(java.lang.Object r4) {
            /*
                Method dump skipped, instructions count: 501
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.j.f.equals(java.lang.Object):boolean");
        }

        public final int hashCode() {
            int hashCode = getClass().getName().hashCode();
            int a2 = t.a(this.f4200a);
            int a3 = t.a(this.f4201b);
            int a4 = t.a(this.c);
            int a5 = t.a(this.d);
            int a6 = t.a(this.e);
            int a7 = t.a(this.f);
            int a8 = t.a(this.g);
            int a9 = t.a(this.h);
            int hashCode2 = this.i == null ? 0 : this.i.hashCode();
            int hashCode3 = this.j == null ? 0 : this.j.hashCode();
            int hashCode4 = this.k == null ? 0 : this.k.hashCode();
            int hashCode5 = this.l == null ? 0 : this.l.hashCode();
            int hashCode6 = this.m == null ? 0 : this.m.hashCode();
            int floatToIntBits = Float.floatToIntBits(this.n);
            int i = this.o ? 1231 : 1237;
            int a10 = t.a(this.p);
            int i2 = this.q;
            int i3 = 0;
            if (this.r != null) {
                i3 = this.r.c() ? 0 : this.r.hashCode();
            }
            return ((((((i + ((((hashCode6 + ((hashCode5 + ((hashCode4 + ((hashCode3 + ((hashCode2 + ((((((((((((((((((hashCode + 527) * 31) + a2) * 31) + a3) * 31) + a4) * 31) + a5) * 31) + a6) * 31) + a7) * 31) + a8) * 31) + a9) * 31)) * 31)) * 31)) * 31)) * 31)) * 31) + floatToIntBits) * 31)) * 31) + a10) * 31) + i2) * 31) + i3;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/j$g.class */
    public static final class g extends p<g> {
        private static volatile g[] k;

        /* renamed from: a  reason: collision with root package name */
        public int[] f4202a = y.f4228a;

        /* renamed from: b  reason: collision with root package name */
        public int[] f4203b = y.f4228a;
        public int[] c = y.f4228a;
        public int[] d = y.f4228a;
        public int[] e = y.f4228a;
        public int[] f = y.f4228a;
        public int[] g = y.f4228a;
        public int[] h = y.f4228a;
        public int[] i = y.f4228a;
        public int[] j = y.f4228a;

        public g() {
            this.r = null;
            this.s = -1;
        }

        public static g[] b() {
            if (k == null) {
                synchronized (t.c) {
                    if (k == null) {
                        k = new g[0];
                    }
                }
            }
            return k;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.p, com.google.android.gms.internal.v
        public final int a() {
            int i;
            int a2 = super.a();
            if (this.f4202a == null || this.f4202a.length <= 0) {
                i = a2;
            } else {
                int i2 = 0;
                for (int i3 = 0; i3 < this.f4202a.length; i3++) {
                    i2 += o.a(this.f4202a[i3]);
                }
                i = a2 + i2 + (this.f4202a.length * 1);
            }
            int i4 = i;
            if (this.f4203b != null) {
                i4 = i;
                if (this.f4203b.length > 0) {
                    int i5 = 0;
                    for (int i6 = 0; i6 < this.f4203b.length; i6++) {
                        i5 += o.a(this.f4203b[i6]);
                    }
                    i4 = i + i5 + (this.f4203b.length * 1);
                }
            }
            int i7 = i4;
            if (this.c != null) {
                i7 = i4;
                if (this.c.length > 0) {
                    int i8 = 0;
                    for (int i9 = 0; i9 < this.c.length; i9++) {
                        i8 += o.a(this.c[i9]);
                    }
                    i7 = i4 + i8 + (this.c.length * 1);
                }
            }
            int i10 = i7;
            if (this.d != null) {
                i10 = i7;
                if (this.d.length > 0) {
                    int i11 = 0;
                    for (int i12 = 0; i12 < this.d.length; i12++) {
                        i11 += o.a(this.d[i12]);
                    }
                    i10 = i7 + i11 + (this.d.length * 1);
                }
            }
            int i13 = i10;
            if (this.e != null) {
                i13 = i10;
                if (this.e.length > 0) {
                    int i14 = 0;
                    for (int i15 = 0; i15 < this.e.length; i15++) {
                        i14 += o.a(this.e[i15]);
                    }
                    i13 = i10 + i14 + (this.e.length * 1);
                }
            }
            int i16 = i13;
            if (this.f != null) {
                i16 = i13;
                if (this.f.length > 0) {
                    int i17 = 0;
                    for (int i18 = 0; i18 < this.f.length; i18++) {
                        i17 += o.a(this.f[i18]);
                    }
                    i16 = i13 + i17 + (this.f.length * 1);
                }
            }
            int i19 = i16;
            if (this.g != null) {
                i19 = i16;
                if (this.g.length > 0) {
                    int i20 = 0;
                    for (int i21 = 0; i21 < this.g.length; i21++) {
                        i20 += o.a(this.g[i21]);
                    }
                    i19 = i16 + i20 + (this.g.length * 1);
                }
            }
            int i22 = i19;
            if (this.h != null) {
                i22 = i19;
                if (this.h.length > 0) {
                    int i23 = 0;
                    for (int i24 = 0; i24 < this.h.length; i24++) {
                        i23 += o.a(this.h[i24]);
                    }
                    i22 = i19 + i23 + (this.h.length * 1);
                }
            }
            int i25 = i22;
            if (this.i != null) {
                i25 = i22;
                if (this.i.length > 0) {
                    int i26 = 0;
                    for (int i27 = 0; i27 < this.i.length; i27++) {
                        i26 += o.a(this.i[i27]);
                    }
                    i25 = i22 + i26 + (this.i.length * 1);
                }
            }
            int i28 = i25;
            if (this.j != null) {
                i28 = i25;
                if (this.j.length > 0) {
                    int i29 = 0;
                    for (int i30 = 0; i30 < this.j.length; i30++) {
                        i29 += o.a(this.j[i30]);
                    }
                    i28 = i25 + i29 + (this.j.length * 1);
                }
            }
            return i28;
        }

        @Override // com.google.android.gms.internal.v
        public final /* synthetic */ v a(n nVar) {
            while (true) {
                int a2 = nVar.a();
                switch (a2) {
                    case 0:
                        break;
                    case 8:
                        int a3 = y.a(nVar, 8);
                        int length = this.f4202a == null ? 0 : this.f4202a.length;
                        int[] iArr = new int[a3 + length];
                        int i = length;
                        if (length != 0) {
                            System.arraycopy(this.f4202a, 0, iArr, 0, length);
                            i = length;
                        }
                        while (i < iArr.length - 1) {
                            iArr[i] = nVar.e();
                            nVar.a();
                            i++;
                        }
                        iArr[i] = nVar.e();
                        this.f4202a = iArr;
                        break;
                    case 10:
                        int c = nVar.c(nVar.e());
                        int i2 = nVar.i();
                        int i3 = 0;
                        while (nVar.h() > 0) {
                            nVar.e();
                            i3++;
                        }
                        nVar.e(i2);
                        int length2 = this.f4202a == null ? 0 : this.f4202a.length;
                        int[] iArr2 = new int[i3 + length2];
                        int i4 = length2;
                        if (length2 != 0) {
                            System.arraycopy(this.f4202a, 0, iArr2, 0, length2);
                            i4 = length2;
                        }
                        while (i4 < iArr2.length) {
                            iArr2[i4] = nVar.e();
                            i4++;
                        }
                        this.f4202a = iArr2;
                        nVar.d(c);
                        break;
                    case 16:
                        int a4 = y.a(nVar, 16);
                        int length3 = this.f4203b == null ? 0 : this.f4203b.length;
                        int[] iArr3 = new int[a4 + length3];
                        int i5 = length3;
                        if (length3 != 0) {
                            System.arraycopy(this.f4203b, 0, iArr3, 0, length3);
                            i5 = length3;
                        }
                        while (i5 < iArr3.length - 1) {
                            iArr3[i5] = nVar.e();
                            nVar.a();
                            i5++;
                        }
                        iArr3[i5] = nVar.e();
                        this.f4203b = iArr3;
                        break;
                    case 18:
                        int c2 = nVar.c(nVar.e());
                        int i6 = nVar.i();
                        int i7 = 0;
                        while (nVar.h() > 0) {
                            nVar.e();
                            i7++;
                        }
                        nVar.e(i6);
                        int length4 = this.f4203b == null ? 0 : this.f4203b.length;
                        int[] iArr4 = new int[i7 + length4];
                        int i8 = length4;
                        if (length4 != 0) {
                            System.arraycopy(this.f4203b, 0, iArr4, 0, length4);
                            i8 = length4;
                        }
                        while (i8 < iArr4.length) {
                            iArr4[i8] = nVar.e();
                            i8++;
                        }
                        this.f4203b = iArr4;
                        nVar.d(c2);
                        break;
                    case 24:
                        int a5 = y.a(nVar, 24);
                        int length5 = this.c == null ? 0 : this.c.length;
                        int[] iArr5 = new int[a5 + length5];
                        int i9 = length5;
                        if (length5 != 0) {
                            System.arraycopy(this.c, 0, iArr5, 0, length5);
                            i9 = length5;
                        }
                        while (i9 < iArr5.length - 1) {
                            iArr5[i9] = nVar.e();
                            nVar.a();
                            i9++;
                        }
                        iArr5[i9] = nVar.e();
                        this.c = iArr5;
                        break;
                    case 26:
                        int c3 = nVar.c(nVar.e());
                        int i10 = nVar.i();
                        int i11 = 0;
                        while (nVar.h() > 0) {
                            nVar.e();
                            i11++;
                        }
                        nVar.e(i10);
                        int length6 = this.c == null ? 0 : this.c.length;
                        int[] iArr6 = new int[i11 + length6];
                        int i12 = length6;
                        if (length6 != 0) {
                            System.arraycopy(this.c, 0, iArr6, 0, length6);
                            i12 = length6;
                        }
                        while (i12 < iArr6.length) {
                            iArr6[i12] = nVar.e();
                            i12++;
                        }
                        this.c = iArr6;
                        nVar.d(c3);
                        break;
                    case 32:
                        int a6 = y.a(nVar, 32);
                        int length7 = this.d == null ? 0 : this.d.length;
                        int[] iArr7 = new int[a6 + length7];
                        int i13 = length7;
                        if (length7 != 0) {
                            System.arraycopy(this.d, 0, iArr7, 0, length7);
                            i13 = length7;
                        }
                        while (i13 < iArr7.length - 1) {
                            iArr7[i13] = nVar.e();
                            nVar.a();
                            i13++;
                        }
                        iArr7[i13] = nVar.e();
                        this.d = iArr7;
                        break;
                    case 34:
                        int c4 = nVar.c(nVar.e());
                        int i14 = nVar.i();
                        int i15 = 0;
                        while (nVar.h() > 0) {
                            nVar.e();
                            i15++;
                        }
                        nVar.e(i14);
                        int length8 = this.d == null ? 0 : this.d.length;
                        int[] iArr8 = new int[i15 + length8];
                        int i16 = length8;
                        if (length8 != 0) {
                            System.arraycopy(this.d, 0, iArr8, 0, length8);
                            i16 = length8;
                        }
                        while (i16 < iArr8.length) {
                            iArr8[i16] = nVar.e();
                            i16++;
                        }
                        this.d = iArr8;
                        nVar.d(c4);
                        break;
                    case 40:
                        int a7 = y.a(nVar, 40);
                        int length9 = this.e == null ? 0 : this.e.length;
                        int[] iArr9 = new int[a7 + length9];
                        int i17 = length9;
                        if (length9 != 0) {
                            System.arraycopy(this.e, 0, iArr9, 0, length9);
                            i17 = length9;
                        }
                        while (i17 < iArr9.length - 1) {
                            iArr9[i17] = nVar.e();
                            nVar.a();
                            i17++;
                        }
                        iArr9[i17] = nVar.e();
                        this.e = iArr9;
                        break;
                    case 42:
                        int c5 = nVar.c(nVar.e());
                        int i18 = nVar.i();
                        int i19 = 0;
                        while (nVar.h() > 0) {
                            nVar.e();
                            i19++;
                        }
                        nVar.e(i18);
                        int length10 = this.e == null ? 0 : this.e.length;
                        int[] iArr10 = new int[i19 + length10];
                        int i20 = length10;
                        if (length10 != 0) {
                            System.arraycopy(this.e, 0, iArr10, 0, length10);
                            i20 = length10;
                        }
                        while (i20 < iArr10.length) {
                            iArr10[i20] = nVar.e();
                            i20++;
                        }
                        this.e = iArr10;
                        nVar.d(c5);
                        break;
                    case 48:
                        int a8 = y.a(nVar, 48);
                        int length11 = this.f == null ? 0 : this.f.length;
                        int[] iArr11 = new int[a8 + length11];
                        int i21 = length11;
                        if (length11 != 0) {
                            System.arraycopy(this.f, 0, iArr11, 0, length11);
                            i21 = length11;
                        }
                        while (i21 < iArr11.length - 1) {
                            iArr11[i21] = nVar.e();
                            nVar.a();
                            i21++;
                        }
                        iArr11[i21] = nVar.e();
                        this.f = iArr11;
                        break;
                    case AsusDeleteDuplicateActivity.DeleteDuplicateTask.DELETE_BATCH_LIMIT /* 50 */:
                        int c6 = nVar.c(nVar.e());
                        int i22 = nVar.i();
                        int i23 = 0;
                        while (nVar.h() > 0) {
                            nVar.e();
                            i23++;
                        }
                        nVar.e(i22);
                        int length12 = this.f == null ? 0 : this.f.length;
                        int[] iArr12 = new int[i23 + length12];
                        int i24 = length12;
                        if (length12 != 0) {
                            System.arraycopy(this.f, 0, iArr12, 0, length12);
                            i24 = length12;
                        }
                        while (i24 < iArr12.length) {
                            iArr12[i24] = nVar.e();
                            i24++;
                        }
                        this.f = iArr12;
                        nVar.d(c6);
                        break;
                    case 56:
                        int a9 = y.a(nVar, 56);
                        int length13 = this.g == null ? 0 : this.g.length;
                        int[] iArr13 = new int[a9 + length13];
                        int i25 = length13;
                        if (length13 != 0) {
                            System.arraycopy(this.g, 0, iArr13, 0, length13);
                            i25 = length13;
                        }
                        while (i25 < iArr13.length - 1) {
                            iArr13[i25] = nVar.e();
                            nVar.a();
                            i25++;
                        }
                        iArr13[i25] = nVar.e();
                        this.g = iArr13;
                        break;
                    case 58:
                        int c7 = nVar.c(nVar.e());
                        int i26 = nVar.i();
                        int i27 = 0;
                        while (nVar.h() > 0) {
                            nVar.e();
                            i27++;
                        }
                        nVar.e(i26);
                        int length14 = this.g == null ? 0 : this.g.length;
                        int[] iArr14 = new int[i27 + length14];
                        int i28 = length14;
                        if (length14 != 0) {
                            System.arraycopy(this.g, 0, iArr14, 0, length14);
                            i28 = length14;
                        }
                        while (i28 < iArr14.length) {
                            iArr14[i28] = nVar.e();
                            i28++;
                        }
                        this.g = iArr14;
                        nVar.d(c7);
                        break;
                    case 64:
                        int a10 = y.a(nVar, 64);
                        int length15 = this.h == null ? 0 : this.h.length;
                        int[] iArr15 = new int[a10 + length15];
                        int i29 = length15;
                        if (length15 != 0) {
                            System.arraycopy(this.h, 0, iArr15, 0, length15);
                            i29 = length15;
                        }
                        while (i29 < iArr15.length - 1) {
                            iArr15[i29] = nVar.e();
                            nVar.a();
                            i29++;
                        }
                        iArr15[i29] = nVar.e();
                        this.h = iArr15;
                        break;
                    case 66:
                        int c8 = nVar.c(nVar.e());
                        int i30 = nVar.i();
                        int i31 = 0;
                        while (nVar.h() > 0) {
                            nVar.e();
                            i31++;
                        }
                        nVar.e(i30);
                        int length16 = this.h == null ? 0 : this.h.length;
                        int[] iArr16 = new int[i31 + length16];
                        int i32 = length16;
                        if (length16 != 0) {
                            System.arraycopy(this.h, 0, iArr16, 0, length16);
                            i32 = length16;
                        }
                        while (i32 < iArr16.length) {
                            iArr16[i32] = nVar.e();
                            i32++;
                        }
                        this.h = iArr16;
                        nVar.d(c8);
                        break;
                    case 72:
                        int a11 = y.a(nVar, 72);
                        int length17 = this.i == null ? 0 : this.i.length;
                        int[] iArr17 = new int[a11 + length17];
                        int i33 = length17;
                        if (length17 != 0) {
                            System.arraycopy(this.i, 0, iArr17, 0, length17);
                            i33 = length17;
                        }
                        while (i33 < iArr17.length - 1) {
                            iArr17[i33] = nVar.e();
                            nVar.a();
                            i33++;
                        }
                        iArr17[i33] = nVar.e();
                        this.i = iArr17;
                        break;
                    case 74:
                        int c9 = nVar.c(nVar.e());
                        int i34 = nVar.i();
                        int i35 = 0;
                        while (nVar.h() > 0) {
                            nVar.e();
                            i35++;
                        }
                        nVar.e(i34);
                        int length18 = this.i == null ? 0 : this.i.length;
                        int[] iArr18 = new int[i35 + length18];
                        int i36 = length18;
                        if (length18 != 0) {
                            System.arraycopy(this.i, 0, iArr18, 0, length18);
                            i36 = length18;
                        }
                        while (i36 < iArr18.length) {
                            iArr18[i36] = nVar.e();
                            i36++;
                        }
                        this.i = iArr18;
                        nVar.d(c9);
                        break;
                    case 80:
                        int a12 = y.a(nVar, 80);
                        int length19 = this.j == null ? 0 : this.j.length;
                        int[] iArr19 = new int[a12 + length19];
                        int i37 = length19;
                        if (length19 != 0) {
                            System.arraycopy(this.j, 0, iArr19, 0, length19);
                            i37 = length19;
                        }
                        while (i37 < iArr19.length - 1) {
                            iArr19[i37] = nVar.e();
                            nVar.a();
                            i37++;
                        }
                        iArr19[i37] = nVar.e();
                        this.j = iArr19;
                        break;
                    case 82:
                        int c10 = nVar.c(nVar.e());
                        int i38 = nVar.i();
                        int i39 = 0;
                        while (nVar.h() > 0) {
                            nVar.e();
                            i39++;
                        }
                        nVar.e(i38);
                        int length20 = this.j == null ? 0 : this.j.length;
                        int[] iArr20 = new int[i39 + length20];
                        int i40 = length20;
                        if (length20 != 0) {
                            System.arraycopy(this.j, 0, iArr20, 0, length20);
                            i40 = length20;
                        }
                        while (i40 < iArr20.length) {
                            iArr20[i40] = nVar.e();
                            i40++;
                        }
                        this.j = iArr20;
                        nVar.d(c10);
                        break;
                    default:
                        if (super.a(nVar, a2)) {
                            break;
                        } else {
                            break;
                        }
                }
            }
            return this;
        }

        @Override // com.google.android.gms.internal.p, com.google.android.gms.internal.v
        public final void a(o oVar) {
            if (this.f4202a != null && this.f4202a.length > 0) {
                for (int i = 0; i < this.f4202a.length; i++) {
                    oVar.a(1, this.f4202a[i]);
                }
            }
            if (this.f4203b != null && this.f4203b.length > 0) {
                for (int i2 = 0; i2 < this.f4203b.length; i2++) {
                    oVar.a(2, this.f4203b[i2]);
                }
            }
            if (this.c != null && this.c.length > 0) {
                for (int i3 = 0; i3 < this.c.length; i3++) {
                    oVar.a(3, this.c[i3]);
                }
            }
            if (this.d != null && this.d.length > 0) {
                for (int i4 = 0; i4 < this.d.length; i4++) {
                    oVar.a(4, this.d[i4]);
                }
            }
            if (this.e != null && this.e.length > 0) {
                for (int i5 = 0; i5 < this.e.length; i5++) {
                    oVar.a(5, this.e[i5]);
                }
            }
            if (this.f != null && this.f.length > 0) {
                for (int i6 = 0; i6 < this.f.length; i6++) {
                    oVar.a(6, this.f[i6]);
                }
            }
            if (this.g != null && this.g.length > 0) {
                for (int i7 = 0; i7 < this.g.length; i7++) {
                    oVar.a(7, this.g[i7]);
                }
            }
            if (this.h != null && this.h.length > 0) {
                for (int i8 = 0; i8 < this.h.length; i8++) {
                    oVar.a(8, this.h[i8]);
                }
            }
            if (this.i != null && this.i.length > 0) {
                for (int i9 = 0; i9 < this.i.length; i9++) {
                    oVar.a(9, this.i[i9]);
                }
            }
            if (this.j != null && this.j.length > 0) {
                for (int i10 = 0; i10 < this.j.length; i10++) {
                    oVar.a(10, this.j[i10]);
                }
            }
            super.a(oVar);
        }

        public final boolean equals(Object obj) {
            boolean z;
            if (obj == this) {
                z = true;
            } else if (!(obj instanceof g)) {
                z = false;
            } else {
                g gVar = (g) obj;
                if (!t.a(this.f4202a, gVar.f4202a)) {
                    z = false;
                } else if (!t.a(this.f4203b, gVar.f4203b)) {
                    z = false;
                } else if (!t.a(this.c, gVar.c)) {
                    z = false;
                } else if (!t.a(this.d, gVar.d)) {
                    z = false;
                } else if (!t.a(this.e, gVar.e)) {
                    z = false;
                } else if (!t.a(this.f, gVar.f)) {
                    z = false;
                } else if (!t.a(this.g, gVar.g)) {
                    z = false;
                } else if (!t.a(this.h, gVar.h)) {
                    z = false;
                } else if (!t.a(this.i, gVar.i)) {
                    z = false;
                } else if (!t.a(this.j, gVar.j)) {
                    z = false;
                } else if (this.r == null || this.r.c()) {
                    z = true;
                    if (gVar.r != null) {
                        z = true;
                        if (!gVar.r.c()) {
                            z = false;
                        }
                    }
                } else {
                    z = this.r.equals(gVar.r);
                }
            }
            return z;
        }

        public final int hashCode() {
            int hashCode = getClass().getName().hashCode();
            int a2 = t.a(this.f4202a);
            int a3 = t.a(this.f4203b);
            int a4 = t.a(this.c);
            int a5 = t.a(this.d);
            int a6 = t.a(this.e);
            int a7 = t.a(this.f);
            int a8 = t.a(this.g);
            int a9 = t.a(this.h);
            int a10 = t.a(this.i);
            return ((this.r == null || this.r.c()) ? 0 : this.r.hashCode()) + ((((((((((((((((((((((hashCode + 527) * 31) + a2) * 31) + a3) * 31) + a4) * 31) + a5) * 31) + a6) * 31) + a7) * 31) + a8) * 31) + a9) * 31) + a10) * 31) + t.a(this.j)) * 31);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/j$h.class */
    public static final class h extends p<h> {

        /* renamed from: a  reason: collision with root package name */
        public static final q<k.a, h> f4204a = new q<>(h.class);
        private static final h[] i = new h[0];

        /* renamed from: b  reason: collision with root package name */
        public int[] f4205b = y.f4228a;
        public int[] c = y.f4228a;
        public int[] d = y.f4228a;
        public int e = 0;
        public int[] f = y.f4228a;
        public int g = 0;
        public int h = 0;

        public h() {
            this.r = null;
            this.s = -1;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.p, com.google.android.gms.internal.v
        public final int a() {
            int i2;
            int a2 = super.a();
            if (this.f4205b == null || this.f4205b.length <= 0) {
                i2 = a2;
            } else {
                int i3 = 0;
                for (int i4 = 0; i4 < this.f4205b.length; i4++) {
                    i3 += o.a(this.f4205b[i4]);
                }
                i2 = a2 + i3 + (this.f4205b.length * 1);
            }
            int i5 = i2;
            if (this.c != null) {
                i5 = i2;
                if (this.c.length > 0) {
                    int i6 = 0;
                    for (int i7 = 0; i7 < this.c.length; i7++) {
                        i6 += o.a(this.c[i7]);
                    }
                    i5 = i2 + i6 + (this.c.length * 1);
                }
            }
            int i8 = i5;
            if (this.d != null) {
                i8 = i5;
                if (this.d.length > 0) {
                    int i9 = 0;
                    for (int i10 = 0; i10 < this.d.length; i10++) {
                        i9 += o.a(this.d[i10]);
                    }
                    i8 = i5 + i9 + (this.d.length * 1);
                }
            }
            int i11 = i8;
            if (this.e != 0) {
                i11 = i8 + o.b(4, this.e);
            }
            int i12 = i11;
            if (this.f != null) {
                i12 = i11;
                if (this.f.length > 0) {
                    int i13 = 0;
                    for (int i14 = 0; i14 < this.f.length; i14++) {
                        i13 += o.a(this.f[i14]);
                    }
                    i12 = i11 + i13 + (this.f.length * 1);
                }
            }
            int i15 = i12;
            if (this.g != 0) {
                i15 = i12 + o.b(6, this.g);
            }
            int i16 = i15;
            if (this.h != 0) {
                i16 = i15 + o.b(7, this.h);
            }
            return i16;
        }

        @Override // com.google.android.gms.internal.v
        public final /* synthetic */ v a(n nVar) {
            while (true) {
                int a2 = nVar.a();
                switch (a2) {
                    case 0:
                        break;
                    case 8:
                        int a3 = y.a(nVar, 8);
                        int length = this.f4205b == null ? 0 : this.f4205b.length;
                        int[] iArr = new int[a3 + length];
                        int i2 = length;
                        if (length != 0) {
                            System.arraycopy(this.f4205b, 0, iArr, 0, length);
                            i2 = length;
                        }
                        while (i2 < iArr.length - 1) {
                            iArr[i2] = nVar.e();
                            nVar.a();
                            i2++;
                        }
                        iArr[i2] = nVar.e();
                        this.f4205b = iArr;
                        break;
                    case 10:
                        int c = nVar.c(nVar.e());
                        int i3 = nVar.i();
                        int i4 = 0;
                        while (nVar.h() > 0) {
                            nVar.e();
                            i4++;
                        }
                        nVar.e(i3);
                        int length2 = this.f4205b == null ? 0 : this.f4205b.length;
                        int[] iArr2 = new int[i4 + length2];
                        int i5 = length2;
                        if (length2 != 0) {
                            System.arraycopy(this.f4205b, 0, iArr2, 0, length2);
                            i5 = length2;
                        }
                        while (i5 < iArr2.length) {
                            iArr2[i5] = nVar.e();
                            i5++;
                        }
                        this.f4205b = iArr2;
                        nVar.d(c);
                        break;
                    case 16:
                        int a4 = y.a(nVar, 16);
                        int length3 = this.c == null ? 0 : this.c.length;
                        int[] iArr3 = new int[a4 + length3];
                        int i6 = length3;
                        if (length3 != 0) {
                            System.arraycopy(this.c, 0, iArr3, 0, length3);
                            i6 = length3;
                        }
                        while (i6 < iArr3.length - 1) {
                            iArr3[i6] = nVar.e();
                            nVar.a();
                            i6++;
                        }
                        iArr3[i6] = nVar.e();
                        this.c = iArr3;
                        break;
                    case 18:
                        int c2 = nVar.c(nVar.e());
                        int i7 = nVar.i();
                        int i8 = 0;
                        while (nVar.h() > 0) {
                            nVar.e();
                            i8++;
                        }
                        nVar.e(i7);
                        int length4 = this.c == null ? 0 : this.c.length;
                        int[] iArr4 = new int[i8 + length4];
                        int i9 = length4;
                        if (length4 != 0) {
                            System.arraycopy(this.c, 0, iArr4, 0, length4);
                            i9 = length4;
                        }
                        while (i9 < iArr4.length) {
                            iArr4[i9] = nVar.e();
                            i9++;
                        }
                        this.c = iArr4;
                        nVar.d(c2);
                        break;
                    case 24:
                        int a5 = y.a(nVar, 24);
                        int length5 = this.d == null ? 0 : this.d.length;
                        int[] iArr5 = new int[a5 + length5];
                        int i10 = length5;
                        if (length5 != 0) {
                            System.arraycopy(this.d, 0, iArr5, 0, length5);
                            i10 = length5;
                        }
                        while (i10 < iArr5.length - 1) {
                            iArr5[i10] = nVar.e();
                            nVar.a();
                            i10++;
                        }
                        iArr5[i10] = nVar.e();
                        this.d = iArr5;
                        break;
                    case 26:
                        int c3 = nVar.c(nVar.e());
                        int i11 = nVar.i();
                        int i12 = 0;
                        while (nVar.h() > 0) {
                            nVar.e();
                            i12++;
                        }
                        nVar.e(i11);
                        int length6 = this.d == null ? 0 : this.d.length;
                        int[] iArr6 = new int[i12 + length6];
                        int i13 = length6;
                        if (length6 != 0) {
                            System.arraycopy(this.d, 0, iArr6, 0, length6);
                            i13 = length6;
                        }
                        while (i13 < iArr6.length) {
                            iArr6[i13] = nVar.e();
                            i13++;
                        }
                        this.d = iArr6;
                        nVar.d(c3);
                        break;
                    case 32:
                        this.e = nVar.e();
                        break;
                    case 40:
                        int a6 = y.a(nVar, 40);
                        int length7 = this.f == null ? 0 : this.f.length;
                        int[] iArr7 = new int[a6 + length7];
                        int i14 = length7;
                        if (length7 != 0) {
                            System.arraycopy(this.f, 0, iArr7, 0, length7);
                            i14 = length7;
                        }
                        while (i14 < iArr7.length - 1) {
                            iArr7[i14] = nVar.e();
                            nVar.a();
                            i14++;
                        }
                        iArr7[i14] = nVar.e();
                        this.f = iArr7;
                        break;
                    case 42:
                        int c4 = nVar.c(nVar.e());
                        int i15 = nVar.i();
                        int i16 = 0;
                        while (nVar.h() > 0) {
                            nVar.e();
                            i16++;
                        }
                        nVar.e(i15);
                        int length8 = this.f == null ? 0 : this.f.length;
                        int[] iArr8 = new int[i16 + length8];
                        int i17 = length8;
                        if (length8 != 0) {
                            System.arraycopy(this.f, 0, iArr8, 0, length8);
                            i17 = length8;
                        }
                        while (i17 < iArr8.length) {
                            iArr8[i17] = nVar.e();
                            i17++;
                        }
                        this.f = iArr8;
                        nVar.d(c4);
                        break;
                    case 48:
                        this.g = nVar.e();
                        break;
                    case 56:
                        this.h = nVar.e();
                        break;
                    default:
                        if (super.a(nVar, a2)) {
                            break;
                        } else {
                            break;
                        }
                }
            }
            return this;
        }

        @Override // com.google.android.gms.internal.p, com.google.android.gms.internal.v
        public final void a(o oVar) {
            if (this.f4205b != null && this.f4205b.length > 0) {
                for (int i2 = 0; i2 < this.f4205b.length; i2++) {
                    oVar.a(1, this.f4205b[i2]);
                }
            }
            if (this.c != null && this.c.length > 0) {
                for (int i3 = 0; i3 < this.c.length; i3++) {
                    oVar.a(2, this.c[i3]);
                }
            }
            if (this.d != null && this.d.length > 0) {
                for (int i4 = 0; i4 < this.d.length; i4++) {
                    oVar.a(3, this.d[i4]);
                }
            }
            if (this.e != 0) {
                oVar.a(4, this.e);
            }
            if (this.f != null && this.f.length > 0) {
                for (int i5 = 0; i5 < this.f.length; i5++) {
                    oVar.a(5, this.f[i5]);
                }
            }
            if (this.g != 0) {
                oVar.a(6, this.g);
            }
            if (this.h != 0) {
                oVar.a(7, this.h);
            }
            super.a(oVar);
        }

        public final boolean equals(Object obj) {
            boolean z;
            if (obj == this) {
                z = true;
            } else if (!(obj instanceof h)) {
                z = false;
            } else {
                h hVar = (h) obj;
                if (!t.a(this.f4205b, hVar.f4205b)) {
                    z = false;
                } else if (!t.a(this.c, hVar.c)) {
                    z = false;
                } else if (!t.a(this.d, hVar.d)) {
                    z = false;
                } else if (this.e != hVar.e) {
                    z = false;
                } else if (!t.a(this.f, hVar.f)) {
                    z = false;
                } else if (this.g != hVar.g) {
                    z = false;
                } else if (this.h != hVar.h) {
                    z = false;
                } else if (this.r == null || this.r.c()) {
                    z = true;
                    if (hVar.r != null) {
                        z = true;
                        if (!hVar.r.c()) {
                            z = false;
                        }
                    }
                } else {
                    z = this.r.equals(hVar.r);
                }
            }
            return z;
        }

        public final int hashCode() {
            int hashCode = getClass().getName().hashCode();
            int a2 = t.a(this.f4205b);
            int a3 = t.a(this.c);
            int a4 = t.a(this.d);
            int i2 = this.e;
            int a5 = t.a(this.f);
            int i3 = this.g;
            return ((this.r == null || this.r.c()) ? 0 : this.r.hashCode()) + ((((((((((((((((hashCode + 527) * 31) + a2) * 31) + a3) * 31) + a4) * 31) + i2) * 31) + a5) * 31) + i3) * 31) + this.h) * 31);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/j$i.class */
    public static final class i extends p<i> {
        private static volatile i[] d;

        /* renamed from: a  reason: collision with root package name */
        public String f4206a = BuildConfig.FLAVOR;

        /* renamed from: b  reason: collision with root package name */
        public k.a f4207b = null;
        public d c = null;

        public i() {
            this.r = null;
            this.s = -1;
        }

        public static i[] b() {
            if (d == null) {
                synchronized (t.c) {
                    if (d == null) {
                        d = new i[0];
                    }
                }
            }
            return d;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.p, com.google.android.gms.internal.v
        public final int a() {
            int a2 = super.a();
            int i = a2;
            if (!this.f4206a.equals(BuildConfig.FLAVOR)) {
                i = a2 + o.b(1, this.f4206a);
            }
            int i2 = i;
            if (this.f4207b != null) {
                i2 = i + o.b(2, this.f4207b);
            }
            int i3 = i2;
            if (this.c != null) {
                i3 = i2 + o.b(3, this.c);
            }
            return i3;
        }

        @Override // com.google.android.gms.internal.v
        public final /* synthetic */ v a(n nVar) {
            while (true) {
                int a2 = nVar.a();
                switch (a2) {
                    case 0:
                        break;
                    case 10:
                        this.f4206a = nVar.c();
                        break;
                    case 18:
                        if (this.f4207b == null) {
                            this.f4207b = new k.a();
                        }
                        nVar.a(this.f4207b);
                        break;
                    case 26:
                        if (this.c == null) {
                            this.c = new d();
                        }
                        nVar.a(this.c);
                        break;
                    default:
                        if (super.a(nVar, a2)) {
                            break;
                        } else {
                            break;
                        }
                }
            }
            return this;
        }

        @Override // com.google.android.gms.internal.p, com.google.android.gms.internal.v
        public final void a(o oVar) {
            if (!this.f4206a.equals(BuildConfig.FLAVOR)) {
                oVar.a(1, this.f4206a);
            }
            if (this.f4207b != null) {
                oVar.a(2, this.f4207b);
            }
            if (this.c != null) {
                oVar.a(3, this.c);
            }
            super.a(oVar);
        }

        /* JADX WARN: Removed duplicated region for block: B:20:0x0049  */
        /* JADX WARN: Removed duplicated region for block: B:23:0x0055  */
        /* JADX WARN: Removed duplicated region for block: B:28:0x006f  */
        /* JADX WARN: Removed duplicated region for block: B:31:0x007b  */
        /* JADX WARN: Removed duplicated region for block: B:40:0x00a8  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final boolean equals(java.lang.Object r4) {
            /*
                r3 = this;
                r0 = 1
                r5 = r0
                r0 = r4
                r1 = r3
                if (r0 != r1) goto L_0x000b
                r0 = r5
                r6 = r0
            L_0x0009:
                r0 = r6
                return r0
            L_0x000b:
                r0 = r4
                boolean r0 = r0 instanceof com.google.android.gms.internal.j.i
                if (r0 != 0) goto L_0x0017
                r0 = 0
                r6 = r0
                goto L_0x0009
            L_0x0017:
                r0 = r4
                com.google.android.gms.internal.j$i r0 = (com.google.android.gms.internal.j.i) r0
                r4 = r0
                r0 = r3
                java.lang.String r0 = r0.f4206a
                if (r0 != 0) goto L_0x002f
                r0 = r4
                java.lang.String r0 = r0.f4206a
                if (r0 == 0) goto L_0x0042
                r0 = 0
                r6 = r0
                goto L_0x0009
            L_0x002f:
                r0 = r3
                java.lang.String r0 = r0.f4206a
                r1 = r4
                java.lang.String r1 = r1.f4206a
                boolean r0 = r0.equals(r1)
                if (r0 != 0) goto L_0x0042
                r0 = 0
                r6 = r0
                goto L_0x0009
            L_0x0042:
                r0 = r3
                com.google.android.gms.internal.k$a r0 = r0.f4207b
                if (r0 != 0) goto L_0x0055
                r0 = r4
                com.google.android.gms.internal.k$a r0 = r0.f4207b
                if (r0 == 0) goto L_0x0068
                r0 = 0
                r6 = r0
                goto L_0x0009
            L_0x0055:
                r0 = r3
                com.google.android.gms.internal.k$a r0 = r0.f4207b
                r1 = r4
                com.google.android.gms.internal.k$a r1 = r1.f4207b
                boolean r0 = r0.equals(r1)
                if (r0 != 0) goto L_0x0068
                r0 = 0
                r6 = r0
                goto L_0x0009
            L_0x0068:
                r0 = r3
                com.google.android.gms.internal.j$d r0 = r0.c
                if (r0 != 0) goto L_0x007b
                r0 = r4
                com.google.android.gms.internal.j$d r0 = r0.c
                if (r0 == 0) goto L_0x008e
                r0 = 0
                r6 = r0
                goto L_0x0009
            L_0x007b:
                r0 = r3
                com.google.android.gms.internal.j$d r0 = r0.c
                r1 = r4
                com.google.android.gms.internal.j$d r1 = r1.c
                boolean r0 = r0.equals(r1)
                if (r0 != 0) goto L_0x008e
                r0 = 0
                r6 = r0
                goto L_0x0009
            L_0x008e:
                r0 = r3
                com.google.android.gms.internal.r r0 = r0.r
                if (r0 == 0) goto L_0x009f
                r0 = r3
                com.google.android.gms.internal.r r0 = r0.r
                boolean r0 = r0.c()
                if (r0 == 0) goto L_0x00b9
            L_0x009f:
                r0 = r5
                r6 = r0
                r0 = r4
                com.google.android.gms.internal.r r0 = r0.r
                if (r0 == 0) goto L_0x0009
                r0 = r5
                r6 = r0
                r0 = r4
                com.google.android.gms.internal.r r0 = r0.r
                boolean r0 = r0.c()
                if (r0 != 0) goto L_0x0009
                r0 = 0
                r6 = r0
                goto L_0x0009
            L_0x00b9:
                r0 = r3
                com.google.android.gms.internal.r r0 = r0.r
                r1 = r4
                com.google.android.gms.internal.r r1 = r1.r
                boolean r0 = r0.equals(r1)
                r6 = r0
                goto L_0x0009
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.j.i.equals(java.lang.Object):boolean");
        }

        public final int hashCode() {
            int hashCode = getClass().getName().hashCode();
            int hashCode2 = this.f4206a == null ? 0 : this.f4206a.hashCode();
            int hashCode3 = this.f4207b == null ? 0 : this.f4207b.hashCode();
            int hashCode4 = this.c == null ? 0 : this.c.hashCode();
            int i = 0;
            if (this.r != null) {
                i = this.r.c() ? 0 : this.r.hashCode();
            }
            return ((hashCode4 + ((hashCode3 + ((hashCode2 + ((hashCode + 527) * 31)) * 31)) * 31)) * 31) + i;
        }
    }

    /* renamed from: com.google.android.gms.internal.j$j  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/j$j.class */
    public static final class C0127j extends p<C0127j> {

        /* renamed from: a  reason: collision with root package name */
        public i[] f4208a = i.b();

        /* renamed from: b  reason: collision with root package name */
        public f f4209b = null;
        public String c = BuildConfig.FLAVOR;

        public C0127j() {
            this.r = null;
            this.s = -1;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.p, com.google.android.gms.internal.v
        public final int a() {
            int a2 = super.a();
            int i = a2;
            if (this.f4208a != null) {
                i = a2;
                if (this.f4208a.length > 0) {
                    int i2 = 0;
                    while (true) {
                        i = a2;
                        if (i2 >= this.f4208a.length) {
                            break;
                        }
                        i iVar = this.f4208a[i2];
                        a2 = a2;
                        if (iVar != null) {
                            a2 += o.b(1, iVar);
                        }
                        i2++;
                    }
                }
            }
            int i3 = i;
            if (this.f4209b != null) {
                i3 = i + o.b(2, this.f4209b);
            }
            int i4 = i3;
            if (!this.c.equals(BuildConfig.FLAVOR)) {
                i4 = i3 + o.b(3, this.c);
            }
            return i4;
        }

        @Override // com.google.android.gms.internal.v
        public final /* synthetic */ v a(n nVar) {
            while (true) {
                int a2 = nVar.a();
                switch (a2) {
                    case 0:
                        break;
                    case 10:
                        int a3 = y.a(nVar, 10);
                        int length = this.f4208a == null ? 0 : this.f4208a.length;
                        i[] iVarArr = new i[a3 + length];
                        int i = length;
                        if (length != 0) {
                            System.arraycopy(this.f4208a, 0, iVarArr, 0, length);
                            i = length;
                        }
                        while (i < iVarArr.length - 1) {
                            iVarArr[i] = new i();
                            nVar.a(iVarArr[i]);
                            nVar.a();
                            i++;
                        }
                        iVarArr[i] = new i();
                        nVar.a(iVarArr[i]);
                        this.f4208a = iVarArr;
                        break;
                    case 18:
                        if (this.f4209b == null) {
                            this.f4209b = new f();
                        }
                        nVar.a(this.f4209b);
                        break;
                    case 26:
                        this.c = nVar.c();
                        break;
                    default:
                        if (super.a(nVar, a2)) {
                            break;
                        } else {
                            break;
                        }
                }
            }
            return this;
        }

        @Override // com.google.android.gms.internal.p, com.google.android.gms.internal.v
        public final void a(o oVar) {
            if (this.f4208a != null && this.f4208a.length > 0) {
                for (int i = 0; i < this.f4208a.length; i++) {
                    i iVar = this.f4208a[i];
                    if (iVar != null) {
                        oVar.a(1, iVar);
                    }
                }
            }
            if (this.f4209b != null) {
                oVar.a(2, this.f4209b);
            }
            if (!this.c.equals(BuildConfig.FLAVOR)) {
                oVar.a(3, this.c);
            }
            super.a(oVar);
        }

        /* JADX WARN: Removed duplicated region for block: B:23:0x005c  */
        /* JADX WARN: Removed duplicated region for block: B:26:0x0068  */
        /* JADX WARN: Removed duplicated region for block: B:35:0x0095  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final boolean equals(java.lang.Object r4) {
            /*
                r3 = this;
                r0 = 1
                r5 = r0
                r0 = r4
                r1 = r3
                if (r0 != r1) goto L_0x000b
                r0 = r5
                r6 = r0
            L_0x0009:
                r0 = r6
                return r0
            L_0x000b:
                r0 = r4
                boolean r0 = r0 instanceof com.google.android.gms.internal.j.C0127j
                if (r0 != 0) goto L_0x0017
                r0 = 0
                r6 = r0
                goto L_0x0009
            L_0x0017:
                r0 = r4
                com.google.android.gms.internal.j$j r0 = (com.google.android.gms.internal.j.C0127j) r0
                r4 = r0
                r0 = r3
                com.google.android.gms.internal.j$i[] r0 = r0.f4208a
                r1 = r4
                com.google.android.gms.internal.j$i[] r1 = r1.f4208a
                boolean r0 = com.google.android.gms.internal.t.a(r0, r1)
                if (r0 != 0) goto L_0x002f
                r0 = 0
                r6 = r0
                goto L_0x0009
            L_0x002f:
                r0 = r3
                com.google.android.gms.internal.j$f r0 = r0.f4209b
                if (r0 != 0) goto L_0x0042
                r0 = r4
                com.google.android.gms.internal.j$f r0 = r0.f4209b
                if (r0 == 0) goto L_0x0055
                r0 = 0
                r6 = r0
                goto L_0x0009
            L_0x0042:
                r0 = r3
                com.google.android.gms.internal.j$f r0 = r0.f4209b
                r1 = r4
                com.google.android.gms.internal.j$f r1 = r1.f4209b
                boolean r0 = r0.equals(r1)
                if (r0 != 0) goto L_0x0055
                r0 = 0
                r6 = r0
                goto L_0x0009
            L_0x0055:
                r0 = r3
                java.lang.String r0 = r0.c
                if (r0 != 0) goto L_0x0068
                r0 = r4
                java.lang.String r0 = r0.c
                if (r0 == 0) goto L_0x007b
                r0 = 0
                r6 = r0
                goto L_0x0009
            L_0x0068:
                r0 = r3
                java.lang.String r0 = r0.c
                r1 = r4
                java.lang.String r1 = r1.c
                boolean r0 = r0.equals(r1)
                if (r0 != 0) goto L_0x007b
                r0 = 0
                r6 = r0
                goto L_0x0009
            L_0x007b:
                r0 = r3
                com.google.android.gms.internal.r r0 = r0.r
                if (r0 == 0) goto L_0x008c
                r0 = r3
                com.google.android.gms.internal.r r0 = r0.r
                boolean r0 = r0.c()
                if (r0 == 0) goto L_0x00a6
            L_0x008c:
                r0 = r5
                r6 = r0
                r0 = r4
                com.google.android.gms.internal.r r0 = r0.r
                if (r0 == 0) goto L_0x0009
                r0 = r5
                r6 = r0
                r0 = r4
                com.google.android.gms.internal.r r0 = r0.r
                boolean r0 = r0.c()
                if (r0 != 0) goto L_0x0009
                r0 = 0
                r6 = r0
                goto L_0x0009
            L_0x00a6:
                r0 = r3
                com.google.android.gms.internal.r r0 = r0.r
                r1 = r4
                com.google.android.gms.internal.r r1 = r1.r
                boolean r0 = r0.equals(r1)
                r6 = r0
                goto L_0x0009
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.j.C0127j.equals(java.lang.Object):boolean");
        }

        public final int hashCode() {
            int hashCode = getClass().getName().hashCode();
            int a2 = t.a(this.f4208a);
            int hashCode2 = this.f4209b == null ? 0 : this.f4209b.hashCode();
            int hashCode3 = this.c == null ? 0 : this.c.hashCode();
            int i = 0;
            if (this.r != null) {
                i = this.r.c() ? 0 : this.r.hashCode();
            }
            return ((hashCode3 + ((hashCode2 + ((((hashCode + 527) * 31) + a2) * 31)) * 31)) * 31) + i;
        }
    }
}
