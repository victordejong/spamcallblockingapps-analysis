package com.google.android.play.core.assetpacks;

import com.google.android.play.core.internal.AbstractC8509p0;
import com.google.android.play.core.internal.C8466a;
import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: com.google.android.play.core.assetpacks.k0 */
/* loaded from: classes2-dex2jar.jar:com/google/android/play/core/assetpacks/k0.class */
public final class C8403k0 {

    /* renamed from: a */
    private static final C8466a f37815a = new C8466a("ExtractorLooper");

    /* renamed from: b */
    private final C8459z0 f37816b;

    /* renamed from: c */
    private final C8399j0 f37817c;

    /* renamed from: d */
    private final C8364a2 f37818d;

    /* renamed from: e */
    private final C8408l1 f37819e;

    /* renamed from: f */
    private final C8428q1 f37820f;

    /* renamed from: g */
    private final C8444u1 f37821g;

    /* renamed from: h */
    private final AbstractC8509p0<AbstractC8433r2> f37822h;

    /* renamed from: i */
    private final C8372c1 f37823i;

    /* renamed from: j */
    private final AtomicBoolean f37824j = new AtomicBoolean(false);

    public C8403k0(C8459z0 c8459z0, AbstractC8509p0<AbstractC8433r2> abstractC8509p0, C8399j0 c8399j0, C8364a2 c8364a2, C8408l1 c8408l1, C8428q1 c8428q1, C8444u1 c8444u1, C8372c1 c8372c1) {
        this.f37816b = c8459z0;
        this.f37822h = abstractC8509p0;
        this.f37817c = c8399j0;
        this.f37818d = c8364a2;
        this.f37819e = c8408l1;
        this.f37820f = c8428q1;
        this.f37821g = c8444u1;
        this.f37823i = c8372c1;
    }

    /* renamed from: b */
    private final void m3721b(int i, Exception exc) {
        try {
            this.f37816b.m3586o(i);
            this.f37816b.m3594g(i);
        } catch (C8369bk e) {
            f37815a.m3566b("Error during error handling: %s", exc.getMessage());
        }
    }

    /* renamed from: a */
    public final void m3722a() {
        C8395i0 c8395i0;
        C8466a c8466a = f37815a;
        c8466a.m3567a("Run extractor loop", new Object[0]);
        if (!this.f37824j.compareAndSet(false, true)) {
            c8466a.m3563e("runLoop already looping; return", new Object[0]);
            return;
        }
        while (true) {
            try {
                c8395i0 = this.f37823i.m3770a();
            } catch (C8369bk e) {
                f37815a.m3566b("Error while getting next extraction task: %s", e.getMessage());
                c8395i0 = null;
                if (e.f37676a >= 0) {
                    this.f37822h.m3482a().mo3684b(e.f37676a);
                    m3721b(e.f37676a, e);
                    c8395i0 = null;
                }
            }
            if (c8395i0 == null) {
                this.f37824j.set(false);
                return;
            }
            try {
                if (c8395i0 instanceof C8395i0) {
                    this.f37817c.m3730a(c8395i0);
                } else if (c8395i0 instanceof C8460z1) {
                    this.f37818d.m3788a(c8395i0);
                } else if (c8395i0 instanceof C8404k1) {
                    this.f37819e.m3719a(c8395i0);
                } else if (c8395i0 instanceof C8416n1) {
                    this.f37820f.m3691a(c8395i0);
                } else if (c8395i0 instanceof C8440t1) {
                    this.f37821g.m3673a(c8395i0);
                } else {
                    f37815a.m3566b("Unknown task type: %s", c8395i0.getClass().getName());
                }
            } catch (Exception e2) {
                f37815a.m3566b("Error during extraction task: %s", e2.getMessage());
                this.f37822h.m3482a().mo3684b(c8395i0.f37668a);
                m3721b(c8395i0.f37668a, e2);
            }
        }
    }
}
