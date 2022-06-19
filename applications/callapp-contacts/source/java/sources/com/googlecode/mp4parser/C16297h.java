package com.googlecode.mp4parser;

import org.mp4parser.aspectj.lang.AbstractC20997a;
import org.mp4parser.aspectj.lang.NoAspectBoundException;
/* renamed from: com.googlecode.mp4parser.h */
/* loaded from: classes4-dex2jar.jar:com/googlecode/mp4parser/h.class */
public final class C16297h {

    /* renamed from: a */
    public static final C16297h f57566a = null;

    /* renamed from: b */
    private static Throwable f57567b;

    static {
        try {
            m7482b();
        } catch (Throwable th) {
            f57567b = th;
        }
    }

    /* renamed from: a */
    public static C16297h m7484a() {
        C16297h c16297h = f57566a;
        if (c16297h != null) {
            return c16297h;
        }
        throw new NoAspectBoundException("com.googlecode.mp4parser.RequiresParseDetailAspect", f57567b);
    }

    /* renamed from: a */
    public static void m7483a(AbstractC20997a abstractC20997a) {
        if (abstractC20997a.mo145a() instanceof AbstractC16221a) {
            if (((AbstractC16221a) abstractC20997a.mo145a()).isParsed()) {
                return;
            }
            ((AbstractC16221a) abstractC20997a.mo145a()).parseDetails();
            return;
        }
        throw new RuntimeException("Only methods in subclasses of " + AbstractC16221a.class.getName() + " can  be annotated with ParseDetail");
    }

    /* renamed from: b */
    private static void m7482b() {
        f57566a = new C16297h();
    }
}
