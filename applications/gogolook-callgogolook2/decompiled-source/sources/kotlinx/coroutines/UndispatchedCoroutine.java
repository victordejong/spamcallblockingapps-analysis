package kotlinx.coroutines;

import androidx.exifinterface.media.ExifInterface;
import gogolook.callgogolook2.realm.obj.iap.IapProductRealmObject;
import kotlin.Metadata;
import kotlinx.coroutines.internal.ScopeCoroutine;
import kotlinx.coroutines.internal.ThreadContextKt;
import p626l.C14989s;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.AbstractC15049g;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��&\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0010��\n��\b\u0002\u0018��*\u0006\b��\u0010\u0001 ��2\b\u0012\u0004\u0012\u0002H\u00010\u0002B\u001b\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028��0\u0006¢\u0006\u0002\u0010\u0007J\u0012\u0010\b\u001a\u00020\t2\b\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0014¨\u0006\f"}, m815d2 = {"Lkotlinx/coroutines/UndispatchedCoroutine;", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/internal/ScopeCoroutine;", "context", "Lkotlin/coroutines/CoroutineContext;", "uCont", "Lkotlin/coroutines/Continuation;", "(Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)V", "afterResume", "", IapProductRealmObject.STATE, "", "kotlinx-coroutines-core"}, m814k = 1, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/UndispatchedCoroutine.class */
public final class UndispatchedCoroutine<T> extends ScopeCoroutine<T> {
    public UndispatchedCoroutine(AbstractC15049g gVar, AbstractC15044d<? super T> dVar) {
        super(gVar, dVar);
    }

    @Override // kotlinx.coroutines.internal.ScopeCoroutine, kotlinx.coroutines.AbstractCoroutine
    public void afterResume(Object obj) {
        Object recoverResult = CompletedExceptionallyKt.recoverResult(obj, this.uCont);
        AbstractC15049g context = this.uCont.getContext();
        Object updateThreadContext = ThreadContextKt.updateThreadContext(context, null);
        try {
            this.uCont.resumeWith(recoverResult);
            C14989s sVar = C14989s.f33022a;
        } finally {
            ThreadContextKt.restoreThreadContext(context, updateThreadContext);
        }
    }
}
