package kotlinx.coroutines;

import kotlin.Metadata;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0002\b&\u0018��2\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0006\u001a\u00020\u0007H\u0016J\n\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0005R\u0012\u0010\u0003\u001a\u00020��X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005¨\u0006\t"}, d2 = {"Lkotlinx/coroutines/MainCoroutineDispatcher;", "Lkotlinx/coroutines/CoroutineDispatcher;", "()V", "immediate", "getImmediate", "()Lkotlinx/coroutines/MainCoroutineDispatcher;", "toString", "", "toStringInternalImpl", "kotlinx-coroutines-core"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/ce.class */
public abstract class ce extends af {
    public abstract ce a();

    /* JADX INFO: Access modifiers changed from: protected */
    public final String c() {
        ce ceVar;
        ce b2 = az.b();
        ce ceVar2 = this;
        if (ceVar2 == b2) {
            return "Dispatchers.Main";
        }
        try {
            ceVar = b2.a();
        } catch (UnsupportedOperationException e) {
            ceVar = null;
        }
        if (ceVar2 == ceVar) {
            return "Dispatchers.Main.immediate";
        }
        return null;
    }

    @Override // kotlinx.coroutines.af
    public String toString() {
        String c2 = c();
        String str = c2;
        if (c2 == null) {
            str = getClass().getSimpleName() + '@' + Integer.toHexString(System.identityHashCode(this));
        }
        return str;
    }
}
