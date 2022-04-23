package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import com.appsflyer.internal.referrer.Payload;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import kotlin.reflect.jvm.internal.impl.c.e;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.a;
import kotlin.reflect.jvm.internal.impl.descriptors.a.g;
import kotlin.reflect.jvm.internal.impl.descriptors.am;
import kotlin.reflect.jvm.internal.impl.descriptors.an;
import kotlin.reflect.jvm.internal.impl.descriptors.aq;
import kotlin.reflect.jvm.internal.impl.descriptors.at;
import kotlin.reflect.jvm.internal.impl.descriptors.b;
import kotlin.reflect.jvm.internal.impl.descriptors.k;
import kotlin.reflect.jvm.internal.impl.descriptors.s;
import kotlin.reflect.jvm.internal.impl.descriptors.w;
import kotlin.reflect.jvm.internal.impl.descriptors.y;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/impl/w.class */
public abstract class w extends i implements am {

    /* renamed from: d  reason: collision with root package name */
    static final /* synthetic */ boolean f37583d = true;

    /* renamed from: a  reason: collision with root package name */
    public boolean f37584a;

    /* renamed from: b  reason: collision with root package name */
    public s f37585b;

    /* renamed from: c  reason: collision with root package name */
    public kotlin.reflect.jvm.internal.impl.descriptors.w f37586c;
    private final boolean e;
    private final y f;
    private final an g;
    private final boolean h;
    private final b.a i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public w(y yVar, s sVar, an anVar, g gVar, e eVar, boolean z, boolean z2, boolean z3, b.a aVar, at atVar) {
        super(anVar.getContainingDeclaration(), gVar, eVar, atVar);
        if (yVar == null) {
            a(0);
        }
        if (sVar == null) {
            a(1);
        }
        if (anVar == null) {
            a(2);
        }
        if (gVar == null) {
            a(3);
        }
        if (eVar == null) {
            a(4);
        }
        if (atVar == null) {
            a(5);
        }
        this.f37586c = null;
        this.f = yVar;
        this.f37585b = sVar;
        this.g = anVar;
        this.f37584a = z;
        this.e = z2;
        this.h = z3;
        this.i = aVar;
    }

    private static /* synthetic */ void a(int i) {
        String str;
        int i2;
        Throwable th;
        switch (i) {
            case 6:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
                str = "@NotNull method %s.%s must not return null";
                break;
            case 7:
            default:
                str = "Argument for @NotNull parameter '%s' of %s.%s must not be null";
                break;
        }
        switch (i) {
            case 6:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
                i2 = 2;
                break;
            case 7:
            default:
                i2 = 3;
                break;
        }
        Object[] objArr = new Object[i2];
        switch (i) {
            case 1:
                objArr[0] = "visibility";
                break;
            case 2:
                objArr[0] = "correspondingProperty";
                break;
            case 3:
                objArr[0] = "annotations";
                break;
            case 4:
                objArr[0] = "name";
                break;
            case 5:
                objArr[0] = Payload.SOURCE;
                break;
            case 6:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyAccessorDescriptorImpl";
                break;
            case 7:
                objArr[0] = "substitutor";
                break;
            case 14:
                objArr[0] = "overriddenDescriptors";
                break;
            default:
                objArr[0] = "modality";
                break;
        }
        switch (i) {
            case 6:
                objArr[1] = "getKind";
                break;
            case 7:
            default:
                objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyAccessorDescriptorImpl";
                break;
            case 8:
                objArr[1] = "getTypeParameters";
                break;
            case 9:
                objArr[1] = "getModality";
                break;
            case 10:
                objArr[1] = "getVisibility";
                break;
            case 11:
                objArr[1] = "getCorrespondingVariable";
                break;
            case 12:
                objArr[1] = "getCorrespondingProperty";
                break;
            case 13:
                objArr[1] = "getOverriddenDescriptors";
                break;
        }
        switch (i) {
            case 6:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
                break;
            case 7:
                objArr[2] = "substitute";
                break;
            case 14:
                objArr[2] = "setOverriddenDescriptors";
                break;
            default:
                objArr[2] = "<init>";
                break;
        }
        String format = String.format(str, objArr);
        switch (i) {
            case 6:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
                th = new IllegalStateException(format);
                break;
            case 7:
            default:
                th = new IllegalArgumentException(format);
                break;
        }
        throw th;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final Collection<am> a(boolean z) {
        ArrayList arrayList = new ArrayList(0);
        for (an anVar : b().getOverriddenDescriptors()) {
            Object a2 = z ? anVar.a() : anVar.b();
            if (a2 != null) {
                arrayList.add(a2);
            }
        }
        return arrayList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.am
    public final boolean a() {
        return this.f37584a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.am
    public final an b() {
        an anVar = this.g;
        if (anVar == null) {
            a(12);
        }
        return anVar;
    }

    /* renamed from: c */
    public abstract am getOriginal();

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.b
    public /* synthetic */ b copy(k kVar, y yVar, s sVar, b.a aVar, boolean z) {
        throw new UnsupportedOperationException("Accessors must be copied by the corresponding property");
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a
    public aq getDispatchReceiverParameter() {
        return b().getDispatchReceiverParameter();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a
    public aq getExtensionReceiverParameter() {
        return b().getExtensionReceiverParameter();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.w
    public kotlin.reflect.jvm.internal.impl.descriptors.w getInitialSignatureDescriptor() {
        return this.f37586c;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.b
    public b.a getKind() {
        b.a aVar = this.i;
        if (aVar == null) {
            a(6);
        }
        return aVar;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.x
    public y getModality() {
        y yVar = this.f;
        if (yVar == null) {
            a(9);
        }
        return yVar;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a
    public List<TypeParameterDescriptor> getTypeParameters() {
        List<TypeParameterDescriptor> emptyList = Collections.emptyList();
        if (emptyList == null) {
            a(8);
        }
        return emptyList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a
    public <V> V getUserData(a.AbstractC0668a<V> aVar) {
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.o, kotlin.reflect.jvm.internal.impl.descriptors.x
    public s getVisibility() {
        s sVar = this.f37585b;
        if (sVar == null) {
            a(10);
        }
        return sVar;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a
    public boolean hasSynthesizedParameterNames() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.x
    public boolean isActual() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.x
    public boolean isExpect() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.x
    public boolean isExternal() {
        return this.e;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.w
    public boolean isHiddenForResolutionEverywhereBesideSupercalls() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.w
    public boolean isHiddenToOvercomeSignatureClash() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.w
    public boolean isInfix() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.w
    public boolean isInline() {
        return this.h;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.w
    public boolean isOperator() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.w
    public boolean isSuspend() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.w
    public boolean isTailrec() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.w
    public w.a<? extends kotlin.reflect.jvm.internal.impl.descriptors.w> newCopyBuilder() {
        throw new UnsupportedOperationException("Accessors must be copied by the corresponding property");
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.b
    public void setOverriddenDescriptors(Collection<? extends b> collection) {
        if (collection == null) {
            a(14);
        }
        if (!f37583d && !collection.isEmpty()) {
            throw new AssertionError("Overridden accessors should be empty");
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.w, kotlin.reflect.jvm.internal.impl.descriptors.av
    public a substitute(TypeSubstitutor typeSubstitutor) {
        if (typeSubstitutor == null) {
            a(7);
        }
        throw new UnsupportedOperationException();
    }
}
