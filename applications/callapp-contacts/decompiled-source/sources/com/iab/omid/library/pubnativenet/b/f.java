package com.iab.omid.library.pubnativenet.b;

import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.iab.omid.library.pubnativenet.a.c;
import com.iab.omid.library.pubnativenet.a.d;
import com.iab.omid.library.pubnativenet.a.e;
import com.iab.omid.library.pubnativenet.adsession.k;
import com.iab.omid.library.pubnativenet.b.b;
import com.iab.omid.library.pubnativenet.g.a;
import java.util.Collections;
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/pubnativenet/b/f.class */
public final class f implements c, b.a {

    /* renamed from: c  reason: collision with root package name */
    private static f f33372c;

    /* renamed from: a  reason: collision with root package name */
    public float f33373a = BitmapDescriptorFactory.HUE_RED;

    /* renamed from: b  reason: collision with root package name */
    public d f33374b;

    /* renamed from: d  reason: collision with root package name */
    private final e f33375d;
    private final com.iab.omid.library.pubnativenet.a.b e;
    private a f;

    public f(e eVar, com.iab.omid.library.pubnativenet.a.b bVar) {
        this.f33375d = eVar;
        this.e = bVar;
    }

    public static f a() {
        if (f33372c == null) {
            f33372c = new f(new e(), new com.iab.omid.library.pubnativenet.a.b());
        }
        return f33372c;
    }

    @Override // com.iab.omid.library.pubnativenet.a.c
    public final void a(float f) {
        this.f33373a = f;
        if (this.f == null) {
            this.f = a.a();
        }
        for (k kVar : Collections.unmodifiableCollection(this.f.f33357b)) {
            kVar.f33352c.a(f);
        }
    }

    @Override // com.iab.omid.library.pubnativenet.b.b.a
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
