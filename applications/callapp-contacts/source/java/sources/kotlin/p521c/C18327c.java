package kotlin.p521c;

import java.io.Serializable;
import java.util.Objects;
import kotlin.C20128v;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.jvm.internal.C18490ab;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.p521c.AbstractC18335f;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010��\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0001\u0018��2\u00020\u00012\u00060\u0002j\u0002`\u0003:\u0001!B\u0015\u0012\u0006\u0010\u0004\u001a\u00020\u0001\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u0010\u0010\b\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\u0006H\u0002J\u0010\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020��H\u0002J\u0013\u0010\f\u001a\u00020\t2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0096\u0002J5\u0010\u000f\u001a\u0002H\u0010\"\u0004\b��\u0010\u00102\u0006\u0010\u0011\u001a\u0002H\u00102\u0018\u0010\u0012\u001a\u0014\u0012\u0004\u0012\u0002H\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u0002H\u00100\u0013H\u0016¢\u0006\u0002\u0010\u0014J(\u0010\u0015\u001a\u0004\u0018\u0001H\u0016\"\b\b��\u0010\u0016*\u00020\u00062\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u0002H\u00160\u0018H\u0096\u0002¢\u0006\u0002\u0010\u0019J\b\u0010\u001a\u001a\u00020\u001bH\u0016J\u0014\u0010\u001c\u001a\u00020\u00012\n\u0010\u0017\u001a\u0006\u0012\u0002\b\u00030\u0018H\u0016J\b\u0010\u001d\u001a\u00020\u001bH\u0002J\b\u0010\u001e\u001a\u00020\u001fH\u0016J\b\u0010 \u001a\u00020\u000eH\u0002R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0004\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n��¨\u0006\""}, m4298d2 = {"Lkotlin/coroutines/CombinedContext;", "Lkotlin/coroutines/CoroutineContext;", "Ljava/io/Serializable;", "Lkotlin/io/Serializable;", "left", "element", "Lkotlin/coroutines/CoroutineContext$Element;", "(Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/CoroutineContext$Element;)V", "contains", "", "containsAll", "context", "equals", "other", "", "fold", "R", "initial", "operation", "Lkotlin/Function2;", "(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;", "get", "E", "key", "Lkotlin/coroutines/CoroutineContext$Key;", "(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;", "hashCode", "", "minusKey", "size", "toString", "", "writeReplace", "Serialized", "kotlin-stdlib"}, m4297k = 1, m4296mv = {1, 4, 1})
/* renamed from: kotlin.c.c */
/* loaded from: classes5-dex2jar.jar:kotlin/c/c.class */
public final class C18327c implements Serializable, AbstractC18335f {

    /* renamed from: a */
    private final AbstractC18335f f63433a;

    /* renamed from: b */
    private final AbstractC18335f.AbstractC18338b f63434b;

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010��\n\u0002\b\u0002\b\u0002\u0018�� \f2\u00060\u0001j\u0002`\u0002:\u0001\fB\u0013\u0012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\u0002\u0010\u0006J\b\u0010\n\u001a\u00020\u000bH\u0002R\u0019\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\n\n\u0002\u0010\t\u001a\u0004\b\u0007\u0010\b¨\u0006\r"}, m4298d2 = {"Lkotlin/coroutines/CombinedContext$Serialized;", "Ljava/io/Serializable;", "Lkotlin/io/Serializable;", "elements", "", "Lkotlin/coroutines/CoroutineContext;", "([Lkotlin/coroutines/CoroutineContext;)V", "getElements", "()[Lkotlin/coroutines/CoroutineContext;", "[Lkotlin/coroutines/CoroutineContext;", "readResolve", "", "Companion", "kotlin-stdlib"}, m4297k = 1, m4296mv = {1, 4, 1})
    /* renamed from: kotlin.c.c$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/c/c$a.class */
    static final class C18328a implements Serializable {

        /* renamed from: a */
        public static final C18329a f63435a = new C18329a(null);

        /* renamed from: b */
        private final AbstractC18335f[] f63436b;

        @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\t\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��¨\u0006\u0005"}, m4298d2 = {"Lkotlin/coroutines/CombinedContext$Serialized$Companion;", "", "()V", "serialVersionUID", "", "kotlin-stdlib"}, m4297k = 1, m4296mv = {1, 4, 1})
        /* renamed from: kotlin.c.c$a$a */
        /* loaded from: classes5-dex2jar.jar:kotlin/c/c$a$a.class */
        public static final class C18329a {
            private C18329a() {
            }

            public /* synthetic */ C18329a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }
        }

        public C18328a(AbstractC18335f[] elements) {
            C18524p.m3840d(elements, "elements");
            this.f63436b = elements;
        }

        private final Object readResolve() {
            AbstractC18335f[] abstractC18335fArr = this.f63436b;
            C18341g c18341g = C18341g.f63443a;
            for (AbstractC18335f abstractC18335f : abstractC18335fArr) {
                c18341g = c18341g.plus(abstractC18335f);
            }
            return c18341g;
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0010\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\u0010��\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\n¢\u0006\u0002\b\u0005"}, m4298d2 = {"<anonymous>", "", "acc", "element", "Lkotlin/coroutines/CoroutineContext$Element;", "invoke"}, m4297k = 3, m4296mv = {1, 4, 1})
    /* renamed from: kotlin.c.c$b */
    /* loaded from: classes5-dex2jar.jar:kotlin/c/c$b.class */
    static final class C18330b extends AbstractC18526r implements Function2<String, AbstractC18335f.AbstractC18338b, String> {

        /* renamed from: a */
        public static final C18330b f63437a = new C18330b();

        C18330b() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final /* synthetic */ String invoke(String str, AbstractC18335f.AbstractC18338b abstractC18338b) {
            String acc = str;
            AbstractC18335f.AbstractC18338b element = abstractC18338b;
            C18524p.m3840d(acc, "acc");
            C18524p.m3840d(element, "element");
            if (acc.length() == 0) {
                return element.toString();
            }
            return acc + ", " + element;
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0012\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, m4298d2 = {"<anonymous>", "", "<anonymous parameter 0>", "element", "Lkotlin/coroutines/CoroutineContext$Element;", "invoke", "(Lkotlin/Unit;Lkotlin/coroutines/CoroutineContext$Element;)V"}, m4297k = 3, m4296mv = {1, 4, 1})
    /* renamed from: kotlin.c.c$c */
    /* loaded from: classes5-dex2jar.jar:kotlin/c/c$c.class */
    static final class C18331c extends AbstractC18526r implements Function2<C20128v, AbstractC18335f.AbstractC18338b, C20128v> {

        /* renamed from: a */
        final /* synthetic */ AbstractC18335f[] f63438a;

        /* renamed from: b */
        final /* synthetic */ C18490ab.C18493c f63439b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C18331c(AbstractC18335f[] abstractC18335fArr, C18490ab.C18493c c18493c) {
            super(2);
            this.f63438a = abstractC18335fArr;
            this.f63439b = c18493c;
        }

        @Override // kotlin.jvm.functions.Function2
        public final /* synthetic */ C20128v invoke(C20128v c20128v, AbstractC18335f.AbstractC18338b abstractC18338b) {
            AbstractC18335f.AbstractC18338b element = abstractC18338b;
            C18524p.m3840d(c20128v, "<anonymous parameter 0>");
            C18524p.m3840d(element, "element");
            AbstractC18335f[] abstractC18335fArr = this.f63438a;
            C18490ab.C18493c c18493c = this.f63439b;
            int i = c18493c.f63587a;
            c18493c.f63587a = i + 1;
            abstractC18335fArr[i] = element;
            return C20128v.f66529a;
        }
    }

    public C18327c(AbstractC18335f left, AbstractC18335f.AbstractC18338b element) {
        C18524p.m3840d(left, "left");
        C18524p.m3840d(element, "element");
        this.f63433a = left;
        this.f63434b = element;
    }

    /* renamed from: a */
    private final int m4079a() {
        C18327c c18327c = this;
        int i = 2;
        while (true) {
            Object obj = c18327c.f63433a;
            Object obj2 = obj;
            if (!(obj instanceof C18327c)) {
                obj2 = null;
            }
            c18327c = (C18327c) obj2;
            if (c18327c == null) {
                return i;
            }
            i++;
        }
    }

    /* renamed from: a */
    private final boolean m4078a(AbstractC18335f.AbstractC18338b abstractC18338b) {
        return C18524p.m3850a(get(abstractC18338b.getKey()), abstractC18338b);
    }

    private final Object writeReplace() {
        int m4079a = m4079a();
        AbstractC18335f[] abstractC18335fArr = new AbstractC18335f[m4079a];
        C18490ab.C18493c c18493c = new C18490ab.C18493c();
        boolean z = false;
        c18493c.f63587a = 0;
        fold(C20128v.f66529a, new C18331c(abstractC18335fArr, c18493c));
        if (c18493c.f63587a == m4079a) {
            z = true;
        }
        if (z) {
            return new C18328a(abstractC18335fArr);
        }
        throw new IllegalStateException("Check failed.".toString());
    }

    public final boolean equals(Object obj) {
        boolean z;
        if (this != obj) {
            if (!(obj instanceof C18327c)) {
                return false;
            }
            C18327c c18327c = (C18327c) obj;
            if (c18327c.m4079a() != m4079a()) {
                return false;
            }
            C18327c c18327c2 = this;
            while (true) {
                C18327c c18327c3 = c18327c2;
                if (c18327c.m4078a(c18327c3.f63434b)) {
                    AbstractC18335f abstractC18335f = c18327c3.f63433a;
                    if (!(abstractC18335f instanceof C18327c)) {
                        Objects.requireNonNull(abstractC18335f, "null cannot be cast to non-null type kotlin.coroutines.CoroutineContext.Element");
                        z = c18327c.m4078a((AbstractC18335f.AbstractC18338b) abstractC18335f);
                        break;
                    }
                    c18327c2 = (C18327c) abstractC18335f;
                } else {
                    z = false;
                    break;
                }
            }
            return z;
        }
        return true;
    }

    @Override // kotlin.p521c.AbstractC18335f
    public final <R> R fold(R r, Function2<? super R, ? super AbstractC18335f.AbstractC18338b, ? extends R> operation) {
        C18524p.m3840d(operation, "operation");
        return operation.invoke((Object) this.f63433a.fold(r, operation), this.f63434b);
    }

    @Override // kotlin.p521c.AbstractC18335f
    public final <E extends AbstractC18335f.AbstractC18338b> E get(AbstractC18335f.AbstractC18340c<E> key) {
        C18524p.m3840d(key, "key");
        AbstractC18335f abstractC18335f = this;
        while (true) {
            C18327c c18327c = (C18327c) abstractC18335f;
            E e = (E) c18327c.f63434b.get(key);
            if (e != null) {
                return e;
            }
            AbstractC18335f abstractC18335f2 = c18327c.f63433a;
            if (!(abstractC18335f2 instanceof C18327c)) {
                return (E) abstractC18335f2.get(key);
            }
            abstractC18335f = abstractC18335f2;
        }
    }

    public final int hashCode() {
        return this.f63433a.hashCode() + this.f63434b.hashCode();
    }

    @Override // kotlin.p521c.AbstractC18335f
    public final AbstractC18335f minusKey(AbstractC18335f.AbstractC18340c<?> key) {
        C18524p.m3840d(key, "key");
        if (this.f63434b.get(key) != null) {
            return this.f63433a;
        }
        AbstractC18335f minusKey = this.f63433a.minusKey(key);
        return minusKey == this.f63433a ? this : minusKey == C18341g.f63443a ? this.f63434b : new C18327c(minusKey, this.f63434b);
    }

    @Override // kotlin.p521c.AbstractC18335f
    public final AbstractC18335f plus(AbstractC18335f context) {
        C18524p.m3840d(context, "context");
        return AbstractC18335f.C18336a.m4077a(this, context);
    }

    public final String toString() {
        return "[" + ((String) fold("", C18330b.f63437a)) + "]";
    }
}
