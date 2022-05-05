package com.google.android.gms.internal;

import android.support.v4.view.p;
import com.android.contacts.activities.AsusDeleteDuplicateActivity;
import com.android.contacts.util.AsusRedPointNotificationDualPanelHelper;
import com.asus.updatesdk.BuildConfig;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/z.class */
public interface z {

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/z$a.class */
    public static final class a extends p<a> {

        /* renamed from: a  reason: collision with root package name */
        public String[] f4230a = y.f;

        /* renamed from: b  reason: collision with root package name */
        public String[] f4231b = y.f;
        public int[] c = y.f4228a;
        public long[] d = y.f4229b;

        public a() {
            this.r = null;
            this.s = -1;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.p, com.google.android.gms.internal.v
        public final int a() {
            int i;
            int a2 = super.a();
            if (this.f4230a == null || this.f4230a.length <= 0) {
                i = a2;
            } else {
                int i2 = 0;
                int i3 = 0;
                for (int i4 = 0; i4 < this.f4230a.length; i4++) {
                    String str = this.f4230a[i4];
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
            if (this.f4231b != null) {
                i5 = i;
                if (this.f4231b.length > 0) {
                    int i6 = 0;
                    int i7 = 0;
                    for (int i8 = 0; i8 < this.f4231b.length; i8++) {
                        String str2 = this.f4231b[i8];
                        i6 = i6;
                        i7 = i7;
                        if (str2 != null) {
                            i7++;
                            i6 += o.a(str2);
                        }
                    }
                    i5 = i + i6 + (i7 * 1);
                }
            }
            int i9 = i5;
            if (this.c != null) {
                i9 = i5;
                if (this.c.length > 0) {
                    int i10 = 0;
                    for (int i11 = 0; i11 < this.c.length; i11++) {
                        i10 += o.a(this.c[i11]);
                    }
                    i9 = i5 + i10 + (this.c.length * 1);
                }
            }
            int i12 = i9;
            if (this.d != null) {
                i12 = i9;
                if (this.d.length > 0) {
                    int i13 = 0;
                    for (int i14 = 0; i14 < this.d.length; i14++) {
                        i13 += o.b(this.d[i14]);
                    }
                    i12 = i9 + i13 + (this.d.length * 1);
                }
            }
            return i12;
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
                        int length = this.f4230a == null ? 0 : this.f4230a.length;
                        String[] strArr = new String[a3 + length];
                        int i = length;
                        if (length != 0) {
                            System.arraycopy(this.f4230a, 0, strArr, 0, length);
                            i = length;
                        }
                        while (i < strArr.length - 1) {
                            strArr[i] = nVar.c();
                            nVar.a();
                            i++;
                        }
                        strArr[i] = nVar.c();
                        this.f4230a = strArr;
                        break;
                    case 18:
                        int a4 = y.a(nVar, 18);
                        int length2 = this.f4231b == null ? 0 : this.f4231b.length;
                        String[] strArr2 = new String[a4 + length2];
                        int i2 = length2;
                        if (length2 != 0) {
                            System.arraycopy(this.f4231b, 0, strArr2, 0, length2);
                            i2 = length2;
                        }
                        while (i2 < strArr2.length - 1) {
                            strArr2[i2] = nVar.c();
                            nVar.a();
                            i2++;
                        }
                        strArr2[i2] = nVar.c();
                        this.f4231b = strArr2;
                        break;
                    case 24:
                        int a5 = y.a(nVar, 24);
                        int length3 = this.c == null ? 0 : this.c.length;
                        int[] iArr = new int[a5 + length3];
                        int i3 = length3;
                        if (length3 != 0) {
                            System.arraycopy(this.c, 0, iArr, 0, length3);
                            i3 = length3;
                        }
                        while (i3 < iArr.length - 1) {
                            iArr[i3] = nVar.e();
                            nVar.a();
                            i3++;
                        }
                        iArr[i3] = nVar.e();
                        this.c = iArr;
                        break;
                    case 26:
                        int c = nVar.c(nVar.e());
                        int i4 = nVar.i();
                        int i5 = 0;
                        while (nVar.h() > 0) {
                            nVar.e();
                            i5++;
                        }
                        nVar.e(i4);
                        int length4 = this.c == null ? 0 : this.c.length;
                        int[] iArr2 = new int[i5 + length4];
                        int i6 = length4;
                        if (length4 != 0) {
                            System.arraycopy(this.c, 0, iArr2, 0, length4);
                            i6 = length4;
                        }
                        while (i6 < iArr2.length) {
                            iArr2[i6] = nVar.e();
                            i6++;
                        }
                        this.c = iArr2;
                        nVar.d(c);
                        break;
                    case 32:
                        int a6 = y.a(nVar, 32);
                        int length5 = this.d == null ? 0 : this.d.length;
                        long[] jArr = new long[a6 + length5];
                        int i7 = length5;
                        if (length5 != 0) {
                            System.arraycopy(this.d, 0, jArr, 0, length5);
                            i7 = length5;
                        }
                        while (i7 < jArr.length - 1) {
                            jArr[i7] = nVar.f();
                            nVar.a();
                            i7++;
                        }
                        jArr[i7] = nVar.f();
                        this.d = jArr;
                        break;
                    case 34:
                        int c2 = nVar.c(nVar.e());
                        int i8 = nVar.i();
                        int i9 = 0;
                        while (nVar.h() > 0) {
                            nVar.f();
                            i9++;
                        }
                        nVar.e(i8);
                        int length6 = this.d == null ? 0 : this.d.length;
                        long[] jArr2 = new long[i9 + length6];
                        int i10 = length6;
                        if (length6 != 0) {
                            System.arraycopy(this.d, 0, jArr2, 0, length6);
                            i10 = length6;
                        }
                        while (i10 < jArr2.length) {
                            jArr2[i10] = nVar.f();
                            i10++;
                        }
                        this.d = jArr2;
                        nVar.d(c2);
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
            if (this.f4230a != null && this.f4230a.length > 0) {
                for (int i = 0; i < this.f4230a.length; i++) {
                    String str = this.f4230a[i];
                    if (str != null) {
                        oVar.a(1, str);
                    }
                }
            }
            if (this.f4231b != null && this.f4231b.length > 0) {
                for (int i2 = 0; i2 < this.f4231b.length; i2++) {
                    String str2 = this.f4231b[i2];
                    if (str2 != null) {
                        oVar.a(2, str2);
                    }
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
                if (!t.a(this.f4230a, aVar.f4230a)) {
                    z = false;
                } else if (!t.a(this.f4231b, aVar.f4231b)) {
                    z = false;
                } else if (!t.a(this.c, aVar.c)) {
                    z = false;
                } else if (!t.a(this.d, aVar.d)) {
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
            int a2 = t.a(this.f4230a);
            int a3 = t.a(this.f4231b);
            int a4 = t.a(this.c);
            return ((this.r == null || this.r.c()) ? 0 : this.r.hashCode()) + ((((((((((hashCode + 527) * 31) + a2) * 31) + a3) * 31) + a4) * 31) + t.a(this.d)) * 31);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/z$b.class */
    public static final class b extends p<b> {

        /* renamed from: a  reason: collision with root package name */
        public int f4232a = 0;

        /* renamed from: b  reason: collision with root package name */
        public String f4233b = BuildConfig.FLAVOR;
        public String c = BuildConfig.FLAVOR;

        public b() {
            this.r = null;
            this.s = -1;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.p, com.google.android.gms.internal.v
        public final int a() {
            int a2 = super.a();
            int i = a2;
            if (this.f4232a != 0) {
                i = a2 + o.b(1, this.f4232a);
            }
            int i2 = i;
            if (!this.f4233b.equals(BuildConfig.FLAVOR)) {
                i2 = i + o.b(2, this.f4233b);
            }
            int i3 = i2;
            if (!this.c.equals(BuildConfig.FLAVOR)) {
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
                            case 0:
                            case 1:
                            case 2:
                            case 3:
                            case 4:
                            case 5:
                            case 6:
                            case 7:
                            case 8:
                            case 9:
                            case 10:
                            case 11:
                            case 12:
                            case 13:
                            case AsusRedPointNotificationDualPanelHelper.ID.UPDATE_VERSION /* 14 */:
                            case 15:
                            case 16:
                            case 17:
                            case 18:
                            case 19:
                            case 20:
                            case 21:
                            case 22:
                            case 23:
                            case 24:
                            case 25:
                            case 26:
                                this.f4232a = e;
                                continue;
                        }
                    case 18:
                        this.f4233b = nVar.c();
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
            if (this.f4232a != 0) {
                oVar.a(1, this.f4232a);
            }
            if (!this.f4233b.equals(BuildConfig.FLAVOR)) {
                oVar.a(2, this.f4233b);
            }
            if (!this.c.equals(BuildConfig.FLAVOR)) {
                oVar.a(3, this.c);
            }
            super.a(oVar);
        }

        /* JADX WARN: Removed duplicated region for block: B:23:0x0059  */
        /* JADX WARN: Removed duplicated region for block: B:26:0x0065  */
        /* JADX WARN: Removed duplicated region for block: B:35:0x0092  */
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
                boolean r0 = r0 instanceof com.google.android.gms.internal.z.b
                if (r0 != 0) goto L_0x0017
                r0 = 0
                r6 = r0
                goto L_0x0009
            L_0x0017:
                r0 = r4
                com.google.android.gms.internal.z$b r0 = (com.google.android.gms.internal.z.b) r0
                r4 = r0
                r0 = r3
                int r0 = r0.f4232a
                r1 = r4
                int r1 = r1.f4232a
                if (r0 == r1) goto L_0x002c
                r0 = 0
                r6 = r0
                goto L_0x0009
            L_0x002c:
                r0 = r3
                java.lang.String r0 = r0.f4233b
                if (r0 != 0) goto L_0x003f
                r0 = r4
                java.lang.String r0 = r0.f4233b
                if (r0 == 0) goto L_0x0052
                r0 = 0
                r6 = r0
                goto L_0x0009
            L_0x003f:
                r0 = r3
                java.lang.String r0 = r0.f4233b
                r1 = r4
                java.lang.String r1 = r1.f4233b
                boolean r0 = r0.equals(r1)
                if (r0 != 0) goto L_0x0052
                r0 = 0
                r6 = r0
                goto L_0x0009
            L_0x0052:
                r0 = r3
                java.lang.String r0 = r0.c
                if (r0 != 0) goto L_0x0065
                r0 = r4
                java.lang.String r0 = r0.c
                if (r0 == 0) goto L_0x0078
                r0 = 0
                r6 = r0
                goto L_0x0009
            L_0x0065:
                r0 = r3
                java.lang.String r0 = r0.c
                r1 = r4
                java.lang.String r1 = r1.c
                boolean r0 = r0.equals(r1)
                if (r0 != 0) goto L_0x0078
                r0 = 0
                r6 = r0
                goto L_0x0009
            L_0x0078:
                r0 = r3
                com.google.android.gms.internal.r r0 = r0.r
                if (r0 == 0) goto L_0x0089
                r0 = r3
                com.google.android.gms.internal.r r0 = r0.r
                boolean r0 = r0.c()
                if (r0 == 0) goto L_0x00a3
            L_0x0089:
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
            L_0x00a3:
                r0 = r3
                com.google.android.gms.internal.r r0 = r0.r
                r1 = r4
                com.google.android.gms.internal.r r1 = r1.r
                boolean r0 = r0.equals(r1)
                r6 = r0
                goto L_0x0009
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.z.b.equals(java.lang.Object):boolean");
        }

        public final int hashCode() {
            int hashCode = getClass().getName().hashCode();
            int i = this.f4232a;
            int hashCode2 = this.f4233b == null ? 0 : this.f4233b.hashCode();
            int hashCode3 = this.c == null ? 0 : this.c.hashCode();
            int i2 = 0;
            if (this.r != null) {
                i2 = this.r.c() ? 0 : this.r.hashCode();
            }
            return ((hashCode3 + ((hashCode2 + ((((hashCode + 527) * 31) + i) * 31)) * 31)) * 31) + i2;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/z$c.class */
    public static final class c extends p<c> {

        /* renamed from: a  reason: collision with root package name */
        public byte[] f4234a = y.h;

        /* renamed from: b  reason: collision with root package name */
        public byte[][] f4235b = y.g;
        public boolean c = false;

        public c() {
            this.r = null;
            this.s = -1;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.p, com.google.android.gms.internal.v
        public final int a() {
            int a2 = super.a();
            int i = a2;
            if (!Arrays.equals(this.f4234a, y.h)) {
                i = a2 + o.b(1, this.f4234a);
            }
            int i2 = i;
            if (this.f4235b != null) {
                i2 = i;
                if (this.f4235b.length > 0) {
                    int i3 = 0;
                    int i4 = 0;
                    for (int i5 = 0; i5 < this.f4235b.length; i5++) {
                        byte[] bArr = this.f4235b[i5];
                        if (bArr != null) {
                            i4++;
                            i3 = o.a(bArr) + i3;
                        }
                    }
                    i2 = i + i3 + (i4 * 1);
                }
            }
            int i6 = i2;
            if (this.c) {
                i6 = i2 + o.b(3) + 1;
            }
            return i6;
        }

        /* JADX WARN: Type inference failed for: r0v15, types: [byte[], java.lang.Object, byte[][]] */
        /* JADX WARN: Unknown variable types count: 1 */
        @Override // com.google.android.gms.internal.v
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final /* synthetic */ com.google.android.gms.internal.v a(com.google.android.gms.internal.n r7) {
            /*
                r6 = this;
            L_0x0000:
                r0 = r7
                int r0 = r0.a()
                r8 = r0
                r0 = r8
                switch(r0) {
                    case 0: goto L_0x0039;
                    case 10: goto L_0x003b;
                    case 18: goto L_0x0046;
                    case 24: goto L_0x00a8;
                    default: goto L_0x0030;
                }
            L_0x0030:
                r0 = r6
                r1 = r7
                r2 = r8
                boolean r0 = super.a(r1, r2)
                if (r0 != 0) goto L_0x0000
            L_0x0039:
                r0 = r6
                return r0
            L_0x003b:
                r0 = r6
                r1 = r7
                byte[] r1 = r1.d()
                r0.f4234a = r1
                goto L_0x0000
            L_0x0046:
                r0 = r7
                r1 = 18
                int r0 = com.google.android.gms.internal.y.a(r0, r1)
                r9 = r0
                r0 = r6
                byte[][] r0 = r0.f4235b
                if (r0 != 0) goto L_0x008e
                r0 = 0
                r8 = r0
            L_0x0056:
                r0 = r9
                r1 = r8
                int r0 = r0 + r1
                byte[] r0 = new byte[r0]
                r10 = r0
                r0 = r8
                r9 = r0
                r0 = r8
                if (r0 == 0) goto L_0x0072
                r0 = r6
                byte[][] r0 = r0.f4235b
                r1 = 0
                r2 = r10
                r3 = 0
                r4 = r8
                java.lang.System.arraycopy(r0, r1, r2, r3, r4)
                r0 = r8
                r9 = r0
            L_0x0072:
                r0 = r9
                r1 = r10
                int r1 = r1.length
                r2 = 1
                int r1 = r1 - r2
                if (r0 >= r1) goto L_0x0097
                r0 = r10
                r1 = r9
                r2 = r7
                byte[] r2 = r2.d()
                r0[r1] = r2
                r0 = r7
                int r0 = r0.a()
                int r9 = r9 + 1
                goto L_0x0072
            L_0x008e:
                r0 = r6
                byte[][] r0 = r0.f4235b
                int r0 = r0.length
                r8 = r0
                goto L_0x0056
            L_0x0097:
                r0 = r10
                r1 = r9
                r2 = r7
                byte[] r2 = r2.d()
                r0[r1] = r2
                r0 = r6
                r1 = r10
                r0.f4235b = r1
                goto L_0x0000
            L_0x00a8:
                r0 = r6
                r1 = r7
                boolean r1 = r1.b()
                r0.c = r1
                goto L_0x0000
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.z.c.a(com.google.android.gms.internal.n):com.google.android.gms.internal.v");
        }

        @Override // com.google.android.gms.internal.p, com.google.android.gms.internal.v
        public final void a(o oVar) {
            if (!Arrays.equals(this.f4234a, y.h)) {
                oVar.a(1, this.f4234a);
            }
            if (this.f4235b != null && this.f4235b.length > 0) {
                for (int i = 0; i < this.f4235b.length; i++) {
                    byte[] bArr = this.f4235b[i];
                    if (bArr != null) {
                        oVar.a(2, bArr);
                    }
                }
            }
            if (this.c) {
                oVar.a(3, this.c);
            }
            super.a(oVar);
        }

        public final boolean equals(Object obj) {
            boolean z;
            if (obj == this) {
                z = true;
            } else if (!(obj instanceof c)) {
                z = false;
            } else {
                c cVar = (c) obj;
                if (!Arrays.equals(this.f4234a, cVar.f4234a)) {
                    z = false;
                } else if (!t.a(this.f4235b, cVar.f4235b)) {
                    z = false;
                } else if (this.c != cVar.c) {
                    z = false;
                } else if (this.r == null || this.r.c()) {
                    z = true;
                    if (cVar.r != null) {
                        z = true;
                        if (!cVar.r.c()) {
                            z = false;
                        }
                    }
                } else {
                    z = this.r.equals(cVar.r);
                }
            }
            return z;
        }

        public final int hashCode() {
            int hashCode = getClass().getName().hashCode();
            int hashCode2 = Arrays.hashCode(this.f4234a);
            int a2 = t.a(this.f4235b);
            return ((this.r == null || this.r.c()) ? 0 : this.r.hashCode()) + (((this.c ? 1231 : 1237) + ((((((hashCode + 527) * 31) + hashCode2) * 31) + a2) * 31)) * 31);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/z$d.class */
    public static final class d extends p<d> {

        /* renamed from: a  reason: collision with root package name */
        public long f4236a = 0;

        /* renamed from: b  reason: collision with root package name */
        public long f4237b = 0;
        public long c = 0;
        public String d = BuildConfig.FLAVOR;
        public int e = 0;
        public int f = 0;
        public boolean g = false;
        public e[] h = e.b();
        public b i = null;
        public byte[] j = y.h;
        public byte[] k = y.h;
        public byte[] l = y.h;
        public a m = null;
        public String n = BuildConfig.FLAVOR;
        public long o = 180000;
        public c p = null;
        public byte[] q = y.h;
        public int t = 0;
        public int[] u = y.f4228a;
        public long v = 0;
        public f w = null;

        public d() {
            this.r = null;
            this.s = -1;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.p, com.google.android.gms.internal.v
        public final int a() {
            int a2 = super.a();
            int i = a2;
            if (this.f4236a != 0) {
                i = a2 + o.b(1, this.f4236a);
            }
            int i2 = i;
            if (!this.d.equals(BuildConfig.FLAVOR)) {
                i2 = i + o.b(2, this.d);
            }
            int i3 = i2;
            if (this.h != null) {
                i3 = i2;
                if (this.h.length > 0) {
                    for (int i4 = 0; i4 < this.h.length; i4++) {
                        e eVar = this.h[i4];
                        i2 = i2;
                        if (eVar != null) {
                            i2 += o.b(3, eVar);
                        }
                    }
                    i3 = i2;
                }
            }
            int i5 = i3;
            if (!Arrays.equals(this.j, y.h)) {
                i5 = i3 + o.b(6, this.j);
            }
            int i6 = i5;
            if (this.m != null) {
                i6 = i5 + o.b(7, this.m);
            }
            int i7 = i6;
            if (!Arrays.equals(this.k, y.h)) {
                i7 = i6 + o.b(8, this.k);
            }
            int i8 = i7;
            if (this.i != null) {
                i8 = i7 + o.b(9, this.i);
            }
            int i9 = i8;
            if (this.g) {
                i9 = i8 + o.b(10) + 1;
            }
            int i10 = i9;
            if (this.e != 0) {
                i10 = i9 + o.b(11, this.e);
            }
            int i11 = i10;
            if (this.f != 0) {
                i11 = i10 + o.b(12, this.f);
            }
            int i12 = i11;
            if (!Arrays.equals(this.l, y.h)) {
                i12 = i11 + o.b(13, this.l);
            }
            int i13 = i12;
            if (!this.n.equals(BuildConfig.FLAVOR)) {
                i13 = i12 + o.b(14, this.n);
            }
            int i14 = i13;
            if (this.o != 180000) {
                i14 = i13 + o.b(15) + o.b(o.c(this.o));
            }
            int i15 = i14;
            if (this.p != null) {
                i15 = i14 + o.b(16, this.p);
            }
            int i16 = i15;
            if (this.f4237b != 0) {
                i16 = i15 + o.b(17, this.f4237b);
            }
            int i17 = i16;
            if (!Arrays.equals(this.q, y.h)) {
                i17 = i16 + o.b(18, this.q);
            }
            int i18 = i17;
            if (this.t != 0) {
                i18 = i17 + o.b(19, this.t);
            }
            int i19 = i18;
            if (this.u != null) {
                i19 = i18;
                if (this.u.length > 0) {
                    int i20 = 0;
                    for (int i21 = 0; i21 < this.u.length; i21++) {
                        i20 += o.a(this.u[i21]);
                    }
                    i19 = i18 + i20 + (this.u.length * 2);
                }
            }
            int i22 = i19;
            if (this.c != 0) {
                i22 = i19 + o.b(21, this.c);
            }
            int i23 = i22;
            if (this.v != 0) {
                i23 = i22 + o.b(22, this.v);
            }
            int i24 = i23;
            if (this.w != null) {
                i24 = i23 + o.b(23, this.w);
            }
            return i24;
        }

        @Override // com.google.android.gms.internal.v
        public final /* synthetic */ v a(n nVar) {
            while (true) {
                int a2 = nVar.a();
                switch (a2) {
                    case 0:
                        break;
                    case 8:
                        this.f4236a = nVar.f();
                        break;
                    case 18:
                        this.d = nVar.c();
                        break;
                    case 26:
                        int a3 = y.a(nVar, 26);
                        int length = this.h == null ? 0 : this.h.length;
                        e[] eVarArr = new e[a3 + length];
                        int i = length;
                        if (length != 0) {
                            System.arraycopy(this.h, 0, eVarArr, 0, length);
                            i = length;
                        }
                        while (i < eVarArr.length - 1) {
                            eVarArr[i] = new e();
                            nVar.a(eVarArr[i]);
                            nVar.a();
                            i++;
                        }
                        eVarArr[i] = new e();
                        nVar.a(eVarArr[i]);
                        this.h = eVarArr;
                        break;
                    case AsusDeleteDuplicateActivity.DeleteDuplicateTask.DELETE_BATCH_LIMIT /* 50 */:
                        this.j = nVar.d();
                        break;
                    case 58:
                        if (this.m == null) {
                            this.m = new a();
                        }
                        nVar.a(this.m);
                        break;
                    case 66:
                        this.k = nVar.d();
                        break;
                    case 74:
                        if (this.i == null) {
                            this.i = new b();
                        }
                        nVar.a(this.i);
                        break;
                    case 80:
                        this.g = nVar.b();
                        break;
                    case 88:
                        this.e = nVar.e();
                        break;
                    case 96:
                        this.f = nVar.e();
                        break;
                    case 106:
                        this.l = nVar.d();
                        break;
                    case 114:
                        this.n = nVar.c();
                        break;
                    case 120:
                        long f = nVar.f();
                        this.o = (-(f & 1)) ^ (f >>> 1);
                        break;
                    case 130:
                        if (this.p == null) {
                            this.p = new c();
                        }
                        nVar.a(this.p);
                        break;
                    case 136:
                        this.f4237b = nVar.f();
                        break;
                    case 146:
                        this.q = nVar.d();
                        break;
                    case 152:
                        int e = nVar.e();
                        switch (e) {
                            case 0:
                            case 1:
                            case 2:
                                this.t = e;
                                continue;
                        }
                    case 160:
                        int a4 = y.a(nVar, 160);
                        int length2 = this.u == null ? 0 : this.u.length;
                        int[] iArr = new int[a4 + length2];
                        int i2 = length2;
                        if (length2 != 0) {
                            System.arraycopy(this.u, 0, iArr, 0, length2);
                            i2 = length2;
                        }
                        while (i2 < iArr.length - 1) {
                            iArr[i2] = nVar.e();
                            nVar.a();
                            i2++;
                        }
                        iArr[i2] = nVar.e();
                        this.u = iArr;
                        break;
                    case 162:
                        int c = nVar.c(nVar.e());
                        int i3 = nVar.i();
                        int i4 = 0;
                        while (nVar.h() > 0) {
                            nVar.e();
                            i4++;
                        }
                        nVar.e(i3);
                        int length3 = this.u == null ? 0 : this.u.length;
                        int[] iArr2 = new int[i4 + length3];
                        int i5 = length3;
                        if (length3 != 0) {
                            System.arraycopy(this.u, 0, iArr2, 0, length3);
                            i5 = length3;
                        }
                        while (i5 < iArr2.length) {
                            iArr2[i5] = nVar.e();
                            i5++;
                        }
                        this.u = iArr2;
                        nVar.d(c);
                        break;
                    case 168:
                        this.c = nVar.f();
                        break;
                    case 176:
                        this.v = nVar.f();
                        break;
                    case 186:
                        if (this.w == null) {
                            this.w = new f();
                        }
                        nVar.a(this.w);
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
            if (this.f4236a != 0) {
                oVar.a(1, this.f4236a);
            }
            if (!this.d.equals(BuildConfig.FLAVOR)) {
                oVar.a(2, this.d);
            }
            if (this.h != null && this.h.length > 0) {
                for (int i = 0; i < this.h.length; i++) {
                    e eVar = this.h[i];
                    if (eVar != null) {
                        oVar.a(3, eVar);
                    }
                }
            }
            if (!Arrays.equals(this.j, y.h)) {
                oVar.a(6, this.j);
            }
            if (this.m != null) {
                oVar.a(7, this.m);
            }
            if (!Arrays.equals(this.k, y.h)) {
                oVar.a(8, this.k);
            }
            if (this.i != null) {
                oVar.a(9, this.i);
            }
            if (this.g) {
                oVar.a(10, this.g);
            }
            if (this.e != 0) {
                oVar.a(11, this.e);
            }
            if (this.f != 0) {
                oVar.a(12, this.f);
            }
            if (!Arrays.equals(this.l, y.h)) {
                oVar.a(13, this.l);
            }
            if (!this.n.equals(BuildConfig.FLAVOR)) {
                oVar.a(14, this.n);
            }
            if (this.o != 180000) {
                long j = this.o;
                oVar.c(15, 0);
                oVar.a(o.c(j));
            }
            if (this.p != null) {
                oVar.a(16, this.p);
            }
            if (this.f4237b != 0) {
                oVar.a(17, this.f4237b);
            }
            if (!Arrays.equals(this.q, y.h)) {
                oVar.a(18, this.q);
            }
            if (this.t != 0) {
                oVar.a(19, this.t);
            }
            if (this.u != null && this.u.length > 0) {
                for (int i2 = 0; i2 < this.u.length; i2++) {
                    oVar.a(20, this.u[i2]);
                }
            }
            if (this.c != 0) {
                oVar.a(21, this.c);
            }
            if (this.v != 0) {
                oVar.a(22, this.v);
            }
            if (this.w != null) {
                oVar.a(23, this.w);
            }
            super.a(oVar);
        }

        /* JADX WARN: Removed duplicated region for block: B:109:0x0221  */
        /* JADX WARN: Removed duplicated region for block: B:29:0x0080  */
        /* JADX WARN: Removed duplicated region for block: B:30:0x0085  */
        /* JADX WARN: Removed duplicated region for block: B:49:0x00ec  */
        /* JADX WARN: Removed duplicated region for block: B:50:0x00f1  */
        /* JADX WARN: Removed duplicated region for block: B:66:0x0144  */
        /* JADX WARN: Removed duplicated region for block: B:69:0x0150  */
        /* JADX WARN: Removed duplicated region for block: B:74:0x016f  */
        /* JADX WARN: Removed duplicated region for block: B:75:0x0174  */
        /* JADX WARN: Removed duplicated region for block: B:85:0x01a8  */
        /* JADX WARN: Removed duplicated region for block: B:86:0x01ad  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final boolean equals(java.lang.Object r6) {
            /*
                Method dump skipped, instructions count: 577
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.z.d.equals(java.lang.Object):boolean");
        }

        public final int hashCode() {
            int hashCode = getClass().getName().hashCode();
            int i = (int) (this.f4236a ^ (this.f4236a >>> 32));
            int i2 = (int) (this.f4237b ^ (this.f4237b >>> 32));
            int i3 = (int) (this.c ^ (this.c >>> 32));
            int hashCode2 = this.d == null ? 0 : this.d.hashCode();
            int i4 = this.e;
            int i5 = this.f;
            int i6 = this.g ? 1231 : 1237;
            int a2 = t.a(this.h);
            int hashCode3 = this.i == null ? 0 : this.i.hashCode();
            int hashCode4 = Arrays.hashCode(this.j);
            int hashCode5 = Arrays.hashCode(this.k);
            int hashCode6 = Arrays.hashCode(this.l);
            int hashCode7 = this.m == null ? 0 : this.m.hashCode();
            int hashCode8 = this.n == null ? 0 : this.n.hashCode();
            int i7 = (int) (this.o ^ (this.o >>> 32));
            int hashCode9 = this.p == null ? 0 : this.p.hashCode();
            int hashCode10 = Arrays.hashCode(this.q);
            int i8 = this.t;
            int a3 = t.a(this.u);
            int i9 = (int) (this.v ^ (this.v >>> 32));
            int hashCode11 = this.w == null ? 0 : this.w.hashCode();
            int i10 = 0;
            if (this.r != null) {
                i10 = this.r.c() ? 0 : this.r.hashCode();
            }
            return ((hashCode11 + ((((((((((hashCode9 + ((((hashCode8 + ((hashCode7 + ((((((((hashCode3 + ((((i6 + ((((((hashCode2 + ((((((((hashCode + 527) * 31) + i) * 31) + i2) * 31) + i3) * 31)) * 31) + i4) * 31) + i5) * 31)) * 31) + a2) * 31)) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31)) * 31)) * 31) + i7) * 31)) * 31) + hashCode10) * 31) + i8) * 31) + a3) * 31) + i9) * 31)) * 31) + i10;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/z$e.class */
    public static final class e extends p<e> {
        private static volatile e[] c;

        /* renamed from: a  reason: collision with root package name */
        public String f4238a = BuildConfig.FLAVOR;

        /* renamed from: b  reason: collision with root package name */
        public String f4239b = BuildConfig.FLAVOR;

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
            int a2 = super.a();
            int i = a2;
            if (!this.f4238a.equals(BuildConfig.FLAVOR)) {
                i = a2 + o.b(1, this.f4238a);
            }
            int i2 = i;
            if (!this.f4239b.equals(BuildConfig.FLAVOR)) {
                i2 = i + o.b(2, this.f4239b);
            }
            return i2;
        }

        @Override // com.google.android.gms.internal.v
        public final /* synthetic */ v a(n nVar) {
            while (true) {
                int a2 = nVar.a();
                switch (a2) {
                    case 0:
                        break;
                    case 10:
                        this.f4238a = nVar.c();
                        break;
                    case 18:
                        this.f4239b = nVar.c();
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
            if (!this.f4238a.equals(BuildConfig.FLAVOR)) {
                oVar.a(1, this.f4238a);
            }
            if (!this.f4239b.equals(BuildConfig.FLAVOR)) {
                oVar.a(2, this.f4239b);
            }
            super.a(oVar);
        }

        /* JADX WARN: Removed duplicated region for block: B:20:0x0049  */
        /* JADX WARN: Removed duplicated region for block: B:23:0x0055  */
        /* JADX WARN: Removed duplicated region for block: B:32:0x0082  */
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
                boolean r0 = r0 instanceof com.google.android.gms.internal.z.e
                if (r0 != 0) goto L_0x0017
                r0 = 0
                r6 = r0
                goto L_0x0009
            L_0x0017:
                r0 = r4
                com.google.android.gms.internal.z$e r0 = (com.google.android.gms.internal.z.e) r0
                r4 = r0
                r0 = r3
                java.lang.String r0 = r0.f4238a
                if (r0 != 0) goto L_0x002f
                r0 = r4
                java.lang.String r0 = r0.f4238a
                if (r0 == 0) goto L_0x0042
                r0 = 0
                r6 = r0
                goto L_0x0009
            L_0x002f:
                r0 = r3
                java.lang.String r0 = r0.f4238a
                r1 = r4
                java.lang.String r1 = r1.f4238a
                boolean r0 = r0.equals(r1)
                if (r0 != 0) goto L_0x0042
                r0 = 0
                r6 = r0
                goto L_0x0009
            L_0x0042:
                r0 = r3
                java.lang.String r0 = r0.f4239b
                if (r0 != 0) goto L_0x0055
                r0 = r4
                java.lang.String r0 = r0.f4239b
                if (r0 == 0) goto L_0x0068
                r0 = 0
                r6 = r0
                goto L_0x0009
            L_0x0055:
                r0 = r3
                java.lang.String r0 = r0.f4239b
                r1 = r4
                java.lang.String r1 = r1.f4239b
                boolean r0 = r0.equals(r1)
                if (r0 != 0) goto L_0x0068
                r0 = 0
                r6 = r0
                goto L_0x0009
            L_0x0068:
                r0 = r3
                com.google.android.gms.internal.r r0 = r0.r
                if (r0 == 0) goto L_0x0079
                r0 = r3
                com.google.android.gms.internal.r r0 = r0.r
                boolean r0 = r0.c()
                if (r0 == 0) goto L_0x0093
            L_0x0079:
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
            L_0x0093:
                r0 = r3
                com.google.android.gms.internal.r r0 = r0.r
                r1 = r4
                com.google.android.gms.internal.r r1 = r1.r
                boolean r0 = r0.equals(r1)
                r6 = r0
                goto L_0x0009
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.z.e.equals(java.lang.Object):boolean");
        }

        public final int hashCode() {
            int hashCode = getClass().getName().hashCode();
            int hashCode2 = this.f4238a == null ? 0 : this.f4238a.hashCode();
            int hashCode3 = this.f4239b == null ? 0 : this.f4239b.hashCode();
            int i = 0;
            if (this.r != null) {
                i = this.r.c() ? 0 : this.r.hashCode();
            }
            return ((hashCode3 + ((hashCode2 + ((hashCode + 527) * 31)) * 31)) * 31) + i;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/z$f.class */
    public static final class f extends p<f> {

        /* renamed from: a  reason: collision with root package name */
        public int f4240a = -1;

        public f() {
            this.r = null;
            this.s = -1;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.p, com.google.android.gms.internal.v
        public final int a() {
            int a2 = super.a();
            int i = a2;
            if (this.f4240a != -1) {
                i = a2 + o.b(1, this.f4240a);
            }
            return i;
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
                            case p.POSITION_UNCHANGED /* -1 */:
                            case 0:
                            case 1:
                            case 2:
                            case 3:
                            case 4:
                            case 5:
                            case 6:
                            case 7:
                            case 8:
                            case 9:
                            case 10:
                            case 11:
                            case 12:
                            case 13:
                            case AsusRedPointNotificationDualPanelHelper.ID.UPDATE_VERSION /* 14 */:
                            case 15:
                            case 16:
                            case 17:
                                this.f4240a = e;
                                continue;
                        }
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
            if (this.f4240a != -1) {
                oVar.a(1, this.f4240a);
            }
            super.a(oVar);
        }

        public final boolean equals(Object obj) {
            boolean z;
            if (obj == this) {
                z = true;
            } else if (!(obj instanceof f)) {
                z = false;
            } else {
                f fVar = (f) obj;
                if (this.f4240a != fVar.f4240a) {
                    z = false;
                } else if (this.r == null || this.r.c()) {
                    z = true;
                    if (fVar.r != null) {
                        z = true;
                        if (!fVar.r.c()) {
                            z = false;
                        }
                    }
                } else {
                    z = this.r.equals(fVar.r);
                }
            }
            return z;
        }

        public final int hashCode() {
            int hashCode = getClass().getName().hashCode();
            return ((this.r == null || this.r.c()) ? 0 : this.r.hashCode()) + ((((hashCode + 527) * 31) + this.f4240a) * 31);
        }
    }
}
