package kotlinx.coroutines;

import kotlin.Metadata;
import p626l.C14989s;
import p626l.p641z.p642c.AbstractC15107a;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0016\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n��\u001a\u001d\u0010��\u001a\u00060\u0001j\u0002`\u00022\u000e\b\u0004\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H\u0086\b*\n\u0010��\"\u00020\u00012\u00020\u0001¨\u0006\u0006"}, m815d2 = {"Runnable", "Ljava/lang/Runnable;", "Lkotlinx/coroutines/Runnable;", "block", "Lkotlin/Function0;", "", "kotlinx-coroutines-core"}, m814k = 2, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/RunnableKt.class */
public final class RunnableKt {
    public static final Runnable Runnable(final AbstractC15107a<C14989s> aVar) {
        return new Runnable() { // from class: kotlinx.coroutines.RunnableKt$Runnable$1
            @Override // java.lang.Runnable
            public final void run() {
                AbstractC15107a.this.invoke();
            }
        };
    }
}
