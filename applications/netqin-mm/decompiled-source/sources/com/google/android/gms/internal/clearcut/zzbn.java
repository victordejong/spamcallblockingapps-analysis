package com.google.android.gms.internal.clearcut;

import com.google.protobuf.CodedOutputStream;
import java.io.IOException;
import java.nio.BufferOverflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.logging.Level;
import java.util.logging.Logger;
import p131c.p161d.p170b.p224d.p252g.p255c.AbstractC4391o1;
import p131c.p161d.p170b.p224d.p252g.p255c.AbstractC4407r2;
import p131c.p161d.p170b.p224d.p252g.p255c.C4368k2;
import p131c.p161d.p170b.p224d.p252g.p255c.C4382m2;
import p131c.p161d.p170b.p224d.p252g.p255c.C4435y;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/clearcut/zzbn.class */
public abstract class zzbn extends zzba {

    /* renamed from: b */
    public static final Logger f29226b = Logger.getLogger(zzbn.class.getName());

    /* renamed from: c */
    public static final boolean f29227c = C4368k2.m25867b();

    /* renamed from: a */
    public C4435y f29228a;

    /* renamed from: com.google.android.gms.internal.clearcut.zzbn$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/clearcut/zzbn$a.class */
    public static class C7267a extends zzbn {

        /* renamed from: d */
        public final byte[] f29229d;

        /* renamed from: e */
        public final int f29230e;

        /* renamed from: f */
        public final int f29231f;

        /* renamed from: g */
        public int f29232g;

        public C7267a(byte[] bArr, int i, int i2) {
            super();
            if (bArr != null) {
                int i3 = i + i2;
                if ((i | i2 | (bArr.length - i3)) >= 0) {
                    this.f29229d = bArr;
                    this.f29230e = i;
                    this.f29232g = i;
                    this.f29231f = i3;
                    return;
                }
                throw new IllegalArgumentException(String.format("Array range is invalid. Buffer.length=%d, offset=%d, length=%d", Integer.valueOf(bArr.length), Integer.valueOf(i), Integer.valueOf(i2)));
            }
            throw new NullPointerException("buffer");
        }

        @Override // com.google.android.gms.internal.clearcut.zzbn
        /* renamed from: a */
        public void mo10766a() {
        }

        @Override // com.google.android.gms.internal.clearcut.zzbn
        /* renamed from: a */
        public final void mo10765a(byte b) throws IOException {
            try {
                byte[] bArr = this.f29229d;
                int i = this.f29232g;
                this.f29232g = i + 1;
                bArr[i] = b;
            } catch (IndexOutOfBoundsException e) {
                throw new zzc(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f29232g), Integer.valueOf(this.f29231f), 1), e);
            }
        }

        @Override // com.google.android.gms.internal.clearcut.zzbn
        /* renamed from: a */
        public final void mo10764a(int i) throws IOException {
            if (i >= 0) {
                mo10750b(i);
            } else {
                mo10756a(i);
            }
        }

        @Override // com.google.android.gms.internal.clearcut.zzbn
        /* renamed from: a */
        public final void mo10763a(int i, int i2) throws IOException {
            mo10750b((i << 3) | i2);
        }

        @Override // com.google.android.gms.internal.clearcut.zzbn
        /* renamed from: a */
        public final void mo10762a(int i, long j) throws IOException {
            mo10763a(i, 0);
            mo10756a(j);
        }

        @Override // com.google.android.gms.internal.clearcut.zzbn
        /* renamed from: a */
        public final void mo10761a(int i, zzbb zzbbVar) throws IOException {
            mo10763a(i, 2);
            mo10755a(zzbbVar);
        }

        @Override // com.google.android.gms.internal.clearcut.zzbn
        /* renamed from: a */
        public final void mo10760a(int i, zzdo zzdoVar) throws IOException {
            mo10763a(i, 2);
            mo10754a(zzdoVar);
        }

        @Override // com.google.android.gms.internal.clearcut.zzbn
        /* renamed from: a */
        public final void mo10759a(int i, zzdo zzdoVar, AbstractC4391o1 o1Var) throws IOException {
            mo10763a(i, 2);
            zzas zzasVar = (zzas) zzdoVar;
            int a = zzasVar.mo10731a();
            int i2 = a;
            if (a == -1) {
                i2 = o1Var.mo25738c(zzasVar);
                zzasVar.mo10730a(i2);
            }
            mo10750b(i2);
            o1Var.mo25743a((AbstractC4391o1) zzdoVar, (AbstractC4407r2) this.f29228a);
        }

        @Override // com.google.android.gms.internal.clearcut.zzbn
        /* renamed from: a */
        public final void mo10758a(int i, String str) throws IOException {
            mo10763a(i, 2);
            mo10753a(str);
        }

        @Override // com.google.android.gms.internal.clearcut.zzbn
        /* renamed from: a */
        public final void mo10757a(int i, boolean z) throws IOException {
            mo10763a(i, 0);
            mo10765a(z ? (byte) 1 : (byte) 0);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r11v0 */
        /* JADX WARN: Type inference failed for: r11v1 */
        /* JADX WARN: Type inference failed for: r11v2, types: [long] */
        /* JADX WARN: Type inference failed for: r11v3, types: [long] */
        /* JADX WARN: Type inference failed for: r11v4 */
        /* JADX WARN: Type inference failed for: r9v0, types: [long] */
        /* JADX WARN: Unknown variable types count: 1 */
        @Override // com.google.android.gms.internal.clearcut.zzbn
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void mo10756a(long r9) throws java.io.IOException {
            /*
                Method dump skipped, instructions count: 249
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.clearcut.zzbn.C7267a.mo10756a(long):void");
        }

        @Override // com.google.android.gms.internal.clearcut.zzbn
        /* renamed from: a */
        public final void mo10755a(zzbb zzbbVar) throws IOException {
            mo10750b(zzbbVar.size());
            zzbbVar.zza(this);
        }

        @Override // com.google.android.gms.internal.clearcut.zzbn
        /* renamed from: a */
        public final void mo10754a(zzdo zzdoVar) throws IOException {
            mo10750b(zzdoVar.mo10681g());
            zzdoVar.mo10684a(this);
        }

        @Override // com.google.android.gms.internal.clearcut.zzbn
        /* renamed from: a */
        public final void mo10753a(String str) throws IOException {
            int i = this.f29232g;
            try {
                int g = zzbn.m10786g(str.length() * 3);
                int g2 = zzbn.m10786g(str.length());
                if (g2 == g) {
                    int i2 = i + g2;
                    this.f29232g = i2;
                    int a = C4382m2.m25773a(str, this.f29229d, i2, mo10751b());
                    this.f29232g = i;
                    mo10750b((a - i) - g2);
                    this.f29232g = a;
                    return;
                }
                mo10750b(C4382m2.m25775a(str));
                this.f29232g = C4382m2.m25773a(str, this.f29229d, this.f29232g, mo10751b());
            } catch (zzfi e) {
                this.f29232g = i;
                m10823a(str, e);
            } catch (IndexOutOfBoundsException e2) {
                throw new zzc(e2);
            }
        }

        @Override // com.google.android.gms.internal.clearcut.zzba
        /* renamed from: a */
        public final void mo10752a(byte[] bArr, int i, int i2) throws IOException {
            mo10745b(bArr, i, i2);
        }

        @Override // com.google.android.gms.internal.clearcut.zzbn
        /* renamed from: b */
        public final int mo10751b() {
            return this.f29231f - this.f29232g;
        }

        @Override // com.google.android.gms.internal.clearcut.zzbn
        /* renamed from: b */
        public final void mo10750b(int i) throws IOException {
            int i2 = i;
            if (zzbn.f29227c) {
                i2 = i;
                if (mo10751b() >= 10) {
                    while ((i & (-128)) != 0) {
                        byte[] bArr = this.f29229d;
                        int i3 = this.f29232g;
                        this.f29232g = i3 + 1;
                        C4368k2.m25869a(bArr, i3, (byte) ((i & 127) | 128));
                        i >>>= 7;
                    }
                    byte[] bArr2 = this.f29229d;
                    int i4 = this.f29232g;
                    this.f29232g = i4 + 1;
                    C4368k2.m25869a(bArr2, i4, (byte) i);
                    return;
                }
            }
            while ((i2 & (-128)) != 0) {
                try {
                    byte[] bArr3 = this.f29229d;
                    int i5 = this.f29232g;
                    this.f29232g = i5 + 1;
                    bArr3[i5] = (byte) ((i2 & 127) | 128);
                    i2 >>>= 7;
                } catch (IndexOutOfBoundsException e) {
                    throw new zzc(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f29232g), Integer.valueOf(this.f29231f), 1), e);
                }
            }
            byte[] bArr4 = this.f29229d;
            int i6 = this.f29232g;
            this.f29232g = i6 + 1;
            bArr4[i6] = (byte) i2;
        }

        @Override // com.google.android.gms.internal.clearcut.zzbn
        /* renamed from: b */
        public final void mo10749b(int i, int i2) throws IOException {
            mo10763a(i, 0);
            mo10764a(i2);
        }

        @Override // com.google.android.gms.internal.clearcut.zzbn
        /* renamed from: b */
        public final void mo10748b(int i, zzbb zzbbVar) throws IOException {
            mo10763a(1, 3);
            mo10744c(2, i);
            mo10761a(3, zzbbVar);
            mo10763a(1, 4);
        }

        @Override // com.google.android.gms.internal.clearcut.zzbn
        /* renamed from: b */
        public final void mo10747b(int i, zzdo zzdoVar) throws IOException {
            mo10763a(1, 3);
            mo10744c(2, i);
            mo10760a(3, zzdoVar);
            mo10763a(1, 4);
        }

        @Override // com.google.android.gms.internal.clearcut.zzbn
        /* renamed from: b */
        public final void mo10745b(byte[] bArr, int i, int i2) throws IOException {
            try {
                System.arraycopy(bArr, i, this.f29229d, this.f29232g, i2);
                this.f29232g += i2;
            } catch (IndexOutOfBoundsException e) {
                throw new zzc(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f29232g), Integer.valueOf(this.f29231f), Integer.valueOf(i2)), e);
            }
        }

        @Override // com.google.android.gms.internal.clearcut.zzbn
        /* renamed from: c */
        public final void mo10744c(int i, int i2) throws IOException {
            mo10763a(i, 0);
            mo10750b(i2);
        }

        @Override // com.google.android.gms.internal.clearcut.zzbn
        /* renamed from: c */
        public final void mo10743c(int i, long j) throws IOException {
            mo10763a(i, 1);
            mo10742c(j);
        }

        @Override // com.google.android.gms.internal.clearcut.zzbn
        /* renamed from: c */
        public final void mo10742c(long j) throws IOException {
            try {
                byte[] bArr = this.f29229d;
                int i = this.f29232g;
                int i2 = i + 1;
                this.f29232g = i2;
                bArr[i] = (byte) j;
                byte[] bArr2 = this.f29229d;
                int i3 = i2 + 1;
                this.f29232g = i3;
                bArr2[i2] = (byte) (j >> 8);
                byte[] bArr3 = this.f29229d;
                int i4 = i3 + 1;
                this.f29232g = i4;
                bArr3[i3] = (byte) (j >> 16);
                byte[] bArr4 = this.f29229d;
                int i5 = i4 + 1;
                this.f29232g = i5;
                bArr4[i4] = (byte) (j >> 24);
                byte[] bArr5 = this.f29229d;
                int i6 = i5 + 1;
                this.f29232g = i6;
                bArr5[i5] = (byte) (j >> 32);
                byte[] bArr6 = this.f29229d;
                int i7 = i6 + 1;
                this.f29232g = i7;
                bArr6[i6] = (byte) (j >> 40);
                byte[] bArr7 = this.f29229d;
                int i8 = i7 + 1;
                this.f29232g = i8;
                bArr7[i7] = (byte) (j >> 48);
                byte[] bArr8 = this.f29229d;
                this.f29232g = i8 + 1;
                bArr8[i8] = (byte) (j >> 56);
            } catch (IndexOutOfBoundsException e) {
                throw new zzc(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f29232g), Integer.valueOf(this.f29231f), 1), e);
            }
        }

        @Override // com.google.android.gms.internal.clearcut.zzbn
        /* renamed from: c */
        public final void mo10741c(byte[] bArr, int i, int i2) throws IOException {
            mo10750b(i2);
            mo10745b(bArr, 0, i2);
        }

        /* renamed from: d */
        public final int m10769d() {
            return this.f29232g - this.f29230e;
        }

        @Override // com.google.android.gms.internal.clearcut.zzbn
        /* renamed from: d */
        public final void mo10740d(int i) throws IOException {
            try {
                byte[] bArr = this.f29229d;
                int i2 = this.f29232g;
                int i3 = i2 + 1;
                this.f29232g = i3;
                bArr[i2] = (byte) i;
                byte[] bArr2 = this.f29229d;
                int i4 = i3 + 1;
                this.f29232g = i4;
                bArr2[i3] = (byte) (i >> 8);
                byte[] bArr3 = this.f29229d;
                int i5 = i4 + 1;
                this.f29232g = i5;
                bArr3[i4] = (byte) (i >> 16);
                byte[] bArr4 = this.f29229d;
                this.f29232g = i5 + 1;
                bArr4[i5] = (byte) (i >> 24);
            } catch (IndexOutOfBoundsException e) {
                throw new zzc(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f29232g), Integer.valueOf(this.f29231f), 1), e);
            }
        }

        @Override // com.google.android.gms.internal.clearcut.zzbn
        /* renamed from: e */
        public final void mo10739e(int i, int i2) throws IOException {
            mo10763a(i, 5);
            mo10740d(i2);
        }
    }

    /* renamed from: com.google.android.gms.internal.clearcut.zzbn$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/clearcut/zzbn$b.class */
    public static final class C7268b extends C7267a {

        /* renamed from: h */
        public final ByteBuffer f29233h;

        /* renamed from: i */
        public int f29234i;

        public C7268b(ByteBuffer byteBuffer) {
            super(byteBuffer.array(), byteBuffer.arrayOffset() + byteBuffer.position(), byteBuffer.remaining());
            this.f29233h = byteBuffer;
            this.f29234i = byteBuffer.position();
        }

        @Override // com.google.android.gms.internal.clearcut.zzbn.C7267a, com.google.android.gms.internal.clearcut.zzbn
        /* renamed from: a */
        public final void mo10766a() {
            this.f29233h.position(this.f29234i + m10769d());
        }
    }

    /* renamed from: com.google.android.gms.internal.clearcut.zzbn$c */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/clearcut/zzbn$c.class */
    public static final class C7269c extends zzbn {

        /* renamed from: d */
        public final ByteBuffer f29235d;

        /* renamed from: e */
        public final ByteBuffer f29236e;

        public C7269c(ByteBuffer byteBuffer) {
            super();
            this.f29235d = byteBuffer;
            this.f29236e = byteBuffer.duplicate().order(ByteOrder.LITTLE_ENDIAN);
            byteBuffer.position();
        }

        @Override // com.google.android.gms.internal.clearcut.zzbn
        /* renamed from: a */
        public final void mo10766a() {
            this.f29235d.position(this.f29236e.position());
        }

        @Override // com.google.android.gms.internal.clearcut.zzbn
        /* renamed from: a */
        public final void mo10765a(byte b) throws IOException {
            try {
                this.f29236e.put(b);
            } catch (BufferOverflowException e) {
                throw new zzc(e);
            }
        }

        @Override // com.google.android.gms.internal.clearcut.zzbn
        /* renamed from: a */
        public final void mo10764a(int i) throws IOException {
            if (i >= 0) {
                mo10750b(i);
            } else {
                mo10756a(i);
            }
        }

        @Override // com.google.android.gms.internal.clearcut.zzbn
        /* renamed from: a */
        public final void mo10763a(int i, int i2) throws IOException {
            mo10750b((i << 3) | i2);
        }

        @Override // com.google.android.gms.internal.clearcut.zzbn
        /* renamed from: a */
        public final void mo10762a(int i, long j) throws IOException {
            mo10763a(i, 0);
            mo10756a(j);
        }

        @Override // com.google.android.gms.internal.clearcut.zzbn
        /* renamed from: a */
        public final void mo10761a(int i, zzbb zzbbVar) throws IOException {
            mo10763a(i, 2);
            mo10755a(zzbbVar);
        }

        @Override // com.google.android.gms.internal.clearcut.zzbn
        /* renamed from: a */
        public final void mo10760a(int i, zzdo zzdoVar) throws IOException {
            mo10763a(i, 2);
            mo10754a(zzdoVar);
        }

        @Override // com.google.android.gms.internal.clearcut.zzbn
        /* renamed from: a */
        public final void mo10759a(int i, zzdo zzdoVar, AbstractC4391o1 o1Var) throws IOException {
            mo10763a(i, 2);
            m10768b(zzdoVar, o1Var);
        }

        @Override // com.google.android.gms.internal.clearcut.zzbn
        /* renamed from: a */
        public final void mo10758a(int i, String str) throws IOException {
            mo10763a(i, 2);
            mo10753a(str);
        }

        @Override // com.google.android.gms.internal.clearcut.zzbn
        /* renamed from: a */
        public final void mo10757a(int i, boolean z) throws IOException {
            mo10763a(i, 0);
            mo10765a(z ? (byte) 1 : (byte) 0);
        }

        @Override // com.google.android.gms.internal.clearcut.zzbn
        /* renamed from: a */
        public final void mo10756a(long j) throws IOException {
            while (((-128) & j) != 0) {
                try {
                    this.f29236e.put((byte) ((((int) j) & 127) | 128));
                    j >>>= 7;
                } catch (BufferOverflowException e) {
                    throw new zzc(e);
                }
            }
            this.f29236e.put((byte) j);
        }

        @Override // com.google.android.gms.internal.clearcut.zzbn
        /* renamed from: a */
        public final void mo10755a(zzbb zzbbVar) throws IOException {
            mo10750b(zzbbVar.size());
            zzbbVar.zza(this);
        }

        @Override // com.google.android.gms.internal.clearcut.zzbn
        /* renamed from: a */
        public final void mo10754a(zzdo zzdoVar) throws IOException {
            mo10750b(zzdoVar.mo10681g());
            zzdoVar.mo10684a(this);
        }

        @Override // com.google.android.gms.internal.clearcut.zzbn
        /* renamed from: a */
        public final void mo10753a(String str) throws IOException {
            int position = this.f29236e.position();
            try {
                int g = zzbn.m10786g(str.length() * 3);
                int g2 = zzbn.m10786g(str.length());
                if (g2 == g) {
                    int position2 = this.f29236e.position() + g2;
                    this.f29236e.position(position2);
                    m10767c(str);
                    int position3 = this.f29236e.position();
                    this.f29236e.position(position);
                    mo10750b(position3 - position2);
                    this.f29236e.position(position3);
                    return;
                }
                mo10750b(C4382m2.m25775a(str));
                m10767c(str);
            } catch (zzfi e) {
                this.f29236e.position(position);
                m10823a(str, e);
            } catch (IllegalArgumentException e2) {
                throw new zzc(e2);
            }
        }

        @Override // com.google.android.gms.internal.clearcut.zzba
        /* renamed from: a */
        public final void mo10752a(byte[] bArr, int i, int i2) throws IOException {
            mo10745b(bArr, i, i2);
        }

        @Override // com.google.android.gms.internal.clearcut.zzbn
        /* renamed from: b */
        public final int mo10751b() {
            return this.f29236e.remaining();
        }

        @Override // com.google.android.gms.internal.clearcut.zzbn
        /* renamed from: b */
        public final void mo10750b(int i) throws IOException {
            while ((i & (-128)) != 0) {
                try {
                    this.f29236e.put((byte) ((i & 127) | 128));
                    i >>>= 7;
                } catch (BufferOverflowException e) {
                    throw new zzc(e);
                }
            }
            this.f29236e.put((byte) i);
        }

        @Override // com.google.android.gms.internal.clearcut.zzbn
        /* renamed from: b */
        public final void mo10749b(int i, int i2) throws IOException {
            mo10763a(i, 0);
            mo10764a(i2);
        }

        @Override // com.google.android.gms.internal.clearcut.zzbn
        /* renamed from: b */
        public final void mo10748b(int i, zzbb zzbbVar) throws IOException {
            mo10763a(1, 3);
            mo10744c(2, i);
            mo10761a(3, zzbbVar);
            mo10763a(1, 4);
        }

        @Override // com.google.android.gms.internal.clearcut.zzbn
        /* renamed from: b */
        public final void mo10747b(int i, zzdo zzdoVar) throws IOException {
            mo10763a(1, 3);
            mo10744c(2, i);
            mo10760a(3, zzdoVar);
            mo10763a(1, 4);
        }

        /* renamed from: b */
        public final void m10768b(zzdo zzdoVar, AbstractC4391o1 o1Var) throws IOException {
            zzas zzasVar = (zzas) zzdoVar;
            int a = zzasVar.mo10731a();
            int i = a;
            if (a == -1) {
                i = o1Var.mo25738c(zzasVar);
                zzasVar.mo10730a(i);
            }
            mo10750b(i);
            o1Var.mo25743a((AbstractC4391o1) zzdoVar, (AbstractC4407r2) this.f29228a);
        }

        @Override // com.google.android.gms.internal.clearcut.zzbn
        /* renamed from: b */
        public final void mo10745b(byte[] bArr, int i, int i2) throws IOException {
            try {
                this.f29236e.put(bArr, i, i2);
            } catch (IndexOutOfBoundsException e) {
                throw new zzc(e);
            } catch (BufferOverflowException e2) {
                throw new zzc(e2);
            }
        }

        @Override // com.google.android.gms.internal.clearcut.zzbn
        /* renamed from: c */
        public final void mo10744c(int i, int i2) throws IOException {
            mo10763a(i, 0);
            mo10750b(i2);
        }

        @Override // com.google.android.gms.internal.clearcut.zzbn
        /* renamed from: c */
        public final void mo10743c(int i, long j) throws IOException {
            mo10763a(i, 1);
            mo10742c(j);
        }

        @Override // com.google.android.gms.internal.clearcut.zzbn
        /* renamed from: c */
        public final void mo10742c(long j) throws IOException {
            try {
                this.f29236e.putLong(j);
            } catch (BufferOverflowException e) {
                throw new zzc(e);
            }
        }

        /* renamed from: c */
        public final void m10767c(String str) throws IOException {
            try {
                C4382m2.m25774a(str, this.f29236e);
            } catch (IndexOutOfBoundsException e) {
                throw new zzc(e);
            }
        }

        @Override // com.google.android.gms.internal.clearcut.zzbn
        /* renamed from: c */
        public final void mo10741c(byte[] bArr, int i, int i2) throws IOException {
            mo10750b(i2);
            mo10745b(bArr, 0, i2);
        }

        @Override // com.google.android.gms.internal.clearcut.zzbn
        /* renamed from: d */
        public final void mo10740d(int i) throws IOException {
            try {
                this.f29236e.putInt(i);
            } catch (BufferOverflowException e) {
                throw new zzc(e);
            }
        }

        @Override // com.google.android.gms.internal.clearcut.zzbn
        /* renamed from: e */
        public final void mo10739e(int i, int i2) throws IOException {
            mo10763a(i, 5);
            mo10740d(i2);
        }
    }

    /* renamed from: com.google.android.gms.internal.clearcut.zzbn$d */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/clearcut/zzbn$d.class */
    public static final class C7270d extends zzbn {

        /* renamed from: d */
        public final ByteBuffer f29237d;

        /* renamed from: e */
        public final ByteBuffer f29238e;

        /* renamed from: f */
        public final long f29239f;

        /* renamed from: g */
        public final long f29240g;

        /* renamed from: h */
        public final long f29241h;

        /* renamed from: i */
        public final long f29242i;

        /* renamed from: j */
        public long f29243j;

        public C7270d(ByteBuffer byteBuffer) {
            super();
            this.f29237d = byteBuffer;
            this.f29238e = byteBuffer.duplicate().order(ByteOrder.LITTLE_ENDIAN);
            long a = C4368k2.m25871a(byteBuffer);
            this.f29239f = a;
            this.f29240g = a + byteBuffer.position();
            long limit = this.f29239f + byteBuffer.limit();
            this.f29241h = limit;
            this.f29242i = limit - 10;
            this.f29243j = this.f29240g;
        }

        @Override // com.google.android.gms.internal.clearcut.zzbn
        /* renamed from: a */
        public final void mo10766a() {
            this.f29237d.position((int) (this.f29243j - this.f29239f));
        }

        @Override // com.google.android.gms.internal.clearcut.zzbn
        /* renamed from: a */
        public final void mo10765a(byte b) throws IOException {
            long j = this.f29243j;
            if (j < this.f29241h) {
                this.f29243j = 1 + j;
                C4368k2.m25883a(j, b);
                return;
            }
            throw new zzc(String.format("Pos: %d, limit: %d, len: %d", Long.valueOf(this.f29243j), Long.valueOf(this.f29241h), 1));
        }

        @Override // com.google.android.gms.internal.clearcut.zzbn
        /* renamed from: a */
        public final void mo10764a(int i) throws IOException {
            if (i >= 0) {
                mo10750b(i);
            } else {
                mo10756a(i);
            }
        }

        @Override // com.google.android.gms.internal.clearcut.zzbn
        /* renamed from: a */
        public final void mo10763a(int i, int i2) throws IOException {
            mo10750b((i << 3) | i2);
        }

        @Override // com.google.android.gms.internal.clearcut.zzbn
        /* renamed from: a */
        public final void mo10762a(int i, long j) throws IOException {
            mo10763a(i, 0);
            mo10756a(j);
        }

        @Override // com.google.android.gms.internal.clearcut.zzbn
        /* renamed from: a */
        public final void mo10761a(int i, zzbb zzbbVar) throws IOException {
            mo10763a(i, 2);
            mo10755a(zzbbVar);
        }

        @Override // com.google.android.gms.internal.clearcut.zzbn
        /* renamed from: a */
        public final void mo10760a(int i, zzdo zzdoVar) throws IOException {
            mo10763a(i, 2);
            mo10754a(zzdoVar);
        }

        @Override // com.google.android.gms.internal.clearcut.zzbn
        /* renamed from: a */
        public final void mo10759a(int i, zzdo zzdoVar, AbstractC4391o1 o1Var) throws IOException {
            mo10763a(i, 2);
            m10746b(zzdoVar, o1Var);
        }

        @Override // com.google.android.gms.internal.clearcut.zzbn
        /* renamed from: a */
        public final void mo10758a(int i, String str) throws IOException {
            mo10763a(i, 2);
            mo10753a(str);
        }

        @Override // com.google.android.gms.internal.clearcut.zzbn
        /* renamed from: a */
        public final void mo10757a(int i, boolean z) throws IOException {
            mo10763a(i, 0);
            mo10765a(z ? (byte) 1 : (byte) 0);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v20, types: [long] */
        /* JADX WARN: Type inference failed for: r10v0, types: [long] */
        /* JADX WARN: Type inference failed for: r10v1, types: [long] */
        /* JADX WARN: Type inference failed for: r10v2, types: [long] */
        /* JADX WARN: Type inference failed for: r10v3, types: [long] */
        /* JADX WARN: Type inference failed for: r10v4 */
        /* JADX WARN: Type inference failed for: r10v6 */
        /* JADX WARN: Type inference failed for: r10v7 */
        /* JADX WARN: Type inference failed for: r12v0 */
        /* JADX WARN: Type inference failed for: r12v1, types: [long] */
        /* JADX WARN: Type inference failed for: r12v3 */
        /* JADX WARN: Type inference failed for: r12v4 */
        /* JADX WARN: Type inference failed for: r12v6 */
        /* JADX WARN: Unknown variable types count: 4 */
        @Override // com.google.android.gms.internal.clearcut.zzbn
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void mo10756a(long r10) throws java.io.IOException {
            /*
                Method dump skipped, instructions count: 191
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.clearcut.zzbn.C7270d.mo10756a(long):void");
        }

        @Override // com.google.android.gms.internal.clearcut.zzbn
        /* renamed from: a */
        public final void mo10755a(zzbb zzbbVar) throws IOException {
            mo10750b(zzbbVar.size());
            zzbbVar.zza(this);
        }

        @Override // com.google.android.gms.internal.clearcut.zzbn
        /* renamed from: a */
        public final void mo10754a(zzdo zzdoVar) throws IOException {
            mo10750b(zzdoVar.mo10681g());
            zzdoVar.mo10684a(this);
        }

        @Override // com.google.android.gms.internal.clearcut.zzbn
        /* renamed from: a */
        public final void mo10753a(String str) throws IOException {
            long j = this.f29243j;
            try {
                int g = zzbn.m10786g(str.length() * 3);
                int g2 = zzbn.m10786g(str.length());
                if (g2 == g) {
                    int i = ((int) (this.f29243j - this.f29239f)) + g2;
                    this.f29238e.position(i);
                    C4382m2.m25774a(str, this.f29238e);
                    int position = this.f29238e.position() - i;
                    mo10750b(position);
                    this.f29243j += position;
                    return;
                }
                int a = C4382m2.m25775a(str);
                mo10750b(a);
                m10738j(this.f29243j);
                C4382m2.m25774a(str, this.f29238e);
                this.f29243j += a;
            } catch (zzfi e) {
                this.f29243j = j;
                m10738j(j);
                m10823a(str, e);
            } catch (IllegalArgumentException e2) {
                throw new zzc(e2);
            } catch (IndexOutOfBoundsException e3) {
                throw new zzc(e3);
            }
        }

        @Override // com.google.android.gms.internal.clearcut.zzba
        /* renamed from: a */
        public final void mo10752a(byte[] bArr, int i, int i2) throws IOException {
            mo10745b(bArr, i, i2);
        }

        @Override // com.google.android.gms.internal.clearcut.zzbn
        /* renamed from: b */
        public final int mo10751b() {
            return (int) (this.f29241h - this.f29243j);
        }

        @Override // com.google.android.gms.internal.clearcut.zzbn
        /* renamed from: b */
        public final void mo10750b(int i) throws IOException {
            long j;
            int i2 = i;
            if (this.f29243j <= this.f29242i) {
                while ((i & (-128)) != 0) {
                    long j2 = this.f29243j;
                    this.f29243j = j2 + 1;
                    C4368k2.m25883a(j2, (byte) ((i & 127) | 128));
                    i >>>= 7;
                }
                j = this.f29243j;
            } else {
                while (true) {
                    j = this.f29243j;
                    if (j >= this.f29241h) {
                        throw new zzc(String.format("Pos: %d, limit: %d, len: %d", Long.valueOf(this.f29243j), Long.valueOf(this.f29241h), 1));
                    } else if ((i2 & (-128)) == 0) {
                        i = i2;
                        break;
                    } else {
                        this.f29243j = j + 1;
                        C4368k2.m25883a(j, (byte) ((i2 & 127) | 128));
                        i2 >>>= 7;
                    }
                }
            }
            this.f29243j = 1 + j;
            C4368k2.m25883a(j, (byte) i);
        }

        @Override // com.google.android.gms.internal.clearcut.zzbn
        /* renamed from: b */
        public final void mo10749b(int i, int i2) throws IOException {
            mo10763a(i, 0);
            mo10764a(i2);
        }

        @Override // com.google.android.gms.internal.clearcut.zzbn
        /* renamed from: b */
        public final void mo10748b(int i, zzbb zzbbVar) throws IOException {
            mo10763a(1, 3);
            mo10744c(2, i);
            mo10761a(3, zzbbVar);
            mo10763a(1, 4);
        }

        @Override // com.google.android.gms.internal.clearcut.zzbn
        /* renamed from: b */
        public final void mo10747b(int i, zzdo zzdoVar) throws IOException {
            mo10763a(1, 3);
            mo10744c(2, i);
            mo10760a(3, zzdoVar);
            mo10763a(1, 4);
        }

        /* renamed from: b */
        public final void m10746b(zzdo zzdoVar, AbstractC4391o1 o1Var) throws IOException {
            zzas zzasVar = (zzas) zzdoVar;
            int a = zzasVar.mo10731a();
            int i = a;
            if (a == -1) {
                i = o1Var.mo25738c(zzasVar);
                zzasVar.mo10730a(i);
            }
            mo10750b(i);
            o1Var.mo25743a((AbstractC4391o1) zzdoVar, (AbstractC4407r2) this.f29228a);
        }

        @Override // com.google.android.gms.internal.clearcut.zzbn
        /* renamed from: b */
        public final void mo10745b(byte[] bArr, int i, int i2) throws IOException {
            if (bArr != null && i >= 0 && i2 >= 0 && bArr.length - i2 >= i) {
                long j = this.f29241h;
                long j2 = i2;
                long j3 = this.f29243j;
                if (j - j2 >= j3) {
                    C4368k2.m25868a(bArr, i, j3, j2);
                    this.f29243j += j2;
                    return;
                }
            }
            if (bArr == null) {
                throw new NullPointerException("value");
            }
            throw new zzc(String.format("Pos: %d, limit: %d, len: %d", Long.valueOf(this.f29243j), Long.valueOf(this.f29241h), Integer.valueOf(i2)));
        }

        @Override // com.google.android.gms.internal.clearcut.zzbn
        /* renamed from: c */
        public final void mo10744c(int i, int i2) throws IOException {
            mo10763a(i, 0);
            mo10750b(i2);
        }

        @Override // com.google.android.gms.internal.clearcut.zzbn
        /* renamed from: c */
        public final void mo10743c(int i, long j) throws IOException {
            mo10763a(i, 1);
            mo10742c(j);
        }

        @Override // com.google.android.gms.internal.clearcut.zzbn
        /* renamed from: c */
        public final void mo10742c(long j) throws IOException {
            this.f29238e.putLong((int) (this.f29243j - this.f29239f), j);
            this.f29243j += 8;
        }

        @Override // com.google.android.gms.internal.clearcut.zzbn
        /* renamed from: c */
        public final void mo10741c(byte[] bArr, int i, int i2) throws IOException {
            mo10750b(i2);
            mo10745b(bArr, 0, i2);
        }

        @Override // com.google.android.gms.internal.clearcut.zzbn
        /* renamed from: d */
        public final void mo10740d(int i) throws IOException {
            this.f29238e.putInt((int) (this.f29243j - this.f29239f), i);
            this.f29243j += 4;
        }

        @Override // com.google.android.gms.internal.clearcut.zzbn
        /* renamed from: e */
        public final void mo10739e(int i, int i2) throws IOException {
            mo10763a(i, 5);
            mo10740d(i2);
        }

        /* renamed from: j */
        public final void m10738j(long j) {
            this.f29238e.position((int) (j - this.f29239f));
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/clearcut/zzbn$zzc.class */
    public static final class zzc extends IOException {
        public zzc() {
            super(CodedOutputStream.OutOfSpaceException.MESSAGE);
        }

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public zzc(java.lang.String r5) {
            /*
                r4 = this;
                r0 = r5
                java.lang.String r0 = java.lang.String.valueOf(r0)
                r5 = r0
                r0 = r5
                int r0 = r0.length()
                if (r0 == 0) goto L_0x0016
                java.lang.String r0 = "CodedOutputStream was writing to a flat byte array and ran out of space.: "
                r1 = r5
                java.lang.String r0 = r0.concat(r1)
                r5 = r0
                goto L_0x0020
            L_0x0016:
                java.lang.String r0 = new java.lang.String
                r1 = r0
                java.lang.String r2 = "CodedOutputStream was writing to a flat byte array and ran out of space.: "
                r1.<init>(r2)
                r5 = r0
            L_0x0020:
                r0 = r4
                r1 = r5
                r0.<init>(r1)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.clearcut.zzbn.zzc.<init>(java.lang.String):void");
        }

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public zzc(java.lang.String r5, java.lang.Throwable r6) {
            /*
                r4 = this;
                r0 = r5
                java.lang.String r0 = java.lang.String.valueOf(r0)
                r5 = r0
                r0 = r5
                int r0 = r0.length()
                if (r0 == 0) goto L_0x0016
                java.lang.String r0 = "CodedOutputStream was writing to a flat byte array and ran out of space.: "
                r1 = r5
                java.lang.String r0 = r0.concat(r1)
                r5 = r0
                goto L_0x0020
            L_0x0016:
                java.lang.String r0 = new java.lang.String
                r1 = r0
                java.lang.String r2 = "CodedOutputStream was writing to a flat byte array and ran out of space.: "
                r1.<init>(r2)
                r5 = r0
            L_0x0020:
                r0 = r4
                r1 = r5
                r2 = r6
                r0.<init>(r1, r2)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.clearcut.zzbn.zzc.<init>(java.lang.String, java.lang.Throwable):void");
        }

        public zzc(Throwable th) {
            super(CodedOutputStream.OutOfSpaceException.MESSAGE, th);
        }
    }

    public zzbn() {
    }

    /* renamed from: a */
    public static int m10826a(int i, zzcv zzcvVar) {
        int e = m10793e(i);
        int a = zzcvVar.m10692a();
        return e + m10786g(a) + a;
    }

    /* renamed from: a */
    public static int m10825a(zzcv zzcvVar) {
        int a = zzcvVar.m10692a();
        return m10786g(a) + a;
    }

    /* renamed from: a */
    public static int m10824a(zzdo zzdoVar, AbstractC4391o1 o1Var) {
        zzas zzasVar = (zzas) zzdoVar;
        int a = zzasVar.mo10731a();
        int i = a;
        if (a == -1) {
            i = o1Var.mo25738c(zzasVar);
            zzasVar.mo10730a(i);
        }
        return m10786g(i) + i;
    }

    /* renamed from: a */
    public static zzbn m10822a(ByteBuffer byteBuffer) {
        if (byteBuffer.hasArray()) {
            return new C7268b(byteBuffer);
        }
        if (byteBuffer.isDirect() && !byteBuffer.isReadOnly()) {
            return C4368k2.m25861c() ? new C7270d(byteBuffer) : new C7269c(byteBuffer);
        }
        throw new IllegalArgumentException("ByteBuffer is read-only");
    }

    /* renamed from: a */
    public static zzbn m10820a(byte[] bArr) {
        return new C7267a(bArr, 0, bArr.length);
    }

    /* renamed from: b */
    public static int m10819b(double d) {
        return 8;
    }

    /* renamed from: b */
    public static int m10818b(float f) {
        return 4;
    }

    /* renamed from: b */
    public static int m10817b(int i, double d) {
        return m10793e(i) + 8;
    }

    /* renamed from: b */
    public static int m10816b(int i, float f) {
        return m10793e(i) + 4;
    }

    /* renamed from: b */
    public static int m10814b(int i, zzcv zzcvVar) {
        return (m10793e(1) << 1) + m10785g(2, i) + m10826a(3, zzcvVar);
    }

    /* renamed from: b */
    public static int m10813b(int i, zzdo zzdoVar, AbstractC4391o1 o1Var) {
        return m10793e(i) + m10824a(zzdoVar, o1Var);
    }

    /* renamed from: b */
    public static int m10812b(int i, String str) {
        return m10793e(i) + m10807b(str);
    }

    /* renamed from: b */
    public static int m10811b(int i, boolean z) {
        return m10793e(i) + 1;
    }

    /* renamed from: b */
    public static int m10809b(zzbb zzbbVar) {
        int size = zzbbVar.size();
        return m10786g(size) + size;
    }

    /* renamed from: b */
    public static int m10808b(zzdo zzdoVar) {
        int g = zzdoVar.mo10681g();
        return m10786g(g) + g;
    }

    /* renamed from: b */
    public static int m10807b(String str) {
        int i;
        try {
            i = C4382m2.m25775a(str);
        } catch (zzfi e) {
            i = str.getBytes(zzci.f29264a).length;
        }
        return m10786g(i) + i;
    }

    /* renamed from: b */
    public static int m10806b(boolean z) {
        return 1;
    }

    /* renamed from: b */
    public static int m10805b(byte[] bArr) {
        int length = bArr.length;
        return m10786g(length) + length;
    }

    /* renamed from: c */
    public static int m10802c(int i, zzbb zzbbVar) {
        int e = m10793e(i);
        int size = zzbbVar.size();
        return e + m10786g(size) + size;
    }

    /* renamed from: c */
    public static int m10801c(int i, zzdo zzdoVar) {
        return m10793e(i) + m10808b(zzdoVar);
    }

    @Deprecated
    /* renamed from: c */
    public static int m10800c(int i, zzdo zzdoVar, AbstractC4391o1 o1Var) {
        int e = m10793e(i);
        zzas zzasVar = (zzas) zzdoVar;
        int a = zzasVar.mo10731a();
        int i2 = a;
        if (a == -1) {
            i2 = o1Var.mo25738c(zzasVar);
            zzasVar.mo10730a(i2);
        }
        return (e << 1) + i2;
    }

    @Deprecated
    /* renamed from: c */
    public static int m10799c(zzdo zzdoVar) {
        return zzdoVar.mo10681g();
    }

    /* renamed from: d */
    public static int m10797d(int i, long j) {
        return m10793e(i) + m10791e(j);
    }

    /* renamed from: d */
    public static int m10796d(int i, zzbb zzbbVar) {
        return (m10793e(1) << 1) + m10785g(2, i) + m10802c(3, zzbbVar);
    }

    /* renamed from: d */
    public static int m10795d(int i, zzdo zzdoVar) {
        return (m10793e(1) << 1) + m10785g(2, i) + m10801c(3, zzdoVar);
    }

    /* renamed from: d */
    public static int m10794d(long j) {
        return m10791e(j);
    }

    /* renamed from: e */
    public static int m10793e(int i) {
        return m10786g(i << 3);
    }

    /* renamed from: e */
    public static int m10792e(int i, long j) {
        return m10793e(i) + m10791e(j);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v1, types: [long] */
    /* JADX WARN: Type inference failed for: r5v3 */
    /* JADX WARN: Type inference failed for: r5v4 */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v1, types: [long] */
    /* JADX WARN: Type inference failed for: r9v3 */
    /* JADX WARN: Unknown variable types count: 2 */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int m10791e(long r5) {
        /*
            r0 = -128(0xffffffffffffff80, double:NaN)
            r1 = r5
            long r0 = r0 & r1
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x000c
            r0 = 1
            return r0
        L_0x000c:
            r0 = r5
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x0015
            r0 = 10
            return r0
        L_0x0015:
            r0 = -34359738368(0xfffffff800000000, double:NaN)
            r1 = r5
            long r0 = r0 & r1
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x002a
            r0 = 6
            r7 = r0
            r0 = r5
            r1 = 28
            long r0 = r0 >>> r1
            r5 = r0
            goto L_0x002c
        L_0x002a:
            r0 = 2
            r7 = r0
        L_0x002c:
            r0 = r7
            r8 = r0
            r0 = r5
            r9 = r0
            r0 = -2097152(0xffffffffffe00000, double:NaN)
            r1 = r5
            long r0 = r0 & r1
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x0045
            r0 = r7
            r1 = 2
            int r0 = r0 + r1
            r8 = r0
            r0 = r5
            r1 = 14
            long r0 = r0 >>> r1
            r9 = r0
        L_0x0045:
            r0 = r8
            r7 = r0
            r0 = r9
            r1 = -16384(0xffffffffffffc000, double:NaN)
            long r0 = r0 & r1
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x0056
            r0 = r8
            r1 = 1
            int r0 = r0 + r1
            r7 = r0
        L_0x0056:
            r0 = r7
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.clearcut.zzbn.m10791e(long):int");
    }

    /* renamed from: f */
    public static int m10790f(int i) {
        if (i >= 0) {
            return m10786g(i);
        }
        return 10;
    }

    /* renamed from: f */
    public static int m10789f(int i, int i2) {
        return m10793e(i) + m10790f(i2);
    }

    /* renamed from: f */
    public static int m10788f(int i, long j) {
        return m10793e(i) + m10791e(m10776i(j));
    }

    /* renamed from: f */
    public static int m10787f(long j) {
        return m10791e(m10776i(j));
    }

    /* renamed from: g */
    public static int m10786g(int i) {
        if ((i & (-128)) == 0) {
            return 1;
        }
        if ((i & (-16384)) == 0) {
            return 2;
        }
        if (((-2097152) & i) == 0) {
            return 3;
        }
        return (i & (-268435456)) == 0 ? 4 : 5;
    }

    /* renamed from: g */
    public static int m10785g(int i, int i2) {
        return m10793e(i) + m10786g(i2);
    }

    /* renamed from: g */
    public static int m10784g(int i, long j) {
        return m10793e(i) + 8;
    }

    /* renamed from: g */
    public static int m10783g(long j) {
        return 8;
    }

    /* renamed from: h */
    public static int m10782h(int i) {
        return m10786g(m10771l(i));
    }

    /* renamed from: h */
    public static int m10781h(int i, int i2) {
        return m10793e(i) + m10786g(m10771l(i2));
    }

    /* renamed from: h */
    public static int m10780h(int i, long j) {
        return m10793e(i) + 8;
    }

    /* renamed from: h */
    public static int m10779h(long j) {
        return 8;
    }

    /* renamed from: i */
    public static int m10778i(int i) {
        return 4;
    }

    /* renamed from: i */
    public static int m10777i(int i, int i2) {
        return m10793e(i) + 4;
    }

    /* renamed from: i */
    public static long m10776i(long j) {
        return (j >> 63) ^ (j << 1);
    }

    /* renamed from: j */
    public static int m10775j(int i) {
        return 4;
    }

    /* renamed from: j */
    public static int m10774j(int i, int i2) {
        return m10793e(i) + 4;
    }

    /* renamed from: k */
    public static int m10773k(int i) {
        return m10790f(i);
    }

    /* renamed from: k */
    public static int m10772k(int i, int i2) {
        return m10793e(i) + m10790f(i2);
    }

    /* renamed from: l */
    public static int m10771l(int i) {
        return (i >> 31) ^ (i << 1);
    }

    @Deprecated
    /* renamed from: m */
    public static int m10770m(int i) {
        return m10786g(i);
    }

    /* renamed from: a */
    public abstract void mo10766a() throws IOException;

    /* renamed from: a */
    public abstract void mo10765a(byte b) throws IOException;

    /* renamed from: a */
    public final void m10830a(double d) throws IOException {
        mo10742c(Double.doubleToRawLongBits(d));
    }

    /* renamed from: a */
    public final void m10829a(float f) throws IOException {
        mo10740d(Float.floatToRawIntBits(f));
    }

    /* renamed from: a */
    public abstract void mo10764a(int i) throws IOException;

    /* renamed from: a */
    public final void m10828a(int i, double d) throws IOException {
        mo10743c(i, Double.doubleToRawLongBits(d));
    }

    /* renamed from: a */
    public final void m10827a(int i, float f) throws IOException {
        mo10739e(i, Float.floatToRawIntBits(f));
    }

    /* renamed from: a */
    public abstract void mo10763a(int i, int i2) throws IOException;

    /* renamed from: a */
    public abstract void mo10762a(int i, long j) throws IOException;

    /* renamed from: a */
    public abstract void mo10761a(int i, zzbb zzbbVar) throws IOException;

    /* renamed from: a */
    public abstract void mo10760a(int i, zzdo zzdoVar) throws IOException;

    /* renamed from: a */
    public abstract void mo10759a(int i, zzdo zzdoVar, AbstractC4391o1 o1Var) throws IOException;

    /* renamed from: a */
    public abstract void mo10758a(int i, String str) throws IOException;

    /* renamed from: a */
    public abstract void mo10757a(int i, boolean z) throws IOException;

    /* renamed from: a */
    public abstract void mo10756a(long j) throws IOException;

    /* renamed from: a */
    public abstract void mo10755a(zzbb zzbbVar) throws IOException;

    /* renamed from: a */
    public abstract void mo10754a(zzdo zzdoVar) throws IOException;

    /* renamed from: a */
    public abstract void mo10753a(String str) throws IOException;

    /* renamed from: a */
    public final void m10823a(String str, zzfi zzfiVar) throws IOException {
        f29226b.logp(Level.WARNING, "com.google.protobuf.CodedOutputStream", "inefficientWriteStringNoTag", "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!", (Throwable) zzfiVar);
        byte[] bytes = str.getBytes(zzci.f29264a);
        try {
            mo10750b(bytes.length);
            mo10752a(bytes, 0, bytes.length);
        } catch (zzc e) {
            throw e;
        } catch (IndexOutOfBoundsException e2) {
            throw new zzc(e2);
        }
    }

    /* renamed from: a */
    public final void m10821a(boolean z) throws IOException {
        mo10765a(z ? (byte) 1 : (byte) 0);
    }

    /* renamed from: b */
    public abstract int mo10751b();

    /* renamed from: b */
    public abstract void mo10750b(int i) throws IOException;

    /* renamed from: b */
    public abstract void mo10749b(int i, int i2) throws IOException;

    /* renamed from: b */
    public final void m10815b(int i, long j) throws IOException {
        mo10762a(i, m10776i(j));
    }

    /* renamed from: b */
    public abstract void mo10748b(int i, zzbb zzbbVar) throws IOException;

    /* renamed from: b */
    public abstract void mo10747b(int i, zzdo zzdoVar) throws IOException;

    /* renamed from: b */
    public final void m10810b(long j) throws IOException {
        mo10756a(m10776i(j));
    }

    /* renamed from: b */
    public abstract void mo10745b(byte[] bArr, int i, int i2) throws IOException;

    /* renamed from: c */
    public final void m10803c(int i) throws IOException {
        mo10750b(m10771l(i));
    }

    /* renamed from: c */
    public abstract void mo10744c(int i, int i2) throws IOException;

    /* renamed from: c */
    public abstract void mo10743c(int i, long j) throws IOException;

    /* renamed from: c */
    public abstract void mo10742c(long j) throws IOException;

    /* renamed from: c */
    public abstract void mo10741c(byte[] bArr, int i, int i2) throws IOException;

    /* renamed from: d */
    public abstract void mo10740d(int i) throws IOException;

    /* renamed from: d */
    public final void m10798d(int i, int i2) throws IOException {
        mo10744c(i, m10771l(i2));
    }

    /* renamed from: e */
    public abstract void mo10739e(int i, int i2) throws IOException;
}
