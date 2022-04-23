package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import com.appsflyer.internal.referrer.Payload;
import kotlin.reflect.jvm.internal.impl.c.e;
import kotlin.reflect.jvm.internal.impl.descriptors.at;
import kotlin.reflect.jvm.internal.impl.descriptors.k;
import kotlin.reflect.jvm.internal.impl.f.j;
import kotlin.reflect.jvm.internal.impl.resolve.constants.g;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/impl/ag.class */
public abstract class ag extends af {
    static final /* synthetic */ boolean f = true;

    /* renamed from: a  reason: collision with root package name */
    private final boolean f37527a;
    protected j<g<?>> e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ag(k kVar, kotlin.reflect.jvm.internal.impl.descriptors.a.g gVar, e eVar, KotlinType kotlinType, boolean z, at atVar) {
        super(kVar, gVar, eVar, kotlinType, atVar);
        if (kVar == null) {
            a(0);
        }
        if (gVar == null) {
            a(1);
        }
        if (eVar == null) {
            a(2);
        }
        if (atVar == null) {
            a(3);
        }
        this.f37527a = z;
    }

    private static /* synthetic */ void a(int i) {
        Object[] objArr = new Object[3];
        if (i == 1) {
            objArr[0] = "annotations";
        } else if (i == 2) {
            objArr[0] = "name";
        } else if (i == 3) {
            objArr[0] = Payload.SOURCE;
        } else if (i != 4) {
            objArr[0] = "containingDeclaration";
        } else {
            objArr[0] = "compileTimeInitializer";
        }
        objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/VariableDescriptorWithInitializerImpl";
        if (i != 4) {
            objArr[2] = "<init>";
        } else {
            objArr[2] = "setCompileTimeInitializer";
        }
        throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
    }

    public final void a(j<g<?>> jVar) {
        if (jVar == null) {
            a(4);
        }
        if (f || !this.f37527a) {
            this.e = jVar;
            return;
        }
        throw new AssertionError("Constant value for variable initializer should be recorded only for final variables: " + getName());
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.bc
    public final boolean at_() {
        return this.f37527a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.bc
    public final g<?> j() {
        j<g<?>> jVar = this.e;
        if (jVar != null) {
            return jVar.invoke();
        }
        return null;
    }
}
