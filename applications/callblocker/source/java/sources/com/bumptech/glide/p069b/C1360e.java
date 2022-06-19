package com.bumptech.glide.p069b;

import android.graphics.Bitmap;
import android.util.Log;
import com.bumptech.glide.p069b.AbstractC1355a;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;
import java.util.Iterator;
/* renamed from: com.bumptech.glide.b.e */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/b/e.class */
public class C1360e implements AbstractC1355a {

    /* renamed from: a */
    private static final String f4511a = C1360e.class.getSimpleName();

    /* renamed from: b */
    private int[] f4512b;

    /* renamed from: c */
    private final int[] f4513c;

    /* renamed from: d */
    private final AbstractC1355a.AbstractC1356a f4514d;

    /* renamed from: e */
    private ByteBuffer f4515e;

    /* renamed from: f */
    private byte[] f4516f;

    /* renamed from: g */
    private short[] f4517g;

    /* renamed from: h */
    private byte[] f4518h;

    /* renamed from: i */
    private byte[] f4519i;

    /* renamed from: j */
    private byte[] f4520j;

    /* renamed from: k */
    private int[] f4521k;

    /* renamed from: l */
    private int f4522l;

    /* renamed from: m */
    private C1358c f4523m;

    /* renamed from: n */
    private Bitmap f4524n;

    /* renamed from: o */
    private boolean f4525o;

    /* renamed from: p */
    private int f4526p;

    /* renamed from: q */
    private int f4527q;

    /* renamed from: r */
    private int f4528r;

    /* renamed from: s */
    private int f4529s;

    /* renamed from: t */
    private Boolean f4530t;

    /* renamed from: u */
    private Bitmap.Config f4531u;

    public C1360e(AbstractC1355a.AbstractC1356a abstractC1356a) {
        this.f4513c = new int[256];
        this.f4531u = Bitmap.Config.ARGB_8888;
        this.f4514d = abstractC1356a;
        this.f4523m = new C1358c();
    }

    public C1360e(AbstractC1355a.AbstractC1356a abstractC1356a, C1358c c1358c, ByteBuffer byteBuffer, int i) {
        this(abstractC1356a);
        m17325a(c1358c, byteBuffer, i);
    }

    /* renamed from: a */
    private int m17329a(int i, int i2, int i3) {
        int i4;
        int i5 = i;
        int i6 = 0;
        int i7 = 0;
        int i8 = 0;
        int i9 = 0;
        int i10 = 0;
        while (true) {
            i4 = i10;
            if (i5 >= this.f4527q + i || i5 >= this.f4520j.length || i5 >= i2) {
                break;
            }
            int i11 = this.f4512b[this.f4520j[i5] & 255];
            int i12 = i6;
            int i13 = i7;
            int i14 = i8;
            int i15 = i9;
            int i16 = i4;
            if (i11 != 0) {
                i16 = i4 + ((i11 >> 24) & 255);
                i15 = i9 + ((i11 >> 16) & 255);
                i14 = i8 + ((i11 >> 8) & 255);
                i13 = i7 + (i11 & 255);
                i12 = i6 + 1;
            }
            i5++;
            i6 = i12;
            i7 = i13;
            i8 = i14;
            i9 = i15;
            i10 = i16;
        }
        int i17 = i6;
        int i18 = i + i3;
        while (i18 < i + i3 + this.f4527q && i18 < this.f4520j.length && i18 < i2) {
            int i19 = this.f4512b[this.f4520j[i18] & 255];
            int i20 = i17;
            int i21 = i7;
            int i22 = i8;
            int i23 = i9;
            int i24 = i4;
            if (i19 != 0) {
                i24 = i4 + ((i19 >> 24) & 255);
                i23 = i9 + ((i19 >> 16) & 255);
                i22 = i8 + ((i19 >> 8) & 255);
                i21 = i7 + (i19 & 255);
                i20 = i17 + 1;
            }
            i18++;
            i17 = i20;
            i7 = i21;
            i8 = i22;
            i9 = i23;
            i4 = i24;
        }
        return i17 == 0 ? 0 : ((i4 / i17) << 24) | ((i9 / i17) << 16) | ((i8 / i17) << 8) | (i7 / i17);
    }

    /* renamed from: a */
    private Bitmap m17326a(C1357b c1357b, C1357b c1357b2) {
        int i;
        int[] iArr = this.f4521k;
        if (c1357b2 == null) {
            if (this.f4524n != null) {
                this.f4514d.mo16667a(this.f4524n);
            }
            this.f4524n = null;
            Arrays.fill(iArr, 0);
        }
        if (c1357b2 != null && c1357b2.f4489g == 3 && this.f4524n == null) {
            Arrays.fill(iArr, 0);
        }
        if (c1357b2 != null && c1357b2.f4489g > 0) {
            if (c1357b2.f4489g == 2) {
                if (!c1357b.f4488f) {
                    int i2 = this.f4523m.f4505l;
                    i = i2;
                    if (c1357b.f4493k != null) {
                        i = i2;
                        if (this.f4523m.f4503j == c1357b.f4490h) {
                            i = 0;
                        }
                    }
                } else {
                    if (this.f4522l == 0) {
                        this.f4530t = true;
                    }
                    i = 0;
                }
                int i3 = c1357b2.f4486d / this.f4527q;
                int i4 = c1357b2.f4484b / this.f4527q;
                int i5 = c1357b2.f4485c / this.f4527q;
                int i6 = (i4 * this.f4529s) + (c1357b2.f4483a / this.f4527q);
                int i7 = this.f4529s;
                int i8 = i6;
                while (true) {
                    int i9 = i8;
                    if (i9 >= i6 + (i3 * i7)) {
                        break;
                    }
                    for (int i10 = i9; i10 < i9 + i5; i10++) {
                        iArr[i10] = i;
                    }
                    i8 = i9 + this.f4529s;
                }
            } else if (c1357b2.f4489g == 3 && this.f4524n != null) {
                this.f4524n.getPixels(iArr, 0, this.f4529s, 0, 0, this.f4529s, this.f4528r);
            }
        }
        m17321c(c1357b);
        if (c1357b.f4487e || this.f4527q != 1) {
            m17323b(c1357b);
        } else {
            m17327a(c1357b);
        }
        if (this.f4525o && (c1357b.f4489g == 0 || c1357b.f4489g == 1)) {
            if (this.f4524n == null) {
                this.f4524n = m17312l();
            }
            this.f4524n.setPixels(iArr, 0, this.f4529s, 0, 0, this.f4529s, this.f4528r);
        }
        Bitmap m17312l = m17312l();
        m17312l.setPixels(iArr, 0, this.f4529s, 0, 0, this.f4529s, this.f4528r);
        return m17312l;
    }

    /* renamed from: a */
    private void m17327a(C1357b c1357b) {
        int[] iArr = this.f4521k;
        int i = c1357b.f4486d;
        int i2 = c1357b.f4484b;
        int i3 = c1357b.f4485c;
        int i4 = c1357b.f4483a;
        boolean z = this.f4522l == 0;
        int i5 = this.f4529s;
        byte[] bArr = this.f4520j;
        int[] iArr2 = this.f4512b;
        byte b = -1;
        for (int i6 = 0; i6 < i; i6++) {
            int i7 = (i6 + i2) * i5;
            int i8 = i7 + i4;
            int i9 = i8 + i3;
            int i10 = i9;
            if (i7 + i5 < i9) {
                i10 = i7 + i5;
            }
            int i11 = c1357b.f4485c * i6;
            while (i8 < i10) {
                byte b2 = bArr[i11];
                int i12 = b2 & 255;
                byte b3 = b;
                if (i12 != b) {
                    int i13 = iArr2[i12];
                    if (i13 != 0) {
                        iArr[i8] = i13;
                        b3 = b;
                    } else {
                        b3 = b2;
                    }
                }
                i8++;
                i11++;
                b = b3;
            }
        }
        this.f4530t = Boolean.valueOf(this.f4530t == null && z && b != -1);
    }

    /* renamed from: b */
    private void m17323b(C1357b c1357b) {
        int i;
        int i2;
        int i3;
        Boolean bool;
        Boolean bool2;
        int[] iArr = this.f4521k;
        int i4 = c1357b.f4486d / this.f4527q;
        int i5 = c1357b.f4484b / this.f4527q;
        int i6 = c1357b.f4485c / this.f4527q;
        int i7 = c1357b.f4483a / this.f4527q;
        int i8 = 1;
        int i9 = 8;
        int i10 = 0;
        boolean z = this.f4522l == 0;
        int i11 = this.f4527q;
        int i12 = this.f4529s;
        int i13 = this.f4528r;
        byte[] bArr = this.f4520j;
        int[] iArr2 = this.f4512b;
        Boolean bool3 = this.f4530t;
        int i14 = 0;
        while (i14 < i4) {
            if (c1357b.f4487e) {
                int i15 = i10;
                int i16 = i9;
                int i17 = i8;
                if (i10 >= i4) {
                    i17 = i8 + 1;
                    switch (i17) {
                        case 2:
                            i15 = 4;
                            i16 = i9;
                            break;
                        case 3:
                            i15 = 2;
                            i16 = 4;
                            break;
                        case 4:
                            i15 = 1;
                            i16 = 2;
                            break;
                        default:
                            i16 = i9;
                            i15 = i10;
                            break;
                    }
                }
                i2 = i15 + i16;
                int i18 = i15;
                i9 = i16;
                i3 = i17;
                i = i18;
            } else {
                int i19 = i8;
                i = i14;
                i2 = i10;
                i3 = i19;
            }
            int i20 = i + i5;
            boolean z2 = i11 == 1;
            Boolean bool4 = bool3;
            if (i20 < i13) {
                int i21 = i20 * i12;
                int i22 = i21 + i7;
                int i23 = i22 + i6;
                int i24 = i23;
                if (i21 + i12 < i23) {
                    i24 = i21 + i12;
                }
                int i25 = i14 * i11 * c1357b.f4485c;
                if (z2) {
                    while (i22 < i24) {
                        int i26 = iArr2[bArr[i25] & 255];
                        if (i26 != 0) {
                            iArr[i22] = i26;
                            bool2 = bool3;
                        } else {
                            bool2 = bool3;
                            if (z) {
                                bool2 = bool3;
                                if (bool3 == null) {
                                    bool2 = true;
                                }
                            }
                        }
                        i25 += i11;
                        i22++;
                        bool3 = bool2;
                    }
                    bool4 = bool3;
                } else {
                    int i27 = i22;
                    int i28 = i25;
                    while (i27 < i24) {
                        int m17329a = m17329a(i28, i25 + ((i24 - i22) * i11), c1357b.f4485c);
                        if (m17329a != 0) {
                            iArr[i27] = m17329a;
                            bool = bool3;
                        } else {
                            bool = bool3;
                            if (z) {
                                bool = bool3;
                                if (bool3 == null) {
                                    bool = true;
                                }
                            }
                        }
                        i28 += i11;
                        i27++;
                        bool3 = bool;
                    }
                    bool4 = bool3;
                }
            }
            i14++;
            i10 = i2;
            i8 = i3;
            bool3 = bool4;
        }
        if (this.f4530t == null) {
            this.f4530t = Boolean.valueOf(bool3 == null ? false : bool3.booleanValue());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: c */
    private void m17321c(C1357b c1357b) {
        int i;
        short s;
        int i2;
        int i3;
        int i4;
        if (c1357b != null) {
            this.f4515e.position(c1357b.f4492j);
        }
        int i5 = c1357b == null ? this.f4523m.f4499f * this.f4523m.f4500g : c1357b.f4485c * c1357b.f4486d;
        if (this.f4520j == null || this.f4520j.length < i5) {
            this.f4520j = this.f4514d.mo16669a(i5);
        }
        byte[] bArr = this.f4520j;
        if (this.f4517g == null) {
            this.f4517g = new short[4096];
        }
        short[] sArr = this.f4517g;
        if (this.f4518h == null) {
            this.f4518h = new byte[4096];
        }
        byte[] bArr2 = this.f4518h;
        if (this.f4519i == null) {
            this.f4519i = new byte[4097];
        }
        byte[] bArr3 = this.f4519i;
        int m17314j = m17314j();
        int i6 = 1 << m17314j;
        int i7 = i6 + 2;
        int i8 = -1;
        int i9 = m17314j + 1;
        int i10 = (1 << i9) - 1;
        for (int i11 = 0; i11 < i6; i11++) {
            sArr[i11] = (short) 0;
            bArr2[i11] = (byte) i11;
        }
        byte[] bArr4 = this.f4516f;
        int i12 = 0;
        int i13 = 0;
        int i14 = 0;
        int i15 = 0;
        int i16 = 0;
        int i17 = 0;
        int i18 = 0;
        int i19 = 0;
        while (true) {
            int i20 = i19;
            if (i17 >= i5) {
                break;
            }
            int i21 = i13;
            int i22 = i18;
            if (i18 == 0) {
                i22 = m17313k();
                if (i22 <= 0) {
                    this.f4526p = 3;
                    break;
                }
                i21 = 0;
            }
            byte b = bArr4[i21];
            int i23 = i21 + 1;
            int i24 = i22 - 1;
            int i25 = ((b & 255) << i20) + i16;
            int i26 = i20 + 8;
            int i27 = i15;
            int i28 = i8;
            int i29 = i7;
            int i30 = i10;
            int i31 = i9;
            while (true) {
                if (i26 < i31) {
                    i13 = i23;
                    int i32 = i27;
                    i18 = i24;
                    i9 = i31;
                    i10 = i30;
                    i7 = i29;
                    i8 = i28;
                    i15 = i32;
                    i16 = i25;
                    i19 = i26;
                    break;
                }
                int i33 = i25 & i30;
                i25 >>= i31;
                i26 -= i31;
                if (i33 == i6) {
                    i31 = m17314j + 1;
                    i30 = (1 << i31) - 1;
                    i29 = i6 + 2;
                    i28 = -1;
                } else if (i33 == i6 + 1) {
                    i13 = i23;
                    int i34 = i27;
                    i18 = i24;
                    i9 = i31;
                    i10 = i30;
                    i7 = i29;
                    i8 = i28;
                    i15 = i34;
                    i16 = i25;
                    i19 = i26;
                    break;
                } else if (i28 == -1) {
                    bArr[i12] = bArr2[i33];
                    i12++;
                    i27 = i33;
                    i17++;
                    i28 = i33;
                } else {
                    if (i33 >= i29) {
                        bArr3[i14] = (byte) i27;
                        i = i14 + 1;
                        s = i28;
                    } else {
                        i = i14;
                        s = i33;
                    }
                    while (true) {
                        i2 = s;
                        if (i2 < i6) {
                            break;
                        }
                        bArr3[i] = bArr2[i2];
                        i++;
                        s = sArr[i2];
                    }
                    int i35 = bArr2[i2] & 255;
                    bArr[i12] = (byte) i35;
                    i12++;
                    i14 = i;
                    int i36 = i17 + 1;
                    while (i14 > 0) {
                        i14--;
                        bArr[i12] = bArr3[i14];
                        i36++;
                        i12++;
                    }
                    int i37 = i29;
                    if (i29 < 4096) {
                        sArr[i29] = (short) i28;
                        bArr2[i29] = (byte) i35;
                        i29++;
                        i37 = i29;
                        if ((i29 & i30) == 0) {
                            i37 = i29;
                            if (i29 < 4096) {
                                i3 = i30 + i29;
                                i4 = i31 + 1;
                                i17 = i36;
                                i31 = i4;
                                i30 = i3;
                                i28 = i33;
                                i27 = i35;
                            }
                        }
                    }
                    i3 = i30;
                    i4 = i31;
                    i29 = i37;
                    i17 = i36;
                    i31 = i4;
                    i30 = i3;
                    i28 = i33;
                    i27 = i35;
                }
            }
        }
        Arrays.fill(bArr, i12, i5, (byte) 0);
    }

    /* renamed from: j */
    private int m17314j() {
        return this.f4515e.get() & 255;
    }

    /* renamed from: k */
    private int m17313k() {
        int m17314j = m17314j();
        if (m17314j > 0) {
            this.f4515e.get(this.f4516f, 0, Math.min(m17314j, this.f4515e.remaining()));
        }
        return m17314j;
    }

    /* renamed from: l */
    private Bitmap m17312l() {
        Bitmap mo16668a = this.f4514d.mo16668a(this.f4529s, this.f4528r, (this.f4530t == null || this.f4530t.booleanValue()) ? Bitmap.Config.ARGB_8888 : this.f4531u);
        mo16668a.setHasAlpha(true);
        return mo16668a;
    }

    /* renamed from: a */
    public int m17330a(int i) {
        int i2 = -1;
        if (i >= 0) {
            i2 = -1;
            if (i < this.f4523m.f4496c) {
                i2 = this.f4523m.f4498e.get(i).f4491i;
            }
        }
        return i2;
    }

    @Override // com.bumptech.glide.p069b.AbstractC1355a
    /* renamed from: a */
    public ByteBuffer mo17331a() {
        return this.f4515e;
    }

    @Override // com.bumptech.glide.p069b.AbstractC1355a
    /* renamed from: a */
    public void mo17328a(Bitmap.Config config) {
        if (config == Bitmap.Config.ARGB_8888 || config == Bitmap.Config.RGB_565) {
            this.f4531u = config;
            return;
        }
        throw new IllegalArgumentException("Unsupported format: " + config + ", must be one of " + Bitmap.Config.ARGB_8888 + " or " + Bitmap.Config.RGB_565);
    }

    /* renamed from: a */
    public void m17325a(C1358c c1358c, ByteBuffer byteBuffer, int i) {
        synchronized (this) {
            if (i <= 0) {
                throw new IllegalArgumentException("Sample size must be >=0, not: " + i);
            }
            int highestOneBit = Integer.highestOneBit(i);
            this.f4526p = 0;
            this.f4523m = c1358c;
            this.f4522l = -1;
            this.f4515e = byteBuffer.asReadOnlyBuffer();
            this.f4515e.position(0);
            this.f4515e.order(ByteOrder.LITTLE_ENDIAN);
            this.f4525o = false;
            Iterator<C1357b> it = c1358c.f4498e.iterator();
            while (true) {
                if (it.hasNext()) {
                    if (it.next().f4489g == 3) {
                        this.f4525o = true;
                        break;
                    }
                } else {
                    break;
                }
            }
            this.f4527q = highestOneBit;
            this.f4529s = c1358c.f4499f / highestOneBit;
            this.f4528r = c1358c.f4500g / highestOneBit;
            this.f4520j = this.f4514d.mo16669a(c1358c.f4499f * c1358c.f4500g);
            this.f4521k = this.f4514d.mo16664b(this.f4529s * this.f4528r);
        }
    }

    @Override // com.bumptech.glide.p069b.AbstractC1355a
    /* renamed from: b */
    public void mo17324b() {
        this.f4522l = (this.f4522l + 1) % this.f4523m.f4496c;
    }

    @Override // com.bumptech.glide.p069b.AbstractC1355a
    /* renamed from: c */
    public int mo17322c() {
        return (this.f4523m.f4496c <= 0 || this.f4522l < 0) ? 0 : m17330a(this.f4522l);
    }

    @Override // com.bumptech.glide.p069b.AbstractC1355a
    /* renamed from: d */
    public int mo17320d() {
        return this.f4523m.f4496c;
    }

    @Override // com.bumptech.glide.p069b.AbstractC1355a
    /* renamed from: e */
    public int mo17319e() {
        return this.f4522l;
    }

    @Override // com.bumptech.glide.p069b.AbstractC1355a
    /* renamed from: f */
    public void mo17318f() {
        this.f4522l = -1;
    }

    @Override // com.bumptech.glide.p069b.AbstractC1355a
    /* renamed from: g */
    public int mo17317g() {
        return this.f4515e.limit() + this.f4520j.length + (this.f4521k.length * 4);
    }

    @Override // com.bumptech.glide.p069b.AbstractC1355a
    /* renamed from: h */
    public Bitmap mo17316h() {
        Bitmap bitmap;
        synchronized (this) {
            if (this.f4523m.f4496c <= 0 || this.f4522l < 0) {
                if (Log.isLoggable(f4511a, 3)) {
                    Log.d(f4511a, "Unable to decode frame, frameCount=" + this.f4523m.f4496c + ", framePointer=" + this.f4522l);
                }
                this.f4526p = 1;
            }
            if (this.f4526p == 1 || this.f4526p == 2) {
                if (Log.isLoggable(f4511a, 3)) {
                    Log.d(f4511a, "Unable to decode frame, status=" + this.f4526p);
                }
                bitmap = null;
            } else {
                this.f4526p = 0;
                if (this.f4516f == null) {
                    this.f4516f = this.f4514d.mo16669a(255);
                }
                C1357b c1357b = this.f4523m.f4498e.get(this.f4522l);
                int i = this.f4522l - 1;
                C1357b c1357b2 = i >= 0 ? this.f4523m.f4498e.get(i) : null;
                this.f4512b = c1357b.f4493k != null ? c1357b.f4493k : this.f4523m.f4494a;
                if (this.f4512b == null) {
                    if (Log.isLoggable(f4511a, 3)) {
                        Log.d(f4511a, "No valid color table found for frame #" + this.f4522l);
                    }
                    this.f4526p = 1;
                    bitmap = null;
                } else {
                    if (c1357b.f4488f) {
                        System.arraycopy(this.f4512b, 0, this.f4513c, 0, this.f4512b.length);
                        this.f4512b = this.f4513c;
                        this.f4512b[c1357b.f4490h] = 0;
                    }
                    bitmap = m17326a(c1357b, c1357b2);
                }
            }
        }
        return bitmap;
    }

    @Override // com.bumptech.glide.p069b.AbstractC1355a
    /* renamed from: i */
    public void mo17315i() {
        this.f4523m = null;
        if (this.f4520j != null) {
            this.f4514d.mo16666a(this.f4520j);
        }
        if (this.f4521k != null) {
            this.f4514d.mo16665a(this.f4521k);
        }
        if (this.f4524n != null) {
            this.f4514d.mo16667a(this.f4524n);
        }
        this.f4524n = null;
        this.f4515e = null;
        this.f4530t = null;
        if (this.f4516f != null) {
            this.f4514d.mo16666a(this.f4516f);
        }
    }
}
