package kotlinx.coroutines;

import kotlin.C20128v;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.p521c.AbstractC18332d;
import kotlin.p521c.AbstractC18335f;
import kotlin.p521c.p522a.C18308b;
import kotlinx.coroutines.p569a.C20133a;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0010��\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018��2\u00020\u0001B9\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012'\u0010\u0004\u001a#\b\u0001\u0012\u0004\u0012\u00020\u0006\u0012\n\u0012\b\u0012\u0004\u0012\u00020\b0\u0007\u0012\u0006\u0012\u0004\u0018\u00010\t0\u0005¢\u0006\u0002\b\nø\u0001��¢\u0006\u0002\u0010\u000bJ\b\u0010\r\u001a\u00020\bH\u0014R\u0014\u0010\f\u001a\b\u0012\u0004\u0012\u00020\b0\u0007X\u0082\u0004¢\u0006\u0002\n��\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u000e"}, m4298d2 = {"Lkotlinx/coroutines/LazyStandaloneCoroutine;", "Lkotlinx/coroutines/StandaloneCoroutine;", "parentContext", "Lkotlin/coroutines/CoroutineContext;", "block", "Lkotlin/Function2;", "Lkotlinx/coroutines/CoroutineScope;", "Lkotlin/coroutines/Continuation;", "", "", "Lkotlin/ExtensionFunctionType;", "(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)V", "continuation", "onStart", "kotlinx-coroutines-core"}, m4297k = 1, m4296mv = {1, 4, 2})
/* renamed from: kotlinx.coroutines.cd */
/* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/cd.class */
public final class C20235cd extends C20243cl {

    /* renamed from: e */
    private final AbstractC18332d<C20128v> f66695e;

    public C20235cd(AbstractC18335f abstractC18335f, Function2<? super AbstractC20149ak, ? super AbstractC18332d<? super C20128v>, ? extends Object> function2) {
        super(abstractC18335f, false);
        this.f66695e = C18308b.m4098a(function2, this, this);
    }

    @Override // kotlinx.coroutines.AbstractC20132a
    /* renamed from: g */
    protected final void mo922g() {
        C20133a.m1099a(this.f66695e, this);
    }
}
