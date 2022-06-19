package com.bumptech.glide.p109b;

import android.graphics.Bitmap;
import android.util.Log;
import com.bumptech.glide.p109b.AbstractC3542a;
import io.objectbox.model.PropertyFlags;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Iterator;
/* renamed from: com.bumptech.glide.b.e */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/b/e.class */
public class C3547e implements AbstractC3542a {

    /* renamed from: a */
    private static final String f13507a = "e";

    /* renamed from: b */
    private int[] f13508b;

    /* renamed from: c */
    private final int[] f13509c;

    /* renamed from: d */
    private final AbstractC3542a.AbstractC3543a f13510d;

    /* renamed from: e */
    private ByteBuffer f13511e;

    /* renamed from: f */
    private byte[] f13512f;

    /* renamed from: g */
    private C3546d f13513g;

    /* renamed from: h */
    private short[] f13514h;

    /* renamed from: i */
    private byte[] f13515i;

    /* renamed from: j */
    private byte[] f13516j;

    /* renamed from: k */
    private byte[] f13517k;

    /* renamed from: l */
    private int[] f13518l;

    /* renamed from: m */
    private int f13519m;

    /* renamed from: n */
    private C3545c f13520n;

    /* renamed from: o */
    private Bitmap f13521o;

    /* renamed from: p */
    private boolean f13522p;

    /* renamed from: q */
    private int f13523q;

    /* renamed from: r */
    private int f13524r;

    /* renamed from: s */
    private int f13525s;

    /* renamed from: t */
    private int f13526t;

    /* renamed from: u */
    private Boolean f13527u;

    /* renamed from: v */
    private Bitmap.Config f13528v;

    public C3547e(AbstractC3542a.AbstractC3543a abstractC3543a) {
        this.f13509c = new int[PropertyFlags.INDEX_PARTIAL_SKIP_NULL];
        this.f13528v = Bitmap.Config.ARGB_8888;
        this.f13510d = abstractC3543a;
        this.f13520n = new C3545c();
    }

    public C3547e(AbstractC3542a.AbstractC3543a abstractC3543a, C3545c c3545c, ByteBuffer byteBuffer) {
        this(abstractC3543a, c3545c, byteBuffer, 1);
    }

    public C3547e(AbstractC3542a.AbstractC3543a abstractC3543a, C3545c c3545c, ByteBuffer byteBuffer, int i) {
        this(abstractC3543a);
        m37738a(c3545c, byteBuffer, i);
    }

    /* renamed from: a */
    private int m37735a(byte[] bArr) {
        int i;
        synchronized (this) {
            if (this.f13513g == null) {
                this.f13513g = new C3546d();
            }
            C3546d c3546d = this.f13513g;
            if (bArr != null) {
                c3546d.m37750a(ByteBuffer.wrap(bArr));
            } else {
                c3546d.f13503a = null;
                c3546d.f13504b.f13491b = 2;
            }
            C3545c m37752a = c3546d.m37752a();
            this.f13520n = m37752a;
            if (bArr != null) {
                m37737a(m37752a, bArr);
            }
            i = this.f13523q;
        }
        return i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x007e, code lost:
        if (r9.f13520n.f13499j == r10.f13486h) goto L27;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:253:0x011e A[EDGE_INSN: B:253:0x011e->B:41:0x011e ?: BREAK  , SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00d1  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private android.graphics.Bitmap m37740a(com.bumptech.glide.p109b.C3544b r10, com.bumptech.glide.p109b.C3544b r11) {
        /*
            Method dump skipped, instructions count: 2548
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.p109b.C3547e.m37740a(com.bumptech.glide.b.b, com.bumptech.glide.b.b):android.graphics.Bitmap");
    }

    /* renamed from: a */
    private void m37739a(C3545c c3545c, ByteBuffer byteBuffer) {
        synchronized (this) {
            m37738a(c3545c, byteBuffer, 1);
        }
    }

    /* renamed from: a */
    private void m37738a(C3545c c3545c, ByteBuffer byteBuffer, int i) {
        synchronized (this) {
            if (i <= 0) {
                throw new IllegalArgumentException("Sample size must be >=0, not: ".concat(String.valueOf(i)));
            }
            int highestOneBit = Integer.highestOneBit(i);
            this.f13523q = 0;
            this.f13520n = c3545c;
            this.f13519m = -1;
            ByteBuffer asReadOnlyBuffer = byteBuffer.asReadOnlyBuffer();
            this.f13511e = asReadOnlyBuffer;
            asReadOnlyBuffer.position(0);
            this.f13511e.order(ByteOrder.LITTLE_ENDIAN);
            this.f13522p = false;
            Iterator<C3544b> it2 = c3545c.f13494e.iterator();
            while (true) {
                if (it2.hasNext()) {
                    if (it2.next().f13485g == 3) {
                        this.f13522p = true;
                        break;
                    }
                } else {
                    break;
                }
            }
            this.f13524r = highestOneBit;
            this.f13526t = c3545c.f13495f / highestOneBit;
            this.f13525s = c3545c.f13496g / highestOneBit;
            this.f13517k = this.f13510d.mo37229a(c3545c.f13495f * c3545c.f13496g);
            this.f13518l = this.f13510d.mo37224b(this.f13526t * this.f13525s);
        }
    }

    /* renamed from: a */
    private void m37737a(C3545c c3545c, byte[] bArr) {
        synchronized (this) {
            m37739a(c3545c, ByteBuffer.wrap(bArr));
        }
    }

    /* renamed from: k */
    private int m37725k() {
        return this.f13511e.get() & 255;
    }

    /* renamed from: l */
    private Bitmap m37724l() {
        Boolean bool = this.f13527u;
        Bitmap mo37228a = this.f13510d.mo37228a(this.f13526t, this.f13525s, (bool == null || bool.booleanValue()) ? Bitmap.Config.ARGB_8888 : this.f13528v);
        mo37228a.setHasAlpha(true);
        return mo37228a;
    }

    @Override // com.bumptech.glide.p109b.AbstractC3542a
    /* renamed from: a */
    public final int mo37736a(InputStream inputStream, int i) {
        if (inputStream != null) {
            try {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(i > 0 ? i + 4096 : 16384);
                byte[] bArr = new byte[16384];
                while (true) {
                    int read = inputStream.read(bArr, 0, 16384);
                    if (read == -1) {
                        break;
                    }
                    byteArrayOutputStream.write(bArr, 0, read);
                }
                byteArrayOutputStream.flush();
                m37735a(byteArrayOutputStream.toByteArray());
            } catch (IOException e) {
                Log.w(f13507a, "Error reading data from stream", e);
            }
        } else {
            this.f13523q = 2;
        }
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException e2) {
                Log.w(f13507a, "Error closing stream", e2);
            }
        }
        return this.f13523q;
    }

    @Override // com.bumptech.glide.p109b.AbstractC3542a
    /* renamed from: a */
    public final ByteBuffer mo37742a() {
        return this.f13511e;
    }

    @Override // com.bumptech.glide.p109b.AbstractC3542a
    /* renamed from: a */
    public final void mo37741a(Bitmap.Config config) {
        if (config == Bitmap.Config.ARGB_8888 || config == Bitmap.Config.RGB_565) {
            this.f13528v = config;
            return;
        }
        throw new IllegalArgumentException("Unsupported format: " + config + ", must be one of " + Bitmap.Config.ARGB_8888 + " or " + Bitmap.Config.RGB_565);
    }

    @Override // com.bumptech.glide.p109b.AbstractC3542a
    /* renamed from: b */
    public final void mo37734b() {
        this.f13519m = (this.f13519m + 1) % this.f13520n.f13492c;
    }

    @Override // com.bumptech.glide.p109b.AbstractC3542a
    /* renamed from: c */
    public final int mo37733c() {
        int i;
        if (this.f13520n.f13492c <= 0 || (i = this.f13519m) < 0) {
            return 0;
        }
        int i2 = -1;
        if (i >= 0) {
            i2 = -1;
            if (i < this.f13520n.f13492c) {
                i2 = this.f13520n.f13494e.get(i).f13487i;
            }
        }
        return i2;
    }

    @Override // com.bumptech.glide.p109b.AbstractC3542a
    /* renamed from: d */
    public final int mo37732d() {
        return this.f13520n.f13492c;
    }

    @Override // com.bumptech.glide.p109b.AbstractC3542a
    /* renamed from: e */
    public final int mo37731e() {
        return this.f13519m;
    }

    @Override // com.bumptech.glide.p109b.AbstractC3542a
    /* renamed from: f */
    public final void mo37730f() {
        this.f13519m = -1;
    }

    @Override // com.bumptech.glide.p109b.AbstractC3542a
    /* renamed from: g */
    public final int mo37729g() {
        if (this.f13520n.f13502m == -1) {
            return 1;
        }
        if (this.f13520n.f13502m != 0) {
            return this.f13520n.f13502m + 1;
        }
        return 0;
    }

    @Override // com.bumptech.glide.p109b.AbstractC3542a
    /* renamed from: h */
    public final int mo37728h() {
        return this.f13511e.limit() + this.f13517k.length + (this.f13518l.length * 4);
    }

    @Override // com.bumptech.glide.p109b.AbstractC3542a
    /* renamed from: i */
    public final Bitmap mo37727i() {
        synchronized (this) {
            if (this.f13520n.f13492c <= 0 || this.f13519m < 0) {
                if (Log.isLoggable(f13507a, 3)) {
                    StringBuilder sb = new StringBuilder("Unable to decode frame, frameCount=");
                    sb.append(this.f13520n.f13492c);
                    sb.append(", framePointer=");
                    sb.append(this.f13519m);
                }
                this.f13523q = 1;
            }
            int i = this.f13523q;
            if (i == 1 || i == 2) {
                if (Log.isLoggable(f13507a, 3)) {
                    new StringBuilder("Unable to decode frame, status=").append(this.f13523q);
                }
                return null;
            }
            this.f13523q = 0;
            if (this.f13512f == null) {
                this.f13512f = this.f13510d.mo37229a(255);
            }
            C3544b c3544b = this.f13520n.f13494e.get(this.f13519m);
            int i2 = this.f13519m - 1;
            C3544b c3544b2 = i2 >= 0 ? this.f13520n.f13494e.get(i2) : null;
            int[] iArr = c3544b.f13489k != null ? c3544b.f13489k : this.f13520n.f13490a;
            this.f13508b = iArr;
            if (iArr == null) {
                if (Log.isLoggable(f13507a, 3)) {
                    new StringBuilder("No valid color table found for frame #").append(this.f13519m);
                }
                this.f13523q = 1;
                return null;
            }
            if (c3544b.f13484f) {
                int[] iArr2 = this.f13508b;
                System.arraycopy(iArr2, 0, this.f13509c, 0, iArr2.length);
                int[] iArr3 = this.f13509c;
                this.f13508b = iArr3;
                iArr3[c3544b.f13486h] = 0;
                if (c3544b.f13485g == 2 && this.f13519m == 0) {
                    this.f13527u = Boolean.TRUE;
                }
            }
            return m37740a(c3544b, c3544b2);
        }
    }

    @Override // com.bumptech.glide.p109b.AbstractC3542a
    /* renamed from: j */
    public final void mo37726j() {
        this.f13520n = null;
        byte[] bArr = this.f13517k;
        if (bArr != null) {
            this.f13510d.mo37226a(bArr);
        }
        int[] iArr = this.f13518l;
        if (iArr != null) {
            this.f13510d.mo37225a(iArr);
        }
        Bitmap bitmap = this.f13521o;
        if (bitmap != null) {
            this.f13510d.mo37227a(bitmap);
        }
        this.f13521o = null;
        this.f13511e = null;
        this.f13527u = null;
        byte[] bArr2 = this.f13512f;
        if (bArr2 != null) {
            this.f13510d.mo37226a(bArr2);
        }
    }
}
