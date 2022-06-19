package com.p102b.p103a.p104a;

import com.googlecode.mp4parser.AbstractC16280c;
import com.googlecode.mp4parser.C16297h;
import org.mp4parser.aspectj.lang.AbstractC20997a;
import org.mp4parser.aspectj.p593a.p595b.C20987b;
/* renamed from: com.b.a.a.c */
/* loaded from: classes-dex2jar.jar:com/b/a/a/c.class */
public abstract class AbstractC3478c extends AbstractC16280c {

    /* renamed from: a */
    private static final AbstractC20997a.AbstractC20998a f13203a = null;

    static {
        m37894b();
    }

    public AbstractC3478c(String str) {
        super(str);
    }

    /* renamed from: b */
    private static void m37894b() {
        C20987b c20987b = new C20987b("ChunkOffsetBox.java", AbstractC3478c.class);
        f13203a = c20987b.m164a("method-execution", c20987b.m165a("1", "toString", "com.coremedia.iso.boxes.ChunkOffsetBox", "", "", "", "java.lang.String"), 18);
    }

    /* renamed from: a */
    public abstract void mo37895a(long[] jArr);

    /* renamed from: a */
    public abstract long[] mo37896a();

    public String toString() {
        AbstractC20997a m163a = C20987b.m163a(f13203a, this, this);
        C16297h.m7484a();
        C16297h.m7483a(m163a);
        return String.valueOf(getClass().getSimpleName()) + "[entryCount=" + mo37896a().length + "]";
    }
}
