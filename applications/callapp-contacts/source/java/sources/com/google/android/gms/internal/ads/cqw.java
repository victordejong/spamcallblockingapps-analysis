package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzr;
import java.util.LinkedList;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cqw.class */
final class cqw {

    /* renamed from: b */
    final int f46404b;

    /* renamed from: d */
    private final int f46406d;

    /* renamed from: a */
    final LinkedList<crj<?>> f46403a = new LinkedList<>();

    /* renamed from: c */
    final crz f46405c = new crz();

    public cqw(int i, int i2) {
        this.f46404b = i;
        this.f46406d = i2;
    }

    /* renamed from: a */
    public final int m17311a() {
        m17308d();
        return this.f46403a.size();
    }

    /* renamed from: b */
    public final String m17310b() {
        crz crzVar = this.f46405c;
        return "Created: " + crzVar.f46459a + " Last accessed: " + crzVar.f46461c + " Accesses: " + crzVar.f46462d + "\nEntries retrieved: Valid: " + crzVar.f46463e + " Stale: " + crzVar.f46464f;
    }

    /* renamed from: c */
    public final cry m17309c() {
        crz crzVar = this.f46405c;
        cry cryVar = (cry) crzVar.f46460b.clone();
        cry cryVar2 = crzVar.f46460b;
        cryVar2.f46457a = false;
        cryVar2.f46458b = 0;
        return cryVar;
    }

    /* renamed from: d */
    public final void m17308d() {
        while (!this.f46403a.isEmpty()) {
            if (!(zzr.zzlc().mo19039a() - this.f46403a.getFirst().f46432d >= ((long) this.f46406d))) {
                return;
            }
            this.f46405c.m17279b();
            this.f46403a.remove();
        }
    }
}
