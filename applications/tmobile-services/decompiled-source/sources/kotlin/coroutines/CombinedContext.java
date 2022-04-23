package kotlin.coroutines;

import java.io.Serializable;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@SinceKotlin
@Metadata(bv = {1, 0, 3}, d1 = {"��B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010��\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u000b\b\u0001\u0018��2\u00020\u00012\u00020\u0002:\u0001*B\u0017\u0012\u0006\u0010&\u001a\u00020\u0001\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b(\u0010)J\u0017\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0002¢\u0006\u0004\b\u0006\u0010\u0007J\u0017\u0010\t\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020��H\u0002¢\u0006\u0004\b\t\u0010\nJ\u001a\u0010\r\u001a\u00020\u00052\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0096\u0002¢\u0006\u0004\b\r\u0010\u000eJ7\u0010\u0013\u001a\u00028��\"\u0004\b��\u0010\u000f2\u0006\u0010\u0010\u001a\u00028��2\u0018\u0010\u0012\u001a\u0014\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00028��0\u0011H\u0016¢\u0006\u0004\b\u0013\u0010\u0014J*\u0010\u0018\u001a\u0004\u0018\u00018��\"\b\b��\u0010\u0015*\u00020\u00032\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00028��0\u0016H\u0096\u0002¢\u0006\u0004\b\u0018\u0010\u0019J\u000f\u0010\u001b\u001a\u00020\u001aH\u0016¢\u0006\u0004\b\u001b\u0010\u001cJ\u001b\u0010\u001d\u001a\u00020\u00012\n\u0010\u0017\u001a\u0006\u0012\u0002\b\u00030\u0016H\u0016¢\u0006\u0004\b\u001d\u0010\u001eJ\u000f\u0010\u001f\u001a\u00020\u001aH\u0002¢\u0006\u0004\b\u001f\u0010\u001cJ\u000f\u0010!\u001a\u00020 H\u0016¢\u0006\u0004\b!\u0010\"J\u000f\u0010#\u001a\u00020\u000bH\u0002¢\u0006\u0004\b#\u0010$R\u0016\u0010\u0004\u001a\u00020\u00038\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010%R\u0016\u0010&\u001a\u00020\u00018\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b&\u0010'¨\u0006+"}, d2 = {"Lkotlin/coroutines/CombinedContext;", "Lkotlin/coroutines/CoroutineContext;", "Ljava/io/Serializable;", "Lkotlin/coroutines/CoroutineContext$Element;", "element", "", "contains", "(Lkotlin/coroutines/CoroutineContext$Element;)Z", "context", "containsAll", "(Lkotlin/coroutines/CombinedContext;)Z", "", "other", "equals", "(Ljava/lang/Object;)Z", "R", "initial", "Lkotlin/Function2;", "operation", "fold", "(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;", "E", "Lkotlin/coroutines/CoroutineContext$Key;", "key", "get", "(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;", "", "hashCode", "()I", "minusKey", "(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;", "size", "", "toString", "()Ljava/lang/String;", "writeReplace", "()Ljava/lang/Object;", "Lkotlin/coroutines/CoroutineContext$Element;", "left", "Lkotlin/coroutines/CoroutineContext;", "<init>", "(Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/CoroutineContext$Element;)V", "Serialized", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlin/coroutines/CombinedContext.class */
public final class CombinedContext implements CoroutineContext, Serializable {

    /* renamed from: f */
    private final CoroutineContext f20634f;

    /* renamed from: g */
    private final CoroutineContext.Element f20635g;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\b\b\u0002\u0018�� \r2\u00020\u0001:\u0001\rB\u0015\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\u0003\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0003\u0010\u0004R\u001f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0006@\u0006¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\n¨\u0006\u000e"}, d2 = {"Lkotlin/coroutines/CombinedContext$Serialized;", "Ljava/io/Serializable;", "", "readResolve", "()Ljava/lang/Object;", "", "Lkotlin/coroutines/CoroutineContext;", "elements", "[Lkotlin/coroutines/CoroutineContext;", "getElements", "()[Lkotlin/coroutines/CoroutineContext;", "<init>", "([Lkotlin/coroutines/CoroutineContext;)V", "Companion", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:kotlin/coroutines/CombinedContext$Serialized.class */
    private static final class Serialized implements Serializable {
        private static final long serialVersionUID = 0;
        @NotNull

        /* renamed from: f */
        private final CoroutineContext[] f20636f;

        @Metadata(bv = {1, 0, 3}, d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\b\u0005\b\u0086\u0003\u0018��B\t\b\u0002¢\u0006\u0004\b\u0004\u0010\u0005R\u0016\u0010\u0002\u001a\u00020\u00018\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0002\u0010\u0003¨\u0006\u0006"}, d2 = {"Lkotlin/coroutines/CombinedContext$Serialized$Companion;", "", "serialVersionUID", "J", "<init>", "()V", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
        /* loaded from: classes2-dex2jar.jar:kotlin/coroutines/CombinedContext$Serialized$Companion.class */
        public static final class Companion {
            private Companion() {
            }
        }

        public Serialized(@NotNull CoroutineContext[] elements) {
            Intrinsics.m1830e(elements, "elements");
            this.f20636f = elements;
        }

        private final Object readResolve() {
            CoroutineContext[] coroutineContextArr = this.f20636f;
            CoroutineContext coroutineContext = EmptyCoroutineContext.f20645f;
            for (CoroutineContext coroutineContext2 : coroutineContextArr) {
                coroutineContext = coroutineContext.plus(coroutineContext2);
            }
            return coroutineContext;
        }
    }

    public CombinedContext(@NotNull CoroutineContext left, @NotNull CoroutineContext.Element element) {
        Intrinsics.m1830e(left, "left");
        Intrinsics.m1830e(element, "element");
        this.f20634f = left;
        this.f20635g = element;
    }

    /* renamed from: c */
    private final boolean m1942c(CoroutineContext.Element element) {
        return Intrinsics.m1834a(get(element.getKey()), element);
    }

    /* renamed from: f */
    private final boolean m1941f(CombinedContext combinedContext) {
        while (m1942c(combinedContext.f20635g)) {
            CoroutineContext coroutineContext = combinedContext.f20634f;
            if (coroutineContext instanceof CombinedContext) {
                combinedContext = (CombinedContext) coroutineContext;
            } else if (coroutineContext != null) {
                return m1942c((CoroutineContext.Element) coroutineContext);
            } else {
                throw new NullPointerException("null cannot be cast to non-null type kotlin.coroutines.CoroutineContext.Element");
            }
        }
        return false;
    }

    /* renamed from: g */
    private final int m1940g() {
        int i = 2;
        CombinedContext combinedContext = this;
        while (true) {
            Object obj = combinedContext.f20634f;
            Object obj2 = obj;
            if (!(obj instanceof CombinedContext)) {
                obj2 = null;
            }
            combinedContext = (CombinedContext) obj2;
            if (combinedContext == null) {
                return i;
            }
            i++;
        }
    }

    private final Object writeReplace() {
        int g = m1940g();
        CoroutineContext[] coroutineContextArr = new CoroutineContext[g];
        Ref.IntRef intRef = new Ref.IntRef();
        boolean z = false;
        intRef.f20749f = 0;
        fold(Unit.f20447a, new CombinedContext$writeReplace$1(coroutineContextArr, intRef));
        if (intRef.f20749f == g) {
            z = true;
        }
        if (z) {
            return new Serialized(coroutineContextArr);
        }
        throw new IllegalStateException("Check failed.".toString());
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0021, code lost:
        if (r0.m1941f(r3) != false) goto L_0x002c;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean equals(@org.jetbrains.annotations.Nullable java.lang.Object r4) {
        /*
            r3 = this;
            r0 = r3
            r1 = r4
            if (r0 == r1) goto L_0x002c
            r0 = r4
            boolean r0 = r0 instanceof kotlin.coroutines.CombinedContext
            if (r0 == 0) goto L_0x0027
            r0 = r4
            kotlin.coroutines.CombinedContext r0 = (kotlin.coroutines.CombinedContext) r0
            r4 = r0
            r0 = r4
            int r0 = r0.m1940g()
            r1 = r3
            int r1 = r1.m1940g()
            if (r0 != r1) goto L_0x0027
            r0 = r4
            r1 = r3
            boolean r0 = r0.m1941f(r1)
            if (r0 == 0) goto L_0x0027
            goto L_0x002c
        L_0x0027:
            r0 = 0
            r5 = r0
            goto L_0x002e
        L_0x002c:
            r0 = 1
            r5 = r0
        L_0x002e:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.coroutines.CombinedContext.equals(java.lang.Object):boolean");
    }

    @Override // kotlin.coroutines.CoroutineContext
    public <R> R fold(R r, @NotNull Function2<? super R, ? super CoroutineContext.Element, ? extends R> operation) {
        Intrinsics.m1830e(operation, "operation");
        return (R) operation.mo422o((Object) this.f20634f.fold(r, operation), this.f20635g);
    }

    @Override // kotlin.coroutines.CoroutineContext
    @Nullable
    public <E extends CoroutineContext.Element> E get(@NotNull CoroutineContext.Key<E> key) {
        Intrinsics.m1830e(key, "key");
        CombinedContext combinedContext = this;
        while (true) {
            E e = (E) combinedContext.f20635g.get(key);
            if (e != null) {
                return e;
            }
            CoroutineContext coroutineContext = combinedContext.f20634f;
            if (!(coroutineContext instanceof CombinedContext)) {
                return (E) coroutineContext.get(key);
            }
            combinedContext = (CombinedContext) coroutineContext;
        }
    }

    public int hashCode() {
        return this.f20634f.hashCode() + this.f20635g.hashCode();
    }

    @Override // kotlin.coroutines.CoroutineContext
    @NotNull
    public CoroutineContext minusKey(@NotNull CoroutineContext.Key<?> key) {
        Intrinsics.m1830e(key, "key");
        if (this.f20635g.get(key) != null) {
            return this.f20634f;
        }
        CoroutineContext minusKey = this.f20634f.minusKey(key);
        return minusKey == this.f20634f ? this : minusKey == EmptyCoroutineContext.f20645f ? this.f20635g : new CombinedContext(minusKey, this.f20635g);
    }

    @Override // kotlin.coroutines.CoroutineContext
    @NotNull
    public CoroutineContext plus(@NotNull CoroutineContext context) {
        Intrinsics.m1830e(context, "context");
        return CoroutineContext.DefaultImpls.m1932a(this, context);
    }

    @NotNull
    public String toString() {
        return "[" + ((String) fold("", CombinedContext$toString$1.f20637f)) + "]";
    }
}
