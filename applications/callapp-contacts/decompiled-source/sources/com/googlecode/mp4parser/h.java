package com.googlecode.mp4parser;

import org.mp4parser.aspectj.lang.NoAspectBoundException;
import org.mp4parser.aspectj.lang.a;
/* loaded from: classes4-dex2jar.jar:com/googlecode/mp4parser/h.class */
public final class h {

    /* renamed from: a  reason: collision with root package name */
    public static final h f33188a = null;

    /* renamed from: b  reason: collision with root package name */
    private static Throwable f33189b;

    static {
        try {
            b();
        } catch (Throwable th) {
            f33189b = th;
        }
    }

    public static h a() {
        h hVar = f33188a;
        if (hVar != null) {
            return hVar;
        }
        throw new NoAspectBoundException("com.googlecode.mp4parser.RequiresParseDetailAspect", f33189b);
    }

    public static void a(a aVar) {
        if (!(aVar.a() instanceof a)) {
            throw new RuntimeException("Only methods in subclasses of " + a.class.getName() + " can  be annotated with ParseDetail");
        } else if (!((a) aVar.a()).isParsed()) {
            ((a) aVar.a()).parseDetails();
        }
    }

    private static void b() {
        f33188a = new h();
    }
}
