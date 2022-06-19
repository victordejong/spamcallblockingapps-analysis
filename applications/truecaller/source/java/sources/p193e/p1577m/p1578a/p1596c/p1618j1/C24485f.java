package p193e.p1577m.p1578a.p1596c.p1618j1;

import com.google.android.exoplayer2.offline.DownloadRequest;
import java.util.Objects;
import p1727n3.p1789g0.C26232y;
/* renamed from: e.m.a.c.j1.f */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/j1/f.class */
public final class C24485f {

    /* renamed from: a */
    public final DownloadRequest f68355a;

    /* renamed from: b */
    public final int f68356b;

    /* renamed from: c */
    public final long f68357c;

    /* renamed from: d */
    public final long f68358d;

    /* renamed from: e */
    public final long f68359e;

    /* renamed from: f */
    public final int f68360f;

    /* renamed from: g */
    public final int f68361g;

    /* renamed from: h */
    public final C24493i f68362h;

    public C24485f(DownloadRequest downloadRequest, int i, long j, long j2, long j3, int i2, int i3) {
        this(downloadRequest, i, j, j2, j3, i2, i3, new C24493i());
    }

    public C24485f(DownloadRequest downloadRequest, int i, long j, long j2, long j3, int i2, int i3, C24493i c24493i) {
        Objects.requireNonNull(c24493i);
        C26232y.m2310r((i3 == 0) == (i != 4));
        if (i2 != 0) {
            C26232y.m2310r((i == 2 || i == 0) ? false : true);
        }
        this.f68355a = downloadRequest;
        this.f68356b = i;
        this.f68357c = j;
        this.f68358d = j2;
        this.f68359e = j3;
        this.f68360f = i2;
        this.f68361g = i3;
        this.f68362h = c24493i;
    }
}
