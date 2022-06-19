package kotlin.reflect.jvm.internal.impl.resolve;

import kotlin.jvm.internal.C18524p;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19039b;
/* renamed from: kotlin.reflect.jvm.internal.impl.resolve.g */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/g.class */
public abstract class AbstractC19855g extends AbstractC19856h {
    /* renamed from: a */
    protected abstract void mo1342a(AbstractC19039b abstractC19039b, AbstractC19039b abstractC19039b2);

    @Override // kotlin.reflect.jvm.internal.impl.resolve.AbstractC19856h
    /* renamed from: b */
    public final void mo1397b(AbstractC19039b fromSuper, AbstractC19039b fromCurrent) {
        C18524p.m3840d(fromSuper, "fromSuper");
        C18524p.m3840d(fromCurrent, "fromCurrent");
        mo1342a(fromSuper, fromCurrent);
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.AbstractC19856h
    /* renamed from: c */
    public final void mo1396c(AbstractC19039b first, AbstractC19039b second) {
        C18524p.m3840d(first, "first");
        C18524p.m3840d(second, "second");
        mo1342a(first, second);
    }
}
