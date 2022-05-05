package kotlinx.coroutines;

import com.taiwanmobile.p055pt.adp.view.webview.mraid.MraidParser;
import java.io.Closeable;
import java.util.concurrent.Executor;
import kotlin.Metadata;
import p626l.p634w.AbstractC15038b;
import p626l.p634w.AbstractC15049g;
import p626l.p641z.p642c.AbstractC15118l;
import p626l.p641z.p643d.AbstractC15150l;
import p626l.p641z.p643d.C15145g;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\b&\u0018�� \n2\u00020\u00012\u00020\u0002:\u0001\nB\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\b\u001a\u00020\tH&R\u0012\u0010\u0004\u001a\u00020\u0005X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u000b"}, m815d2 = {"Lkotlinx/coroutines/ExecutorCoroutineDispatcher;", "Lkotlinx/coroutines/CoroutineDispatcher;", "Ljava/io/Closeable;", "()V", "executor", "Ljava/util/concurrent/Executor;", "getExecutor", "()Ljava/util/concurrent/Executor;", MraidParser.MRAID_COMMAND_CLOSE, "", "Key", "kotlinx-coroutines-core"}, m814k = 1, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/ExecutorCoroutineDispatcher.class */
public abstract class ExecutorCoroutineDispatcher extends CoroutineDispatcher implements Closeable {
    public static final Key Key = new Key(null);

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\u0003\u0018��2\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0004¨\u0006\u0005"}, m815d2 = {"Lkotlinx/coroutines/ExecutorCoroutineDispatcher$Key;", "Lkotlin/coroutines/AbstractCoroutineContextKey;", "Lkotlinx/coroutines/CoroutineDispatcher;", "Lkotlinx/coroutines/ExecutorCoroutineDispatcher;", "()V", "kotlinx-coroutines-core"}, m814k = 1, m813mv = {1, 1, 16})
    /* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/ExecutorCoroutineDispatcher$Key.class */
    public static final class Key extends AbstractC15038b<CoroutineDispatcher, ExecutorCoroutineDispatcher> {

        @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u000e\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\u0010��\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, m815d2 = {"<anonymous>", "Lkotlinx/coroutines/ExecutorCoroutineDispatcher;", "it", "Lkotlin/coroutines/CoroutineContext$Element;", "invoke"}, m814k = 3, m813mv = {1, 1, 16})
        /* renamed from: kotlinx.coroutines.ExecutorCoroutineDispatcher$Key$1 */
        /* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/ExecutorCoroutineDispatcher$Key$1.class */
        public static final class C147021 extends AbstractC15150l implements AbstractC15118l<AbstractC15049g.AbstractC15052b, ExecutorCoroutineDispatcher> {
            public static final C147021 INSTANCE = new C147021();

            public C147021() {
                super(1);
            }

            public final ExecutorCoroutineDispatcher invoke(AbstractC15049g.AbstractC15052b bVar) {
                AbstractC15049g.AbstractC15052b bVar2 = bVar;
                if (!(bVar instanceof ExecutorCoroutineDispatcher)) {
                    bVar2 = null;
                }
                return (ExecutorCoroutineDispatcher) bVar2;
            }
        }

        public Key() {
            super(CoroutineDispatcher.Key, C147021.INSTANCE);
        }

        public /* synthetic */ Key(C15145g gVar) {
            this();
        }
    }

    public abstract void close();

    public abstract Executor getExecutor();
}
