package kotlin.c;

import java.io.Serializable;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.c.f;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.ab;
import kotlin.jvm.internal.p;
import kotlin.jvm.internal.r;
import kotlin.v;
@Metadata(bv = {1, 0, 3}, d1 = {"��L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010��\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0001\u0018��2\u00020\u00012\u00060\u0002j\u0002`\u0003:\u0001!B\u0015\u0012\u0006\u0010\u0004\u001a\u00020\u0001\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u0010\u0010\b\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\u0006H\u0002J\u0010\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020��H\u0002J\u0013\u0010\f\u001a\u00020\t2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0096\u0002J5\u0010\u000f\u001a\u0002H\u0010\"\u0004\b��\u0010\u00102\u0006\u0010\u0011\u001a\u0002H\u00102\u0018\u0010\u0012\u001a\u0014\u0012\u0004\u0012\u0002H\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u0002H\u00100\u0013H\u0016¢\u0006\u0002\u0010\u0014J(\u0010\u0015\u001a\u0004\u0018\u0001H\u0016\"\b\b��\u0010\u0016*\u00020\u00062\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u0002H\u00160\u0018H\u0096\u0002¢\u0006\u0002\u0010\u0019J\b\u0010\u001a\u001a\u00020\u001bH\u0016J\u0014\u0010\u001c\u001a\u00020\u00012\n\u0010\u0017\u001a\u0006\u0012\u0002\b\u00030\u0018H\u0016J\b\u0010\u001d\u001a\u00020\u001bH\u0002J\b\u0010\u001e\u001a\u00020\u001fH\u0016J\b\u0010 \u001a\u00020\u000eH\u0002R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0004\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n��¨\u0006\""}, d2 = {"Lkotlin/coroutines/CombinedContext;", "Lkotlin/coroutines/CoroutineContext;", "Ljava/io/Serializable;", "Lkotlin/io/Serializable;", "left", "element", "Lkotlin/coroutines/CoroutineContext$Element;", "(Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/CoroutineContext$Element;)V", "contains", "", "containsAll", "context", "equals", "other", "", "fold", "R", "initial", "operation", "Lkotlin/Function2;", "(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;", "get", "E", "key", "Lkotlin/coroutines/CoroutineContext$Key;", "(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;", "hashCode", "", "minusKey", "size", "toString", "", "writeReplace", "Serialized", "kotlin-stdlib"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes5-dex2jar.jar:kotlin/c/c.class */
public final class c implements Serializable, f {

    /* renamed from: a  reason: collision with root package name */
    private final f f36640a;

    /* renamed from: b  reason: collision with root package name */
    private final f.b f36641b;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010��\n\u0002\b\u0002\b\u0002\u0018�� \f2\u00060\u0001j\u0002`\u0002:\u0001\fB\u0013\u0012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\u0002\u0010\u0006J\b\u0010\n\u001a\u00020\u000bH\u0002R\u0019\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\n\n\u0002\u0010\t\u001a\u0004\b\u0007\u0010\b¨\u0006\r"}, d2 = {"Lkotlin/coroutines/CombinedContext$Serialized;", "Ljava/io/Serializable;", "Lkotlin/io/Serializable;", "elements", "", "Lkotlin/coroutines/CoroutineContext;", "([Lkotlin/coroutines/CoroutineContext;)V", "getElements", "()[Lkotlin/coroutines/CoroutineContext;", "[Lkotlin/coroutines/CoroutineContext;", "readResolve", "", "Companion", "kotlin-stdlib"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes5-dex2jar.jar:kotlin/c/c$a.class */
    static final class a implements Serializable {

        /* renamed from: a  reason: collision with root package name */
        public static final C0606a f36642a = new C0606a(null);

        /* renamed from: b  reason: collision with root package name */
        private final f[] f36643b;

        @Metadata(bv = {1, 0, 3}, d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\t\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��¨\u0006\u0005"}, d2 = {"Lkotlin/coroutines/CombinedContext$Serialized$Companion;", "", "()V", "serialVersionUID", "", "kotlin-stdlib"}, k = 1, mv = {1, 4, 1})
        /* renamed from: kotlin.c.c$a$a  reason: collision with other inner class name */
        /* loaded from: classes5-dex2jar.jar:kotlin/c/c$a$a.class */
        public static final class C0606a {
            private C0606a() {
            }

            public /* synthetic */ C0606a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }
        }

        public a(f[] elements) {
            p.d(elements, "elements");
            this.f36643b = elements;
        }

        private final Object readResolve() {
            f[] fVarArr = this.f36643b;
            f fVar = g.f36650a;
            for (f fVar2 : fVarArr) {
                fVar = fVar.plus(fVar2);
            }
            return fVar;
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\u0010��\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\n¢\u0006\u0002\b\u0005"}, d2 = {"<anonymous>", "", "acc", "element", "Lkotlin/coroutines/CoroutineContext$Element;", "invoke"}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes5-dex2jar.jar:kotlin/c/c$b.class */
    static final class b extends r implements Function2<String, f.b, String> {

        /* renamed from: a  reason: collision with root package name */
        public static final b f36644a = new b();

        b() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final /* synthetic */ String invoke(String str, f.b bVar) {
            String acc = str;
            f.b element = bVar;
            p.d(acc, "acc");
            p.d(element, "element");
            if (acc.length() == 0) {
                return element.toString();
            }
            return acc + ", " + element;
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0012\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"<anonymous>", "", "<anonymous parameter 0>", "element", "Lkotlin/coroutines/CoroutineContext$Element;", "invoke", "(Lkotlin/Unit;Lkotlin/coroutines/CoroutineContext$Element;)V"}, k = 3, mv = {1, 4, 1})
    /* renamed from: kotlin.c.c$c  reason: collision with other inner class name */
    /* loaded from: classes5-dex2jar.jar:kotlin/c/c$c.class */
    static final class C0607c extends r implements Function2<v, f.b, v> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ f[] f36645a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ ab.c f36646b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C0607c(f[] fVarArr, ab.c cVar) {
            super(2);
            this.f36645a = fVarArr;
            this.f36646b = cVar;
        }

        @Override // kotlin.jvm.functions.Function2
        public final /* synthetic */ v invoke(v vVar, f.b bVar) {
            f.b element = bVar;
            p.d(vVar, "<anonymous parameter 0>");
            p.d(element, "element");
            f[] fVarArr = this.f36645a;
            ab.c cVar = this.f36646b;
            int i = cVar.f36778a;
            cVar.f36778a = i + 1;
            fVarArr[i] = element;
            return v.f38654a;
        }
    }

    public c(f left, f.b element) {
        p.d(left, "left");
        p.d(element, "element");
        this.f36640a = left;
        this.f36641b = element;
    }

    private final int a() {
        c cVar = this;
        int i = 2;
        while (true) {
            Object obj = cVar.f36640a;
            Object obj2 = obj;
            if (!(obj instanceof c)) {
                obj2 = null;
            }
            cVar = (c) obj2;
            if (cVar == null) {
                return i;
            }
            i++;
        }
    }

    private final boolean a(f.b bVar) {
        return p.a(get(bVar.getKey()), bVar);
    }

    private final Object writeReplace() {
        int a2 = a();
        f[] fVarArr = new f[a2];
        ab.c cVar = new ab.c();
        boolean z = false;
        cVar.f36778a = 0;
        fold(v.f38654a, new C0607c(fVarArr, cVar));
        if (cVar.f36778a == a2) {
            z = true;
        }
        if (z) {
            return new a(fVarArr);
        }
        throw new IllegalStateException("Check failed.".toString());
    }

    public final boolean equals(Object obj) {
        boolean z;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        if (cVar.a() != a()) {
            return false;
        }
        c cVar2 = this;
        while (true) {
            if (cVar.a(cVar2.f36641b)) {
                f fVar = cVar2.f36640a;
                if (!(fVar instanceof c)) {
                    Objects.requireNonNull(fVar, "null cannot be cast to non-null type kotlin.coroutines.CoroutineContext.Element");
                    z = cVar.a((f.b) fVar);
                    break;
                }
                cVar2 = (c) fVar;
            } else {
                z = false;
                break;
            }
        }
        return z;
    }

    @Override // kotlin.c.f
    public final <R> R fold(R r, Function2<? super R, ? super f.b, ? extends R> operation) {
        p.d(operation, "operation");
        return (R) operation.invoke((Object) this.f36640a.fold(r, operation), this.f36641b);
    }

    @Override // kotlin.c.f
    public final <E extends f.b> E get(f.c<E> key) {
        p.d(key, "key");
        f fVar = this;
        while (true) {
            c cVar = (c) fVar;
            E e = (E) cVar.f36641b.get(key);
            if (e != null) {
                return e;
            }
            f fVar2 = cVar.f36640a;
            if (!(fVar2 instanceof c)) {
                return (E) fVar2.get(key);
            }
            fVar = fVar2;
        }
    }

    public final int hashCode() {
        return this.f36640a.hashCode() + this.f36641b.hashCode();
    }

    @Override // kotlin.c.f
    public final f minusKey(f.c<?> key) {
        p.d(key, "key");
        if (this.f36641b.get(key) != null) {
            return this.f36640a;
        }
        f minusKey = this.f36640a.minusKey(key);
        return minusKey == this.f36640a ? this : minusKey == g.f36650a ? this.f36641b : new c(minusKey, this.f36641b);
    }

    @Override // kotlin.c.f
    public final f plus(f context) {
        p.d(context, "context");
        return f.a.a(this, context);
    }

    public final String toString() {
        return "[" + ((String) fold("", b.f36644a)) + "]";
    }
}
