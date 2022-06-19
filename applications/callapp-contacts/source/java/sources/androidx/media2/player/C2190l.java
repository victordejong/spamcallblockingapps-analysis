package androidx.media2.player;

import android.os.Handler;
import android.os.Looper;
import androidx.core.p036e.C0833d;
import androidx.media2.exoplayer.external.AbstractC1435b;
import androidx.media2.exoplayer.external.C2058x;
import androidx.media2.exoplayer.external.ExoPlaybackException;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.p063b.C1442e;
import androidx.media2.exoplayer.external.text.C1902g;
import androidx.media2.exoplayer.external.util.C2018p;
import java.util.Arrays;
import java.util.SortedMap;
import java.util.TreeMap;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.media2.player.l */
/* loaded from: classes-dex2jar.jar:androidx/media2/player/l.class */
public final class C2190l extends AbstractC1435b {

    /* renamed from: a */
    final AbstractC2193b f8621a;

    /* renamed from: k */
    private boolean f8631k;

    /* renamed from: l */
    private boolean f8632l;

    /* renamed from: m */
    private boolean[] f8633m;

    /* renamed from: b */
    private final Handler f8622b = new Handler(Looper.myLooper());

    /* renamed from: c */
    private final C2018p f8623c = new C2018p();

    /* renamed from: d */
    private final SortedMap<Long, byte[]> f8624d = new TreeMap();

    /* renamed from: e */
    private final C2058x f8625e = new C2058x();

    /* renamed from: f */
    private final C1902g f8626f = new C1902g();

    /* renamed from: g */
    private final C2192a f8627g = new C2192a();

    /* renamed from: h */
    private final C2192a f8628h = new C2192a();

    /* renamed from: i */
    private final int[] f8629i = new int[2];

    /* renamed from: j */
    private final C2018p f8630j = new C2018p();

    /* renamed from: n */
    private int f8634n = -1;

    /* renamed from: o */
    private int f8635o = -1;

    /* renamed from: androidx.media2.player.l$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/player/l$a.class */
    public static final class C2192a {

        /* renamed from: a */
        public byte[] f8639a = new byte[3];

        /* renamed from: b */
        public int f8640b;

        C2192a() {
        }

        /* renamed from: a */
        public final void m41170a(byte b, byte b2) {
            int i = this.f8640b;
            byte[] bArr = this.f8639a;
            if (i + 2 > bArr.length) {
                this.f8639a = Arrays.copyOf(bArr, bArr.length * 2);
            }
            byte[] bArr2 = this.f8639a;
            int i2 = this.f8640b;
            int i3 = i2 + 1;
            this.f8640b = i3;
            bArr2[i2] = b;
            this.f8640b = i3 + 1;
            bArr2[i3] = b2;
        }

        /* renamed from: a */
        public final boolean m41171a() {
            return this.f8640b > 0;
        }
    }

    /* renamed from: androidx.media2.player.l$b */
    /* loaded from: classes-dex2jar.jar:androidx/media2/player/l$b.class */
    public interface AbstractC2193b {
        /* renamed from: a */
        void mo41169a(int i, int i2);

        /* renamed from: a */
        void mo41168a(byte[] bArr, long j);
    }

    public C2190l(AbstractC2193b abstractC2193b) {
        super(3);
        this.f8621a = abstractC2193b;
    }

    /* renamed from: A */
    private void m41182A() {
        this.f8624d.clear();
        this.f8627g.f8640b = 0;
        this.f8628h.f8640b = 0;
        this.f8632l = false;
        this.f8631k = false;
    }

    /* renamed from: a */
    private void m41177a(C2192a c2192a, long j) {
        this.f8630j.m41538a(c2192a.f8639a, c2192a.f8640b);
        c2192a.f8640b = 0;
        int m41534c = this.f8630j.m41534c() & 31;
        int i = m41534c;
        if (m41534c == 0) {
            i = 64;
        }
        if (this.f8630j.f8133c != i * 2) {
            return;
        }
        while (this.f8630j.m41536b() >= 2) {
            int m41534c2 = this.f8630j.m41534c();
            int i2 = (m41534c2 & 224) >> 5;
            int i3 = m41534c2 & 31;
            int i4 = i2;
            if (i2 == 7) {
                int m41534c3 = this.f8630j.m41534c() & 63;
                i4 = m41534c3;
                if (m41534c3 < 7) {
                    return;
                }
            }
            if (this.f8630j.m41536b() < i3) {
                return;
            }
            if (i3 > 0) {
                m41175b(1, i4);
                if (this.f8634n == 1 && this.f8635o == i4) {
                    byte[] bArr = new byte[i3];
                    this.f8630j.m41537a(bArr, 0, i3);
                    this.f8624d.put(Long.valueOf(j), bArr);
                } else {
                    this.f8630j.m41531d(i3);
                }
            }
        }
    }

    /* renamed from: b */
    private void m41175b(final int i, final int i2) {
        int i3 = (i << 6) + i2;
        boolean[] zArr = this.f8633m;
        if (!zArr[i3]) {
            zArr[i3] = true;
            this.f8622b.post(new Runnable() { // from class: androidx.media2.player.l.1
                @Override // java.lang.Runnable
                public final void run() {
                    C2190l.this.f8621a.mo41169a(i, i2);
                }
            });
        }
    }

    @Override // androidx.media2.exoplayer.external.AbstractC1376ah
    /* renamed from: a */
    public final int mo41178a(Format format) {
        String str = format.sampleMimeType;
        return ("application/cea-608".equals(str) || "application/cea-708".equals(str) || "text/vtt".equals(str)) ? 4 : 0;
    }

    /* renamed from: a */
    public final void m41181a(int i, int i2) {
        synchronized (this) {
            this.f8634n = i;
            this.f8635o = i2;
            m41182A();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v150 */
    /* JADX WARN: Type inference failed for: r0v151 */
    /* JADX WARN: Type inference failed for: r0v163, types: [long] */
    /* JADX WARN: Type inference failed for: r0v181 */
    @Override // androidx.media2.exoplayer.external.AbstractC1375ag
    /* renamed from: a */
    public final void mo41180a(long j, long j2) {
        char c;
        synchronized (this) {
            if (mo42923i_() != 2) {
                return;
            }
            if (this.f8634n != -1 && this.f8635o != -1) {
                byte[] bArr = new byte[0];
                ?? r0 = -9223372036854775807;
                while (true) {
                    c = r0;
                    if (this.f8624d.isEmpty()) {
                        break;
                    }
                    ?? longValue = this.f8624d.firstKey().longValue();
                    if (j < longValue) {
                        break;
                    }
                    byte[] bArr2 = (byte[]) C0833d.m44410a(this.f8624d.get(Long.valueOf((long) longValue)));
                    int length = bArr.length;
                    bArr = Arrays.copyOf(bArr, bArr2.length + length);
                    System.arraycopy(bArr2, 0, bArr, length, bArr2.length);
                    SortedMap<Long, byte[]> sortedMap = this.f8624d;
                    sortedMap.remove(sortedMap.firstKey());
                    r0 = longValue;
                }
                if (bArr.length > 0) {
                    this.f8621a.mo41168a(bArr, c);
                }
            }
            if (!this.f8631k) {
                this.f8626f.mo41916a();
                int a = m42933a(this.f8625e, (C1442e) this.f8626f, false);
                if (a == -3 || a == -5) {
                    return;
                }
                if (this.f8626f.m42911c()) {
                    this.f8632l = true;
                    return;
                } else {
                    this.f8631k = true;
                    this.f8626f.m42903h();
                }
            }
            if (this.f8626f.f5495d - j > 110000) {
                return;
            }
            this.f8631k = false;
            this.f8623c.m41538a(this.f8626f.f5494c.array(), this.f8626f.f5494c.limit());
            this.f8627g.f8640b = 0;
            while (this.f8623c.m41536b() >= 3) {
                byte m41534c = (byte) this.f8623c.m41534c();
                byte m41534c2 = (byte) this.f8623c.m41534c();
                byte m41534c3 = (byte) this.f8623c.m41534c();
                boolean z = (m41534c & 4) != 0;
                int i = m41534c & 3;
                if (z) {
                    if (i == 3) {
                        if (this.f8628h.m41171a()) {
                            m41177a(this.f8628h, this.f8626f.f5495d);
                        }
                        this.f8628h.m41170a(m41534c2, m41534c3);
                    } else if (this.f8628h.f8640b > 0 && i == 2) {
                        this.f8628h.m41170a(m41534c2, m41534c3);
                    } else if (i == 0 || i == 1) {
                        byte b = (byte) (m41534c2 & Byte.MAX_VALUE);
                        byte b2 = (byte) (m41534c3 & Byte.MAX_VALUE);
                        if (b >= 16 || b2 >= 16) {
                            if (b >= 16 && b <= 31) {
                                int i2 = (b >= 24 ? 1 : 0) + (m41534c != 0 ? 2 : 0);
                                this.f8629i[i] = i2;
                                m41175b(0, i2);
                            }
                            if (this.f8634n == 0 && this.f8635o == this.f8629i[i]) {
                                C2192a c2192a = this.f8627g;
                                byte b3 = (byte) i;
                                if (c2192a.f8640b + 3 > c2192a.f8639a.length) {
                                    c2192a.f8639a = Arrays.copyOf(c2192a.f8639a, c2192a.f8639a.length * 2);
                                }
                                byte[] bArr3 = c2192a.f8639a;
                                int i3 = c2192a.f8640b;
                                c2192a.f8640b = i3 + 1;
                                bArr3[i3] = b3;
                                byte[] bArr4 = c2192a.f8639a;
                                int i4 = c2192a.f8640b;
                                c2192a.f8640b = i4 + 1;
                                bArr4[i4] = b;
                                byte[] bArr5 = c2192a.f8639a;
                                int i5 = c2192a.f8640b;
                                c2192a.f8640b = i5 + 1;
                                bArr5[i5] = b2;
                            }
                        }
                    }
                } else if (i == 3 || i == 2) {
                    if (this.f8628h.m41171a()) {
                        m41177a(this.f8628h, this.f8626f.f5495d);
                    }
                }
            }
            if (this.f8634n == 0 && this.f8627g.m41171a()) {
                C2192a c2192a2 = this.f8627g;
                this.f8624d.put(Long.valueOf(this.f8626f.f5495d), Arrays.copyOf(c2192a2.f8639a, c2192a2.f8640b));
                c2192a2.f8640b = 0;
            }
        }
    }

    @Override // androidx.media2.exoplayer.external.AbstractC1435b
    /* renamed from: a */
    public final void mo41179a(long j, boolean z) {
        synchronized (this) {
            m41182A();
        }
    }

    @Override // androidx.media2.exoplayer.external.AbstractC1435b
    /* renamed from: a */
    public final void mo41176a(Format[] formatArr, long j) throws ExoPlaybackException {
        super.mo41176a(formatArr, j);
        this.f8633m = new boolean[128];
    }

    @Override // androidx.media2.exoplayer.external.AbstractC1375ag
    /* renamed from: x */
    public final boolean mo41174x() {
        return true;
    }

    @Override // androidx.media2.exoplayer.external.AbstractC1375ag
    /* renamed from: y */
    public final boolean mo41173y() {
        return this.f8632l && this.f8624d.isEmpty();
    }

    /* renamed from: z */
    public final void m41172z() {
        synchronized (this) {
            m41181a(-1, -1);
        }
    }
}
