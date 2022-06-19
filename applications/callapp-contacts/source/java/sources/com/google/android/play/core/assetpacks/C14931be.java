package com.google.android.play.core.assetpacks;

import com.google.android.play.core.common.C15002c;
import com.google.android.play.core.internal.C15072h;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
/* renamed from: com.google.android.play.core.assetpacks.be */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/assetpacks/be.class */
public final class C14931be {

    /* renamed from: a */
    private static final C15072h f54508a = new C15072h("ExtractorTaskFinder");

    /* renamed from: b */
    private final C14928bb f54509b;

    /* renamed from: c */
    private final C14996w f54510c;

    /* renamed from: d */
    private final C14903ad f54511d;

    /* renamed from: e */
    private final C15002c f54512e;

    public C14931be(C14928bb c14928bb, C14996w c14996w, C14903ad c14903ad, C15002c c15002c) {
        this.f54509b = c14928bb;
        this.f54510c = c14996w;
        this.f54511d = c14903ad;
        this.f54512e = c15002c;
    }

    /* renamed from: a */
    private final boolean m9754a(C14924ay c14924ay, C14925az c14925az) {
        C14996w c14996w = this.f54510c;
        C14923ax c14923ax = c14924ay.f54487c;
        return new C14951by(c14996w, c14923ax.f54480a, c14924ay.f54486b, c14923ax.f54481b, c14925az.f54488a).m9720d();
    }

    /* renamed from: a */
    private static boolean m9753a(C14925az c14925az) {
        int i = c14925az.f54493f;
        return i == 1 || i == 2;
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: a */
    public final C14930bd m9755a() {
        C14942bp c14942bp;
        C14939bm c14939bm;
        C14955cb c14955cb;
        C14909aj c14909aj;
        C14948bv c14948bv;
        int i;
        C14930bd c14930bd;
        try {
            this.f54509b.f54499f.lock();
            ArrayList arrayList = new ArrayList();
            for (C14924ay c14924ay : this.f54509b.f54498e.values()) {
                if (C14936bj.m9742c(c14924ay.f54487c.f54482c)) {
                    arrayList.add(c14924ay);
                }
            }
            if (arrayList.isEmpty()) {
                this.f54509b.f54499f.unlock();
                return null;
            }
            if (this.f54512e.m9632a()) {
                Map<String, Long> m9669a = this.f54510c.m9669a();
                Iterator it2 = arrayList.iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        c14930bd = null;
                        break;
                    }
                    C14924ay c14924ay2 = (C14924ay) it2.next();
                    Long l = m9669a.get(c14924ay2.f54487c.f54480a);
                    if (l != null && c14924ay2.f54487c.f54481b == l.longValue()) {
                        f54508a.m9511a("Found promote pack task for session %s with pack %s.", Integer.valueOf(c14924ay2.f54485a), c14924ay2.f54487c.f54480a);
                        int i2 = c14924ay2.f54485a;
                        String str = c14924ay2.f54487c.f54480a;
                        this.f54510c.m9659b(str);
                        c14930bd = new C14930bd(i2, str, null);
                        break;
                    }
                }
                if (c14930bd != null) {
                    this.f54509b.f54499f.unlock();
                    return c14930bd;
                }
            }
            Iterator it3 = arrayList.iterator();
            while (true) {
                if (!it3.hasNext()) {
                    c14942bp = null;
                    break;
                }
                C14924ay c14924ay3 = (C14924ay) it3.next();
                try {
                    C14996w c14996w = this.f54510c;
                    C14923ax c14923ax = c14924ay3.f54487c;
                    if (c14996w.m9650d(c14923ax.f54480a, c14924ay3.f54486b, c14923ax.f54481b) == c14924ay3.f54487c.f54484e.size()) {
                        f54508a.m9511a("Found final move task for session %s with pack %s.", Integer.valueOf(c14924ay3.f54485a), c14924ay3.f54487c.f54480a);
                        int i3 = c14924ay3.f54485a;
                        C14923ax c14923ax2 = c14924ay3.f54487c;
                        c14942bp = new C14942bp(i3, c14923ax2.f54480a, c14924ay3.f54486b, c14923ax2.f54481b);
                        break;
                    }
                } catch (IOException e) {
                    throw new C14911al(String.format("Failed to check number of completed merges for session %s, pack %s", Integer.valueOf(c14924ay3.f54485a), c14924ay3.f54487c.f54480a), e, c14924ay3.f54485a);
                }
            }
            if (c14942bp != null) {
                this.f54509b.f54499f.unlock();
                return c14942bp;
            }
            Iterator it4 = arrayList.iterator();
            loop3: while (true) {
                if (!it4.hasNext()) {
                    c14939bm = null;
                    break;
                }
                C14924ay c14924ay4 = (C14924ay) it4.next();
                if (C14936bj.m9742c(c14924ay4.f54487c.f54482c)) {
                    for (C14925az c14925az : c14924ay4.f54487c.f54484e) {
                        C14996w c14996w2 = this.f54510c;
                        C14923ax c14923ax3 = c14924ay4.f54487c;
                        if (c14996w2.m9657b(c14923ax3.f54480a, c14924ay4.f54486b, c14923ax3.f54481b, c14925az.f54488a).exists()) {
                            f54508a.m9511a("Found merge task for session %s with pack %s and slice %s.", Integer.valueOf(c14924ay4.f54485a), c14924ay4.f54487c.f54480a, c14925az.f54488a);
                            int i4 = c14924ay4.f54485a;
                            C14923ax c14923ax4 = c14924ay4.f54487c;
                            c14939bm = new C14939bm(i4, c14923ax4.f54480a, c14924ay4.f54486b, c14923ax4.f54481b, c14925az.f54488a);
                            break loop3;
                        }
                    }
                    continue;
                }
            }
            if (c14939bm != null) {
                this.f54509b.f54499f.unlock();
                return c14939bm;
            }
            Iterator it5 = arrayList.iterator();
            loop5: while (true) {
                if (!it5.hasNext()) {
                    c14955cb = null;
                    break;
                }
                C14924ay c14924ay5 = (C14924ay) it5.next();
                if (C14936bj.m9742c(c14924ay5.f54487c.f54482c)) {
                    for (C14925az c14925az2 : c14924ay5.f54487c.f54484e) {
                        if (m9754a(c14924ay5, c14925az2)) {
                            C14996w c14996w3 = this.f54510c;
                            C14923ax c14923ax5 = c14924ay5.f54487c;
                            if (c14996w3.m9662a(c14923ax5.f54480a, c14924ay5.f54486b, c14923ax5.f54481b, c14925az2.f54488a).exists()) {
                                f54508a.m9511a("Found verify task for session %s with pack %s and slice %s.", Integer.valueOf(c14924ay5.f54485a), c14924ay5.f54487c.f54480a, c14925az2.f54488a);
                                int i5 = c14924ay5.f54485a;
                                C14923ax c14923ax6 = c14924ay5.f54487c;
                                c14955cb = new C14955cb(i5, c14923ax6.f54480a, c14924ay5.f54486b, c14923ax6.f54481b, c14925az2.f54488a, c14925az2.f54489b);
                                break loop5;
                            }
                        }
                    }
                    continue;
                }
            }
            if (c14955cb != null) {
                this.f54509b.f54499f.unlock();
                return c14955cb;
            }
            Iterator it6 = arrayList.iterator();
            loop7: while (true) {
                if (!it6.hasNext()) {
                    c14909aj = null;
                    break;
                }
                C14924ay c14924ay6 = (C14924ay) it6.next();
                if (C14936bj.m9742c(c14924ay6.f54487c.f54482c)) {
                    for (C14925az c14925az3 : c14924ay6.f54487c.f54484e) {
                        if (!m9753a(c14925az3)) {
                            C14996w c14996w4 = this.f54510c;
                            C14923ax c14923ax7 = c14924ay6.f54487c;
                            try {
                                i = new C14951by(c14996w4, c14923ax7.f54480a, c14924ay6.f54486b, c14923ax7.f54481b, c14925az3.f54488a).m9721c();
                            } catch (IOException e2) {
                                f54508a.m9509b("Slice checkpoint corrupt, restarting extraction. %s", e2);
                                i = 0;
                            }
                            if (i != -1 && c14925az3.f54491d.get(i).f54479a) {
                                f54508a.m9511a("Found extraction task using compression format %s for session %s, pack %s, slice %s, chunk %s.", Integer.valueOf(c14925az3.f54492e), Integer.valueOf(c14924ay6.f54485a), c14924ay6.f54487c.f54480a, c14925az3.f54488a, Integer.valueOf(i));
                                InputStream m9787a = this.f54511d.m9787a(c14924ay6.f54485a, c14924ay6.f54487c.f54480a, c14925az3.f54488a, i);
                                int i6 = c14924ay6.f54485a;
                                C14923ax c14923ax8 = c14924ay6.f54487c;
                                String str2 = c14923ax8.f54480a;
                                int i7 = c14924ay6.f54486b;
                                long j = c14923ax8.f54481b;
                                String str3 = c14925az3.f54488a;
                                int i8 = c14925az3.f54492e;
                                int size = c14925az3.f54491d.size();
                                C14923ax c14923ax9 = c14924ay6.f54487c;
                                c14909aj = new C14909aj(i6, str2, i7, j, str3, i8, i, size, c14923ax9.f54483d, c14923ax9.f54482c, m9787a);
                                break loop7;
                            }
                        }
                    }
                    continue;
                }
            }
            if (c14909aj != null) {
                this.f54509b.f54499f.unlock();
                return c14909aj;
            }
            Iterator it7 = arrayList.iterator();
            loop9: while (true) {
                if (!it7.hasNext()) {
                    c14948bv = null;
                    break;
                }
                C14924ay c14924ay7 = (C14924ay) it7.next();
                if (C14936bj.m9742c(c14924ay7.f54487c.f54482c)) {
                    for (C14925az c14925az4 : c14924ay7.f54487c.f54484e) {
                        if (m9753a(c14925az4) && c14925az4.f54491d.get(0).f54479a && !m9754a(c14924ay7, c14925az4)) {
                            f54508a.m9511a("Found patch slice task using patch format %s for session %s, pack %s, slice %s.", Integer.valueOf(c14925az4.f54493f), Integer.valueOf(c14924ay7.f54485a), c14924ay7.f54487c.f54480a, c14925az4.f54488a);
                            InputStream m9787a2 = this.f54511d.m9787a(c14924ay7.f54485a, c14924ay7.f54487c.f54480a, c14925az4.f54488a, 0);
                            int i9 = c14924ay7.f54485a;
                            String str4 = c14924ay7.f54487c.f54480a;
                            c14948bv = new C14948bv(i9, str4, this.f54510c.m9659b(str4), this.f54510c.m9654c(c14924ay7.f54487c.f54480a), c14924ay7.f54486b, c14924ay7.f54487c.f54481b, c14925az4.f54493f, c14925az4.f54488a, c14925az4.f54490c, m9787a2);
                            break loop9;
                        }
                    }
                    continue;
                }
            }
            if (c14948bv != null) {
                this.f54509b.f54499f.unlock();
                return c14948bv;
            }
            this.f54509b.f54499f.unlock();
            return null;
        } catch (Throwable th) {
            this.f54509b.f54499f.unlock();
            throw th;
        }
    }
}
