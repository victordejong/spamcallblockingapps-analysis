package kotlinx.coroutines;

import com.verizon.ads.verizonsspwaterfallprovider.VerizonSSPWaterfallProvider;
import kotlin.Metadata;
import kotlin.c.d;
import kotlin.c.f;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.v;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
@Metadata(bv = {1, 0, 3}, d1 = {"��d\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u000b\n\u0002\u0010\u0002\n��\n\u0002\u0010��\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\b'\u0018��*\u0006\b��\u0010\u0001 ��2\u00020\u00022\u00020\u00032\b\u0012\u0004\u0012\u0002H\u00010\u00042\u00020\u0005B\u0017\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\b\b\u0002\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ\u0012\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0014J\b\u0010\u0018\u001a\u00020\u0019H\u0014J\u0015\u0010\u001a\u001a\u00020\u00152\u0006\u0010\u001b\u001a\u00020\u001cH��¢\u0006\u0002\b\u001dJ\r\u0010\u001e\u001a\u00020\u0015H��¢\u0006\u0002\b\u001fJ\r\u0010 \u001a\u00020\u0019H\u0010¢\u0006\u0002\b!J\u0018\u0010\"\u001a\u00020\u00152\u0006\u0010#\u001a\u00020\u001c2\u0006\u0010$\u001a\u00020\tH\u0014J\u0015\u0010%\u001a\u00020\u00152\u0006\u0010&\u001a\u00028��H\u0014¢\u0006\u0002\u0010'J\u0012\u0010(\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0004J\b\u0010)\u001a\u00020\u0015H\u0014J\r\u0010*\u001a\u00020\u0015H��¢\u0006\u0002\b+J\u001c\u0010,\u001a\u00020\u00152\f\u0010-\u001a\b\u0012\u0004\u0012\u00028��0.ø\u0001��¢\u0006\u0002\u0010'JM\u0010/\u001a\u00020\u0015\"\u0004\b\u0001\u001002\u0006\u0010/\u001a\u0002012\u0006\u00102\u001a\u0002H02'\u00103\u001a#\b\u0001\u0012\u0004\u0012\u0002H0\u0012\n\u0012\b\u0012\u0004\u0012\u00028��0\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u001704¢\u0006\u0002\b5ø\u0001��¢\u0006\u0002\u00106J4\u0010/\u001a\u00020\u00152\u0006\u0010/\u001a\u0002012\u001c\u00103\u001a\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028��0\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u001707ø\u0001��¢\u0006\u0002\u00108R\u0017\u0010\u000b\u001a\u00020\u0007¢\u0006\u000e\n��\u0012\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000fR\u0014\u0010\u0010\u001a\u00020\u00078VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0011\u0010\u000fR\u0014\u0010\u0012\u001a\u00020\t8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0012\u0010\u0013R\u0010\u0010\u0006\u001a\u00020\u00078\u0004X\u0085\u0004¢\u0006\u0002\n��\u0082\u0002\u0004\n\u0002\b\u0019¨\u00069"}, d2 = {"Lkotlinx/coroutines/AbstractCoroutine;", "T", "Lkotlinx/coroutines/JobSupport;", "Lkotlinx/coroutines/Job;", "Lkotlin/coroutines/Continuation;", "Lkotlinx/coroutines/CoroutineScope;", "parentContext", "Lkotlin/coroutines/CoroutineContext;", "active", "", "(Lkotlin/coroutines/CoroutineContext;Z)V", "context", "getContext$annotations", "()V", "getContext", "()Lkotlin/coroutines/CoroutineContext;", "coroutineContext", "getCoroutineContext", "isActive", "()Z", "afterResume", "", VerizonSSPWaterfallProvider.USER_DATA_STATE_KEY, "", "cancellationExceptionMessage", "", "handleOnCompletionException", "exception", "", "handleOnCompletionException$kotlinx_coroutines_core", "initParentJob", "initParentJob$kotlinx_coroutines_core", "nameString", "nameString$kotlinx_coroutines_core", "onCancelled", "cause", "handled", "onCompleted", "value", "(Ljava/lang/Object;)V", "onCompletionInternal", "onStart", "onStartInternal", "onStartInternal$kotlinx_coroutines_core", "resumeWith", "result", "Lkotlin/Result;", EventConstants.START, "R", "Lkotlinx/coroutines/CoroutineStart;", "receiver", "block", "Lkotlin/Function2;", "Lkotlin/ExtensionFunctionType;", "(Lkotlinx/coroutines/CoroutineStart;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V", "Lkotlin/Function1;", "(Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function1;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/a.class */
public abstract class a<T> extends ca implements d<T>, ak, bv {

    /* renamed from: a  reason: collision with root package name */
    public final f f38663a;

    /* renamed from: b  reason: collision with root package name */
    protected final f f38664b;

    public a(f fVar, boolean z) {
        super(z);
        this.f38664b = fVar;
        this.f38663a = fVar.plus(this);
    }

    public /* synthetic */ a(f fVar, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(fVar, (i & 2) != 0 ? true : z);
    }

    @Override // kotlinx.coroutines.ca
    protected final void a(Object obj) {
        if (obj instanceof z) {
            int i = ((z) obj)._handled;
        }
    }

    @Override // kotlinx.coroutines.ca
    public final void a(Throwable th) {
        ah.a(this.f38663a, th);
    }

    public final <R> void a(al alVar, R r, Function2<? super R, ? super d<? super T>, ? extends Object> function2) {
        f();
        alVar.invoke(function2, r, this);
    }

    @Override // kotlinx.coroutines.ak
    public final f az_() {
        return this.f38663a;
    }

    @Override // kotlin.c.d
    public final f b() {
        return this.f38663a;
    }

    @Override // kotlin.c.d
    public final void b(Object obj) {
        Object f = f(ac.a(obj, (Function1<? super Throwable, v>) null));
        if (f != cb.f38776a) {
            c(f);
        }
    }

    protected void c(Object obj) {
        d(obj);
    }

    @Override // kotlinx.coroutines.ca, kotlinx.coroutines.bv
    public final boolean e() {
        return super.e();
    }

    public final void f() {
        a((bv) this.f38664b.get(bv.f38758c));
    }

    protected void g() {
    }

    @Override // kotlinx.coroutines.ca
    public final void h() {
        g();
    }

    @Override // kotlinx.coroutines.ca
    protected final String i() {
        return getClass().getSimpleName() + " was cancelled";
    }

    @Override // kotlinx.coroutines.ca
    public String j() {
        String a2 = ae.a(this.f38663a);
        if (a2 == null) {
            return super.j();
        }
        return "\"" + a2 + "\":" + super.j();
    }
}
