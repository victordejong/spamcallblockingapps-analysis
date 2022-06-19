package com.iab.omid.library.applovin.p060b;

import android.view.View;
import com.iab.omid.library.applovin.adsession.FriendlyObstructionPurpose;
import com.iab.omid.library.applovin.p063e.C1952a;
/* renamed from: com.iab.omid.library.applovin.b.c */
/* loaded from: classes-dex2jar.jar:com/iab/omid/library/applovin/b/c.class */
public class C1934c {

    /* renamed from: a */
    private final C1952a f7169a;

    /* renamed from: b */
    private final String f7170b;

    /* renamed from: c */
    private final FriendlyObstructionPurpose f7171c;

    /* renamed from: d */
    private final String f7172d;

    public C1934c(View view, FriendlyObstructionPurpose friendlyObstructionPurpose, String str) {
        this.f7169a = new C1952a(view);
        this.f7170b = view.getClass().getCanonicalName();
        this.f7171c = friendlyObstructionPurpose;
        this.f7172d = str;
    }

    /* renamed from: a */
    public C1952a m4156a() {
        return this.f7169a;
    }

    /* renamed from: b */
    public String m4155b() {
        return this.f7170b;
    }

    /* renamed from: c */
    public FriendlyObstructionPurpose m4154c() {
        return this.f7171c;
    }

    /* renamed from: d */
    public String m4153d() {
        return this.f7172d;
    }
}
