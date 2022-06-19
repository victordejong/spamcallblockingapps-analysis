package com.bumptech.glide.p207l;

import android.graphics.Bitmap;
import android.util.Log;
import com.bumptech.glide.p207l.AbstractC3984a;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;
import java.util.Iterator;
/* renamed from: com.bumptech.glide.l.e */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/l/e.class */
public class C3989e implements AbstractC3984a {

    /* renamed from: a */
    private static final String f12587a = "e";

    /* renamed from: b */
    private int[] f12588b;

    /* renamed from: c */
    private final int[] f12589c;

    /* renamed from: d */
    private final AbstractC3984a.AbstractC3985a f12590d;

    /* renamed from: e */
    private ByteBuffer f12591e;

    /* renamed from: f */
    private byte[] f12592f;

    /* renamed from: g */
    private short[] f12593g;

    /* renamed from: h */
    private byte[] f12594h;

    /* renamed from: i */
    private byte[] f12595i;

    /* renamed from: j */
    private byte[] f12596j;

    /* renamed from: k */
    private int[] f12597k;

    /* renamed from: l */
    private int f12598l;

    /* renamed from: m */
    private C3987c f12599m;

    /* renamed from: n */
    private Bitmap f12600n;

    /* renamed from: o */
    private boolean f12601o;

    /* renamed from: p */
    private int f12602p;

    /* renamed from: q */
    private int f12603q;

    /* renamed from: r */
    private int f12604r;

    /* renamed from: s */
    private int f12605s;

    /* renamed from: t */
    private Boolean f12606t;

    /* renamed from: u */
    private Bitmap.Config f12607u;

    public C3989e(AbstractC3984a.AbstractC3985a abstractC3985a) {
        this.f12589c = new int[256];
        this.f12607u = Bitmap.Config.ARGB_8888;
        this.f12590d = abstractC3985a;
        this.f12599m = new C3987c();
    }

    public C3989e(AbstractC3984a.AbstractC3985a abstractC3985a, C3987c c3987c, ByteBuffer byteBuffer, int i) {
        this(abstractC3985a);
        m23526r(c3987c, byteBuffer, i);
    }

    /* renamed from: j */
    private int m23534j(int i, int i2, int i3) {
        int i4;
        int i5 = i;
        int i6 = 0;
        int i7 = 0;
        int i8 = 0;
        int i9 = 0;
        int i10 = 0;
        while (true) {
            i4 = i10;
            if (i5 >= this.f12603q + i) {
                break;
            }
            byte[] bArr = this.f12596j;
            if (i5 >= bArr.length || i5 >= i2) {
                break;
            }
            int i11 = this.f12588b[bArr[i5] & 255];
            int i12 = i6;
            int i13 = i7;
            int i14 = i8;
            int i15 = i9;
            int i16 = i4;
            if (i11 != 0) {
                i12 = i6 + ((i11 >> 24) & 255);
                i13 = i7 + ((i11 >> 16) & 255);
                i14 = i8 + ((i11 >> 8) & 255);
                i15 = i9 + (i11 & 255);
                i16 = i4 + 1;
            }
            i5++;
            i6 = i12;
            i7 = i13;
            i8 = i14;
            i9 = i15;
            i10 = i16;
        }
        int i17 = i + i3;
        int i18 = i17;
        int i19 = i7;
        int i20 = i6;
        while (i18 < this.f12603q + i17) {
            byte[] bArr2 = this.f12596j;
            if (i18 >= bArr2.length || i18 >= i2) {
                break;
            }
            int i21 = this.f12588b[bArr2[i18] & 255];
            int i22 = i20;
            int i23 = i19;
            int i24 = i8;
            int i25 = i9;
            int i26 = i4;
            if (i21 != 0) {
                i22 = i20 + ((i21 >> 24) & 255);
                i23 = i19 + ((i21 >> 16) & 255);
                i24 = i8 + ((i21 >> 8) & 255);
                i25 = i9 + (i21 & 255);
                i26 = i4 + 1;
            }
            i18++;
            i20 = i22;
            i19 = i23;
            i8 = i24;
            i9 = i25;
            i4 = i26;
        }
        if (i4 == 0) {
            return 0;
        }
        return ((i20 / i4) << 24) | ((i19 / i4) << 16) | ((i8 / i4) << 8) | (i9 / i4);
    }

    /* renamed from: k */
    private void m23533k(C3986b c3986b) {
        int i;
        int i2;
        int i3;
        Boolean bool;
        int i4;
        int i5;
        int i6;
        Boolean bool2;
        Boolean bool3;
        int[] iArr = this.f12597k;
        int i7 = c3986b.f12562d;
        int i8 = this.f12603q;
        int i9 = i7 / i8;
        int i10 = c3986b.f12560b / i8;
        int i11 = c3986b.f12561c / i8;
        int i12 = c3986b.f12559a / i8;
        boolean z = this.f12598l == 0;
        int i13 = this.f12605s;
        int i14 = this.f12604r;
        byte[] bArr = this.f12596j;
        int[] iArr2 = this.f12588b;
        Boolean bool4 = this.f12606t;
        int i15 = 8;
        int i16 = 0;
        int i17 = 0;
        int i18 = 1;
        while (true) {
            int i19 = i18;
            if (i16 >= i9) {
                break;
            }
            if (c3986b.f12563e) {
                if (i17 >= i9) {
                    i19++;
                    if (i19 == 2) {
                        i17 = 4;
                    } else if (i19 == 3) {
                        i17 = 2;
                        i15 = 4;
                    } else if (i19 == 4) {
                        i17 = 1;
                        i15 = 2;
                    }
                }
                i3 = i17 + i15;
                i2 = i17;
                i = i19;
            } else {
                i2 = i16;
                i = i19;
                i3 = i17;
            }
            int i20 = i2 + i10;
            boolean z2 = i8 == 1;
            if (i20 < i14) {
                int i21 = i20 * i13;
                int i22 = i21 + i12;
                int i23 = i22 + i11;
                int i24 = i21 + i13;
                int i25 = i23;
                if (i24 < i23) {
                    i25 = i24;
                }
                int i26 = i16 * i8 * c3986b.f12561c;
                if (z2) {
                    int i27 = i22;
                    while (true) {
                        i6 = i10;
                        bool = bool4;
                        if (i27 >= i25) {
                            break;
                        }
                        int i28 = iArr2[bArr[i26] & 255];
                        if (i28 != 0) {
                            iArr[i27] = i28;
                            bool3 = bool4;
                        } else {
                            bool3 = bool4;
                            if (z) {
                                bool3 = bool4;
                                if (bool4 == null) {
                                    bool3 = Boolean.TRUE;
                                }
                            }
                        }
                        i26 += i8;
                        i27++;
                        bool4 = bool3;
                    }
                } else {
                    int i29 = i10;
                    int i30 = i26;
                    int i31 = i11;
                    int i32 = i22;
                    while (true) {
                        int i33 = i30;
                        i4 = i29;
                        bool = bool4;
                        i5 = i31;
                        if (i32 < i25) {
                            int m23534j = m23534j(i33, ((i25 - i22) * i8) + i26, c3986b.f12561c);
                            if (m23534j != 0) {
                                iArr[i32] = m23534j;
                                bool2 = bool4;
                            } else {
                                bool2 = bool4;
                                if (z) {
                                    bool2 = bool4;
                                    if (bool4 == null) {
                                        bool2 = Boolean.TRUE;
                                    }
                                }
                            }
                            i30 = i33 + i8;
                            i32++;
                            bool4 = bool2;
                        }
                    }
                    bool4 = bool;
                    i16++;
                    int i34 = i4;
                    i11 = i5;
                    i17 = i3;
                    i10 = i34;
                    i18 = i;
                }
            } else {
                bool = bool4;
                i6 = i10;
            }
            i5 = i11;
            i4 = i6;
            bool4 = bool;
            i16++;
            int i342 = i4;
            i11 = i5;
            i17 = i3;
            i10 = i342;
            i18 = i;
        }
        if (this.f12606t == null) {
            this.f12606t = Boolean.valueOf(bool4 == null ? false : bool4.booleanValue());
        }
    }

    /* renamed from: l */
    private void m23532l(C3986b c3986b) {
        int[] iArr = this.f12597k;
        int i = c3986b.f12562d;
        int i2 = c3986b.f12560b;
        int i3 = c3986b.f12561c;
        int i4 = c3986b.f12559a;
        boolean z = this.f12598l == 0;
        int i5 = this.f12605s;
        byte[] bArr = this.f12596j;
        int[] iArr2 = this.f12588b;
        byte b = -1;
        for (int i6 = 0; i6 < i; i6++) {
            int i7 = (i6 + i2) * i5;
            int i8 = i7 + i4;
            int i9 = i8 + i3;
            int i10 = i7 + i5;
            int i11 = i9;
            if (i10 < i9) {
                i11 = i10;
            }
            int i12 = c3986b.f12561c * i6;
            while (i8 < i11) {
                byte b2 = bArr[i12];
                int i13 = b2 & 255;
                byte b3 = b;
                if (i13 != b) {
                    int i14 = iArr2[i13];
                    if (i14 != 0) {
                        iArr[i8] = i14;
                        b3 = b;
                    } else {
                        b3 = b2;
                    }
                }
                i12++;
                i8++;
                b = b3;
            }
        }
        Boolean bool = this.f12606t;
        this.f12606t = Boolean.valueOf((bool != null && bool.booleanValue()) || (this.f12606t == null && z && b != -1));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: m */
    private void m23531m(C3986b c3986b) {
        int i;
        int i2;
        int i3;
        short s;
        int i4;
        if (c3986b != null) {
            this.f12591e.position(c3986b.f12568j);
        }
        if (c3986b == null) {
            C3987c c3987c = this.f12599m;
            i2 = c3987c.f12575f;
            i = c3987c.f12576g;
        } else {
            i2 = c3986b.f12561c;
            i = c3986b.f12562d;
        }
        int i5 = i2 * i;
        byte[] bArr = this.f12596j;
        if (bArr == null || bArr.length < i5) {
            this.f12596j = this.f12590d.mo23039e(i5);
        }
        byte[] bArr2 = this.f12596j;
        if (this.f12593g == null) {
            this.f12593g = new short[4096];
        }
        short[] sArr = this.f12593g;
        if (this.f12594h == null) {
            this.f12594h = new byte[4096];
        }
        byte[] bArr3 = this.f12594h;
        if (this.f12595i == null) {
            this.f12595i = new byte[4097];
        }
        byte[] bArr4 = this.f12595i;
        int m23527q = m23527q();
        int i6 = 1 << m23527q;
        int i7 = i6 + 2;
        int i8 = m23527q + 1;
        int i9 = (1 << i8) - 1;
        int i10 = 0;
        for (int i11 = 0; i11 < i6; i11++) {
            sArr[i11] = (short) 0;
            bArr3[i11] = (byte) i11;
        }
        byte[] bArr5 = this.f12592f;
        int i12 = i8;
        int i13 = i7;
        int i14 = i9;
        int i15 = 0;
        int i16 = 0;
        int i17 = 0;
        int i18 = 0;
        int i19 = 0;
        int i20 = -1;
        int i21 = 0;
        int i22 = 0;
        while (true) {
            if (i10 >= i5) {
                break;
            }
            int i23 = i15;
            if (i15 == 0) {
                i23 = m23528p();
                if (i23 <= 0) {
                    this.f12602p = 3;
                    break;
                }
                i16 = 0;
            }
            i18 += (bArr5[i16] & 255) << i17;
            int i24 = i16 + 1;
            int i25 = i23 - 1;
            int i26 = i12;
            int i27 = i20;
            int i28 = i21;
            int i29 = i26;
            int i30 = i10;
            int i31 = i7;
            int i32 = i28;
            i17 += 8;
            while (true) {
                if (i17 < i29) {
                    int i33 = i27;
                    int i34 = i32;
                    i12 = i29;
                    i7 = i31;
                    i10 = i30;
                    i15 = i25;
                    i16 = i24;
                    i20 = i33;
                    i21 = i34;
                    break;
                }
                int i35 = i18 & i14;
                i18 >>= i29;
                i17 -= i29;
                if (i35 == i6) {
                    i14 = i9;
                    i29 = i8;
                    i27 = -1;
                    i13 = i31;
                    i31 = i31;
                } else if (i35 == i6 + 1) {
                    int i36 = i32;
                    i7 = i31;
                    i20 = i27;
                    i12 = i29;
                    i10 = i30;
                    i15 = i25;
                    i16 = i24;
                    i21 = i36;
                    break;
                } else if (i27 == -1) {
                    bArr2[i19] = bArr3[i35];
                    i19++;
                    i30++;
                    i27 = i35;
                    i32 = i27;
                } else {
                    if (i35 >= i13) {
                        bArr4[i22] = (byte) i32;
                        i3 = i22 + 1;
                        s = i27;
                    } else {
                        i3 = i22;
                        s = i35;
                    }
                    while (true) {
                        i4 = s;
                        if (i4 < i6) {
                            break;
                        }
                        bArr4[i3] = bArr3[i4];
                        i3++;
                        s = sArr[i4];
                    }
                    int i37 = bArr3[i4] & 255;
                    byte b = (byte) i37;
                    bArr2[i19] = b;
                    i22 = i3;
                    while (true) {
                        i19++;
                        i30++;
                        if (i22 <= 0) {
                            break;
                        }
                        i22--;
                        bArr2[i19] = bArr4[i22];
                    }
                    int i38 = i13;
                    int i39 = i29;
                    int i40 = i14;
                    if (i13 < 4096) {
                        sArr[i13] = (short) i27;
                        bArr3[i13] = b;
                        int i41 = i13 + 1;
                        i38 = i41;
                        i39 = i29;
                        i40 = i14;
                        if ((i41 & i14) == 0) {
                            i38 = i41;
                            i39 = i29;
                            i40 = i14;
                            if (i41 < 4096) {
                                i39 = i29 + 1;
                                i40 = i14 + i41;
                                i38 = i41;
                            }
                        }
                    }
                    i27 = i35;
                    i32 = i37;
                    i13 = i38;
                    i29 = i39;
                    i14 = i40;
                }
            }
        }
        Arrays.fill(bArr2, i19, i5, (byte) 0);
    }

    /* renamed from: o */
    private Bitmap m23529o() {
        Boolean bool = this.f12606t;
        Bitmap mo23043a = this.f12590d.mo23043a(this.f12605s, this.f12604r, (bool == null || bool.booleanValue()) ? Bitmap.Config.ARGB_8888 : this.f12607u);
        mo23043a.setHasAlpha(true);
        return mo23043a;
    }

    /* renamed from: p */
    private int m23528p() {
        int m23527q = m23527q();
        if (m23527q <= 0) {
            return m23527q;
        }
        ByteBuffer byteBuffer = this.f12591e;
        byteBuffer.get(this.f12592f, 0, Math.min(m23527q, byteBuffer.remaining()));
        return m23527q;
    }

    /* renamed from: q */
    private int m23527q() {
        return this.f12591e.get() & 255;
    }

    /* renamed from: s */
    private Bitmap m23525s(C3986b c3986b, C3986b c3986b2) {
        int i;
        int i2;
        Bitmap bitmap;
        int[] iArr = this.f12597k;
        if (c3986b2 == null) {
            Bitmap bitmap2 = this.f12600n;
            if (bitmap2 != null) {
                this.f12590d.mo23041c(bitmap2);
            }
            this.f12600n = null;
            Arrays.fill(iArr, 0);
        }
        if (c3986b2 != null && c3986b2.f12565g == 3 && this.f12600n == null) {
            Arrays.fill(iArr, 0);
        }
        if (c3986b2 != null && (i2 = c3986b2.f12565g) > 0) {
            if (i2 == 2) {
                int i3 = 0;
                if (!c3986b.f12564f) {
                    C3987c c3987c = this.f12599m;
                    i3 = c3987c.f12581l;
                    if (c3986b.f12569k != null && c3987c.f12579j == c3986b.f12566h) {
                        i3 = 0;
                    }
                }
                int i4 = c3986b2.f12562d;
                int i5 = this.f12603q;
                int i6 = i4 / i5;
                int i7 = c3986b2.f12560b / i5;
                int i8 = c3986b2.f12561c / i5;
                int i9 = c3986b2.f12559a / i5;
                int i10 = this.f12605s;
                int i11 = (i7 * i10) + i9;
                int i12 = i11;
                while (true) {
                    int i13 = i12;
                    if (i13 >= (i6 * i10) + i11) {
                        break;
                    }
                    for (int i14 = i13; i14 < i13 + i8; i14++) {
                        iArr[i14] = i3;
                    }
                    i12 = i13 + this.f12605s;
                }
            } else if (i2 == 3 && (bitmap = this.f12600n) != null) {
                int i15 = this.f12605s;
                bitmap.getPixels(iArr, 0, i15, 0, 0, i15, this.f12604r);
            }
        }
        m23531m(c3986b);
        if (c3986b.f12563e || this.f12603q != 1) {
            m23533k(c3986b);
        } else {
            m23532l(c3986b);
        }
        if (this.f12601o && ((i = c3986b.f12565g) == 0 || i == 1)) {
            if (this.f12600n == null) {
                this.f12600n = m23529o();
            }
            Bitmap bitmap3 = this.f12600n;
            int i16 = this.f12605s;
            bitmap3.setPixels(iArr, 0, i16, 0, 0, i16, this.f12604r);
        }
        Bitmap m23529o = m23529o();
        int i17 = this.f12605s;
        m23529o.setPixels(iArr, 0, i17, 0, 0, i17, this.f12604r);
        return m23529o;
    }

    @Override // com.bumptech.glide.p207l.AbstractC3984a
    /* renamed from: a */
    public Bitmap mo23543a() {
        synchronized (this) {
            if (this.f12599m.f12572c <= 0 || this.f12598l < 0) {
                String str = f12587a;
                if (Log.isLoggable(str, 3)) {
                    Log.d(str, "Unable to decode frame, frameCount=" + this.f12599m.f12572c + ", framePointer=" + this.f12598l);
                }
                this.f12602p = 1;
            }
            int i = this.f12602p;
            if (i == 1 || i == 2) {
                String str2 = f12587a;
                if (Log.isLoggable(str2, 3)) {
                    Log.d(str2, "Unable to decode frame, status=" + this.f12602p);
                }
                return null;
            }
            this.f12602p = 0;
            if (this.f12592f == null) {
                this.f12592f = this.f12590d.mo23039e(255);
            }
            C3986b c3986b = this.f12599m.f12574e.get(this.f12598l);
            int i2 = this.f12598l - 1;
            C3986b c3986b2 = i2 >= 0 ? this.f12599m.f12574e.get(i2) : null;
            int[] iArr = c3986b.f12569k;
            if (iArr == null) {
                iArr = this.f12599m.f12570a;
            }
            this.f12588b = iArr;
            if (iArr == null) {
                String str3 = f12587a;
                if (Log.isLoggable(str3, 3)) {
                    Log.d(str3, "No valid color table found for frame #" + this.f12598l);
                }
                this.f12602p = 1;
                return null;
            }
            if (c3986b.f12564f) {
                System.arraycopy(iArr, 0, this.f12589c, 0, iArr.length);
                int[] iArr2 = this.f12589c;
                this.f12588b = iArr2;
                iArr2[c3986b.f12566h] = 0;
                if (c3986b.f12565g == 2 && this.f12598l == 0) {
                    this.f12606t = Boolean.TRUE;
                }
            }
            return m23525s(c3986b, c3986b2);
        }
    }

    @Override // com.bumptech.glide.p207l.AbstractC3984a
    /* renamed from: b */
    public void mo23542b() {
        this.f12598l = (this.f12598l + 1) % this.f12599m.f12572c;
    }

    @Override // com.bumptech.glide.p207l.AbstractC3984a
    /* renamed from: c */
    public int mo23541c() {
        return this.f12599m.f12572c;
    }

    @Override // com.bumptech.glide.p207l.AbstractC3984a
    public void clear() {
        this.f12599m = null;
        byte[] bArr = this.f12596j;
        if (bArr != null) {
            this.f12590d.mo23040d(bArr);
        }
        int[] iArr = this.f12597k;
        if (iArr != null) {
            this.f12590d.mo23038f(iArr);
        }
        Bitmap bitmap = this.f12600n;
        if (bitmap != null) {
            this.f12590d.mo23041c(bitmap);
        }
        this.f12600n = null;
        this.f12591e = null;
        this.f12606t = null;
        byte[] bArr2 = this.f12592f;
        if (bArr2 != null) {
            this.f12590d.mo23040d(bArr2);
        }
    }

    @Override // com.bumptech.glide.p207l.AbstractC3984a
    /* renamed from: d */
    public int mo23540d() {
        int i;
        if (this.f12599m.f12572c <= 0 || (i = this.f12598l) < 0) {
            return 0;
        }
        return m23530n(i);
    }

    @Override // com.bumptech.glide.p207l.AbstractC3984a
    /* renamed from: e */
    public void mo23539e(Bitmap.Config config) {
        if (config == Bitmap.Config.ARGB_8888 || config == Bitmap.Config.RGB_565) {
            this.f12607u = config;
            return;
        }
        throw new IllegalArgumentException("Unsupported format: " + config + ", must be one of " + Bitmap.Config.ARGB_8888 + " or " + Bitmap.Config.RGB_565);
    }

    @Override // com.bumptech.glide.p207l.AbstractC3984a
    /* renamed from: f */
    public ByteBuffer mo23538f() {
        return this.f12591e;
    }

    @Override // com.bumptech.glide.p207l.AbstractC3984a
    /* renamed from: g */
    public void mo23537g() {
        this.f12598l = -1;
    }

    @Override // com.bumptech.glide.p207l.AbstractC3984a
    /* renamed from: h */
    public int mo23536h() {
        return this.f12598l;
    }

    @Override // com.bumptech.glide.p207l.AbstractC3984a
    /* renamed from: i */
    public int mo23535i() {
        return this.f12591e.limit() + this.f12596j.length + (this.f12597k.length * 4);
    }

    /* renamed from: n */
    public int m23530n(int i) {
        int i2;
        if (i >= 0) {
            C3987c c3987c = this.f12599m;
            if (i < c3987c.f12572c) {
                i2 = c3987c.f12574e.get(i).f12567i;
                return i2;
            }
        }
        i2 = -1;
        return i2;
    }

    /* renamed from: r */
    public void m23526r(C3987c c3987c, ByteBuffer byteBuffer, int i) {
        synchronized (this) {
            if (i <= 0) {
                throw new IllegalArgumentException("Sample size must be >=0, not: " + i);
            }
            int highestOneBit = Integer.highestOneBit(i);
            this.f12602p = 0;
            this.f12599m = c3987c;
            this.f12598l = -1;
            ByteBuffer asReadOnlyBuffer = byteBuffer.asReadOnlyBuffer();
            this.f12591e = asReadOnlyBuffer;
            asReadOnlyBuffer.position(0);
            this.f12591e.order(ByteOrder.LITTLE_ENDIAN);
            this.f12601o = false;
            Iterator<C3986b> it = c3987c.f12574e.iterator();
            while (true) {
                if (it.hasNext()) {
                    if (it.next().f12565g == 3) {
                        this.f12601o = true;
                        break;
                    }
                } else {
                    break;
                }
            }
            this.f12603q = highestOneBit;
            int i2 = c3987c.f12575f;
            this.f12605s = i2 / highestOneBit;
            int i3 = c3987c.f12576g;
            this.f12604r = i3 / highestOneBit;
            this.f12596j = this.f12590d.mo23039e(i2 * i3);
            this.f12597k = this.f12590d.mo23042b(this.f12605s * this.f12604r);
        }
    }
}
