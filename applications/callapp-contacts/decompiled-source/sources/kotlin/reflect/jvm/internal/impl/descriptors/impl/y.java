package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import com.appsflyer.internal.referrer.Payload;
import com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdAdapter;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import kotlin.reflect.jvm.internal.impl.c.e;
import kotlin.reflect.jvm.internal.impl.descriptors.a.g;
import kotlin.reflect.jvm.internal.impl.descriptors.an;
import kotlin.reflect.jvm.internal.impl.descriptors.ap;
import kotlin.reflect.jvm.internal.impl.descriptors.at;
import kotlin.reflect.jvm.internal.impl.descriptors.b;
import kotlin.reflect.jvm.internal.impl.descriptors.ba;
import kotlin.reflect.jvm.internal.impl.descriptors.m;
import kotlin.reflect.jvm.internal.impl.descriptors.s;
import kotlin.reflect.jvm.internal.impl.resolve.b.a;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/impl/y.class */
public class y extends w implements ap {
    static final /* synthetic */ boolean e = true;
    private ba f;
    private final ap g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public y(an anVar, g gVar, kotlin.reflect.jvm.internal.impl.descriptors.y yVar, s sVar, boolean z, boolean z2, boolean z3, b.a aVar, ap apVar, at atVar) {
        super(yVar, sVar, anVar, gVar, e.c("<set-" + anVar.getName() + ">"), z, z2, z3, aVar, atVar);
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
        this.g = apVar != null ? apVar : this;
    }

    public static ae a(ap apVar, KotlinType kotlinType, g gVar) {
        if (apVar == null) {
            a(7);
        }
        if (kotlinType == null) {
            a(8);
        }
        if (gVar == null) {
            a(9);
        }
        return new ae(apVar, null, 0, gVar, e.c("<set-?>"), kotlinType, false, false, false, null, at.f37401a);
    }

    private static /* synthetic */ void a(int i) {
        String str;
        int i2;
        Throwable th;
        switch (i) {
            case 10:
            case 11:
            case 12:
            case 13:
                str = "@NotNull method %s.%s must not return null";
                break;
            default:
                str = "Argument for @NotNull parameter '%s' of %s.%s must not be null";
                break;
        }
        switch (i) {
            case 10:
            case 11:
            case 12:
            case 13:
                i2 = 2;
                break;
            default:
                i2 = 3;
                break;
        }
        Object[] objArr = new Object[i2];
        switch (i) {
            case 1:
            case 9:
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
                objArr[0] = MediationRewardedVideoAdAdapter.CUSTOM_EVENT_SERVER_PARAMETER_FIELD;
                break;
            case 7:
                objArr[0] = "setterDescriptor";
                break;
            case 8:
                objArr[0] = "type";
                break;
            case 10:
            case 11:
            case 12:
            case 13:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/PropertySetterDescriptorImpl";
                break;
            default:
                objArr[0] = "correspondingProperty";
                break;
        }
        switch (i) {
            case 10:
                objArr[1] = "getOverriddenDescriptors";
                break;
            case 11:
                objArr[1] = "getValueParameters";
                break;
            case 12:
                objArr[1] = "getReturnType";
                break;
            case 13:
                objArr[1] = "getOriginal";
                break;
            default:
                objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/PropertySetterDescriptorImpl";
                break;
        }
        switch (i) {
            case 6:
                objArr[2] = "initialize";
                break;
            case 7:
            case 8:
            case 9:
                objArr[2] = "createSetterParameter";
                break;
            case 10:
            case 11:
            case 12:
            case 13:
                break;
            default:
                objArr[2] = "<init>";
                break;
        }
        String format = String.format(str, objArr);
        switch (i) {
            case 10:
            case 11:
            case 12:
            case 13:
                th = new IllegalStateException(format);
                break;
            default:
                th = new IllegalArgumentException(format);
                break;
        }
        throw th;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public ap getOriginal() {
        ap apVar = this.g;
        if (apVar == null) {
            a(13);
        }
        return apVar;
    }

    public final void a(ba baVar) {
        if (baVar == null) {
            a(6);
        }
        if (e || this.f == null) {
            this.f = baVar;
            return;
        }
        throw new AssertionError();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.k
    public <R, D> R accept(m<R, D> mVar, D d2) {
        return mVar.a((ap) this, (y) d2);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.w, kotlin.reflect.jvm.internal.impl.descriptors.b, kotlin.reflect.jvm.internal.impl.descriptors.a
    public Collection<? extends ap> getOverriddenDescriptors() {
        return super.a(false);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a
    public KotlinType getReturnType() {
        SimpleType o = a.d(this).o();
        if (o == null) {
            a(12);
        }
        return o;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a
    public List<ba> getValueParameters() {
        ba baVar = this.f;
        if (baVar != null) {
            List<ba> singletonList = Collections.singletonList(baVar);
            if (singletonList == null) {
                a(11);
            }
            return singletonList;
        }
        throw new IllegalStateException();
    }
}
