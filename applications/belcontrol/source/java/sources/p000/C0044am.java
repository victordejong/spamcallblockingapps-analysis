package p000;

import com.google.android.exoplayer2.extractor.ogg.OggPageHeader;
import java.util.Arrays;
/* renamed from: am */
/* loaded from: classes-dex2jar.jar:am.class */
public final class C0044am {

    /* renamed from: a */
    public final C0253bm f352a = new C0253bm();

    /* renamed from: b */
    public final yt f353b = new yt(new byte[OggPageHeader.MAX_PAGE_PAYLOAD], 0);

    /* renamed from: c */
    public int f354c = -1;

    /* renamed from: d */
    public int f355d;

    /* renamed from: e */
    public boolean f356e;

    /* renamed from: a */
    public final int m7069a(int i) {
        int i2;
        int i3;
        int i4 = 0;
        this.f355d = 0;
        do {
            int i5 = this.f355d;
            C0253bm c0253bm = this.f352a;
            i2 = i4;
            if (i + i5 >= c0253bm.f1975d) {
                break;
            }
            int[] iArr = c0253bm.f1978g;
            this.f355d = i5 + 1;
            i3 = iArr[i5 + i];
            i2 = i4 + i3;
            i4 = i2;
        } while (i3 == 255);
        return i2;
    }

    /* renamed from: b */
    public C0253bm m7068b() {
        return this.f352a;
    }

    /* renamed from: c */
    public yt m7067c() {
        return this.f353b;
    }

    /* renamed from: d */
    public boolean m7066d(AbstractC0251bk abstractC0251bk) {
        int i;
        it.f(abstractC0251bk != null);
        if (this.f356e) {
            this.f356e = false;
            this.f353b.E();
        }
        while (!this.f356e) {
            if (this.f354c < 0) {
                if (!this.f352a.m5609a(abstractC0251bk, true)) {
                    return false;
                }
                C0253bm c0253bm = this.f352a;
                int i2 = c0253bm.f1976e;
                if ((c0253bm.f1973b & 1) == 1 && this.f353b.d() == 0) {
                    i2 += m7069a(0);
                    i = this.f355d + 0;
                } else {
                    i = 0;
                }
                abstractC0251bk.skipFully(i2);
                this.f354c = i;
            }
            int m7069a = m7069a(this.f354c);
            int i3 = this.f354c + this.f355d;
            if (m7069a > 0) {
                if (this.f353b.b() < this.f353b.d() + m7069a) {
                    yt ytVar = this.f353b;
                    ytVar.a = Arrays.copyOf(ytVar.a, ytVar.d() + m7069a);
                }
                yt ytVar2 = this.f353b;
                abstractC0251bk.readFully(ytVar2.a, ytVar2.d(), m7069a);
                yt ytVar3 = this.f353b;
                ytVar3.I(ytVar3.d() + m7069a);
                this.f356e = this.f352a.f1978g[i3 - 1] != 255;
            }
            int i4 = i3;
            if (i3 == this.f352a.f1975d) {
                i4 = -1;
            }
            this.f354c = i4;
        }
        return true;
    }

    /* renamed from: e */
    public void m7065e() {
        this.f352a.m5608b();
        this.f353b.E();
        this.f354c = -1;
        this.f356e = false;
    }

    /* renamed from: f */
    public void m7064f() {
        yt ytVar = this.f353b;
        byte[] bArr = ytVar.a;
        if (bArr.length == 65025) {
            return;
        }
        ytVar.a = Arrays.copyOf(bArr, Math.max((int) OggPageHeader.MAX_PAGE_PAYLOAD, ytVar.d()));
    }
}
