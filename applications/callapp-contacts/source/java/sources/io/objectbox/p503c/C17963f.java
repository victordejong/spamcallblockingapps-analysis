package io.objectbox.p503c;

import java.util.ArrayList;
import java.util.List;
/* renamed from: io.objectbox.c.f */
/* loaded from: classes5-dex2jar.jar:io/objectbox/c/f.class */
public final class C17963f implements AbstractC17961d {

    /* renamed from: a */
    private final List<AbstractC17961d> f62748a = new ArrayList();

    /* renamed from: b */
    private boolean f62749b;

    @Override // io.objectbox.p503c.AbstractC17961d
    /* renamed from: a */
    public final void mo4680a() {
        synchronized (this) {
            this.f62749b = true;
            for (AbstractC17961d abstractC17961d : this.f62748a) {
                abstractC17961d.mo4680a();
            }
            this.f62748a.clear();
        }
    }

    /* renamed from: a */
    public final void m4679a(AbstractC17961d abstractC17961d) {
        synchronized (this) {
            this.f62748a.add(abstractC17961d);
            this.f62749b = false;
        }
    }
}
