package com.iab.omid.library.mopub.b;

import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.iab.omid.library.mopub.a.c;
import com.iab.omid.library.mopub.a.d;
import com.iab.omid.library.mopub.a.e;
import com.iab.omid.library.mopub.adsession.k;
import com.iab.omid.library.mopub.b.b;
import com.iab.omid.library.mopub.g.a;
import java.util.Collections;
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/mopub/b/f.class */
public final class f implements c, b.a {

    /* renamed from: c  reason: collision with root package name */
    private static f f33277c;

    /* renamed from: a  reason: collision with root package name */
    public float f33278a = BitmapDescriptorFactory.HUE_RED;

    /* renamed from: b  reason: collision with root package name */
    public d f33279b;

    /* renamed from: d  reason: collision with root package name */
    private final e f33280d;
    private final com.iab.omid.library.mopub.a.b e;
    private a f;

    public f(e eVar, com.iab.omid.library.mopub.a.b bVar) {
        this.f33280d = eVar;
        this.e = bVar;
    }

    public static f a() {
        if (f33277c == null) {
            f33277c = new f(new e(), new com.iab.omid.library.mopub.a.b());
        }
        return f33277c;
    }

    @Override // com.iab.omid.library.mopub.a.c
    public final void a(float f) {
        this.f33278a = f;
        if (this.f == null) {
            this.f = a.a();
        }
        for (k kVar : Collections.unmodifiableCollection(this.f.f33261b)) {
            kVar.f33256c.a(f);
        }
    }

    @Override // com.iab.omid.library.mopub.b.b.a
    public final void a(boolean z) {
        if (z) {
            a.a();
            a.b();
            return;
        }
        a.a();
        a.c();
    }
}
