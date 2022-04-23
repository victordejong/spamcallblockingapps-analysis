package com.google.android.exoplayer2.extractor.h;

import android.support.v4.media.session.PlaybackStateCompat;
import android.util.SparseArray;
import com.google.android.exoplayer2.extractor.h;
import com.google.android.exoplayer2.extractor.h.ad;
import com.google.android.exoplayer2.extractor.i;
import com.google.android.exoplayer2.extractor.j;
import com.google.android.exoplayer2.extractor.l;
import com.google.android.exoplayer2.extractor.v;
import com.google.android.exoplayer2.util.ad;
import com.google.android.exoplayer2.util.t;
import com.google.android.exoplayer2.util.u;
import io.objectbox.model.PropertyFlags;
import java.io.IOException;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/h/w.class */
public final class w implements h {

    /* renamed from: a  reason: collision with root package name */
    public static final l f21271a = _$$Lambda$w$GIQAk8KOsCi70_XJWBYDc7aUCIs.INSTANCE;

    /* renamed from: b  reason: collision with root package name */
    private final ad f21272b;

    /* renamed from: c  reason: collision with root package name */
    private final SparseArray<a> f21273c;

    /* renamed from: d  reason: collision with root package name */
    private final u f21274d;
    private final v e;
    private boolean f;
    private boolean g;
    private boolean h;
    private long i;
    private u j;
    private j k;
    private boolean l;

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/h/w$a.class */
    static final class a {

        /* renamed from: a  reason: collision with root package name */
        final j f21275a;

        /* renamed from: b  reason: collision with root package name */
        final ad f21276b;

        /* renamed from: c  reason: collision with root package name */
        final t f21277c = new t(new byte[64]);

        /* renamed from: d  reason: collision with root package name */
        boolean f21278d;
        boolean e;
        boolean f;
        int g;
        long h;

        public a(j jVar, ad adVar) {
            this.f21275a = jVar;
            this.f21276b = adVar;
        }
    }

    public w() {
        this(new ad(0L));
    }

    public w(ad adVar) {
        this.f21272b = adVar;
        this.f21274d = new u(4096);
        this.f21273c = new SparseArray<>();
        this.e = new v();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ h[] a() {
        return new h[]{new w()};
    }

    @Override // com.google.android.exoplayer2.extractor.h
    public final int a(i iVar, com.google.android.exoplayer2.extractor.u uVar) throws IOException {
        long j;
        long j2;
        com.google.android.exoplayer2.util.a.a(this.k);
        long d2 = iVar.d();
        int i = (d2 > (-1L) ? 1 : (d2 == (-1L) ? 0 : -1));
        if (!(i != 0) || this.e.f21269c) {
            if (!this.l) {
                this.l = true;
                if (this.e.h != -9223372036854775807L) {
                    u uVar2 = new u(this.e.f21267a, this.e.h, d2);
                    this.j = uVar2;
                    this.k.a(uVar2.a());
                } else {
                    this.k.a(new v.b(this.e.h));
                }
            }
            u uVar3 = this.j;
            if (uVar3 != null && uVar3.b()) {
                return this.j.a(iVar, uVar);
            }
            iVar.a();
            long b2 = i != 0 ? d2 - iVar.b() : -1L;
            if ((b2 != -1 && b2 < 4) || !iVar.b(this.f21274d.f22335a, 0, 4, true)) {
                return -1;
            }
            this.f21274d.d(0);
            int j3 = this.f21274d.j();
            if (j3 == 441) {
                return -1;
            }
            if (j3 == 442) {
                iVar.d(this.f21274d.f22335a, 0, 10);
                this.f21274d.d(9);
                iVar.b((this.f21274d.c() & 7) + 14);
                return 0;
            } else if (j3 == 443) {
                iVar.d(this.f21274d.f22335a, 0, 2);
                this.f21274d.d(0);
                iVar.b(this.f21274d.d() + 6);
                return 0;
            } else if (((j3 & (-256)) >> 8) != 1) {
                iVar.b(1);
                return 0;
            } else {
                int i2 = j3 & 255;
                a aVar = this.f21273c.get(i2);
                a aVar2 = aVar;
                if (!this.f) {
                    a aVar3 = aVar;
                    if (aVar == null) {
                        j jVar = null;
                        if (i2 == 189) {
                            jVar = new b();
                            this.g = true;
                            this.i = iVar.c();
                        } else if ((i2 & 224) == 192) {
                            jVar = new q();
                            this.g = true;
                            this.i = iVar.c();
                        } else if ((i2 & 240) == 224) {
                            jVar = new k();
                            this.h = true;
                            this.i = iVar.c();
                        }
                        aVar3 = aVar;
                        if (jVar != null) {
                            jVar.a(this.k, new ad.d(i2, PropertyFlags.INDEX_PARTIAL_SKIP_NULL));
                            aVar3 = new a(jVar, this.f21272b);
                            this.f21273c.put(i2, aVar3);
                        }
                    }
                    aVar2 = aVar3;
                    if (iVar.c() > ((!this.g || !this.h) ? PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED : this.i + PlaybackStateCompat.ACTION_PLAY_FROM_URI)) {
                        this.f = true;
                        this.k.a();
                        aVar2 = aVar3;
                    }
                }
                iVar.d(this.f21274d.f22335a, 0, 2);
                this.f21274d.d(0);
                int d3 = this.f21274d.d() + 6;
                if (aVar2 == null) {
                    iVar.b(d3);
                    return 0;
                }
                this.f21274d.a(d3);
                iVar.b(this.f21274d.f22335a, 0, d3);
                this.f21274d.d(6);
                u uVar4 = this.f21274d;
                uVar4.a(aVar2.f21277c.f22331a, 0, 3);
                aVar2.f21277c.a(0);
                aVar2.f21277c.b(8);
                aVar2.f21278d = aVar2.f21277c.e();
                aVar2.e = aVar2.f21277c.e();
                aVar2.f21277c.b(6);
                aVar2.g = aVar2.f21277c.c(8);
                uVar4.a(aVar2.f21277c.f22331a, 0, aVar2.g);
                aVar2.f21277c.a(0);
                aVar2.h = 0L;
                if (aVar2.f21278d) {
                    aVar2.f21277c.b(4);
                    long c2 = aVar2.f21277c.c(3);
                    aVar2.f21277c.b(1);
                    long c3 = aVar2.f21277c.c(15) << 15;
                    aVar2.f21277c.b(1);
                    long c4 = aVar2.f21277c.c(15);
                    aVar2.f21277c.b(1);
                    if (!aVar2.f && aVar2.e) {
                        aVar2.f21277c.b(4);
                        long c5 = aVar2.f21277c.c(3);
                        aVar2.f21277c.b(1);
                        long c6 = aVar2.f21277c.c(15) << 15;
                        aVar2.f21277c.b(1);
                        long c7 = aVar2.f21277c.c(15);
                        aVar2.f21277c.b(1);
                        aVar2.f21276b.b((c5 << 30) | c6 | c7);
                        aVar2.f = true;
                    }
                    aVar2.h = aVar2.f21276b.b((c2 << 30) | c3 | c4);
                }
                aVar2.f21275a.a(aVar2.h, 4);
                aVar2.f21275a.a(uVar4);
                aVar2.f21275a.b();
                u uVar5 = this.f21274d;
                uVar5.c(uVar5.f22335a.length);
                return 0;
            }
        } else {
            v vVar = this.e;
            if (!vVar.e) {
                long d4 = iVar.d();
                int min = (int) Math.min(20000L, d4);
                long j4 = d4 - min;
                if (iVar.c() != j4) {
                    uVar.f21328a = j4;
                    return 1;
                }
                vVar.f21268b.a(min);
                iVar.a();
                iVar.d(vVar.f21268b.f22335a, 0, min);
                u uVar6 = vVar.f21268b;
                int i3 = uVar6.f22336b;
                int i4 = uVar6.f22337c - 4;
                while (true) {
                    if (i4 < i3) {
                        j2 = -9223372036854775807L;
                        break;
                    }
                    if (v.a(uVar6.f22335a, i4) == 442) {
                        uVar6.d(i4 + 4);
                        j2 = v.a(uVar6);
                        if (j2 != -9223372036854775807L) {
                            break;
                        }
                    }
                    i4--;
                }
                vVar.g = j2;
                vVar.e = true;
                return 0;
            } else if (vVar.g == -9223372036854775807L) {
                return vVar.a(iVar);
            } else {
                if (!vVar.f21270d) {
                    int min2 = (int) Math.min(20000L, iVar.d());
                    if (iVar.c() != 0) {
                        uVar.f21328a = 0L;
                        return 1;
                    }
                    vVar.f21268b.a(min2);
                    iVar.a();
                    iVar.d(vVar.f21268b.f22335a, 0, min2);
                    u uVar7 = vVar.f21268b;
                    int i5 = uVar7.f22336b;
                    int i6 = uVar7.f22337c;
                    while (true) {
                        if (i5 >= i6 - 3) {
                            j = -9223372036854775807L;
                            break;
                        }
                        if (v.a(uVar7.f22335a, i5) == 442) {
                            uVar7.d(i5 + 4);
                            j = v.a(uVar7);
                            if (j != -9223372036854775807L) {
                                break;
                            }
                        }
                        i5++;
                    }
                    vVar.f = j;
                    vVar.f21270d = true;
                    return 0;
                } else if (vVar.f == -9223372036854775807L) {
                    return vVar.a(iVar);
                } else {
                    vVar.h = vVar.f21267a.b(vVar.g) - vVar.f21267a.b(vVar.f);
                    return vVar.a(iVar);
                }
            }
        }
    }

    @Override // com.google.android.exoplayer2.extractor.h
    public final void a(long j, long j2) {
        if ((this.f21272b.c() == -9223372036854775807L) || !(this.f21272b.a() == 0 || this.f21272b.a() == j2)) {
            this.f21272b.a(j2);
        }
        u uVar = this.j;
        if (uVar != null) {
            uVar.a(j2);
        }
        for (int i = 0; i < this.f21273c.size(); i++) {
            a valueAt = this.f21273c.valueAt(i);
            valueAt.f = false;
            valueAt.f21275a.a();
        }
    }

    @Override // com.google.android.exoplayer2.extractor.h
    public final void a(j jVar) {
        this.k = jVar;
    }

    @Override // com.google.android.exoplayer2.extractor.h
    public final boolean a(i iVar) throws IOException {
        byte[] bArr = new byte[14];
        iVar.d(bArr, 0, 14);
        if (442 != (((bArr[0] & 255) << 24) | ((bArr[1] & 255) << 16) | ((bArr[2] & 255) << 8) | (bArr[3] & 255)) || (bArr[4] & 196) != 68 || (bArr[6] & 4) != 4 || (bArr[8] & 4) != 4 || (bArr[9] & 1) != 1 || (bArr[12] & 3) != 3) {
            return false;
        }
        iVar.c(bArr[13] & 7);
        iVar.d(bArr, 0, 3);
        return 1 == ((((bArr[0] & 255) << 16) | ((bArr[1] & 255) << 8)) | (bArr[2] & 255));
    }
}
