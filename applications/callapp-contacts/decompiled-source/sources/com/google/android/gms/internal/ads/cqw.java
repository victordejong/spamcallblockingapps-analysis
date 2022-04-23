package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzr;
import java.util.LinkedList;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cqw.class */
final class cqw {

    /* renamed from: b  reason: collision with root package name */
    final int f26278b;

    /* renamed from: d  reason: collision with root package name */
    private final int f26280d;

    /* renamed from: a  reason: collision with root package name */
    final LinkedList<crj<?>> f26277a = new LinkedList<>();

    /* renamed from: c  reason: collision with root package name */
    final crz f26279c = new crz();

    public cqw(int i, int i2) {
        this.f26278b = i;
        this.f26280d = i2;
    }

    public final int a() {
        d();
        return this.f26277a.size();
    }

    public final String b() {
        crz crzVar = this.f26279c;
        return "Created: " + crzVar.f26326a + " Last accessed: " + crzVar.f26328c + " Accesses: " + crzVar.f26329d + "\nEntries retrieved: Valid: " + crzVar.e + " Stale: " + crzVar.f;
    }

    public final cry c() {
        crz crzVar = this.f26279c;
        cry cryVar = (cry) crzVar.f26327b.clone();
        cry cryVar2 = crzVar.f26327b;
        cryVar2.f26324a = false;
        cryVar2.f26325b = 0;
        return cryVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void d() {
        while (!this.f26277a.isEmpty()) {
            if (zzr.zzlc().a() - this.f26277a.getFirst().f26304d >= ((long) this.f26280d)) {
                this.f26279c.b();
                this.f26277a.remove();
            } else {
                return;
            }
        }
    }
}
