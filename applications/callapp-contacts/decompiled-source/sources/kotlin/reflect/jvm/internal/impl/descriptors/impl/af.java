package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import com.appsflyer.internal.referrer.Payload;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import kotlin.reflect.jvm.internal.impl.c.e;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.a;
import kotlin.reflect.jvm.internal.impl.descriptors.a.g;
import kotlin.reflect.jvm.internal.impl.descriptors.aq;
import kotlin.reflect.jvm.internal.impl.descriptors.at;
import kotlin.reflect.jvm.internal.impl.descriptors.ba;
import kotlin.reflect.jvm.internal.impl.descriptors.bc;
import kotlin.reflect.jvm.internal.impl.descriptors.k;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/impl/af.class */
public abstract class af extends i implements bc {

    /* renamed from: d  reason: collision with root package name */
    static final /* synthetic */ boolean f37525d = true;

    /* renamed from: c  reason: collision with root package name */
    protected KotlinType f37526c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public af(k kVar, g gVar, e eVar, KotlinType kotlinType, at atVar) {
        super(kVar, gVar, eVar, atVar);
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
        this.f37526c = kotlinType;
    }

    private static /* synthetic */ void a(int i) {
        String str;
        int i2;
        Throwable th;
        switch (i) {
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
                str = "@NotNull method %s.%s must not return null";
                break;
            default:
                str = "Argument for @NotNull parameter '%s' of %s.%s must not be null";
                break;
        }
        switch (i) {
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
                i2 = 2;
                break;
            default:
                i2 = 3;
                break;
        }
        Object[] objArr = new Object[i2];
        switch (i) {
            case 1:
                objArr[0] = "annotations";
                break;
            case 2:
                objArr[0] = "name";
                break;
            case 3:
                objArr[0] = Payload.SOURCE;
                break;
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/VariableDescriptorImpl";
                break;
            default:
                objArr[0] = "containingDeclaration";
                break;
        }
        switch (i) {
            case 4:
                objArr[1] = "getType";
                break;
            case 5:
                objArr[1] = "getOriginal";
                break;
            case 6:
                objArr[1] = "getValueParameters";
                break;
            case 7:
                objArr[1] = "getOverriddenDescriptors";
                break;
            case 8:
                objArr[1] = "getTypeParameters";
                break;
            case 9:
                objArr[1] = "getReturnType";
                break;
            default:
                objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/VariableDescriptorImpl";
                break;
        }
        switch (i) {
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
                break;
            default:
                objArr[2] = "<init>";
                break;
        }
        String format = String.format(str, objArr);
        switch (i) {
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
                th = new IllegalStateException(format);
                break;
            default:
                th = new IllegalArgumentException(format);
                break;
        }
        throw th;
    }

    public final void a(KotlinType kotlinType) {
        KotlinType kotlinType2;
        if (f37525d || (kotlinType2 = this.f37526c) == null || TypeUtilsKt.shouldBeSubstituted(kotlinType2)) {
            this.f37526c = kotlinType;
            return;
        }
        throw new AssertionError();
    }

    public boolean ar_() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.az
    public final KotlinType g() {
        KotlinType kotlinType = this.f37526c;
        if (kotlinType == null) {
            a(4);
        }
        return kotlinType;
    }

    public aq getDispatchReceiverParameter() {
        return null;
    }

    public aq getExtensionReceiverParameter() {
        return null;
    }

    public Collection<? extends a> getOverriddenDescriptors() {
        Set emptySet = Collections.emptySet();
        if (emptySet == null) {
            a(7);
        }
        return emptySet;
    }

    public KotlinType getReturnType() {
        KotlinType g = g();
        if (g == null) {
            a(9);
        }
        return g;
    }

    public List<TypeParameterDescriptor> getTypeParameters() {
        List<TypeParameterDescriptor> emptyList = Collections.emptyList();
        if (emptyList == null) {
            a(8);
        }
        return emptyList;
    }

    public <V> V getUserData(a.AbstractC0668a<V> aVar) {
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a
    public List<ba> getValueParameters() {
        List<ba> emptyList = Collections.emptyList();
        if (emptyList == null) {
            a(6);
        }
        return emptyList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a
    public boolean hasSynthesizedParameterNames() {
        return false;
    }

    /* renamed from: n */
    public bc getOriginal() {
        bc bcVar = (bc) super.getOriginal();
        if (bcVar == null) {
            a(5);
        }
        return bcVar;
    }
}
