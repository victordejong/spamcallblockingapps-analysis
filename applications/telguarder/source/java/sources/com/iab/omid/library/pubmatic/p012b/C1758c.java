package com.iab.omid.library.pubmatic.p012b;

import android.view.View;
import com.iab.omid.library.pubmatic.adsession.FriendlyObstructionPurpose;
import com.iab.omid.library.pubmatic.p015e.C1776a;
/* renamed from: com.iab.omid.library.pubmatic.b.c */
/* loaded from: classes2-dex2jar.jar:com/iab/omid/library/pubmatic/b/c.class */
public class C1758c {

    /* renamed from: a */
    private final C1776a f238a;

    /* renamed from: b */
    private final String f239b;

    /* renamed from: c */
    private final FriendlyObstructionPurpose f240c;

    /* renamed from: d */
    private final String f241d;

    public C1758c(View view, FriendlyObstructionPurpose friendlyObstructionPurpose, String str) {
        this.f238a = new C1776a(view);
        this.f239b = view.getClass().getCanonicalName();
        this.f240c = friendlyObstructionPurpose;
        this.f241d = str;
    }

    /* renamed from: a */
    public C1776a m1292a() {
        return this.f238a;
    }

    /* renamed from: b */
    public String m1291b() {
        return this.f239b;
    }

    /* renamed from: c */
    public FriendlyObstructionPurpose m1290c() {
        return this.f240c;
    }

    /* renamed from: d */
    public String m1289d() {
        return this.f241d;
    }
}
