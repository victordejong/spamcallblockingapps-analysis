package com.google.android.exoplayer2.p243c1.p246c0;

import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.p243c1.AbstractC4979i;
import com.google.android.exoplayer2.util.C5536v;
import java.io.EOFException;
/* renamed from: com.google.android.exoplayer2.c1.c0.f */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/c1/c0/f.class */
final class C4905f {

    /* renamed from: a */
    public int f15054a;

    /* renamed from: b */
    public int f15055b;

    /* renamed from: c */
    public long f15056c;

    /* renamed from: d */
    public long f15057d;

    /* renamed from: e */
    public long f15058e;

    /* renamed from: f */
    public long f15059f;

    /* renamed from: g */
    public int f15060g;

    /* renamed from: h */
    public int f15061h;

    /* renamed from: i */
    public int f15062i;

    /* renamed from: j */
    public final int[] f15063j = new int[255];

    /* renamed from: k */
    private final C5536v f15064k = new C5536v(255);

    /* renamed from: a */
    public boolean m21227a(AbstractC4979i abstractC4979i, boolean z) {
        this.f15064k.m18685H();
        m21226b();
        if (!(abstractC4979i.getLength() == -1 || abstractC4979i.getLength() - abstractC4979i.mo21007c() >= 27) || !abstractC4979i.mo21008b(this.f15064k.f17941a, 0, 27, true)) {
            if (!z) {
                throw new EOFException();
            }
            return false;
        } else if (this.f15064k.m18691B() != 1332176723) {
            if (!z) {
                throw new ParserException("expected OggS capture pattern at begin of page");
            }
            return false;
        } else {
            int m18653z = this.f15064k.m18653z();
            this.f15054a = m18653z;
            if (m18653z != 0) {
                if (!z) {
                    throw new ParserException("unsupported bit stream revision");
                }
                return false;
            }
            this.f15055b = this.f15064k.m18653z();
            this.f15056c = this.f15064k.m18664o();
            this.f15057d = this.f15064k.m18663p();
            this.f15058e = this.f15064k.m18663p();
            this.f15059f = this.f15064k.m18663p();
            int m18653z2 = this.f15064k.m18653z();
            this.f15060g = m18653z2;
            this.f15061h = m18653z2 + 27;
            this.f15064k.m18685H();
            abstractC4979i.mo21000j(this.f15064k.f17941a, 0, this.f15060g);
            for (int i = 0; i < this.f15060g; i++) {
                this.f15063j[i] = this.f15064k.m18653z();
                this.f15062i += this.f15063j[i];
            }
            return true;
        }
    }

    /* renamed from: b */
    public void m21226b() {
        this.f15054a = 0;
        this.f15055b = 0;
        this.f15056c = 0L;
        this.f15057d = 0L;
        this.f15058e = 0L;
        this.f15059f = 0L;
        this.f15060g = 0;
        this.f15061h = 0;
        this.f15062i = 0;
    }
}
