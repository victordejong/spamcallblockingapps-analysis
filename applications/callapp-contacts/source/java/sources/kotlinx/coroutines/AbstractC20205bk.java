package kotlinx.coroutines;

import java.io.Closeable;
import java.util.concurrent.Executor;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.p521c.AbstractC18315b;
import kotlin.p521c.AbstractC18335f;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\b&\u0018�� \n2\u00020\u00012\u00020\u0002:\u0001\nB\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\b\u001a\u00020\tH&R\u0012\u0010\u0004\u001a\u00020\u0005X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u000b"}, m4298d2 = {"Lkotlinx/coroutines/ExecutorCoroutineDispatcher;", "Lkotlinx/coroutines/CoroutineDispatcher;", "Ljava/io/Closeable;", "()V", "executor", "Ljava/util/concurrent/Executor;", "getExecutor", "()Ljava/util/concurrent/Executor;", EventConstants.CLOSE, "", "Key", "kotlinx-coroutines-core"}, m4297k = 1, m4296mv = {1, 4, 2})
/* renamed from: kotlinx.coroutines.bk */
/* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/bk.class */
public abstract class AbstractC20205bk extends AbstractC20140af implements Closeable {

    /* renamed from: d */
    public static final C20206a f66655d = new C20206a(null);

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\u0003\u0018��2\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0004¨\u0006\u0005"}, m4298d2 = {"Lkotlinx/coroutines/ExecutorCoroutineDispatcher$Key;", "Lkotlin/coroutines/AbstractCoroutineContextKey;", "Lkotlinx/coroutines/CoroutineDispatcher;", "Lkotlinx/coroutines/ExecutorCoroutineDispatcher;", "()V", "kotlinx-coroutines-core"}, m4297k = 1, m4296mv = {1, 4, 2})
    /* renamed from: kotlinx.coroutines.bk$a */
    /* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/bk$a.class */
    public static final class C20206a extends AbstractC18315b<AbstractC20140af, AbstractC20205bk> {

        /* JADX INFO: Access modifiers changed from: package-private */
        @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u000e\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\u0010��\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, m4298d2 = {"<anonymous>", "Lkotlinx/coroutines/ExecutorCoroutineDispatcher;", "it", "Lkotlin/coroutines/CoroutineContext$Element;", "invoke"}, m4297k = 3, m4296mv = {1, 4, 2})
        /* renamed from: kotlinx.coroutines.bk$a$1 */
        /* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/bk$a$1.class */
        public static final class C202071 extends AbstractC18526r implements Function1<AbstractC18335f.AbstractC18338b, AbstractC20205bk> {

            /* renamed from: a */
            public static final C202071 f66656a = new C202071();

            C202071() {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final /* bridge */ /* synthetic */ AbstractC20205bk invoke(AbstractC18335f.AbstractC18338b abstractC18338b) {
                AbstractC18335f.AbstractC18338b abstractC18338b2 = abstractC18338b;
                AbstractC18335f.AbstractC18338b abstractC18338b3 = abstractC18338b2;
                if (!(abstractC18338b2 instanceof AbstractC20205bk)) {
                    abstractC18338b3 = null;
                }
                return (AbstractC20205bk) abstractC18338b3;
            }
        }

        private C20206a() {
            super(AbstractC20140af.f66543c, C202071.f66656a);
        }

        public /* synthetic */ C20206a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* renamed from: a */
    public abstract Executor mo765a();
}
