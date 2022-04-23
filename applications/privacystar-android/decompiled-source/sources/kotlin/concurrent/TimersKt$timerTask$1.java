package kotlin.concurrent;

import java.util.TimerTask;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u0011\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��*\u0001��\b\n\u0018��2\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016¨\u0006\u0004"}, m254d2 = {"kotlin/concurrent/TimersKt$timerTask$1", "Ljava/util/TimerTask;", "run", "", "kotlin-stdlib"}, m253k = 1, m252mv = {1, 1, 13})
/* loaded from: classes2-dex2jar.jar:kotlin/concurrent/TimersKt$timerTask$1.class */
public final class TimersKt$timerTask$1 extends TimerTask {
    final /* synthetic */ Function1 $action;

    public TimersKt$timerTask$1(Function1 function1) {
        this.$action = function1;
    }

    @Override // java.util.TimerTask, java.lang.Runnable
    public void run() {
        this.$action.invoke(this);
    }
}
