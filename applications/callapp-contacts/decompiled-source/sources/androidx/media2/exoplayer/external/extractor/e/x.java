package androidx.media2.exoplayer.external.extractor.e;

import android.support.v4.media.session.PlaybackStateCompat;
import android.util.SparseArray;
import androidx.media2.exoplayer.external.extractor.e.ah;
import androidx.media2.exoplayer.external.extractor.g;
import androidx.media2.exoplayer.external.extractor.h;
import androidx.media2.exoplayer.external.extractor.i;
import androidx.media2.exoplayer.external.extractor.j;
import androidx.media2.exoplayer.external.extractor.n;
import androidx.media2.exoplayer.external.extractor.o;
import androidx.media2.exoplayer.external.util.o;
import androidx.media2.exoplayer.external.util.p;
import androidx.media2.exoplayer.external.util.z;
import io.objectbox.model.PropertyFlags;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/e/x.class */
public final class x implements g {

    /* renamed from: a  reason: collision with root package name */
    public static final j f3272a = y.f3280a;

    /* renamed from: b  reason: collision with root package name */
    private final z f3273b;

    /* renamed from: c  reason: collision with root package name */
    private final SparseArray<a> f3274c;

    /* renamed from: d  reason: collision with root package name */
    private final p f3275d;
    private final w e;
    private boolean f;
    private boolean g;
    private boolean h;
    private long i;
    private v j;
    private i k;
    private boolean l;

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/e/x$a.class */
    static final class a {

        /* renamed from: a  reason: collision with root package name */
        final m f3276a;

        /* renamed from: b  reason: collision with root package name */
        final z f3277b;

        /* renamed from: c  reason: collision with root package name */
        final o f3278c = new o(new byte[64]);

        /* renamed from: d  reason: collision with root package name */
        boolean f3279d;
        boolean e;
        boolean f;
        int g;
        long h;

        public a(m mVar, z zVar) {
            this.f3276a = mVar;
            this.f3277b = zVar;
        }
    }

    public x() {
        this(new z(0L));
    }

    public x(z zVar) {
        this.f3273b = zVar;
        this.f3275d = new p(4096);
        this.f3274c = new SparseArray<>();
        this.e = new w();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ g[] a() {
        return new g[]{new x()};
    }

    @Override // androidx.media2.exoplayer.external.extractor.g
    public final int a(h hVar, n nVar) throws IOException, InterruptedException {
        long j;
        long j2;
        long d2 = hVar.d();
        int i = (d2 > (-1L) ? 1 : (d2 == (-1L) ? 0 : -1));
        if (!(i != 0) || this.e.f3270c) {
            if (!this.l) {
                this.l = true;
                if (this.e.h != -9223372036854775807L) {
                    v vVar = new v(this.e.f3268a, this.e.h, d2);
                    this.j = vVar;
                    this.k.a(vVar.a());
                } else {
                    this.k.a(new o.b(this.e.h));
                }
            }
            v vVar2 = this.j;
            if (vVar2 != null && vVar2.b()) {
                return this.j.a(hVar, nVar);
            }
            hVar.a();
            long b2 = i != 0 ? d2 - hVar.b() : -1L;
            if ((b2 != -1 && b2 < 4) || !hVar.b(this.f3275d.f4166a, 0, 4, true)) {
                return -1;
            }
            this.f3275d.c(0);
            int i2 = this.f3275d.i();
            if (i2 == 441) {
                return -1;
            }
            if (i2 == 442) {
                hVar.c(this.f3275d.f4166a, 0, 10);
                this.f3275d.c(9);
                hVar.b((this.f3275d.c() & 7) + 14);
                return 0;
            } else if (i2 == 443) {
                hVar.c(this.f3275d.f4166a, 0, 2);
                this.f3275d.c(0);
                hVar.b(this.f3275d.d() + 6);
                return 0;
            } else if (((i2 & (-256)) >> 8) != 1) {
                hVar.b(1);
                return 0;
            } else {
                int i3 = i2 & 255;
                a aVar = this.f3274c.get(i3);
                a aVar2 = aVar;
                if (!this.f) {
                    a aVar3 = aVar;
                    if (aVar == null) {
                        m mVar = null;
                        if (i3 == 189) {
                            mVar = new c();
                            this.g = true;
                            this.i = hVar.c();
                        } else if ((i3 & 224) == 192) {
                            mVar = new s();
                            this.g = true;
                            this.i = hVar.c();
                        } else if ((i3 & 240) == 224) {
                            mVar = new n();
                            this.h = true;
                            this.i = hVar.c();
                        }
                        aVar3 = aVar;
                        if (mVar != null) {
                            mVar.a(this.k, new ah.d(i3, PropertyFlags.INDEX_PARTIAL_SKIP_NULL));
                            aVar3 = new a(mVar, this.f3273b);
                            this.f3274c.put(i3, aVar3);
                        }
                    }
                    aVar2 = aVar3;
                    if (hVar.c() > ((!this.g || !this.h) ? PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED : this.i + PlaybackStateCompat.ACTION_PLAY_FROM_URI)) {
                        this.f = true;
                        this.k.a();
                        aVar2 = aVar3;
                    }
                }
                hVar.c(this.f3275d.f4166a, 0, 2);
                this.f3275d.c(0);
                int d3 = this.f3275d.d() + 6;
                if (aVar2 == null) {
                    hVar.b(d3);
                    return 0;
                }
                this.f3275d.a(d3);
                hVar.b(this.f3275d.f4166a, 0, d3);
                this.f3275d.c(6);
                p pVar = this.f3275d;
                pVar.a(aVar2.f3278c.f4162a, 0, 3);
                aVar2.f3278c.a(0);
                aVar2.f3278c.b(8);
                aVar2.f3279d = aVar2.f3278c.e();
                aVar2.e = aVar2.f3278c.e();
                aVar2.f3278c.b(6);
                aVar2.g = aVar2.f3278c.c(8);
                pVar.a(aVar2.f3278c.f4162a, 0, aVar2.g);
                aVar2.f3278c.a(0);
                aVar2.h = 0L;
                if (aVar2.f3279d) {
                    aVar2.f3278c.b(4);
                    long c2 = aVar2.f3278c.c(3);
                    aVar2.f3278c.b(1);
                    long c3 = aVar2.f3278c.c(15) << 15;
                    aVar2.f3278c.b(1);
                    long c4 = aVar2.f3278c.c(15);
                    aVar2.f3278c.b(1);
                    if (!aVar2.f && aVar2.e) {
                        aVar2.f3278c.b(4);
                        long c5 = aVar2.f3278c.c(3);
                        aVar2.f3278c.b(1);
                        long c6 = aVar2.f3278c.c(15) << 15;
                        aVar2.f3278c.b(1);
                        long c7 = aVar2.f3278c.c(15);
                        aVar2.f3278c.b(1);
                        aVar2.f3277b.b((c5 << 30) | c6 | c7);
                        aVar2.f = true;
                    }
                    aVar2.h = aVar2.f3277b.b((c2 << 30) | c3 | c4);
                }
                aVar2.f3276a.a(aVar2.h, 4);
                aVar2.f3276a.a(pVar);
                aVar2.f3276a.b();
                p pVar2 = this.f3275d;
                pVar2.b(pVar2.f4166a.length);
                return 0;
            }
        } else {
            w wVar = this.e;
            if (!wVar.e) {
                long d4 = hVar.d();
                int min = (int) Math.min(20000L, d4);
                long j3 = d4 - min;
                if (hVar.c() != j3) {
                    nVar.f3386a = j3;
                    return 1;
                }
                wVar.f3269b.a(min);
                hVar.a();
                hVar.c(wVar.f3269b.f4166a, 0, min);
                p pVar3 = wVar.f3269b;
                int i4 = pVar3.f4167b;
                int i5 = pVar3.f4168c - 4;
                while (true) {
                    if (i5 < i4) {
                        j2 = -9223372036854775807L;
                        break;
                    }
                    if (w.a(pVar3.f4166a, i5) == 442) {
                        pVar3.c(i5 + 4);
                        j2 = w.a(pVar3);
                        if (j2 != -9223372036854775807L) {
                            break;
                        }
                    }
                    i5--;
                }
                wVar.g = j2;
                wVar.e = true;
                return 0;
            } else if (wVar.g == -9223372036854775807L) {
                return wVar.a(hVar);
            } else {
                if (!wVar.f3271d) {
                    int min2 = (int) Math.min(20000L, hVar.d());
                    if (hVar.c() != 0) {
                        nVar.f3386a = 0L;
                        return 1;
                    }
                    wVar.f3269b.a(min2);
                    hVar.a();
                    hVar.c(wVar.f3269b.f4166a, 0, min2);
                    p pVar4 = wVar.f3269b;
                    int i6 = pVar4.f4167b;
                    int i7 = pVar4.f4168c;
                    while (true) {
                        if (i6 >= i7 - 3) {
                            j = -9223372036854775807L;
                            break;
                        }
                        if (w.a(pVar4.f4166a, i6) == 442) {
                            pVar4.c(i6 + 4);
                            j = w.a(pVar4);
                            if (j != -9223372036854775807L) {
                                break;
                            }
                        }
                        i6++;
                    }
                    wVar.f = j;
                    wVar.f3271d = true;
                    return 0;
                } else if (wVar.f == -9223372036854775807L) {
                    return wVar.a(hVar);
                } else {
                    wVar.h = wVar.f3268a.b(wVar.g) - wVar.f3268a.b(wVar.f);
                    return wVar.a(hVar);
                }
            }
        }
    }

    @Override // androidx.media2.exoplayer.external.extractor.g
    public final void a(long j, long j2) {
        if ((this.f3273b.a() == -9223372036854775807L) || !(this.f3273b.f4191a == 0 || this.f3273b.f4191a == j2)) {
            this.f3273b.f4193c = -9223372036854775807L;
            this.f3273b.a(j2);
        }
        v vVar = this.j;
        if (vVar != null) {
            vVar.a(j2);
        }
        for (int i = 0; i < this.f3274c.size(); i++) {
            a valueAt = this.f3274c.valueAt(i);
            valueAt.f = false;
            valueAt.f3276a.a();
        }
    }

    @Override // androidx.media2.exoplayer.external.extractor.g
    public final void a(i iVar) {
        this.k = iVar;
    }

    @Override // androidx.media2.exoplayer.external.extractor.g
    public final boolean a(h hVar) throws IOException, InterruptedException {
        byte[] bArr = new byte[14];
        hVar.c(bArr, 0, 14);
        if (442 != (((bArr[0] & 255) << 24) | ((bArr[1] & 255) << 16) | ((bArr[2] & 255) << 8) | (bArr[3] & 255)) || (bArr[4] & 196) != 68 || (bArr[6] & 4) != 4 || (bArr[8] & 4) != 4 || (bArr[9] & 1) != 1 || (bArr[12] & 3) != 3) {
            return false;
        }
        hVar.c(bArr[13] & 7);
        hVar.c(bArr, 0, 3);
        return 1 == ((((bArr[0] & 255) << 16) | ((bArr[1] & 255) << 8)) | (bArr[2] & 255));
    }
}
