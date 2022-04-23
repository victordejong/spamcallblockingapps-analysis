package kotlin.reflect.jvm.internal.impl.descriptors.impl;

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
import kotlin.reflect.jvm.internal.impl.descriptors.d;
import kotlin.reflect.jvm.internal.impl.descriptors.m;
import kotlin.reflect.jvm.internal.impl.descriptors.r;
import kotlin.reflect.jvm.internal.impl.descriptors.s;
import kotlin.reflect.jvm.internal.impl.resolve.e.a.h;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor;
import kotlin.reflect.jvm.internal.impl.types.Variance;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/impl/b.class */
public abstract class b extends h implements aq {

    /* renamed from: a  reason: collision with root package name */
    private static final e f37528a = e.c("<this>");

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(g gVar) {
        super(gVar, f37528a);
        if (gVar == null) {
            a(0);
        }
    }

    private static /* synthetic */ void a(int i) {
        String str;
        int i2;
        Throwable th;
        switch (i) {
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
                str = "@NotNull method %s.%s must not return null";
                break;
            default:
                str = "Argument for @NotNull parameter '%s' of %s.%s must not be null";
                break;
        }
        switch (i) {
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
                i2 = 2;
                break;
            default:
                i2 = 3;
                break;
        }
        Object[] objArr = new Object[i2];
        switch (i) {
            case 1:
                objArr[0] = "substitutor";
                break;
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractReceiverParameterDescriptor";
                break;
            default:
                objArr[0] = "annotations";
                break;
        }
        switch (i) {
            case 2:
                objArr[1] = "getTypeParameters";
                break;
            case 3:
                objArr[1] = "getType";
                break;
            case 4:
                objArr[1] = "getValueParameters";
                break;
            case 5:
                objArr[1] = "getOverriddenDescriptors";
                break;
            case 6:
                objArr[1] = "getVisibility";
                break;
            case 7:
                objArr[1] = "getOriginal";
                break;
            case 8:
                objArr[1] = "getSource";
                break;
            default:
                objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractReceiverParameterDescriptor";
                break;
        }
        switch (i) {
            case 1:
                objArr[2] = "substitute";
                break;
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
                break;
            default:
                objArr[2] = "<init>";
                break;
        }
        String format = String.format(str, objArr);
        switch (i) {
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
                th = new IllegalStateException(format);
                break;
            default:
                th = new IllegalArgumentException(format);
                break;
        }
        throw th;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.aq
    /* renamed from: a */
    public final aq substitute(TypeSubstitutor typeSubstitutor) {
        if (typeSubstitutor == null) {
            a(1);
        }
        if (typeSubstitutor.isEmpty()) {
            return this;
        }
        KotlinType substitute = getContainingDeclaration() instanceof d ? typeSubstitutor.substitute(g(), Variance.OUT_VARIANCE) : typeSubstitutor.substitute(g(), Variance.INVARIANT);
        if (substitute == null) {
            return null;
        }
        return substitute == g() ? this : new z(getContainingDeclaration(), new h(substitute), getAnnotations());
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.k
    public <R, D> R accept(m<R, D> mVar, D d2) {
        return mVar.a((aq) this, (b) d2);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.az
    public final KotlinType g() {
        KotlinType a2 = a().a();
        if (a2 == null) {
            a(3);
        }
        return a2;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a
    public aq getDispatchReceiverParameter() {
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a
    public aq getExtensionReceiverParameter() {
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a
    public Collection<? extends a> getOverriddenDescriptors() {
        Set emptySet = Collections.emptySet();
        if (emptySet == null) {
            a(5);
        }
        return emptySet;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a
    public KotlinType getReturnType() {
        return g();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.n
    public at getSource() {
        at atVar = at.f37401a;
        if (atVar == null) {
            a(8);
        }
        return atVar;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a
    public List<TypeParameterDescriptor> getTypeParameters() {
        List<TypeParameterDescriptor> emptyList = Collections.emptyList();
        if (emptyList == null) {
            a(2);
        }
        return emptyList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a
    public <V> V getUserData(a.AbstractC0668a<V> aVar) {
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a
    public List<ba> getValueParameters() {
        List<ba> emptyList = Collections.emptyList();
        if (emptyList == null) {
            a(4);
        }
        return emptyList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.o, kotlin.reflect.jvm.internal.impl.descriptors.x
    public s getVisibility() {
        s sVar = r.f;
        if (sVar == null) {
            a(6);
        }
        return sVar;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a
    public boolean hasSynthesizedParameterNames() {
        return false;
    }
}
