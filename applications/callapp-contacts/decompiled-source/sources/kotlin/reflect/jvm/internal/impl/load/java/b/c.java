package kotlin.reflect.jvm.internal.impl.load.java.b;

import com.appsflyer.internal.referrer.Payload;
import java.util.List;
import kotlin.n;
import kotlin.reflect.jvm.internal.impl.c.e;
import kotlin.reflect.jvm.internal.impl.descriptors.a;
import kotlin.reflect.jvm.internal.impl.descriptors.a.g;
import kotlin.reflect.jvm.internal.impl.descriptors.aq;
import kotlin.reflect.jvm.internal.impl.descriptors.at;
import kotlin.reflect.jvm.internal.impl.descriptors.b;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.d;
import kotlin.reflect.jvm.internal.impl.descriptors.k;
import kotlin.reflect.jvm.internal.impl.descriptors.w;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/b/c.class */
public class c extends d implements b {

    /* renamed from: c  reason: collision with root package name */
    static final /* synthetic */ boolean f37749c = true;

    /* renamed from: d  reason: collision with root package name */
    private Boolean f37750d;
    private Boolean e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    protected c(kotlin.reflect.jvm.internal.impl.descriptors.d dVar, c cVar, g gVar, boolean z, b.a aVar, at atVar) {
        super(dVar, cVar, gVar, z, aVar, atVar);
        if (dVar == null) {
            a(0);
        }
        if (gVar == null) {
            a(1);
        }
        if (aVar == null) {
            a(2);
        }
        if (atVar == null) {
            a(3);
        }
        this.f37750d = null;
        this.e = null;
    }

    public static c a(kotlin.reflect.jvm.internal.impl.descriptors.d dVar, g gVar, boolean z, at atVar) {
        if (dVar == null) {
            a(4);
        }
        if (gVar == null) {
            a(5);
        }
        if (atVar == null) {
            a(6);
        }
        return new c(dVar, null, gVar, z, b.a.DECLARATION, atVar);
    }

    private static /* synthetic */ void a(int i) {
        String str = (i == 11 || i == 18) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(i == 11 || i == 18) ? 2 : 3];
        switch (i) {
            case 1:
            case 5:
            case 9:
            case 15:
                objArr[0] = "annotations";
                break;
            case 2:
            case 8:
            case 13:
                objArr[0] = "kind";
                break;
            case 3:
            case 6:
            case 10:
                objArr[0] = Payload.SOURCE;
                break;
            case 4:
            default:
                objArr[0] = "containingDeclaration";
                break;
            case 7:
            case 12:
                objArr[0] = "newOwner";
                break;
            case 11:
            case 18:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaClassConstructorDescriptor";
                break;
            case 14:
                objArr[0] = "sourceElement";
                break;
            case 16:
                objArr[0] = "enhancedValueParametersData";
                break;
            case 17:
                objArr[0] = "enhancedReturnType";
                break;
        }
        if (i == 11) {
            objArr[1] = "createSubstitutedCopy";
        } else if (i != 18) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaClassConstructorDescriptor";
        } else {
            objArr[1] = "enhance";
        }
        switch (i) {
            case 4:
            case 5:
            case 6:
                objArr[2] = "createJavaConstructor";
                break;
            case 7:
            case 8:
            case 9:
            case 10:
                objArr[2] = "createSubstitutedCopy";
                break;
            case 11:
            case 18:
                break;
            case 12:
            case 13:
            case 14:
            case 15:
                objArr[2] = "createDescriptor";
                break;
            case 16:
            case 17:
                objArr[2] = "enhance";
                break;
            default:
                objArr[2] = "<init>";
                break;
        }
        String format = String.format(str, objArr);
        throw ((i == 11 || i == 18) ? new IllegalStateException(format) : new IllegalArgumentException(format));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public c createSubstitutedCopy(k kVar, w wVar, b.a aVar, e eVar, g gVar, at atVar) {
        if (kVar == null) {
            a(7);
        }
        if (aVar == null) {
            a(8);
        }
        if (gVar == null) {
            a(9);
        }
        if (atVar == null) {
            a(10);
        }
        if (aVar != b.a.DECLARATION && aVar != b.a.SYNTHESIZED) {
            throw new IllegalStateException("Attempt at creating a constructor that is not a declaration: \ncopy from: " + this + "\nnewOwner: " + kVar + "\nkind: " + aVar);
        } else if (f37749c || eVar == null) {
            kotlin.reflect.jvm.internal.impl.descriptors.d dVar = (kotlin.reflect.jvm.internal.impl.descriptors.d) kVar;
            c cVar = (c) wVar;
            if (dVar == null) {
                a(12);
            }
            if (aVar == null) {
                a(13);
            }
            if (atVar == null) {
                a(14);
            }
            if (gVar == null) {
                a(15);
            }
            c cVar2 = new c(dVar, cVar, gVar, this.f37536a, aVar, atVar);
            cVar2.setHasStableParameterNames(hasStableParameterNames());
            cVar2.setHasSynthesizedParameterNames(hasSynthesizedParameterNames());
            return cVar2;
        } else {
            throw new AssertionError("Attempt to rename constructor: ".concat(String.valueOf(this)));
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.b.b
    public final /* synthetic */ b a(KotlinType kotlinType, List list, KotlinType kotlinType2, n nVar) {
        aq aqVar;
        if (kotlinType2 == null) {
            a(17);
        }
        c b2 = createSubstitutedCopy(getContainingDeclaration(), null, getKind(), null, getAnnotations(), getSource());
        if (kotlinType == null) {
            aqVar = null;
        } else {
            g.a aVar = g.f37361a;
            aqVar = kotlin.reflect.jvm.internal.impl.resolve.c.a(b2, kotlinType, g.a.a());
        }
        b2.initialize(aqVar, getDispatchReceiverParameter(), getTypeParameters(), k.a(list, getValueParameters(), b2), kotlinType2, getModality(), getVisibility());
        if (nVar != null) {
            b2.putInUserDataMap((a.AbstractC0668a) nVar.f36810a, nVar.f36811b);
        }
        return b2;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl
    public boolean hasStableParameterNames() {
        if (f37749c || this.f37750d != null) {
            return this.f37750d.booleanValue();
        }
        throw new AssertionError("hasStableParameterNames was not set: ".concat(String.valueOf(this)));
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.a
    public boolean hasSynthesizedParameterNames() {
        if (f37749c || this.e != null) {
            return this.e.booleanValue();
        }
        throw new AssertionError("hasSynthesizedParameterNames was not set: ".concat(String.valueOf(this)));
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl
    public void setHasStableParameterNames(boolean z) {
        this.f37750d = Boolean.valueOf(z);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl
    public void setHasSynthesizedParameterNames(boolean z) {
        this.e = Boolean.valueOf(z);
    }
}
