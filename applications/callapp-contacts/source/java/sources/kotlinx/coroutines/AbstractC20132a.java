package kotlinx.coroutines;

import com.verizon.ads.verizonsspwaterfallprovider.VerizonSSPWaterfallProvider;
import kotlin.C20128v;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.p521c.AbstractC18332d;
import kotlin.p521c.AbstractC18335f;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��d\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u000b\n\u0002\u0010\u0002\n��\n\u0002\u0010��\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\b'\u0018��*\u0006\b��\u0010\u0001 ��2\u00020\u00022\u00020\u00032\b\u0012\u0004\u0012\u0002H\u00010\u00042\u00020\u0005B\u0017\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\b\b\u0002\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ\u0012\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0014J\b\u0010\u0018\u001a\u00020\u0019H\u0014J\u0015\u0010\u001a\u001a\u00020\u00152\u0006\u0010\u001b\u001a\u00020\u001cH��¢\u0006\u0002\b\u001dJ\r\u0010\u001e\u001a\u00020\u0015H��¢\u0006\u0002\b\u001fJ\r\u0010 \u001a\u00020\u0019H\u0010¢\u0006\u0002\b!J\u0018\u0010\"\u001a\u00020\u00152\u0006\u0010#\u001a\u00020\u001c2\u0006\u0010$\u001a\u00020\tH\u0014J\u0015\u0010%\u001a\u00020\u00152\u0006\u0010&\u001a\u00028��H\u0014¢\u0006\u0002\u0010'J\u0012\u0010(\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0004J\b\u0010)\u001a\u00020\u0015H\u0014J\r\u0010*\u001a\u00020\u0015H��¢\u0006\u0002\b+J\u001c\u0010,\u001a\u00020\u00152\f\u0010-\u001a\b\u0012\u0004\u0012\u00028��0.ø\u0001��¢\u0006\u0002\u0010'JM\u0010/\u001a\u00020\u0015\"\u0004\b\u0001\u001002\u0006\u0010/\u001a\u0002012\u0006\u00102\u001a\u0002H02'\u00103\u001a#\b\u0001\u0012\u0004\u0012\u0002H0\u0012\n\u0012\b\u0012\u0004\u0012\u00028��0\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u001704¢\u0006\u0002\b5ø\u0001��¢\u0006\u0002\u00106J4\u0010/\u001a\u00020\u00152\u0006\u0010/\u001a\u0002012\u001c\u00103\u001a\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028��0\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u001707ø\u0001��¢\u0006\u0002\u00108R\u0017\u0010\u000b\u001a\u00020\u0007¢\u0006\u000e\n��\u0012\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000fR\u0014\u0010\u0010\u001a\u00020\u00078VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0011\u0010\u000fR\u0014\u0010\u0012\u001a\u00020\t8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0012\u0010\u0013R\u0010\u0010\u0006\u001a\u00020\u00078\u0004X\u0085\u0004¢\u0006\u0002\n��\u0082\u0002\u0004\n\u0002\b\u0019¨\u00069"}, m4298d2 = {"Lkotlinx/coroutines/AbstractCoroutine;", "T", "Lkotlinx/coroutines/JobSupport;", "Lkotlinx/coroutines/Job;", "Lkotlin/coroutines/Continuation;", "Lkotlinx/coroutines/CoroutineScope;", "parentContext", "Lkotlin/coroutines/CoroutineContext;", "active", "", "(Lkotlin/coroutines/CoroutineContext;Z)V", "context", "getContext$annotations", "()V", "getContext", "()Lkotlin/coroutines/CoroutineContext;", "coroutineContext", "getCoroutineContext", "isActive", "()Z", "afterResume", "", VerizonSSPWaterfallProvider.USER_DATA_STATE_KEY, "", "cancellationExceptionMessage", "", "handleOnCompletionException", "exception", "", "handleOnCompletionException$kotlinx_coroutines_core", "initParentJob", "initParentJob$kotlinx_coroutines_core", "nameString", "nameString$kotlinx_coroutines_core", "onCancelled", "cause", "handled", "onCompleted", "value", "(Ljava/lang/Object;)V", "onCompletionInternal", "onStart", "onStartInternal", "onStartInternal$kotlinx_coroutines_core", "resumeWith", "result", "Lkotlin/Result;", EventConstants.START, "R", "Lkotlinx/coroutines/CoroutineStart;", "receiver", "block", "Lkotlin/Function2;", "Lkotlin/ExtensionFunctionType;", "(Lkotlinx/coroutines/CoroutineStart;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V", "Lkotlin/Function1;", "(Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function1;)V", "kotlinx-coroutines-core"}, m4297k = 1, m4296mv = {1, 4, 2})
/* renamed from: kotlinx.coroutines.a */
/* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/a.class */
public abstract class AbstractC20132a<T> extends C20228ca implements AbstractC18332d<T>, AbstractC20149ak, AbstractC20218bv {

    /* renamed from: a */
    public final AbstractC18335f f66538a;

    /* renamed from: b */
    protected final AbstractC18335f f66539b;

    public AbstractC20132a(AbstractC18335f abstractC18335f, boolean z) {
        super(z);
        this.f66539b = abstractC18335f;
        this.f66538a = abstractC18335f.plus(this);
    }

    public /* synthetic */ AbstractC20132a(AbstractC18335f abstractC18335f, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(abstractC18335f, (i & 2) != 0 ? true : z);
    }

    @Override // kotlinx.coroutines.C20228ca
    /* renamed from: a */
    protected final void mo976a(Object obj) {
        if (obj instanceof C20322z) {
            int i = ((C20322z) obj)._handled;
        }
    }

    @Override // kotlinx.coroutines.C20228ca
    /* renamed from: a */
    public final void mo973a(Throwable th) {
        C20144ah.m1086a(this.f66538a, th);
    }

    /* renamed from: a */
    public final <R> void m1101a(EnumC20150al enumC20150al, R r, Function2<? super R, ? super AbstractC18332d<? super T>, ? extends Object> function2) {
        m1100f();
        enumC20150al.invoke(function2, r, this);
    }

    @Override // kotlinx.coroutines.AbstractC20149ak
    public final AbstractC18335f az_() {
        return this.f66538a;
    }

    @Override // kotlin.p521c.AbstractC18332d
    /* renamed from: b */
    public final AbstractC18335f mo787b() {
        return this.f66538a;
    }

    @Override // kotlin.p521c.AbstractC18332d
    /* renamed from: b */
    public final void mo786b(Object obj) {
        Object f = m947f(C20137ac.m1096a(obj, (Function1<? super Throwable, C20128v>) null));
        if (f == C20233cb.f66687a) {
            return;
        }
        mo821c(f);
    }

    /* renamed from: c */
    protected void mo821c(Object obj) {
        mo820d(obj);
    }

    @Override // kotlinx.coroutines.C20228ca, kotlinx.coroutines.AbstractC20218bv
    /* renamed from: e */
    public final boolean mo949e() {
        return super.mo949e();
    }

    /* renamed from: f */
    public final void m1100f() {
        m966a((AbstractC20218bv) this.f66539b.get(AbstractC20218bv.f66666c));
    }

    /* renamed from: g */
    protected void mo922g() {
    }

    @Override // kotlinx.coroutines.C20228ca
    /* renamed from: h */
    public final void mo945h() {
        mo922g();
    }

    @Override // kotlinx.coroutines.C20228ca
    /* renamed from: i */
    protected final String mo943i() {
        return getClass().getSimpleName() + " was cancelled";
    }

    @Override // kotlinx.coroutines.C20228ca
    /* renamed from: j */
    public String mo907j() {
        String m1092a = C20139ae.m1092a(this.f66538a);
        if (m1092a == null) {
            return super.mo907j();
        }
        return "\"" + m1092a + "\":" + super.mo907j();
    }
}
