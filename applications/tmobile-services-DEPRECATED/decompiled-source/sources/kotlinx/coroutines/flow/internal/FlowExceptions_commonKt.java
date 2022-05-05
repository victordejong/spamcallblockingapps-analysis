package kotlinx.coroutines.flow.internal;

import com.google.firebase.analytics.FirebaseAnalytics;
import kotlin.Metadata;
import kotlinx.coroutines.flow.FlowCollector;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u001a\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0003\u001a\u0018\u0010\u0002\u001a\u00020��2\u0006\u0010\u0001\u001a\u00020��H\u0081\b¢\u0006\u0004\b\u0002\u0010\u0003\u001a\u001f\u0010\b\u001a\u00020\u0007*\u00020\u00042\n\u0010\u0006\u001a\u0006\u0012\u0002\b\u00030\u0005H��¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"", FirebaseAnalytics.Param.INDEX, "checkIndexOverflow", "(I)I", "Lkotlinx/coroutines/flow/internal/AbortFlowException;", "Lkotlinx/coroutines/flow/FlowCollector;", "owner", "", "checkOwnership", "(Lkotlinx/coroutines/flow/internal/AbortFlowException;Lkotlinx/coroutines/flow/FlowCollector;)V", "kotlinx-coroutines-core"}, k = 2, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/flow/internal/FlowExceptions_commonKt.class */
public final class FlowExceptions_commonKt {
    /* renamed from: a */
    public static final void m603a(@NotNull AbortFlowException abortFlowException, @NotNull FlowCollector<?> flowCollector) {
        if (abortFlowException.m629a() != flowCollector) {
            throw abortFlowException;
        }
    }
}
