package p081h.p203i.p204a.p224e.p259j.p271l;

import android.os.Handler;
import androidx.annotation.NonNull;
import java.util.concurrent.Executor;
/* renamed from: h.i.a.e.j.l.q6 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/q6.class */
public enum EnumC8315q6 implements Executor {
    INSTANCE;

    @Override // java.util.concurrent.Executor
    public final void execute(@NonNull Runnable runnable) {
        Handler handler;
        handler = C8299p6.m18209c().f19248a;
        handler.post(runnable);
    }
}
