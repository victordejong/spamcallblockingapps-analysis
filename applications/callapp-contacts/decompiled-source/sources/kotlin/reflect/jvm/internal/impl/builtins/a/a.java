package kotlin.reflect.jvm.internal.impl.builtins.a;

import java.util.List;
import kotlin.a.z;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.a.g;
import kotlin.reflect.jvm.internal.impl.descriptors.aq;
import kotlin.reflect.jvm.internal.impl.descriptors.at;
import kotlin.reflect.jvm.internal.impl.descriptors.b;
import kotlin.reflect.jvm.internal.impl.descriptors.ba;
import kotlin.reflect.jvm.internal.impl.descriptors.d;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.aa;
import kotlin.reflect.jvm.internal.impl.descriptors.r;
import kotlin.reflect.jvm.internal.impl.descriptors.w;
import kotlin.reflect.jvm.internal.impl.descriptors.y;
import kotlin.reflect.jvm.internal.impl.f.n;
import kotlin.reflect.jvm.internal.impl.resolve.e.e;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/builtins/a/a.class */
public final class a extends e {

    /* renamed from: a  reason: collision with root package name */
    public static final C0665a f37234a = new C0665a(null);

    /* renamed from: d  reason: collision with root package name */
    private static final kotlin.reflect.jvm.internal.impl.c.e f37235d;

    /* renamed from: kotlin.reflect.jvm.internal.impl.builtins.a.a$a  reason: collision with other inner class name */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/builtins/a/a$a.class */
    public static final class C0665a {
        private C0665a() {
        }

        public /* synthetic */ C0665a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    static {
        kotlin.reflect.jvm.internal.impl.c.e a2 = kotlin.reflect.jvm.internal.impl.c.e.a("clone");
        p.b(a2, "identifier(\"clone\")");
        f37235d = a2;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(n storageManager, d containingClass) {
        super(storageManager, containingClass);
        p.d(storageManager, "storageManager");
        p.d(containingClass, "containingClass");
    }

    public static final /* synthetic */ kotlin.reflect.jvm.internal.impl.c.e b() {
        return f37235d;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.e.e
    public final List<w> a() {
        d dVar = this.f38287c;
        g.a aVar = g.f37361a;
        aa create = aa.create(dVar, g.a.a(), f37235d, b.a.DECLARATION, at.f37401a);
        create.initialize((aq) null, this.f38287c.getThisAsReceiverParameter(), (List<? extends TypeParameterDescriptor>) z.f36608a, (List<ba>) z.f36608a, (KotlinType) kotlin.reflect.jvm.internal.impl.resolve.b.a.d(this.f38287c).g(), y.OPEN, r.f37592c);
        return kotlin.a.n.a(create);
    }
}
