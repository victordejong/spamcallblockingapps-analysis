package com.google.android.gms.internal;

import com.android.contacts.activities.AsusDeleteDuplicateActivity;
import com.android.contacts.util.AsusRedPointNotificationDualPanelHelper;
import com.asus.updatesdk.BuildConfig;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/k.class */
public interface k {

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/k$a.class */
    public static final class a extends p<a> {
        private static volatile a[] m;

        /* renamed from: a  reason: collision with root package name */
        public int f4210a = 1;

        /* renamed from: b  reason: collision with root package name */
        public String f4211b = BuildConfig.FLAVOR;
        public a[] c = b();
        public a[] d = b();
        public a[] e = b();
        public String f = BuildConfig.FLAVOR;
        public String g = BuildConfig.FLAVOR;
        public long h = 0;
        public boolean i = false;
        public a[] j = b();
        public int[] k = y.f4228a;
        public boolean l = false;

        public a() {
            this.r = null;
            this.s = -1;
        }

        public static a[] b() {
            if (m == null) {
                synchronized (t.c) {
                    if (m == null) {
                        m = new a[0];
                    }
                }
            }
            return m;
        }

        @Override // com.google.android.gms.internal.p, com.google.android.gms.internal.v
        protected final int a() {
            int i = 0;
            int a2 = super.a() + o.b(1, this.f4210a);
            int i2 = a2;
            if (!this.f4211b.equals(BuildConfig.FLAVOR)) {
                i2 = a2 + o.b(2, this.f4211b);
            }
            int i3 = i2;
            if (this.c != null) {
                i3 = i2;
                if (this.c.length > 0) {
                    for (int i4 = 0; i4 < this.c.length; i4++) {
                        a aVar = this.c[i4];
                        i2 = i2;
                        if (aVar != null) {
                            i2 += o.b(3, aVar);
                        }
                    }
                    i3 = i2;
                }
            }
            i3 = i3;
            if (this.d != null) {
                i3 = i3;
                if (this.d.length > 0) {
                    for (int i5 = 0; i5 < this.d.length; i5++) {
                        a aVar2 = this.d[i5];
                        i3 = i3;
                        if (aVar2 != null) {
                            i3 += o.b(4, aVar2);
                        }
                    }
                }
            }
            int i6 = i3;
            if (this.e != null) {
                i6 = i3;
                if (this.e.length > 0) {
                    for (int i7 = 0; i7 < this.e.length; i7++) {
                        a aVar3 = this.e[i7];
                        i3 = i3;
                        if (aVar3 != null) {
                            i3 += o.b(5, aVar3);
                        }
                    }
                    i6 = i3;
                }
            }
            int i8 = i6;
            if (!this.f.equals(BuildConfig.FLAVOR)) {
                i8 = i6 + o.b(6, this.f);
            }
            int i9 = i8;
            if (!this.g.equals(BuildConfig.FLAVOR)) {
                i9 = i8 + o.b(7, this.g);
            }
            int i10 = i9;
            if (this.h != 0) {
                i10 = i9 + o.b(8, this.h);
            }
            int i11 = i10;
            if (this.l) {
                i11 = i10 + o.b(9) + 1;
            }
            int i12 = i11;
            if (this.k != null) {
                i12 = i11;
                if (this.k.length > 0) {
                    int i13 = 0;
                    for (int i14 = 0; i14 < this.k.length; i14++) {
                        i13 += o.a(this.k[i14]);
                    }
                    i12 = i11 + i13 + (this.k.length * 1);
                }
            }
            int i15 = i12;
            if (this.j != null) {
                i15 = i12;
                if (this.j.length > 0) {
                    while (true) {
                        i15 = i12;
                        if (i >= this.j.length) {
                            break;
                        }
                        a aVar4 = this.j[i];
                        i12 = i12;
                        if (aVar4 != null) {
                            i12 += o.b(11, aVar4);
                        }
                        i++;
                    }
                }
            }
            int i16 = i15;
            if (this.i) {
                i16 = i15 + o.b(12) + 1;
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
                        int e = nVar.e();
                        switch (e) {
                            case 1:
                            case 2:
                            case 3:
                            case 4:
                            case 5:
                            case 6:
                            case 7:
                            case 8:
                                this.f4210a = e;
                                continue;
                        }
                    case 18:
                        this.f4211b = nVar.c();
                        break;
                    case 26:
                        int a3 = y.a(nVar, 26);
                        int length = this.c == null ? 0 : this.c.length;
                        a[] aVarArr = new a[a3 + length];
                        int i = length;
                        if (length != 0) {
                            System.arraycopy(this.c, 0, aVarArr, 0, length);
                            i = length;
                        }
                        while (i < aVarArr.length - 1) {
                            aVarArr[i] = new a();
                            nVar.a(aVarArr[i]);
                            nVar.a();
                            i++;
                        }
                        aVarArr[i] = new a();
                        nVar.a(aVarArr[i]);
                        this.c = aVarArr;
                        break;
                    case 34:
                        int a4 = y.a(nVar, 34);
                        int length2 = this.d == null ? 0 : this.d.length;
                        a[] aVarArr2 = new a[a4 + length2];
                        int i2 = length2;
                        if (length2 != 0) {
                            System.arraycopy(this.d, 0, aVarArr2, 0, length2);
                            i2 = length2;
                        }
                        while (i2 < aVarArr2.length - 1) {
                            aVarArr2[i2] = new a();
                            nVar.a(aVarArr2[i2]);
                            nVar.a();
                            i2++;
                        }
                        aVarArr2[i2] = new a();
                        nVar.a(aVarArr2[i2]);
                        this.d = aVarArr2;
                        break;
                    case 42:
                        int a5 = y.a(nVar, 42);
                        int length3 = this.e == null ? 0 : this.e.length;
                        a[] aVarArr3 = new a[a5 + length3];
                        int i3 = length3;
                        if (length3 != 0) {
                            System.arraycopy(this.e, 0, aVarArr3, 0, length3);
                            i3 = length3;
                        }
                        while (i3 < aVarArr3.length - 1) {
                            aVarArr3[i3] = new a();
                            nVar.a(aVarArr3[i3]);
                            nVar.a();
                            i3++;
                        }
                        aVarArr3[i3] = new a();
                        nVar.a(aVarArr3[i3]);
                        this.e = aVarArr3;
                        break;
                    case AsusDeleteDuplicateActivity.DeleteDuplicateTask.DELETE_BATCH_LIMIT /* 50 */:
                        this.f = nVar.c();
                        break;
                    case 58:
                        this.g = nVar.c();
                        break;
                    case 64:
                        this.h = nVar.f();
                        break;
                    case 72:
                        this.l = nVar.b();
                        break;
                    case 80:
                        int a6 = y.a(nVar, 80);
                        int[] iArr = new int[a6];
                        int i4 = 0;
                        for (int i5 = 0; i5 < a6; i5++) {
                            if (i5 != 0) {
                                nVar.a();
                            }
                            int e2 = nVar.e();
                            switch (e2) {
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
                                    i4++;
                                    iArr[i4] = e2;
                                    break;
                            }
                        }
                        if (i4 == 0) {
                            break;
                        } else {
                            int length4 = this.k == null ? 0 : this.k.length;
                            if (length4 != 0 || i4 != a6) {
                                int[] iArr2 = new int[length4 + i4];
                                if (length4 != 0) {
                                    System.arraycopy(this.k, 0, iArr2, 0, length4);
                                }
                                System.arraycopy(iArr, 0, iArr2, length4, i4);
                                this.k = iArr2;
                                break;
                            } else {
                                this.k = iArr;
                                break;
                            }
                        }
                    case 82:
                        int c = nVar.c(nVar.e());
                        int i6 = nVar.i();
                        int i7 = 0;
                        while (nVar.h() > 0) {
                            switch (nVar.e()) {
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
                                    i7++;
                                    break;
                            }
                        }
                        if (i7 != 0) {
                            nVar.e(i6);
                            int length5 = this.k == null ? 0 : this.k.length;
                            int[] iArr3 = new int[i7 + length5];
                            int i8 = length5;
                            if (length5 != 0) {
                                System.arraycopy(this.k, 0, iArr3, 0, length5);
                                i8 = length5;
                            }
                            while (nVar.h() > 0) {
                                int e3 = nVar.e();
                                switch (e3) {
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
                                        iArr3[i8] = e3;
                                        i8++;
                                        break;
                                }
                            }
                            this.k = iArr3;
                        }
                        nVar.d(c);
                        break;
                    case 90:
                        int a7 = y.a(nVar, 90);
                        int length6 = this.j == null ? 0 : this.j.length;
                        a[] aVarArr4 = new a[a7 + length6];
                        int i9 = length6;
                        if (length6 != 0) {
                            System.arraycopy(this.j, 0, aVarArr4, 0, length6);
                            i9 = length6;
                        }
                        while (i9 < aVarArr4.length - 1) {
                            aVarArr4[i9] = new a();
                            nVar.a(aVarArr4[i9]);
                            nVar.a();
                            i9++;
                        }
                        aVarArr4[i9] = new a();
                        nVar.a(aVarArr4[i9]);
                        this.j = aVarArr4;
                        break;
                    case 96:
                        this.i = nVar.b();
                        break;
                    default:
                        if (!super.a(nVar, a2)) {
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
            oVar.a(1, this.f4210a);
            if (!this.f4211b.equals(BuildConfig.FLAVOR)) {
                oVar.a(2, this.f4211b);
            }
            if (this.c != null && this.c.length > 0) {
                for (int i = 0; i < this.c.length; i++) {
                    a aVar = this.c[i];
                    if (aVar != null) {
                        oVar.a(3, aVar);
                    }
                }
            }
            if (this.d != null && this.d.length > 0) {
                for (int i2 = 0; i2 < this.d.length; i2++) {
                    a aVar2 = this.d[i2];
                    if (aVar2 != null) {
                        oVar.a(4, aVar2);
                    }
                }
            }
            if (this.e != null && this.e.length > 0) {
                for (int i3 = 0; i3 < this.e.length; i3++) {
                    a aVar3 = this.e[i3];
                    if (aVar3 != null) {
                        oVar.a(5, aVar3);
                    }
                }
            }
            if (!this.f.equals(BuildConfig.FLAVOR)) {
                oVar.a(6, this.f);
            }
            if (!this.g.equals(BuildConfig.FLAVOR)) {
                oVar.a(7, this.g);
            }
            if (this.h != 0) {
                oVar.a(8, this.h);
            }
            if (this.l) {
                oVar.a(9, this.l);
            }
            if (this.k != null && this.k.length > 0) {
                for (int i4 = 0; i4 < this.k.length; i4++) {
                    oVar.a(10, this.k[i4]);
                }
            }
            if (this.j != null && this.j.length > 0) {
                for (int i5 = 0; i5 < this.j.length; i5++) {
                    a aVar4 = this.j[i5];
                    if (aVar4 != null) {
                        oVar.a(11, aVar4);
                    }
                }
            }
            if (this.i) {
                oVar.a(12, this.i);
            }
            super.a(oVar);
        }

        /* JADX WARN: Removed duplicated region for block: B:23:0x0060  */
        /* JADX WARN: Removed duplicated region for block: B:24:0x0065  */
        /* JADX WARN: Removed duplicated region for block: B:40:0x00b8  */
        /* JADX WARN: Removed duplicated region for block: B:43:0x00c4  */
        /* JADX WARN: Removed duplicated region for block: B:48:0x00e3  */
        /* JADX WARN: Removed duplicated region for block: B:49:0x00e8  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final boolean equals(java.lang.Object r6) {
            /*
                Method dump skipped, instructions count: 360
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.k.a.equals(java.lang.Object):boolean");
        }

        public final int hashCode() {
            int i = 1231;
            int hashCode = getClass().getName().hashCode();
            int i2 = this.f4210a;
            int hashCode2 = this.f4211b == null ? 0 : this.f4211b.hashCode();
            int a2 = t.a(this.c);
            int a3 = t.a(this.d);
            int a4 = t.a(this.e);
            int hashCode3 = this.f == null ? 0 : this.f.hashCode();
            int hashCode4 = this.g == null ? 0 : this.g.hashCode();
            int i3 = (int) (this.h ^ (this.h >>> 32));
            int i4 = this.i ? 1231 : 1237;
            int a5 = t.a(this.j);
            int a6 = t.a(this.k);
            if (!this.l) {
                i = 1237;
            }
            int i5 = 0;
            if (this.r != null) {
                i5 = this.r.c() ? 0 : this.r.hashCode();
            }
            return ((((((((i4 + ((((hashCode4 + ((hashCode3 + ((((((((hashCode2 + ((((hashCode + 527) * 31) + i2) * 31)) * 31) + a2) * 31) + a3) * 31) + a4) * 31)) * 31)) * 31) + i3) * 31)) * 31) + a5) * 31) + a6) * 31) + i) * 31) + i5;
        }
    }
}
