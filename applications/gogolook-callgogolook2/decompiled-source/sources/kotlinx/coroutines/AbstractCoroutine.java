package kotlinx.coroutines;

import androidx.exifinterface.media.ExifInterface;
import gogolook.callgogolook2.realm.obj.iap.IapProductRealmObject;
import kotlin.Metadata;
import p459j.p460a.p541n0.C13032a;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.AbstractC15049g;
import p626l.p641z.p642c.AbstractC15118l;
import p626l.p641z.p642c.AbstractC15122p;
import p626l.p641z.p643d.C15145g;
@InternalCoroutinesApi
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��d\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u000b\n\u0002\u0010\u0002\n��\n\u0002\u0010��\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\b'\u0018��*\u0006\b��\u0010\u0001 ��2\u00020\u00022\u00020\u00032\b\u0012\u0004\u0012\u0002H\u00010\u00042\u00020\u0005B\u0017\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\b\b\u0002\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ\u0012\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0014J\b\u0010\u0018\u001a\u00020\u0019H\u0014J\u0015\u0010\u001a\u001a\u00020\u00152\u0006\u0010\u001b\u001a\u00020\u001cH��¢\u0006\u0002\b\u001dJ\r\u0010\u001e\u001a\u00020\u0015H��¢\u0006\u0002\b\u001fJ\r\u0010 \u001a\u00020\u0019H\u0010¢\u0006\u0002\b!J\u0018\u0010\"\u001a\u00020\u00152\u0006\u0010#\u001a\u00020\u001c2\u0006\u0010$\u001a\u00020\tH\u0014J\u0015\u0010%\u001a\u00020\u00152\u0006\u0010&\u001a\u00028��H\u0014¢\u0006\u0002\u0010'J\u0012\u0010(\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0004J\b\u0010)\u001a\u00020\u0015H\u0014J\r\u0010*\u001a\u00020\u0015H��¢\u0006\u0002\b+J\u001c\u0010,\u001a\u00020\u00152\f\u0010-\u001a\b\u0012\u0004\u0012\u00028��0.ø\u0001��¢\u0006\u0002\u0010'JM\u0010/\u001a\u00020\u0015\"\u0004\b\u0001\u001002\u0006\u0010/\u001a\u0002012\u0006\u00102\u001a\u0002H02'\u00103\u001a#\b\u0001\u0012\u0004\u0012\u0002H0\u0012\n\u0012\b\u0012\u0004\u0012\u00028��0\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u001704¢\u0006\u0002\b5ø\u0001��¢\u0006\u0002\u00106J4\u0010/\u001a\u00020\u00152\u0006\u0010/\u001a\u0002012\u001c\u00103\u001a\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028��0\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u001707ø\u0001��¢\u0006\u0002\u00108R\u0017\u0010\u000b\u001a\u00020\u0007¢\u0006\u000e\n��\u0012\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000fR\u0014\u0010\u0010\u001a\u00020\u00078VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0011\u0010\u000fR\u0014\u0010\u0012\u001a\u00020\t8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0012\u0010\u0013R\u0010\u0010\u0006\u001a\u00020\u00078\u0004X\u0085\u0004¢\u0006\u0002\n��\u0082\u0002\u0004\n\u0002\b\u0019¨\u00069"}, m815d2 = {"Lkotlinx/coroutines/AbstractCoroutine;", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/JobSupport;", "Lkotlinx/coroutines/Job;", "Lkotlin/coroutines/Continuation;", "Lkotlinx/coroutines/CoroutineScope;", "parentContext", "Lkotlin/coroutines/CoroutineContext;", "active", "", "(Lkotlin/coroutines/CoroutineContext;Z)V", "context", "context$annotations", "()V", "getContext", "()Lkotlin/coroutines/CoroutineContext;", "coroutineContext", "getCoroutineContext", "isActive", "()Z", "afterResume", "", IapProductRealmObject.STATE, "", "cancellationExceptionMessage", "", "handleOnCompletionException", "exception", "", "handleOnCompletionException$kotlinx_coroutines_core", "initParentJob", "initParentJob$kotlinx_coroutines_core", "nameString", "nameString$kotlinx_coroutines_core", "onCancelled", "cause", "handled", "onCompleted", C13032a.f29462d, "(Ljava/lang/Object;)V", "onCompletionInternal", "onStart", "onStartInternal", "onStartInternal$kotlinx_coroutines_core", "resumeWith", "result", "Lkotlin/Result;", "start", "R", "Lkotlinx/coroutines/CoroutineStart;", "receiver", "block", "Lkotlin/Function2;", "Lkotlin/ExtensionFunctionType;", "(Lkotlinx/coroutines/CoroutineStart;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V", "Lkotlin/Function1;", "(Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function1;)V", "kotlinx-coroutines-core"}, m814k = 1, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/AbstractCoroutine.class */
public abstract class AbstractCoroutine<T> extends JobSupport implements Job, AbstractC15044d<T>, CoroutineScope {
    public final AbstractC15049g context;
    public final AbstractC15049g parentContext;

    public AbstractCoroutine(AbstractC15049g gVar, boolean z) {
        super(z);
        this.parentContext = gVar;
        this.context = this.parentContext.plus(this);
    }

    public /* synthetic */ AbstractCoroutine(AbstractC15049g gVar, boolean z, int i, C15145g gVar2) {
        this(gVar, (i & 2) != 0 ? true : z);
    }

    public static /* synthetic */ void context$annotations() {
    }

    public void afterResume(Object obj) {
        afterCompletion(obj);
    }

    @Override // kotlinx.coroutines.JobSupport
    public String cancellationExceptionMessage() {
        return DebugStringsKt.getClassSimpleName(this) + " was cancelled";
    }

    @Override // p626l.p634w.AbstractC15044d
    public final AbstractC15049g getContext() {
        return this.context;
    }

    @Override // kotlinx.coroutines.CoroutineScope
    public AbstractC15049g getCoroutineContext() {
        return this.context;
    }

    @Override // kotlinx.coroutines.JobSupport
    public final void handleOnCompletionException$kotlinx_coroutines_core(Throwable th) {
        CoroutineExceptionHandlerKt.handleCoroutineException(this.context, th);
    }

    public final void initParentJob$kotlinx_coroutines_core() {
        initParentJobInternal$kotlinx_coroutines_core((Job) this.parentContext.get(Job.Key));
    }

    @Override // kotlinx.coroutines.JobSupport, kotlinx.coroutines.Job
    public boolean isActive() {
        return super.isActive();
    }

    @Override // kotlinx.coroutines.JobSupport
    public String nameString$kotlinx_coroutines_core() {
        String coroutineName = CoroutineContextKt.getCoroutineName(this.context);
        if (coroutineName == null) {
            return super.nameString$kotlinx_coroutines_core();
        }
        return '\"' + coroutineName + "\":" + super.nameString$kotlinx_coroutines_core();
    }

    public void onCancelled(Throwable th, boolean z) {
    }

    public void onCompleted(T t) {
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.coroutines.JobSupport
    public final void onCompletionInternal(Object obj) {
        if (obj instanceof CompletedExceptionally) {
            CompletedExceptionally completedExceptionally = (CompletedExceptionally) obj;
            onCancelled(completedExceptionally.cause, completedExceptionally.getHandled());
            return;
        }
        onCompleted(obj);
    }

    public void onStart() {
    }

    @Override // kotlinx.coroutines.JobSupport
    public final void onStartInternal$kotlinx_coroutines_core() {
        onStart();
    }

    @Override // p626l.p634w.AbstractC15044d
    public final void resumeWith(Object obj) {
        Object makeCompletingOnce$kotlinx_coroutines_core = makeCompletingOnce$kotlinx_coroutines_core(CompletedExceptionallyKt.toState(obj));
        if (makeCompletingOnce$kotlinx_coroutines_core != JobSupportKt.COMPLETING_WAITING_CHILDREN) {
            afterResume(makeCompletingOnce$kotlinx_coroutines_core);
        }
    }

    public final <R> void start(CoroutineStart coroutineStart, R r, AbstractC15122p<? super R, ? super AbstractC15044d<? super T>, ? extends Object> pVar) {
        initParentJob$kotlinx_coroutines_core();
        coroutineStart.invoke(pVar, r, this);
    }

    public final void start(CoroutineStart coroutineStart, AbstractC15118l<? super AbstractC15044d<? super T>, ? extends Object> lVar) {
        initParentJob$kotlinx_coroutines_core();
        coroutineStart.invoke(lVar, this);
    }
}
