package kotlinx.coroutines.internal;

import com.verizon.ads.verizonsspwaterfallprovider.VerizonSSPWaterfallProvider;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.jvm.internal.C18524p;
import kotlin.p521c.AbstractC18335f;
import kotlinx.coroutines.AbstractC20244cm;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��0\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\u001a\u001a\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0004H��\u001a\u0010\u0010\u000f\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\rH��\u001a\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u00042\u0006\u0010\f\u001a\u00020\r2\b\u0010\u0011\u001a\u0004\u0018\u00010\u0004H��\"\u0010\u0010��\u001a\u00020\u00018��X\u0081\u0004¢\u0006\u0002\n��\"$\u0010\u0002\u001a\u0018\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0003X\u0082\u0004¢\u0006\u0002\n��\",\u0010\u0006\u001a \u0012\n\u0012\b\u0012\u0002\b\u0003\u0018\u00010\u0007\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\b\u0012\u0002\b\u0003\u0018\u00010\u00070\u0003X\u0082\u0004¢\u0006\u0002\n��\" \u0010\b\u001a\u0014\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\t0\u0003X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0012"}, m4298d2 = {"NO_THREAD_ELEMENTS", "Lkotlinx/coroutines/internal/Symbol;", "countAll", "Lkotlin/Function2;", "", "Lkotlin/coroutines/CoroutineContext$Element;", "findOne", "Lkotlinx/coroutines/ThreadContextElement;", "updateState", "Lkotlinx/coroutines/internal/ThreadState;", "restoreThreadContext", "", "context", "Lkotlin/coroutines/CoroutineContext;", "oldState", "threadContextElements", "updateThreadContext", "countOrElement", "kotlinx-coroutines-core"}, m4297k = 2, m4296mv = {1, 4, 2})
/* renamed from: kotlinx.coroutines.internal.z */
/* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/internal/z.class */
public final class C20300z {

    /* renamed from: a */
    public static final C20296v f66775a = new C20296v("NO_THREAD_ELEMENTS");

    /* renamed from: b */
    private static final Function2<Object, AbstractC18335f.AbstractC18338b, Object> f66776b = C20301a.f66779a;

    /* renamed from: c */
    private static final Function2<AbstractC20244cm<?>, AbstractC18335f.AbstractC18338b, AbstractC20244cm<?>> f66777c = C20302b.f66780a;

    /* renamed from: d */
    private static final Function2<C20265ac, AbstractC18335f.AbstractC18338b, C20265ac> f66778d = C20303c.f66781a;

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0010\n��\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\u0010��\u001a\u0004\u0018\u00010\u00012\b\u0010\u0002\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\n¢\u0006\u0002\b\u0005"}, m4298d2 = {"<no name provided>", "", "countOrElement", "element", "Lkotlin/coroutines/CoroutineContext$Element;", "invoke"}, m4297k = 3, m4296mv = {1, 4, 2})
    /* renamed from: kotlinx.coroutines.internal.z$a */
    /* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/internal/z$a.class */
    static final class C20301a extends AbstractC18526r implements Function2<Object, AbstractC18335f.AbstractC18338b, Object> {

        /* renamed from: a */
        public static final C20301a f66779a = new C20301a();

        C20301a() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final /* synthetic */ Object invoke(Object obj, AbstractC18335f.AbstractC18338b abstractC18338b) {
            AbstractC18335f.AbstractC18338b abstractC18338b2 = abstractC18338b;
            Integer num = obj;
            if (abstractC18338b2 instanceof AbstractC20244cm) {
                Object obj2 = obj;
                if (!(obj instanceof Integer)) {
                    obj2 = null;
                }
                Integer num2 = (Integer) obj2;
                int intValue = num2 != null ? num2.intValue() : 1;
                if (intValue == 0) {
                    return abstractC18338b2;
                }
                num = Integer.valueOf(intValue + 1);
            }
            return num;
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0010\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\u0010��\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u00012\f\u0010\u0002\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\n¢\u0006\u0002\b\u0005"}, m4298d2 = {"<no name provided>", "Lkotlinx/coroutines/ThreadContextElement;", "found", "element", "Lkotlin/coroutines/CoroutineContext$Element;", "invoke"}, m4297k = 3, m4296mv = {1, 4, 2})
    /* renamed from: kotlinx.coroutines.internal.z$b */
    /* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/internal/z$b.class */
    static final class C20302b extends AbstractC18526r implements Function2<AbstractC20244cm<?>, AbstractC18335f.AbstractC18338b, AbstractC20244cm<?>> {

        /* renamed from: a */
        public static final C20302b f66780a = new C20302b();

        C20302b() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final /* bridge */ /* synthetic */ AbstractC20244cm<?> invoke(AbstractC20244cm<?> abstractC20244cm, AbstractC18335f.AbstractC18338b abstractC18338b) {
            AbstractC20244cm<?> abstractC20244cm2 = abstractC20244cm;
            AbstractC18335f.AbstractC18338b abstractC18338b2 = abstractC18338b;
            if (abstractC20244cm2 != null) {
                return abstractC20244cm2;
            }
            AbstractC18335f.AbstractC18338b abstractC18338b3 = abstractC18338b2;
            if (!(abstractC18338b2 instanceof AbstractC20244cm)) {
                abstractC18338b3 = null;
            }
            return (AbstractC20244cm) abstractC18338b3;
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0010\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\u0010��\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\n¢\u0006\u0002\b\u0005"}, m4298d2 = {"<no name provided>", "Lkotlinx/coroutines/internal/ThreadState;", VerizonSSPWaterfallProvider.USER_DATA_STATE_KEY, "element", "Lkotlin/coroutines/CoroutineContext$Element;", "invoke"}, m4297k = 3, m4296mv = {1, 4, 2})
    /* renamed from: kotlinx.coroutines.internal.z$c */
    /* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/internal/z$c.class */
    static final class C20303c extends AbstractC18526r implements Function2<C20265ac, AbstractC18335f.AbstractC18338b, C20265ac> {

        /* renamed from: a */
        public static final C20303c f66781a = new C20303c();

        C20303c() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final /* synthetic */ C20265ac invoke(C20265ac c20265ac, AbstractC18335f.AbstractC18338b abstractC18338b) {
            C20265ac c20265ac2 = c20265ac;
            AbstractC18335f.AbstractC18338b abstractC18338b2 = abstractC18338b;
            if (abstractC18338b2 instanceof AbstractC20244cm) {
                AbstractC20244cm<Object> abstractC20244cm = (AbstractC20244cm) abstractC18338b2;
                c20265ac2.f66720a[c20265ac2.f66722c] = abstractC20244cm.mo914a(c20265ac2.f66723d);
                AbstractC20244cm<Object>[] abstractC20244cmArr = c20265ac2.f66721b;
                int i = c20265ac2.f66722c;
                c20265ac2.f66722c = i + 1;
                Objects.requireNonNull(abstractC20244cm, "null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>");
                abstractC20244cmArr[i] = abstractC20244cm;
            }
            return c20265ac2;
        }
    }

    /* renamed from: a */
    public static final Object m806a(AbstractC18335f abstractC18335f) {
        Object fold = abstractC18335f.fold(0, f66776b);
        C18524p.m3851a(fold);
        return fold;
    }

    /* renamed from: a */
    public static final Object m805a(AbstractC18335f abstractC18335f, Object obj) {
        Object obj2 = obj;
        if (obj == null) {
            obj2 = m806a(abstractC18335f);
        }
        if (obj2 == 0) {
            return f66775a;
        }
        if (obj2 instanceof Integer) {
            return abstractC18335f.fold(new C20265ac(abstractC18335f, ((Number) obj2).intValue()), f66778d);
        }
        Objects.requireNonNull(obj2, "null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>");
        return ((AbstractC20244cm) obj2).mo914a(abstractC18335f);
    }

    /* renamed from: b */
    public static final void m804b(AbstractC18335f abstractC18335f, Object obj) {
        if (obj == f66775a) {
            return;
        }
        if (!(obj instanceof C20265ac)) {
            Object fold = abstractC18335f.fold(null, f66777c);
            Objects.requireNonNull(fold, "null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>");
            ((AbstractC20244cm) fold).mo915a((AbstractC20244cm) obj);
            return;
        }
        C20265ac c20265ac = (C20265ac) obj;
        int length = c20265ac.f66721b.length;
        while (true) {
            length--;
            if (length < 0) {
                return;
            }
            AbstractC20244cm<Object> abstractC20244cm = c20265ac.f66721b[length];
            C18524p.m3851a(abstractC20244cm);
            abstractC20244cm.mo915a((AbstractC20244cm<Object>) c20265ac.f66720a[length]);
        }
    }
}
