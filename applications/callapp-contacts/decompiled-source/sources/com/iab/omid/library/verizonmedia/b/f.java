package com.iab.omid.library.verizonmedia.b;

import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.iab.omid.library.verizonmedia.a.c;
import com.iab.omid.library.verizonmedia.a.d;
import com.iab.omid.library.verizonmedia.a.e;
import com.iab.omid.library.verizonmedia.adsession.k;
import com.iab.omid.library.verizonmedia.b.b;
import com.iab.omid.library.verizonmedia.g.a;
import java.util.Collections;
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/verizonmedia/b/f.class */
public final class f implements c, b.a {

    /* renamed from: c  reason: collision with root package name */
    private static f f33468c;

    /* renamed from: a  reason: collision with root package name */
    public float f33469a = BitmapDescriptorFactory.HUE_RED;

    /* renamed from: b  reason: collision with root package name */
    public d f33470b;

    /* renamed from: d  reason: collision with root package name */
    private final e f33471d;
    private final com.iab.omid.library.verizonmedia.a.b e;
    private a f;

    public f(e eVar, com.iab.omid.library.verizonmedia.a.b bVar) {
        this.f33471d = eVar;
        this.e = bVar;
    }

    public static f a() {
        if (f33468c == null) {
            f33468c = new f(new e(), new com.iab.omid.library.verizonmedia.a.b());
        }
        return f33468c;
    }

    @Override // com.iab.omid.library.verizonmedia.a.c
    public final void a(float f) {
        this.f33469a = f;
        if (this.f == null) {
            this.f = a.a();
        }
        for (k kVar : Collections.unmodifiableCollection(this.f.f33452b)) {
            kVar.f33447c.a(f);
        }
    }

    @Override // com.iab.omid.library.verizonmedia.b.b.a
    public final void a(boolean z) {
        if (z) {
            a.a();
            a.b();
            return;
        }
        a.a();
        a.c();
    }

    public final void b() {
        b.a().e = this;
        b.a().b();
        if (b.a().c()) {
            a.a();
            a.b();
        }
        this.f33470b.a();
    }
}
