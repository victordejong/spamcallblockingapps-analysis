package com.google.android.exoplayer2.extractor.h;

import android.util.SparseArray;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.extractor.h.ad;
import com.google.android.exoplayer2.util.d;
import com.google.android.exoplayer2.util.u;
import com.google.common.collect.v;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/h/g.class */
public final class g implements ad.c {

    /* renamed from: a  reason: collision with root package name */
    private final int f21192a;

    /* renamed from: b  reason: collision with root package name */
    private final List<Format> f21193b;

    public g() {
        this(0);
    }

    public g(int i) {
        this(i, v.g());
    }

    public g(int i, List<Format> list) {
        this.f21192a = i;
        this.f21193b = list;
    }

    private z a(ad.b bVar) {
        return new z(c(bVar));
    }

    private boolean a(int i) {
        return (i & this.f21192a) != 0;
    }

    private af b(ad.b bVar) {
        return new af(c(bVar));
    }

    private List<Format> c(ad.b bVar) {
        int i;
        String str;
        if (a(32)) {
            return this.f21193b;
        }
        u uVar = new u(bVar.f21165d);
        List<Format> list = this.f21193b;
        while (uVar.a() > 0) {
            int c2 = uVar.c();
            int c3 = uVar.c();
            int i2 = uVar.f22336b;
            if (c2 == 134) {
                ArrayList arrayList = new ArrayList();
                int c4 = uVar.c();
                int i3 = 0;
                while (true) {
                    list = arrayList;
                    if (i3 < (c4 & 31)) {
                        String f = uVar.f(3);
                        int c5 = uVar.c();
                        boolean z = true;
                        boolean z2 = (c5 & 128) != 0;
                        if (z2) {
                            i = c5 & 63;
                            str = "application/cea-708";
                        } else {
                            str = "application/cea-608";
                            i = 1;
                        }
                        byte c6 = (byte) uVar.c();
                        uVar.e(1);
                        List<byte[]> list2 = null;
                        if (z2) {
                            if ((c6 & 64) == 0) {
                                z = false;
                            }
                            list2 = d.a(z);
                        }
                        Format.a aVar = new Format.a();
                        aVar.k = str;
                        aVar.f20605c = f;
                        aVar.C = i;
                        aVar.m = list2;
                        arrayList.add(aVar.a());
                        i3++;
                    }
                }
            }
            uVar.d(i2 + c3);
        }
        return list;
    }

    @Override // com.google.android.exoplayer2.extractor.h.ad.c
    public final SparseArray<ad> a() {
        return new SparseArray<>();
    }

    @Override // com.google.android.exoplayer2.extractor.h.ad.c
    public final ad a(int i, ad.b bVar) {
        if (i == 2) {
            return new t(new k(b(bVar)));
        }
        if (i == 3 || i == 4) {
            return new t(new q(bVar.f21163b));
        }
        if (i == 21) {
            return new t(new o());
        }
        if (i != 27) {
            if (i == 36) {
                return new t(new n(a(bVar)));
            }
            if (i == 89) {
                return new t(new i(bVar.f21164c));
            }
            if (i != 138) {
                if (i == 172) {
                    return new t(new d(bVar.f21163b));
                }
                if (i == 257) {
                    return new y(new s("application/vnd.dvb.ait"));
                }
                if (i != 129) {
                    if (i != 130) {
                        if (i != 134) {
                            if (i != 135) {
                                switch (i) {
                                    case 15:
                                        if (a(2)) {
                                            return null;
                                        }
                                        return new t(new f(false, bVar.f21163b));
                                    case 16:
                                        return new t(new l(b(bVar)));
                                    case 17:
                                        if (a(2)) {
                                            return null;
                                        }
                                        return new t(new p(bVar.f21163b));
                                    default:
                                        return null;
                                }
                            }
                        } else if (a(16)) {
                            return null;
                        } else {
                            return new y(new s("application/x-scte35"));
                        }
                    } else if (!a(64)) {
                        return null;
                    }
                }
                return new t(new b(bVar.f21163b));
            }
            return new t(new h(bVar.f21163b));
        } else if (a(4)) {
            return null;
        } else {
            return new t(new m(a(bVar), a(1), a(8)));
        }
    }
}
