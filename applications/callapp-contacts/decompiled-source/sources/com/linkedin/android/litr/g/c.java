package com.linkedin.android.litr.g;

import android.media.MediaFormat;
import com.linkedin.android.litr.b.a;
import com.linkedin.android.litr.b.b;
import com.linkedin.android.litr.d.d;
import com.linkedin.android.litr.d.e;
import com.linkedin.android.litr.exception.TrackTranscoderException;
/* loaded from: classes4-dex2jar.jar:com/linkedin/android/litr/g/c.class */
public abstract class c {

    /* renamed from: d  reason: collision with root package name */
    protected final d f33746d;
    protected final e e;
    protected final com.linkedin.android.litr.e.d f;
    protected final a g;
    protected final b h;
    protected final com.linkedin.android.litr.d.c i;
    protected int j;
    protected int k;
    protected boolean l;
    protected MediaFormat m;
    protected long n;
    protected float o;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(d dVar, int i, e eVar, int i2, MediaFormat mediaFormat, com.linkedin.android.litr.e.d dVar2, a aVar, b bVar) {
        this.n = -1L;
        this.f33746d = dVar;
        this.j = i;
        this.k = i2;
        this.e = eVar;
        this.m = mediaFormat;
        this.f = dVar2;
        this.g = aVar;
        this.h = bVar;
        com.linkedin.android.litr.d.c h = dVar.h();
        this.i = h;
        MediaFormat a2 = dVar.a(i);
        if (a2.containsKey("durationUs")) {
            long j = a2.getLong("durationUs");
            this.n = j;
            if (mediaFormat != null) {
                mediaFormat.setLong("durationUs", j);
            }
        }
        if (h.f33711b >= h.f33710a) {
            long min = Math.min(this.n, h.f33711b);
            this.n = min;
            this.n = min - h.f33710a;
            return;
        }
        throw new IllegalArgumentException("Range end should be greater than range start");
    }

    public abstract void a() throws TrackTranscoderException;

    public abstract int b() throws TrackTranscoderException;

    public abstract void c();

    public String d() throws TrackTranscoderException {
        return this.h.i();
    }

    public String e() throws TrackTranscoderException {
        return this.g.h();
    }

    public final float f() {
        return this.o;
    }

    public final MediaFormat g() {
        return this.m;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void h() {
        while (this.f33746d.b() == this.j) {
            this.f33746d.e();
            if ((this.f33746d.d() & 4) != 0) {
                return;
            }
        }
    }
}
