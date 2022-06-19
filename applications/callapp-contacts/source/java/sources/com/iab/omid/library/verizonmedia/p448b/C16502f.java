package com.iab.omid.library.verizonmedia.p448b;

import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.iab.omid.library.verizonmedia.adsession.C16492k;
import com.iab.omid.library.verizonmedia.p446a.AbstractC16476c;
import com.iab.omid.library.verizonmedia.p446a.C16475b;
import com.iab.omid.library.verizonmedia.p446a.C16477d;
import com.iab.omid.library.verizonmedia.p446a.C16478e;
import com.iab.omid.library.verizonmedia.p448b.C16495b;
import com.iab.omid.library.verizonmedia.p453g.C16523a;
import java.util.Collections;
/* renamed from: com.iab.omid.library.verizonmedia.b.f */
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/verizonmedia/b/f.class */
public final class C16502f implements AbstractC16476c, C16495b.AbstractC16497a {

    /* renamed from: c */
    private static C16502f f58074c;

    /* renamed from: a */
    public float f58075a = BitmapDescriptorFactory.HUE_RED;

    /* renamed from: b */
    public C16477d f58076b;

    /* renamed from: d */
    private final C16478e f58077d;

    /* renamed from: e */
    private final C16475b f58078e;

    /* renamed from: f */
    private C16494a f58079f;

    public C16502f(C16478e c16478e, C16475b c16475b) {
        this.f58077d = c16478e;
        this.f58078e = c16475b;
    }

    /* renamed from: a */
    public static C16502f m7127a() {
        if (f58074c == null) {
            f58074c = new C16502f(new C16478e(), new C16475b());
        }
        return f58074c;
    }

    @Override // com.iab.omid.library.verizonmedia.p446a.AbstractC16476c
    /* renamed from: a */
    public final void mo7126a(float f) {
        this.f58075a = f;
        if (this.f58079f == null) {
            this.f58079f = C16494a.m7145a();
        }
        for (C16492k c16492k : Collections.unmodifiableCollection(this.f58079f.f58056b)) {
            c16492k.f58045c.m7094a(f);
        }
    }

    @Override // com.iab.omid.library.verizonmedia.p448b.C16495b.AbstractC16497a
    /* renamed from: a */
    public final void mo7125a(boolean z) {
        if (z) {
            C16523a.m7084a();
            C16523a.m7079b();
            return;
        }
        C16523a.m7084a();
        C16523a.m7077c();
    }

    /* renamed from: b */
    public final void m7124b() {
        C16495b.m7142a().f58062e = this;
        C16495b.m7142a().m7140b();
        if (C16495b.m7142a().m7139c()) {
            C16523a.m7084a();
            C16523a.m7079b();
        }
        this.f58076b.m7178a();
    }
}
