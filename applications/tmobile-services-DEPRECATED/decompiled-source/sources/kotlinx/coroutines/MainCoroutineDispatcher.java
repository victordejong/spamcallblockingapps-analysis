package kotlinx.coroutines;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\t\b&\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0003\u0010\u0004J\u0011\u0010\u0005\u001a\u0004\u0018\u00010\u0002H\u0005¢\u0006\u0004\b\u0005\u0010\u0004R\u0016\u0010\b\u001a\u00020��8&@&X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u000b"}, d2 = {"Lkotlinx/coroutines/MainCoroutineDispatcher;", "Lkotlinx/coroutines/CoroutineDispatcher;", "", "toString", "()Ljava/lang/String;", "toStringInternalImpl", "getImmediate", "()Lkotlinx/coroutines/MainCoroutineDispatcher;", "immediate", "<init>", "()V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/MainCoroutineDispatcher.class */
public abstract class MainCoroutineDispatcher extends CoroutineDispatcher {
    @NotNull
    /* renamed from: W */
    public abstract MainCoroutineDispatcher mo477W();

    /* JADX INFO: Access modifiers changed from: protected */
    @InternalCoroutinesApi
    @Nullable
    /* renamed from: X */
    public final String m1126X() {
        MainCoroutineDispatcher mainCoroutineDispatcher;
        MainCoroutineDispatcher b = Dispatchers.m1267b();
        if (this == b) {
            return "Dispatchers.Main";
        }
        try {
            mainCoroutineDispatcher = b.mo477W();
        } catch (UnsupportedOperationException e) {
            mainCoroutineDispatcher = null;
        }
        if (this == mainCoroutineDispatcher) {
            return "Dispatchers.Main.immediate";
        }
        return null;
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    @NotNull
    public String toString() {
        String X = m1126X();
        if (X == null) {
            X = DebugStringsKt.m1304a(this) + '@' + DebugStringsKt.m1303b(this);
        }
        return X;
    }
}
