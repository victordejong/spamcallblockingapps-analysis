package kotlinx.coroutines.channels;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"��\u001a\n��\n\u0002\u0010��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\u0010��\u001a\u0004\u0018\u00010\u0001*\u0006\u0012\u0002\b\u00030\u00022\u000e\b\u0002\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0007H\u0087@"}, d2 = {"awaitClose", "", "Lkotlinx/coroutines/channels/ProducerScope;", "block", "Lkotlin/Function0;", "", "continuation", "Lkotlin/coroutines/Continuation;"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
@DebugMetadata(m1915c = "kotlinx.coroutines.channels.ProduceKt", m1914f = "Produce.kt", m1913l = {147}, m1912m = "awaitClose")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/channels/ProduceKt$awaitClose$1.class */
public final class ProduceKt$awaitClose$1 extends ContinuationImpl {

    /* renamed from: f */
    /* synthetic */ Object f22204f;

    /* renamed from: g */
    int f22205g;

    /* renamed from: h */
    Object f22206h;

    /* renamed from: i */
    Object f22207i;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ProduceKt$awaitClose$1(Continuation continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f22204f = obj;
        this.f22205g |= Integer.MIN_VALUE;
        return ProduceKt.m830a(null, null, this);
    }
}
