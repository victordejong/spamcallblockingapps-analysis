package com.google.android.play.core.assetpacks;

import com.google.android.play.core.internal.AbstractC15037ba;
import com.google.android.play.core.internal.C15072h;
import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: com.google.android.play.core.assetpacks.am */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/assetpacks/am.class */
public final class C14912am {

    /* renamed from: a */
    static final C15072h f54436a = new C15072h("ExtractorLooper");

    /* renamed from: b */
    final C14910ak f54437b;

    /* renamed from: c */
    final C14956cc f54438c;

    /* renamed from: d */
    final C14940bn f54439d;

    /* renamed from: e */
    final C14945bs f54440e;

    /* renamed from: f */
    final C14949bw f54441f;

    /* renamed from: g */
    final AbstractC15037ba<AbstractC14972cs> f54442g;

    /* renamed from: h */
    final C14931be f54443h;

    /* renamed from: i */
    final AtomicBoolean f54444i = new AtomicBoolean(false);

    /* renamed from: j */
    private final C14928bb f54445j;

    public C14912am(C14928bb c14928bb, AbstractC15037ba<AbstractC14972cs> abstractC15037ba, C14910ak c14910ak, C14956cc c14956cc, C14940bn c14940bn, C14945bs c14945bs, C14949bw c14949bw, C14931be c14931be) {
        this.f54445j = c14928bb;
        this.f54442g = abstractC15037ba;
        this.f54437b = c14910ak;
        this.f54438c = c14956cc;
        this.f54439d = c14940bn;
        this.f54440e = c14945bs;
        this.f54441f = c14949bw;
        this.f54443h = c14931be;
    }

    /* renamed from: a */
    public final void m9779a(int i, Exception exc) {
        try {
            this.f54445j.m9757c(i);
            this.f54445j.m9763a(i);
        } catch (C14911al e) {
            f54436a.m9509b("Error during error handling: %s", exc.getMessage());
        }
    }
}
