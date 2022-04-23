package kotlin.reflect.jvm.internal.impl.load.java.b;

import com.appsflyer.internal.referrer.Payload;
import java.util.List;
import kotlin.n;
import kotlin.reflect.jvm.internal.impl.c.e;
import kotlin.reflect.jvm.internal.impl.descriptors.a;
import kotlin.reflect.jvm.internal.impl.descriptors.a.g;
import kotlin.reflect.jvm.internal.impl.descriptors.an;
import kotlin.reflect.jvm.internal.impl.descriptors.ap;
import kotlin.reflect.jvm.internal.impl.descriptors.aq;
import kotlin.reflect.jvm.internal.impl.descriptors.at;
import kotlin.reflect.jvm.internal.impl.descriptors.b;
import kotlin.reflect.jvm.internal.impl.descriptors.i;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.PropertyDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.x;
import kotlin.reflect.jvm.internal.impl.descriptors.k;
import kotlin.reflect.jvm.internal.impl.descriptors.s;
import kotlin.reflect.jvm.internal.impl.descriptors.y;
import kotlin.reflect.jvm.internal.impl.resolve.c;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/b/g.class */
public class g extends PropertyDescriptorImpl implements b {
    private final boolean g;
    private final n<a.AbstractC0668a<?>, ?> h;

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g(k kVar, kotlin.reflect.jvm.internal.impl.descriptors.a.g gVar, y yVar, s sVar, boolean z, e eVar, at atVar, an anVar, b.a aVar, boolean z2, n<a.AbstractC0668a<?>, ?> nVar) {
        super(kVar, anVar, gVar, yVar, sVar, z, eVar, aVar, atVar, false, false, false, false, false, false);
        if (kVar == null) {
            b(0);
        }
        if (gVar == null) {
            b(1);
        }
        if (yVar == null) {
            b(2);
        }
        if (sVar == null) {
            b(3);
        }
        if (eVar == null) {
            b(4);
        }
        if (atVar == null) {
            b(5);
        }
        if (aVar == null) {
            b(6);
        }
        this.g = z2;
        this.h = nVar;
    }

    public static g a(k kVar, kotlin.reflect.jvm.internal.impl.descriptors.a.g gVar, y yVar, s sVar, boolean z, e eVar, at atVar, boolean z2) {
        if (kVar == null) {
            b(7);
        }
        if (gVar == null) {
            b(8);
        }
        if (yVar == null) {
            b(9);
        }
        if (sVar == null) {
            b(10);
        }
        if (eVar == null) {
            b(11);
        }
        if (atVar == null) {
            b(12);
        }
        return new g(kVar, gVar, yVar, sVar, z, eVar, atVar, null, b.a.DECLARATION, z2, null);
    }

    private static /* synthetic */ void b(int i) {
        String str = i != 21 ? "Argument for @NotNull parameter '%s' of %s.%s must not be null" : "@NotNull method %s.%s must not return null";
        Object[] objArr = new Object[i != 21 ? 3 : 2];
        switch (i) {
            case 1:
            case 8:
                objArr[0] = "annotations";
                break;
            case 2:
            case 9:
                objArr[0] = "modality";
                break;
            case 3:
            case 10:
                objArr[0] = "visibility";
                break;
            case 4:
            case 11:
                objArr[0] = "name";
                break;
            case 5:
            case 12:
            case 18:
                objArr[0] = Payload.SOURCE;
                break;
            case 6:
            case 16:
                objArr[0] = "kind";
                break;
            case 7:
            default:
                objArr[0] = "containingDeclaration";
                break;
            case 13:
                objArr[0] = "newOwner";
                break;
            case 14:
                objArr[0] = "newModality";
                break;
            case 15:
                objArr[0] = "newVisibility";
                break;
            case 17:
                objArr[0] = "newName";
                break;
            case 19:
                objArr[0] = "enhancedValueParametersData";
                break;
            case 20:
                objArr[0] = "enhancedReturnType";
                break;
            case 21:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaPropertyDescriptor";
                break;
        }
        if (i != 21) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaPropertyDescriptor";
        } else {
            objArr[1] = "enhance";
        }
        switch (i) {
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
                objArr[2] = "create";
                break;
            case 13:
            case 14:
            case 15:
            case 16:
            case 17:
            case 18:
                objArr[2] = "createSubstitutedCopy";
                break;
            case 19:
            case 20:
                objArr[2] = "enhance";
                break;
            case 21:
                break;
            default:
                objArr[2] = "<init>";
                break;
        }
        String format = String.format(str, objArr);
        throw (i != 21 ? new IllegalArgumentException(format) : new IllegalStateException(format));
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.PropertyDescriptorImpl
    public final PropertyDescriptorImpl a(k kVar, y yVar, s sVar, an anVar, b.a aVar, e eVar, at atVar) {
        if (kVar == null) {
            b(13);
        }
        if (yVar == null) {
            b(14);
        }
        if (sVar == null) {
            b(15);
        }
        if (aVar == null) {
            b(16);
        }
        if (eVar == null) {
            b(17);
        }
        if (atVar == null) {
            b(18);
        }
        return new g(kVar, getAnnotations(), yVar, sVar, at_(), eVar, atVar, anVar, aVar, this.g, this.h);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.b.b
    public final b a(KotlinType kotlinType, List<l> list, KotlinType kotlinType2, n<a.AbstractC0668a<?>, ?> nVar) {
        x xVar;
        kotlin.reflect.jvm.internal.impl.descriptors.impl.y yVar;
        aq aqVar;
        if (kotlinType2 == null) {
            b(20);
        }
        an d2 = n() == this ? null : n();
        g gVar = new g(getContainingDeclaration(), getAnnotations(), getModality(), getVisibility(), at_(), getName(), getSource(), d2, getKind(), this.g, nVar);
        x xVar2 = this.f37508b;
        if (xVar2 != null) {
            xVar = new x(gVar, xVar2.getAnnotations(), xVar2.getModality(), xVar2.getVisibility(), xVar2.f37584a, xVar2.isExternal(), xVar2.isInline(), getKind(), d2 == null ? null : d2.a(), xVar2.getSource());
            xVar.f37586c = xVar2.getInitialSignatureDescriptor();
            xVar.a(kotlinType2);
        } else {
            xVar = null;
        }
        ap b2 = b();
        if (b2 != null) {
            yVar = new kotlin.reflect.jvm.internal.impl.descriptors.impl.y(gVar, b2.getAnnotations(), b2.getModality(), b2.getVisibility(), b2.a(), b2.isExternal(), b2.isInline(), getKind(), d2 == null ? null : d2.b(), b2.getSource());
            yVar.f37586c = yVar.getInitialSignatureDescriptor();
            yVar.a(b2.getValueParameters().get(0));
        } else {
            yVar = null;
        }
        gVar.a(xVar, yVar, e(), f());
        gVar.a(m());
        if (this.e != null) {
            gVar.a(this.e);
        }
        gVar.setOverriddenDescriptors(getOverriddenDescriptors());
        if (kotlinType == null) {
            aqVar = null;
        } else {
            g.a aVar = kotlin.reflect.jvm.internal.impl.descriptors.a.g.f37361a;
            aqVar = c.a(this, kotlinType, g.a.a());
        }
        gVar.a(kotlinType2, getTypeParameters(), getDispatchReceiverParameter(), aqVar);
        return gVar;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.PropertyDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.impl.af, kotlin.reflect.jvm.internal.impl.descriptors.bc
    public final boolean ar_() {
        KotlinType g = g();
        if (!this.g || !i.a(g)) {
            return false;
        }
        return !kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.s.a(g) || kotlin.reflect.jvm.internal.impl.builtins.g.s(g);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.PropertyDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.impl.af, kotlin.reflect.jvm.internal.impl.descriptors.a
    public <V> V getUserData(a.AbstractC0668a<V> aVar) {
        n<a.AbstractC0668a<?>, ?> nVar = this.h;
        if (nVar == null || !nVar.f36810a.equals(aVar)) {
            return null;
        }
        return (V) this.h.f36811b;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.af, kotlin.reflect.jvm.internal.impl.descriptors.a
    public boolean hasSynthesizedParameterNames() {
        return false;
    }
}
