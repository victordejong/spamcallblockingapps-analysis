package kotlinx.coroutines;

import kotlin.Metadata;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0002\b&\u0018��2\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0006\u001a\u00020\u0007H\u0016J\n\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0005R\u0012\u0010\u0003\u001a\u00020��X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005¨\u0006\t"}, m4298d2 = {"Lkotlinx/coroutines/MainCoroutineDispatcher;", "Lkotlinx/coroutines/CoroutineDispatcher;", "()V", "immediate", "getImmediate", "()Lkotlinx/coroutines/MainCoroutineDispatcher;", "toString", "", "toStringInternalImpl", "kotlinx-coroutines-core"}, m4297k = 1, m4296mv = {1, 4, 2})
/* renamed from: kotlinx.coroutines.ce */
/* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/ce.class */
public abstract class AbstractC20236ce extends AbstractC20140af {
    /* renamed from: a */
    public abstract AbstractC20236ce mo827a();

    /* renamed from: c */
    public final String m921c() {
        AbstractC20236ce abstractC20236ce;
        AbstractC20236ce m1060b = C20172az.m1060b();
        AbstractC20236ce abstractC20236ce2 = this;
        if (abstractC20236ce2 == m1060b) {
            return "Dispatchers.Main";
        }
        try {
            abstractC20236ce = m1060b.mo827a();
        } catch (UnsupportedOperationException e) {
            abstractC20236ce = null;
        }
        if (abstractC20236ce2 != abstractC20236ce) {
            return null;
        }
        return "Dispatchers.Main.immediate";
    }

    @Override // kotlinx.coroutines.AbstractC20140af
    public String toString() {
        String m921c = m921c();
        String str = m921c;
        if (m921c == null) {
            str = getClass().getSimpleName() + '@' + Integer.toHexString(System.identityHashCode(this));
        }
        return str;
    }
}
