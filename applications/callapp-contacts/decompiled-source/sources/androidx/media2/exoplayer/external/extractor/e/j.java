package androidx.media2.exoplayer.external.extractor.e;

import android.util.SparseArray;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.extractor.e.ah;
import androidx.media2.exoplayer.external.util.p;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/e/j.class */
public final class j implements ah.c {

    /* renamed from: a  reason: collision with root package name */
    private final int f3208a;

    /* renamed from: b  reason: collision with root package name */
    private final List<Format> f3209b;

    public j() {
        this(0);
    }

    public j(int i) {
        this(i, Collections.singletonList(Format.createTextSampleFormat(null, "application/cea-608", 0, null)));
    }

    public j(int i, List<Format> list) {
        this.f3208a = i;
        this.f3209b = list;
    }

    private ab a(ah.b bVar) {
        return new ab(b(bVar));
    }

    private boolean a(int i) {
        return (i & this.f3208a) != 0;
    }

    private List<Format> b(ah.b bVar) {
        int i;
        String str;
        List list;
        if (a(32)) {
            return this.f3209b;
        }
        p pVar = new p(bVar.f3178d);
        List<Format> list2 = this.f3209b;
        while (pVar.b() > 0) {
            int c2 = pVar.c();
            int c3 = pVar.c();
            int i2 = pVar.f4167b;
            if (c2 == 134) {
                ArrayList arrayList = new ArrayList();
                int c4 = pVar.c();
                int i3 = 0;
                while (true) {
                    list2 = arrayList;
                    if (i3 < (c4 & 31)) {
                        String e = pVar.e(3);
                        int c5 = pVar.c();
                        boolean z = (c5 & 128) != 0;
                        if (z) {
                            i = c5 & 63;
                            str = "application/cea-708";
                        } else {
                            str = "application/cea-608";
                            i = 1;
                        }
                        byte c6 = (byte) pVar.c();
                        pVar.d(1);
                        if (z) {
                            list = Collections.singletonList(new byte[]{(byte) ((c6 & 64) != 0 ? 1 : 0)});
                        } else {
                            list = null;
                        }
                        arrayList.add(Format.createTextSampleFormat(null, str, null, -1, 0, e, i, null, Long.MAX_VALUE, list));
                        i3++;
                    }
                }
            }
            pVar.c(i2 + c3);
        }
        return list2;
    }

    @Override // androidx.media2.exoplayer.external.extractor.e.ah.c
    public final SparseArray<ah> a() {
        return new SparseArray<>();
    }

    @Override // androidx.media2.exoplayer.external.extractor.e.ah.c
    public final ah a(int i, ah.b bVar) {
        if (i == 2) {
            return new u(new n(new aj(b(bVar))));
        }
        if (i == 3 || i == 4) {
            return new u(new s(bVar.f3176b));
        }
        if (i != 15) {
            if (i != 17) {
                if (i == 21) {
                    return new u(new q());
                }
                if (i != 27) {
                    if (i == 36) {
                        return new u(new p(a(bVar)));
                    }
                    if (i == 89) {
                        return new u(new l(bVar.f3177c));
                    }
                    if (i != 138) {
                        if (i == 172) {
                            return new u(new f(bVar.f3176b));
                        }
                        if (i != 129) {
                            if (i != 130) {
                                if (i != 134) {
                                    if (i != 135) {
                                        return null;
                                    }
                                } else if (a(16)) {
                                    return null;
                                } else {
                                    return new aa(new ac());
                                }
                            } else if (!a(64)) {
                                return null;
                            }
                        }
                        return new u(new c(bVar.f3176b));
                    }
                    return new u(new k(bVar.f3176b));
                } else if (a(4)) {
                    return null;
                } else {
                    return new u(new o(a(bVar), a(1), a(8)));
                }
            } else if (a(2)) {
                return null;
            } else {
                return new u(new r(bVar.f3176b));
            }
        } else if (a(2)) {
            return null;
        } else {
            return new u(new i(false, bVar.f3176b));
        }
    }
}
