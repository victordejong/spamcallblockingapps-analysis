package com.iab.omid.library.mopub.p430b;

import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.iab.omid.library.mopub.adsession.C16360k;
import com.iab.omid.library.mopub.p428a.AbstractC16342c;
import com.iab.omid.library.mopub.p428a.C16341b;
import com.iab.omid.library.mopub.p428a.C16343d;
import com.iab.omid.library.mopub.p428a.C16344e;
import com.iab.omid.library.mopub.p430b.C16363b;
import com.iab.omid.library.mopub.p435g.C16391a;
import java.util.Collections;
/* renamed from: com.iab.omid.library.mopub.b.f */
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/mopub/b/f.class */
public final class C16370f implements AbstractC16342c, C16363b.AbstractC16365a {

    /* renamed from: c */
    private static C16370f f57813c;

    /* renamed from: a */
    public float f57814a = BitmapDescriptorFactory.HUE_RED;

    /* renamed from: b */
    public C16343d f57815b;

    /* renamed from: d */
    private final C16344e f57816d;

    /* renamed from: e */
    private final C16341b f57817e;

    /* renamed from: f */
    private C16362a f57818f;

    public C16370f(C16344e c16344e, C16341b c16341b) {
        this.f57816d = c16344e;
        this.f57817e = c16341b;
    }

    /* renamed from: a */
    public static C16370f m7349a() {
        if (f57813c == null) {
            f57813c = new C16370f(new C16344e(), new C16341b());
        }
        return f57813c;
    }

    @Override // com.iab.omid.library.mopub.p428a.AbstractC16342c
    /* renamed from: a */
    public final void mo7348a(float f) {
        this.f57814a = f;
        if (this.f57818f == null) {
            this.f57818f = C16362a.m7365a();
        }
        for (C16360k c16360k : Collections.unmodifiableCollection(this.f57818f.f57795b)) {
            c16360k.f57784c.m7316a(f);
        }
    }

    @Override // com.iab.omid.library.mopub.p430b.C16363b.AbstractC16365a
    /* renamed from: a */
    public final void mo7347a(boolean z) {
        if (z) {
            C16391a.m7306a();
            C16391a.m7301b();
            return;
        }
        C16391a.m7306a();
        C16391a.m7299c();
    }
}
