package kotlinx.coroutines.internal;

import com.verizon.ads.verizonsspwaterfallprovider.VerizonSSPWaterfallProvider;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.c.f;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.p;
import kotlin.jvm.internal.r;
import kotlinx.coroutines.cm;
@Metadata(bv = {1, 0, 3}, d1 = {"��0\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\u001a\u001a\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0004H��\u001a\u0010\u0010\u000f\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\rH��\u001a\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u00042\u0006\u0010\f\u001a\u00020\r2\b\u0010\u0011\u001a\u0004\u0018\u00010\u0004H��\"\u0010\u0010��\u001a\u00020\u00018��X\u0081\u0004¢\u0006\u0002\n��\"$\u0010\u0002\u001a\u0018\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0003X\u0082\u0004¢\u0006\u0002\n��\",\u0010\u0006\u001a \u0012\n\u0012\b\u0012\u0002\b\u0003\u0018\u00010\u0007\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\b\u0012\u0002\b\u0003\u0018\u00010\u00070\u0003X\u0082\u0004¢\u0006\u0002\n��\" \u0010\b\u001a\u0014\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\t0\u0003X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0012"}, d2 = {"NO_THREAD_ELEMENTS", "Lkotlinx/coroutines/internal/Symbol;", "countAll", "Lkotlin/Function2;", "", "Lkotlin/coroutines/CoroutineContext$Element;", "findOne", "Lkotlinx/coroutines/ThreadContextElement;", "updateState", "Lkotlinx/coroutines/internal/ThreadState;", "restoreThreadContext", "", "context", "Lkotlin/coroutines/CoroutineContext;", "oldState", "threadContextElements", "updateThreadContext", "countOrElement", "kotlinx-coroutines-core"}, k = 2, mv = {1, 4, 2})
/* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/internal/z.class */
public final class z {

    /* renamed from: a  reason: collision with root package name */
    public static final v f38845a = new v("NO_THREAD_ELEMENTS");

    /* renamed from: b  reason: collision with root package name */
    private static final Function2<Object, f.b, Object> f38846b = a.f38849a;

    /* renamed from: c  reason: collision with root package name */
    private static final Function2<cm<?>, f.b, cm<?>> f38847c = b.f38850a;

    /* renamed from: d  reason: collision with root package name */
    private static final Function2<ac, f.b, ac> f38848d = c.f38851a;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n��\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\u0010��\u001a\u0004\u0018\u00010\u00012\b\u0010\u0002\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\n¢\u0006\u0002\b\u0005"}, d2 = {"<no name provided>", "", "countOrElement", "element", "Lkotlin/coroutines/CoroutineContext$Element;", "invoke"}, k = 3, mv = {1, 4, 2})
    /* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/internal/z$a.class */
    static final class a extends r implements Function2<Object, f.b, Object> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f38849a = new a();

        a() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final /* synthetic */ Object invoke(Object obj, f.b bVar) {
            f.b bVar2 = bVar;
            Object obj2 = obj;
            if (bVar2 instanceof cm) {
                Object obj3 = obj;
                if (!(obj instanceof Integer)) {
                    obj3 = null;
                }
                Integer num = (Integer) obj3;
                int intValue = num != null ? num.intValue() : 1;
                if (intValue == 0) {
                    return bVar2;
                }
                obj2 = Integer.valueOf(intValue + 1);
            }
            return obj2;
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\u0010��\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u00012\f\u0010\u0002\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\n¢\u0006\u0002\b\u0005"}, d2 = {"<no name provided>", "Lkotlinx/coroutines/ThreadContextElement;", "found", "element", "Lkotlin/coroutines/CoroutineContext$Element;", "invoke"}, k = 3, mv = {1, 4, 2})
    /* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/internal/z$b.class */
    static final class b extends r implements Function2<cm<?>, f.b, cm<?>> {

        /* renamed from: a  reason: collision with root package name */
        public static final b f38850a = new b();

        b() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final /* bridge */ /* synthetic */ cm<?> invoke(cm<?> cmVar, f.b bVar) {
            cm<?> cmVar2 = cmVar;
            f.b bVar2 = bVar;
            if (cmVar2 != null) {
                return cmVar2;
            }
            f.b bVar3 = bVar2;
            if (!(bVar2 instanceof cm)) {
                bVar3 = null;
            }
            return (cm) bVar3;
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\u0010��\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\n¢\u0006\u0002\b\u0005"}, d2 = {"<no name provided>", "Lkotlinx/coroutines/internal/ThreadState;", VerizonSSPWaterfallProvider.USER_DATA_STATE_KEY, "element", "Lkotlin/coroutines/CoroutineContext$Element;", "invoke"}, k = 3, mv = {1, 4, 2})
    /* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/internal/z$c.class */
    static final class c extends r implements Function2<ac, f.b, ac> {

        /* renamed from: a  reason: collision with root package name */
        public static final c f38851a = new c();

        c() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final /* synthetic */ ac invoke(ac acVar, f.b bVar) {
            ac acVar2 = acVar;
            f.b bVar2 = bVar;
            if (bVar2 instanceof cm) {
                cm<Object> cmVar = (cm) bVar2;
                acVar2.f38799a[acVar2.f38801c] = cmVar.a(acVar2.f38802d);
                cm<Object>[] cmVarArr = acVar2.f38800b;
                int i = acVar2.f38801c;
                acVar2.f38801c = i + 1;
                Objects.requireNonNull(cmVar, "null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>");
                cmVarArr[i] = cmVar;
            }
            return acVar2;
        }
    }

    public static final Object a(f fVar) {
        Object fold = fVar.fold(0, f38846b);
        p.a(fold);
        return fold;
    }

    public static final Object a(f fVar, Object obj) {
        Object obj2 = obj;
        if (obj == null) {
            obj2 = a(fVar);
        }
        if (obj2 == 0) {
            return f38845a;
        }
        if (obj2 instanceof Integer) {
            return fVar.fold(new ac(fVar, ((Number) obj2).intValue()), f38848d);
        }
        Objects.requireNonNull(obj2, "null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>");
        return ((cm) obj2).a(fVar);
    }

    public static final void b(f fVar, Object obj) {
        if (obj != f38845a) {
            if (obj instanceof ac) {
                ac acVar = (ac) obj;
                int length = acVar.f38800b.length;
                while (true) {
                    length--;
                    if (length >= 0) {
                        cm<Object> cmVar = acVar.f38800b[length];
                        p.a(cmVar);
                        cmVar.a((cm<Object>) acVar.f38799a[length]);
                    } else {
                        return;
                    }
                }
            } else {
                Object fold = fVar.fold(null, f38847c);
                Objects.requireNonNull(fold, "null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>");
                ((cm) fold).a((cm) obj);
            }
        }
    }
}
