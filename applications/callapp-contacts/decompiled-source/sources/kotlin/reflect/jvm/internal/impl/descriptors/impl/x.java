package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import com.appsflyer.internal.referrer.Payload;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import kotlin.reflect.jvm.internal.impl.c.e;
import kotlin.reflect.jvm.internal.impl.descriptors.a.g;
import kotlin.reflect.jvm.internal.impl.descriptors.an;
import kotlin.reflect.jvm.internal.impl.descriptors.ao;
import kotlin.reflect.jvm.internal.impl.descriptors.at;
import kotlin.reflect.jvm.internal.impl.descriptors.b;
import kotlin.reflect.jvm.internal.impl.descriptors.ba;
import kotlin.reflect.jvm.internal.impl.descriptors.m;
import kotlin.reflect.jvm.internal.impl.descriptors.s;
import kotlin.reflect.jvm.internal.impl.descriptors.y;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/impl/x.class */
public final class x extends w implements ao {
    private KotlinType e;
    private final ao f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public x(an anVar, g gVar, y yVar, s sVar, boolean z, boolean z2, boolean z3, b.a aVar, ao aoVar, at atVar) {
        super(yVar, sVar, anVar, gVar, e.c("<get-" + anVar.getName() + ">"), z, z2, z3, aVar, atVar);
        if (anVar == null) {
            a(0);
        }
        if (gVar == null) {
            a(1);
        }
        if (yVar == null) {
            a(2);
        }
        if (sVar == null) {
            a(3);
        }
        if (aVar == null) {
            a(4);
        }
        if (atVar == null) {
            a(5);
        }
        this.f = aoVar == null ? this : aoVar;
    }

    private static /* synthetic */ void a(int i) {
        String str = (i == 6 || i == 7 || i == 8) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(i == 6 || i == 7 || i == 8) ? 2 : 3];
        switch (i) {
            case 1:
                objArr[0] = "annotations";
                break;
            case 2:
                objArr[0] = "modality";
                break;
            case 3:
                objArr[0] = "visibility";
                break;
            case 4:
                objArr[0] = "kind";
                break;
            case 5:
                objArr[0] = Payload.SOURCE;
                break;
            case 6:
            case 7:
            case 8:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyGetterDescriptorImpl";
                break;
            default:
                objArr[0] = "correspondingProperty";
                break;
        }
        if (i == 6) {
            objArr[1] = "getOverriddenDescriptors";
        } else if (i == 7) {
            objArr[1] = "getValueParameters";
        } else if (i != 8) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyGetterDescriptorImpl";
        } else {
            objArr[1] = "getOriginal";
        }
        if (!(i == 6 || i == 7 || i == 8)) {
            objArr[2] = "<init>";
        }
        String format = String.format(str, objArr);
        throw ((i == 6 || i == 7 || i == 8) ? new IllegalStateException(format) : new IllegalArgumentException(format));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public ao getOriginal() {
        ao aoVar = this.f;
        if (aoVar == null) {
            a(8);
        }
        return aoVar;
    }

    public final void a(KotlinType kotlinType) {
        KotlinType kotlinType2 = kotlinType;
        if (kotlinType == null) {
            kotlinType2 = b().g();
        }
        this.e = kotlinType2;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.k
    public final <R, D> R accept(m<R, D> mVar, D d2) {
        return mVar.a((ao) this, (x) d2);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.w, kotlin.reflect.jvm.internal.impl.descriptors.b, kotlin.reflect.jvm.internal.impl.descriptors.a
    public final Collection<? extends ao> getOverriddenDescriptors() {
        return super.a(true);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a
    public final KotlinType getReturnType() {
        return this.e;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a
    public final List<ba> getValueParameters() {
        List<ba> emptyList = Collections.emptyList();
        if (emptyList == null) {
            a(7);
        }
        return emptyList;
    }
}
