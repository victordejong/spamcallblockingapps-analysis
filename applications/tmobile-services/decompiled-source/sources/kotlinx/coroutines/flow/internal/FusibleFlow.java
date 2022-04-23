package kotlinx.coroutines.flow.internal;

import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlinx.coroutines.InternalCoroutinesApi;
import kotlinx.coroutines.flow.Flow;
import org.jetbrains.annotations.NotNull;
@InternalCoroutinesApi
@Metadata(bv = {1, 0, 3}, d1 = {"��\u001c\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0004\bg\u0018��*\u0004\b��\u0010\u00012\u00020\u00022\u00020\u0003J)\u0010\b\u001a\b\u0012\u0004\u0012\u00028��0��2\b\b\u0002\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0007\u001a\u00020\u0006H&¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lkotlinx/coroutines/flow/internal/FusibleFlow;", "T", "Lkotlinx/coroutines/flow/Flow;", "Lkotlin/Any;", "Lkotlin/coroutines/CoroutineContext;", "context", "", "capacity", "fuse", "(Lkotlin/coroutines/CoroutineContext;I)Lkotlinx/coroutines/flow/internal/FusibleFlow;", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/flow/internal/FusibleFlow.class */
public interface FusibleFlow<T> extends Flow<T> {

    @Metadata(bv = {1, 0, 3}, d1 = {}, d2 = {}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/flow/internal/FusibleFlow$DefaultImpls.class */
    public static final class DefaultImpls {
        /* renamed from: a */
        public static /* synthetic */ FusibleFlow m600a(FusibleFlow fusibleFlow, CoroutineContext coroutineContext, int i, int i2, Object obj) {
            if (obj == null) {
                if ((i2 & 1) != 0) {
                    coroutineContext = EmptyCoroutineContext.f20645f;
                }
                if ((i2 & 2) != 0) {
                    i = -3;
                }
                return fusibleFlow.mo601b(coroutineContext, i);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: fuse");
        }
    }

    @NotNull
    /* renamed from: b */
    FusibleFlow<T> mo601b(@NotNull CoroutineContext coroutineContext, int i);
}
