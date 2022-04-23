package com.google.android.play.core.assetpacks;

import com.google.android.play.core.common.c;
import com.google.android.play.core.internal.h;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/assetpacks/be.class */
public final class be {

    /* renamed from: a  reason: collision with root package name */
    private static final h f31162a = new h("ExtractorTaskFinder");

    /* renamed from: b  reason: collision with root package name */
    private final bb f31163b;

    /* renamed from: c  reason: collision with root package name */
    private final w f31164c;

    /* renamed from: d  reason: collision with root package name */
    private final ad f31165d;
    private final c e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public be(bb bbVar, w wVar, ad adVar, c cVar) {
        this.f31163b = bbVar;
        this.f31164c = wVar;
        this.f31165d = adVar;
        this.e = cVar;
    }

    private final boolean a(ay ayVar, az azVar) {
        w wVar = this.f31164c;
        ax axVar = ayVar.f31149c;
        return new by(wVar, axVar.f31143a, ayVar.f31148b, axVar.f31144b, azVar.f31150a).d();
    }

    private static boolean a(az azVar) {
        int i = azVar.f;
        return i == 1 || i == 2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Finally extract failed */
    public final bd a() {
        bp bpVar;
        bm bmVar;
        cb cbVar;
        aj ajVar;
        bv bvVar;
        int i;
        bd bdVar;
        try {
            this.f31163b.f.lock();
            ArrayList arrayList = new ArrayList();
            for (ay ayVar : this.f31163b.e.values()) {
                if (bj.c(ayVar.f31149c.f31145c)) {
                    arrayList.add(ayVar);
                }
            }
            if (arrayList.isEmpty()) {
                this.f31163b.f.unlock();
                return null;
            }
            if (this.e.a()) {
                Map<String, Long> a2 = this.f31164c.a();
                Iterator it2 = arrayList.iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        bdVar = null;
                        break;
                    }
                    ay ayVar2 = (ay) it2.next();
                    Long l = a2.get(ayVar2.f31149c.f31143a);
                    if (l != null && ayVar2.f31149c.f31144b == l.longValue()) {
                        f31162a.a("Found promote pack task for session %s with pack %s.", Integer.valueOf(ayVar2.f31147a), ayVar2.f31149c.f31143a);
                        int i2 = ayVar2.f31147a;
                        String str = ayVar2.f31149c.f31143a;
                        this.f31164c.b(str);
                        bdVar = new bd(i2, str, null);
                        break;
                    }
                }
                if (bdVar != null) {
                    this.f31163b.f.unlock();
                    return bdVar;
                }
            }
            Iterator it3 = arrayList.iterator();
            while (true) {
                if (!it3.hasNext()) {
                    bpVar = null;
                    break;
                }
                ay ayVar3 = (ay) it3.next();
                try {
                    w wVar = this.f31164c;
                    ax axVar = ayVar3.f31149c;
                    if (wVar.d(axVar.f31143a, ayVar3.f31148b, axVar.f31144b) == ayVar3.f31149c.e.size()) {
                        f31162a.a("Found final move task for session %s with pack %s.", Integer.valueOf(ayVar3.f31147a), ayVar3.f31149c.f31143a);
                        int i3 = ayVar3.f31147a;
                        ax axVar2 = ayVar3.f31149c;
                        bpVar = new bp(i3, axVar2.f31143a, ayVar3.f31148b, axVar2.f31144b);
                        break;
                    }
                } catch (IOException e) {
                    throw new al(String.format("Failed to check number of completed merges for session %s, pack %s", Integer.valueOf(ayVar3.f31147a), ayVar3.f31149c.f31143a), e, ayVar3.f31147a);
                }
            }
            if (bpVar == null) {
                Iterator it4 = arrayList.iterator();
                loop3: while (true) {
                    if (!it4.hasNext()) {
                        bmVar = null;
                        break;
                    }
                    ay ayVar4 = (ay) it4.next();
                    if (bj.c(ayVar4.f31149c.f31145c)) {
                        for (az azVar : ayVar4.f31149c.e) {
                            w wVar2 = this.f31164c;
                            ax axVar3 = ayVar4.f31149c;
                            if (wVar2.b(axVar3.f31143a, ayVar4.f31148b, axVar3.f31144b, azVar.f31150a).exists()) {
                                f31162a.a("Found merge task for session %s with pack %s and slice %s.", Integer.valueOf(ayVar4.f31147a), ayVar4.f31149c.f31143a, azVar.f31150a);
                                int i4 = ayVar4.f31147a;
                                ax axVar4 = ayVar4.f31149c;
                                bmVar = new bm(i4, axVar4.f31143a, ayVar4.f31148b, axVar4.f31144b, azVar.f31150a);
                                break loop3;
                            }
                        }
                        continue;
                    }
                }
                if (bmVar == null) {
                    Iterator it5 = arrayList.iterator();
                    loop5: while (true) {
                        if (!it5.hasNext()) {
                            cbVar = null;
                            break;
                        }
                        ay ayVar5 = (ay) it5.next();
                        if (bj.c(ayVar5.f31149c.f31145c)) {
                            for (az azVar2 : ayVar5.f31149c.e) {
                                if (a(ayVar5, azVar2)) {
                                    w wVar3 = this.f31164c;
                                    ax axVar5 = ayVar5.f31149c;
                                    if (wVar3.a(axVar5.f31143a, ayVar5.f31148b, axVar5.f31144b, azVar2.f31150a).exists()) {
                                        f31162a.a("Found verify task for session %s with pack %s and slice %s.", Integer.valueOf(ayVar5.f31147a), ayVar5.f31149c.f31143a, azVar2.f31150a);
                                        int i5 = ayVar5.f31147a;
                                        ax axVar6 = ayVar5.f31149c;
                                        cbVar = new cb(i5, axVar6.f31143a, ayVar5.f31148b, axVar6.f31144b, azVar2.f31150a, azVar2.f31151b);
                                        break loop5;
                                    }
                                }
                            }
                            continue;
                        }
                    }
                    if (cbVar == null) {
                        Iterator it6 = arrayList.iterator();
                        loop7: while (true) {
                            if (!it6.hasNext()) {
                                ajVar = null;
                                break;
                            }
                            ay ayVar6 = (ay) it6.next();
                            if (bj.c(ayVar6.f31149c.f31145c)) {
                                for (az azVar3 : ayVar6.f31149c.e) {
                                    if (!a(azVar3)) {
                                        w wVar4 = this.f31164c;
                                        ax axVar7 = ayVar6.f31149c;
                                        try {
                                            i = new by(wVar4, axVar7.f31143a, ayVar6.f31148b, axVar7.f31144b, azVar3.f31150a).c();
                                        } catch (IOException e2) {
                                            f31162a.b("Slice checkpoint corrupt, restarting extraction. %s", e2);
                                            i = 0;
                                        }
                                        if (i != -1 && azVar3.f31153d.get(i).f31142a) {
                                            f31162a.a("Found extraction task using compression format %s for session %s, pack %s, slice %s, chunk %s.", Integer.valueOf(azVar3.e), Integer.valueOf(ayVar6.f31147a), ayVar6.f31149c.f31143a, azVar3.f31150a, Integer.valueOf(i));
                                            InputStream a3 = this.f31165d.a(ayVar6.f31147a, ayVar6.f31149c.f31143a, azVar3.f31150a, i);
                                            int i6 = ayVar6.f31147a;
                                            ax axVar8 = ayVar6.f31149c;
                                            String str2 = axVar8.f31143a;
                                            int i7 = ayVar6.f31148b;
                                            long j = axVar8.f31144b;
                                            String str3 = azVar3.f31150a;
                                            int i8 = azVar3.e;
                                            int size = azVar3.f31153d.size();
                                            ax axVar9 = ayVar6.f31149c;
                                            ajVar = new aj(i6, str2, i7, j, str3, i8, i, size, axVar9.f31146d, axVar9.f31145c, a3);
                                            break loop7;
                                        }
                                    }
                                }
                                continue;
                            }
                        }
                        if (ajVar == null) {
                            Iterator it7 = arrayList.iterator();
                            loop9: while (true) {
                                if (!it7.hasNext()) {
                                    bvVar = null;
                                    break;
                                }
                                ay ayVar7 = (ay) it7.next();
                                if (bj.c(ayVar7.f31149c.f31145c)) {
                                    for (az azVar4 : ayVar7.f31149c.e) {
                                        if (a(azVar4) && azVar4.f31153d.get(0).f31142a && !a(ayVar7, azVar4)) {
                                            f31162a.a("Found patch slice task using patch format %s for session %s, pack %s, slice %s.", Integer.valueOf(azVar4.f), Integer.valueOf(ayVar7.f31147a), ayVar7.f31149c.f31143a, azVar4.f31150a);
                                            InputStream a4 = this.f31165d.a(ayVar7.f31147a, ayVar7.f31149c.f31143a, azVar4.f31150a, 0);
                                            int i9 = ayVar7.f31147a;
                                            String str4 = ayVar7.f31149c.f31143a;
                                            bvVar = new bv(i9, str4, this.f31164c.b(str4), this.f31164c.c(ayVar7.f31149c.f31143a), ayVar7.f31148b, ayVar7.f31149c.f31144b, azVar4.f, azVar4.f31150a, azVar4.f31152c, a4);
                                            break loop9;
                                        }
                                    }
                                    continue;
                                }
                            }
                            if (bvVar != null) {
                                this.f31163b.f.unlock();
                                return bvVar;
                            }
                            this.f31163b.f.unlock();
                            return null;
                        }
                        this.f31163b.f.unlock();
                        return ajVar;
                    }
                    this.f31163b.f.unlock();
                    return cbVar;
                }
                this.f31163b.f.unlock();
                return bmVar;
            }
            this.f31163b.f.unlock();
            return bpVar;
        } catch (Throwable th) {
            this.f31163b.f.unlock();
            throw th;
        }
    }
}
