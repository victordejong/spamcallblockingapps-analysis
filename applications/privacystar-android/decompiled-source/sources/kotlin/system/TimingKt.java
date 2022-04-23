package kotlin.system;

import com.privacystar.core.service.blocking.api21.BlockingOverlayService;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmName;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u0014\n��\n\u0002\u0010\t\n��\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u001a\u0017\u0010��\u001a\u00020\u00012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003H\u0086\b\u001a\u0017\u0010\u0005\u001a\u00020\u00012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003H\u0086\b¨\u0006\u0006"}, m254d2 = {"measureNanoTime", "", BlockingOverlayService.EXTRA_BLOCK_IMMEDIATELY, "Lkotlin/Function0;", "", "measureTimeMillis", "kotlin-stdlib"}, m253k = 2, m252mv = {1, 1, 13})
@JvmName(name = "TimingKt")
/* loaded from: classes2-dex2jar.jar:kotlin/system/TimingKt.class */
public final class TimingKt {
    public static final long measureNanoTime(@NotNull Function0<Unit> block) {
        Intrinsics.checkParameterIsNotNull(block, "block");
        long nanoTime = System.nanoTime();
        block.invoke();
        return System.nanoTime() - nanoTime;
    }

    public static final long measureTimeMillis(@NotNull Function0<Unit> block) {
        Intrinsics.checkParameterIsNotNull(block, "block");
        long currentTimeMillis = System.currentTimeMillis();
        block.invoke();
        return System.currentTimeMillis() - currentTimeMillis;
    }
}
