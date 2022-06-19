package com.iab.omid.library.mopub.p125b;

import android.support.annotation.Nullable;
import android.view.View;
import com.iab.omid.library.mopub.adsession.FriendlyObstructionPurpose;
import com.iab.omid.library.mopub.p128e.C2620a;
/* renamed from: com.iab.omid.library.mopub.b.c */
/* loaded from: classes3-dex2jar.jar:com/iab/omid/library/mopub/b/c.class */
public class C2605c {

    /* renamed from: a */
    private final C2620a f8353a;

    /* renamed from: b */
    private final String f8354b;

    /* renamed from: c */
    private final FriendlyObstructionPurpose f8355c;

    /* renamed from: d */
    private final String f8356d;

    public C2605c(View view, FriendlyObstructionPurpose friendlyObstructionPurpose, @Nullable String str) {
        this.f8353a = new C2620a(view);
        this.f8354b = view.getClass().getCanonicalName();
        this.f8355c = friendlyObstructionPurpose;
        this.f8356d = str;
    }

    /* renamed from: a */
    public C2620a m36459a() {
        return this.f8353a;
    }

    /* renamed from: b */
    public String m36458b() {
        return this.f8354b;
    }

    /* renamed from: c */
    public FriendlyObstructionPurpose m36457c() {
        return this.f8355c;
    }

    /* renamed from: d */
    public String m36456d() {
        return this.f8356d;
    }
}
