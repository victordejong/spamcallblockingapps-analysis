package kotlinx.coroutines;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.Metadata;
import org.apache.commons.cli.HelpFormatter;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\u0010��\u001a\n \u0002*\u0004\u0018\u00010\u00010\u00012\u000e\u0010\u0003\u001a\n \u0002*\u0004\u0018\u00010\u00040\u0004H\n¢\u0006\u0002\b\u0005"}, d2 = {"<anonymous>", "Ljava/lang/Thread;", "kotlin.jvm.PlatformType", "target", "Ljava/lang/Runnable;", "newThread"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/ThreadPoolDispatcher$executor$1.class */
final class ThreadPoolDispatcher$executor$1 implements ThreadFactory {

    /* renamed from: f */
    final /* synthetic */ ThreadPoolDispatcher f21249f;

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        int i;
        String str;
        String str2;
        AtomicInteger atomicInteger;
        ThreadPoolDispatcher threadPoolDispatcher = this.f21249f;
        i = threadPoolDispatcher.f21247j;
        if (i == 1) {
            str = this.f21249f.f21248k;
        } else {
            StringBuilder sb = new StringBuilder();
            str2 = this.f21249f.f21248k;
            sb.append(str2);
            sb.append(HelpFormatter.DEFAULT_OPT_PREFIX);
            atomicInteger = this.f21249f.f21245h;
            sb.append(atomicInteger.incrementAndGet());
            str = sb.toString();
        }
        return new PoolThread(threadPoolDispatcher, runnable, str);
    }
}
