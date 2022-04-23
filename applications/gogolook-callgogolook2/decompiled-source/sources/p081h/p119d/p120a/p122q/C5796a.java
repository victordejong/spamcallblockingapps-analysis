package p081h.p119d.p120a.p122q;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.os.Build;
import android.util.Log;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Iterator;
/* renamed from: h.d.a.q.a */
/* loaded from: classes-dex2jar.jar:h/d/a/q/a.class */
public class C5796a {

    /* renamed from: p */
    public static final String f14551p = "a";

    /* renamed from: q */
    public static final Bitmap.Config f14552q = Bitmap.Config.ARGB_8888;

    /* renamed from: a */
    public int[] f14553a;

    /* renamed from: c */
    public ByteBuffer f14555c;

    /* renamed from: e */
    public short[] f14557e;

    /* renamed from: f */
    public byte[] f14558f;

    /* renamed from: g */
    public byte[] f14559g;

    /* renamed from: h */
    public byte[] f14560h;

    /* renamed from: i */
    public int[] f14561i;

    /* renamed from: j */
    public int f14562j;

    /* renamed from: l */
    public AbstractC5797a f14564l;

    /* renamed from: m */
    public Bitmap f14565m;

    /* renamed from: n */
    public boolean f14566n;

    /* renamed from: o */
    public int f14567o;

    /* renamed from: b */
    public final int[] f14554b = new int[256];

    /* renamed from: d */
    public final byte[] f14556d = new byte[256];

    /* renamed from: k */
    public C5799c f14563k = new C5799c();

    /* renamed from: h.d.a.q.a$a */
    /* loaded from: classes-dex2jar.jar:h/d/a/q/a$a.class */
    public interface AbstractC5797a {
        /* renamed from: a */
        Bitmap mo24084a(int i, int i2, Bitmap.Config config);

        /* renamed from: a */
        void mo24083a(Bitmap bitmap);
    }

    public C5796a(AbstractC5797a aVar) {
        this.f14564l = aVar;
    }

    @TargetApi(12)
    /* renamed from: a */
    public static void m24375a(Bitmap bitmap) {
        if (Build.VERSION.SDK_INT >= 12) {
            bitmap.setHasAlpha(true);
        }
    }

    /* renamed from: a */
    public int m24376a(int i) {
        int i2;
        if (i >= 0) {
            C5799c cVar = this.f14563k;
            if (i < cVar.f14581c) {
                i2 = cVar.f14583e.get(i).f14576i;
                return i2;
            }
        }
        i2 = -1;
        return i2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0063, code lost:
        if (r0.f14588j == r10.f14575h) goto L_0x0066;
     */
    /* JADX WARN: Removed duplicated region for block: B:21:0x008e  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.graphics.Bitmap m24373a(p081h.p119d.p120a.p122q.C5798b r10, p081h.p119d.p120a.p122q.C5798b r11) {
        /*
            Method dump skipped, instructions count: 588
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p081h.p119d.p120a.p122q.C5796a.m24373a(h.d.a.q.b, h.d.a.q.b):android.graphics.Bitmap");
    }

    /* renamed from: a */
    public void m24377a() {
        this.f14562j = (this.f14562j + 1) % this.f14563k.f14581c;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:70:0x02e3 A[LOOP:4: B:68:0x02de->B:70:0x02e3, LOOP_END] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m24374a(p081h.p119d.p120a.p122q.C5798b r6) {
        /*
            Method dump skipped, instructions count: 879
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p081h.p119d.p120a.p122q.C5796a.m24374a(h.d.a.q.b):void");
    }

    /* renamed from: a */
    public void m24372a(C5799c cVar, byte[] bArr) {
        this.f14563k = cVar;
        this.f14567o = 0;
        this.f14562j = -1;
        this.f14555c = ByteBuffer.wrap(bArr);
        this.f14555c.rewind();
        this.f14555c.order(ByteOrder.LITTLE_ENDIAN);
        this.f14566n = false;
        Iterator<C5798b> it = cVar.f14583e.iterator();
        while (true) {
            if (it.hasNext()) {
                if (it.next().f14574g == 3) {
                    this.f14566n = true;
                    break;
                }
            } else {
                break;
            }
        }
        int i = cVar.f14584f;
        int i2 = cVar.f14585g;
        this.f14560h = new byte[i * i2];
        this.f14561i = new int[i * i2];
    }

    /* renamed from: b */
    public void m24371b() {
        this.f14563k = null;
        this.f14560h = null;
        this.f14561i = null;
        Bitmap bitmap = this.f14565m;
        if (bitmap != null) {
            this.f14564l.mo24083a(bitmap);
        }
        this.f14565m = null;
        this.f14555c = null;
    }

    /* renamed from: c */
    public int m24370c() {
        return this.f14562j;
    }

    /* renamed from: d */
    public int m24369d() {
        return this.f14563k.f14581c;
    }

    /* renamed from: e */
    public final Bitmap m24368e() {
        AbstractC5797a aVar = this.f14564l;
        C5799c cVar = this.f14563k;
        Bitmap a = aVar.mo24084a(cVar.f14584f, cVar.f14585g, f14552q);
        Bitmap bitmap = a;
        if (a == null) {
            C5799c cVar2 = this.f14563k;
            bitmap = Bitmap.createBitmap(cVar2.f14584f, cVar2.f14585g, f14552q);
        }
        m24375a(bitmap);
        return bitmap;
    }

    /* renamed from: f */
    public int m24367f() {
        int i;
        if (this.f14563k.f14581c <= 0 || (i = this.f14562j) < 0) {
            return -1;
        }
        return m24376a(i);
    }

    /* renamed from: g */
    public Bitmap m24366g() {
        synchronized (this) {
            if (this.f14563k.f14581c <= 0 || this.f14562j < 0) {
                if (Log.isLoggable(f14551p, 3)) {
                    String str = "unable to decode frame, frameCount=" + this.f14563k.f14581c + " framePointer=" + this.f14562j;
                }
                this.f14567o = 1;
            }
            if (!(this.f14567o == 1 || this.f14567o == 2)) {
                this.f14567o = 0;
                C5798b bVar = this.f14563k.f14583e.get(this.f14562j);
                int i = this.f14562j - 1;
                C5798b bVar2 = i >= 0 ? this.f14563k.f14583e.get(i) : null;
                this.f14553a = bVar.f14578k != null ? bVar.f14578k : this.f14563k.f14579a;
                if (this.f14553a == null) {
                    Log.isLoggable(f14551p, 3);
                    this.f14567o = 1;
                    return null;
                }
                if (bVar.f14573f) {
                    System.arraycopy(this.f14553a, 0, this.f14554b, 0, this.f14553a.length);
                    this.f14553a = this.f14554b;
                    this.f14553a[bVar.f14575h] = 0;
                }
                return m24373a(bVar, bVar2);
            }
            if (Log.isLoggable(f14551p, 3)) {
                String str2 = "Unable to decode frame, status=" + this.f14567o;
            }
            return null;
        }
    }

    /* renamed from: h */
    public int m24365h() {
        int i = this.f14563k.f14591m;
        if (i == -1) {
            return 1;
        }
        if (i == 0) {
            return 0;
        }
        return i + 1;
    }

    /* renamed from: i */
    public final int m24364i() {
        int i;
        try {
            i = this.f14555c.get() & 255;
        } catch (Exception e) {
            this.f14567o = 1;
            i = 0;
        }
        return i;
    }

    /* renamed from: j */
    public final int m24363j() {
        int i = m24364i();
        int i2 = 0;
        int i3 = 0;
        if (i > 0) {
            while (true) {
                i2 = i3;
                if (i3 >= i) {
                    break;
                }
                int i4 = i - i3;
                try {
                    this.f14555c.get(this.f14556d, i3, i4);
                    i3 += i4;
                } catch (Exception e) {
                    this.f14567o = 1;
                    i2 = i3;
                }
            }
        }
        return i2;
    }
}
