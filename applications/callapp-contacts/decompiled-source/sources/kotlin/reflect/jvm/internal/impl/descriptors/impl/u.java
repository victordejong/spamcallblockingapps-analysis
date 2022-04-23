package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import com.appsflyer.internal.referrer.Payload;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.a.g;
import kotlin.reflect.jvm.internal.impl.descriptors.at;
import kotlin.reflect.jvm.internal.impl.descriptors.c;
import kotlin.reflect.jvm.internal.impl.descriptors.d;
import kotlin.reflect.jvm.internal.impl.descriptors.e;
import kotlin.reflect.jvm.internal.impl.descriptors.k;
import kotlin.reflect.jvm.internal.impl.descriptors.s;
import kotlin.reflect.jvm.internal.impl.descriptors.y;
import kotlin.reflect.jvm.internal.impl.f.n;
import kotlin.reflect.jvm.internal.impl.resolve.e.h;
import kotlin.reflect.jvm.internal.impl.types.ClassTypeConstructorImpl;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/impl/u.class */
public class u extends e {

    /* renamed from: a  reason: collision with root package name */
    static final /* synthetic */ boolean f37578a = true;

    /* renamed from: b  reason: collision with root package name */
    private final e f37579b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f37580c;

    /* renamed from: d  reason: collision with root package name */
    private y f37581d;
    private s e;
    private TypeConstructor f;
    private List<TypeParameterDescriptor> g;
    private final Collection<KotlinType> h;
    private final n i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public u(k kVar, e eVar, boolean z, boolean z2, kotlin.reflect.jvm.internal.impl.c.e eVar2, at atVar, n nVar) {
        super(nVar, kVar, eVar2, atVar, z2);
        if (kVar == null) {
            a(0);
        }
        if (eVar == null) {
            a(1);
        }
        if (eVar2 == null) {
            a(2);
        }
        if (atVar == null) {
            a(3);
        }
        if (nVar == null) {
            a(4);
        }
        this.h = new ArrayList();
        this.i = nVar;
        if (f37578a || eVar != e.OBJECT) {
            this.f37579b = eVar;
            this.f37580c = z;
            return;
        }
        throw new AssertionError("Fix isCompanionObject()");
    }

    private static /* synthetic */ void a(int i) {
        String str;
        int i2;
        Throwable th;
        switch (i) {
            case 5:
            case 7:
            case 8:
            case 10:
            case 11:
            case 13:
            case 15:
            case 17:
            case 18:
            case 19:
                str = "@NotNull method %s.%s must not return null";
                break;
            case 6:
            case 9:
            case 12:
            case 14:
            case 16:
            default:
                str = "Argument for @NotNull parameter '%s' of %s.%s must not be null";
                break;
        }
        switch (i) {
            case 5:
            case 7:
            case 8:
            case 10:
            case 11:
            case 13:
            case 15:
            case 17:
            case 18:
            case 19:
                i2 = 2;
                break;
            case 6:
            case 9:
            case 12:
            case 14:
            case 16:
            default:
                i2 = 3;
                break;
        }
        Object[] objArr = new Object[i2];
        switch (i) {
            case 1:
                objArr[0] = "kind";
                break;
            case 2:
                objArr[0] = "name";
                break;
            case 3:
                objArr[0] = Payload.SOURCE;
                break;
            case 4:
                objArr[0] = "storageManager";
                break;
            case 5:
            case 7:
            case 8:
            case 10:
            case 11:
            case 13:
            case 15:
            case 17:
            case 18:
            case 19:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/MutableClassDescriptor";
                break;
            case 6:
                objArr[0] = "modality";
                break;
            case 9:
                objArr[0] = "visibility";
                break;
            case 12:
                objArr[0] = "supertype";
                break;
            case 14:
                objArr[0] = "typeParameters";
                break;
            case 16:
                objArr[0] = "kotlinTypeRefiner";
                break;
            default:
                objArr[0] = "containingDeclaration";
                break;
        }
        switch (i) {
            case 5:
                objArr[1] = "getAnnotations";
                break;
            case 6:
            case 9:
            case 12:
            case 14:
            case 16:
            default:
                objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/MutableClassDescriptor";
                break;
            case 7:
                objArr[1] = "getModality";
                break;
            case 8:
                objArr[1] = "getKind";
                break;
            case 10:
                objArr[1] = "getVisibility";
                break;
            case 11:
                objArr[1] = "getTypeConstructor";
                break;
            case 13:
                objArr[1] = "getConstructors";
                break;
            case 15:
                objArr[1] = "getDeclaredTypeParameters";
                break;
            case 17:
                objArr[1] = "getUnsubstitutedMemberScope";
                break;
            case 18:
                objArr[1] = "getStaticScope";
                break;
            case 19:
                objArr[1] = "getSealedSubclasses";
                break;
        }
        switch (i) {
            case 5:
            case 7:
            case 8:
            case 10:
            case 11:
            case 13:
            case 15:
            case 17:
            case 18:
            case 19:
                break;
            case 6:
                objArr[2] = "setModality";
                break;
            case 9:
                objArr[2] = "setVisibility";
                break;
            case 12:
                objArr[2] = "addSupertype";
                break;
            case 14:
                objArr[2] = "setTypeParameterDescriptors";
                break;
            case 16:
                objArr[2] = "getUnsubstitutedMemberScope";
                break;
            default:
                objArr[2] = "<init>";
                break;
        }
        String format = String.format(str, objArr);
        switch (i) {
            case 5:
            case 7:
            case 8:
            case 10:
            case 11:
            case 13:
            case 15:
            case 17:
            case 18:
            case 19:
                th = new IllegalStateException(format);
                break;
            case 6:
            case 9:
            case 12:
            case 14:
            case 16:
            default:
                th = new IllegalArgumentException(format);
                break;
        }
        throw th;
    }

    private static Set<c> b() {
        Set<c> emptySet = Collections.emptySet();
        if (emptySet == null) {
            a(13);
        }
        return emptySet;
    }

    public final void a() {
        if (f37578a || this.f == null) {
            this.f = new ClassTypeConstructorImpl(this, this.g, this.h, this.i);
            Iterator<c> it2 = b().iterator();
            while (it2.hasNext()) {
                ((d) it2.next()).setReturnType(getDefaultType());
            }
            return;
        }
        throw new AssertionError(this.f);
    }

    public final void a(List<TypeParameterDescriptor> list) {
        if (list == null) {
            a(14);
        }
        if (this.g == null) {
            this.g = new ArrayList(list);
            return;
        }
        throw new IllegalStateException("Type parameters are already set for " + getName());
    }

    public final void a(s sVar) {
        if (sVar == null) {
            a(9);
        }
        this.e = sVar;
    }

    public final void a(y yVar) {
        if (yVar == null) {
            a(6);
        }
        if (f37578a || yVar != y.SEALED) {
            this.f37581d = yVar;
            return;
        }
        throw new AssertionError("Implement getSealedSubclasses() for this class: " + getClass());
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a.a
    public g getAnnotations() {
        g.a aVar = g.f37361a;
        g a2 = g.a.a();
        if (a2 == null) {
            a(5);
        }
        return a2;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public d getCompanionObjectDescriptor() {
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public /* synthetic */ Collection getConstructors() {
        return b();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d, kotlin.reflect.jvm.internal.impl.descriptors.h
    public List<TypeParameterDescriptor> getDeclaredTypeParameters() {
        List<TypeParameterDescriptor> list = this.g;
        if (list == null) {
            a(15);
        }
        return list;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public e getKind() {
        e eVar = this.f37579b;
        if (eVar == null) {
            a(8);
        }
        return eVar;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d, kotlin.reflect.jvm.internal.impl.descriptors.x
    public y getModality() {
        y yVar = this.f37581d;
        if (yVar == null) {
            a(7);
        }
        return yVar;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public Collection<d> getSealedSubclasses() {
        List emptyList = Collections.emptyList();
        if (emptyList == null) {
            a(19);
        }
        return emptyList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public h getStaticScope() {
        h.c cVar = h.c.f38297a;
        if (cVar == null) {
            a(18);
        }
        return cVar;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.g
    public TypeConstructor getTypeConstructor() {
        TypeConstructor typeConstructor = this.f;
        if (typeConstructor == null) {
            a(11);
        }
        return typeConstructor;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.q
    public h getUnsubstitutedMemberScope(KotlinTypeRefiner kotlinTypeRefiner) {
        if (kotlinTypeRefiner == null) {
            a(16);
        }
        h.c cVar = h.c.f38297a;
        if (cVar == null) {
            a(17);
        }
        return cVar;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public c getUnsubstitutedPrimaryConstructor() {
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d, kotlin.reflect.jvm.internal.impl.descriptors.o, kotlin.reflect.jvm.internal.impl.descriptors.x
    public s getVisibility() {
        s sVar = this.e;
        if (sVar == null) {
            a(10);
        }
        return sVar;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.x
    public boolean isActual() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public boolean isCompanionObject() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public boolean isData() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.x
    public boolean isExpect() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public boolean isFun() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public boolean isInline() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.h
    public boolean isInner() {
        return this.f37580c;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public boolean isValue() {
        return false;
    }

    public String toString() {
        return h.toString(this);
    }
}
