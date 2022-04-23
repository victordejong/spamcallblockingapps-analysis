package kotlin.reflect.jvm.internal.impl.load.java.b;

import com.appsflyer.internal.referrer.Payload;
import java.util.List;
import kotlin.n;
import kotlin.reflect.jvm.internal.impl.c.e;
import kotlin.reflect.jvm.internal.impl.descriptors.a;
import kotlin.reflect.jvm.internal.impl.descriptors.a.g;
import kotlin.reflect.jvm.internal.impl.descriptors.aq;
import kotlin.reflect.jvm.internal.impl.descriptors.as;
import kotlin.reflect.jvm.internal.impl.descriptors.at;
import kotlin.reflect.jvm.internal.impl.descriptors.b;
import kotlin.reflect.jvm.internal.impl.descriptors.ba;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.aa;
import kotlin.reflect.jvm.internal.impl.descriptors.k;
import kotlin.reflect.jvm.internal.impl.descriptors.w;
import kotlin.reflect.jvm.internal.impl.resolve.c;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/b/f.class */
public class f extends aa implements b {

    /* renamed from: a  reason: collision with root package name */
    public static final a.AbstractC0668a<ba> f37751a = new a.AbstractC0668a<ba>() { // from class: kotlin.reflect.jvm.internal.impl.load.java.b.f.1
    };

    /* renamed from: b  reason: collision with root package name */
    static final /* synthetic */ boolean f37752b = true;

    /* renamed from: c  reason: collision with root package name */
    private a f37753c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f37754d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/b/f$a.class */
    public enum a {
        NON_STABLE_DECLARED(false, false),
        STABLE_DECLARED(true, false),
        NON_STABLE_SYNTHESIZED(false, true),
        STABLE_SYNTHESIZED(true, true);
        
        public final boolean isStable;
        public final boolean isSynthesized;

        private static /* synthetic */ void $$$reportNull$$$0(int i) {
            throw new IllegalStateException(String.format("@NotNull method %s.%s must not return null", "kotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaMethodDescriptor$ParameterNamesStatus", "get"));
        }

        a(boolean z, boolean z2) {
            this.isStable = z;
            this.isSynthesized = z2;
        }

        public static a get(boolean z, boolean z2) {
            a aVar = z ? z2 ? STABLE_SYNTHESIZED : STABLE_DECLARED : z2 ? NON_STABLE_SYNTHESIZED : NON_STABLE_DECLARED;
            if (aVar == null) {
                $$$reportNull$$$0(0);
            }
            return aVar;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    protected f(k kVar, as asVar, g gVar, e eVar, b.a aVar, at atVar, boolean z) {
        super(kVar, asVar, gVar, eVar, aVar, atVar);
        if (kVar == null) {
            a(0);
        }
        if (gVar == null) {
            a(1);
        }
        if (eVar == null) {
            a(2);
        }
        if (aVar == null) {
            a(3);
        }
        if (atVar == null) {
            a(4);
        }
        this.f37753c = null;
        this.f37754d = z;
    }

    public static f a(k kVar, g gVar, e eVar, at atVar, boolean z) {
        if (kVar == null) {
            a(5);
        }
        if (gVar == null) {
            a(6);
        }
        if (eVar == null) {
            a(7);
        }
        if (atVar == null) {
            a(8);
        }
        return new f(kVar, null, gVar, eVar, b.a.DECLARATION, atVar, z);
    }

    private static /* synthetic */ void a(int i) {
        String str = (i == 12 || i == 17 || i == 20) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(i == 12 || i == 17 || i == 20) ? 2 : 3];
        switch (i) {
            case 1:
            case 6:
            case 15:
                objArr[0] = "annotations";
                break;
            case 2:
            case 7:
                objArr[0] = "name";
                break;
            case 3:
            case 14:
                objArr[0] = "kind";
                break;
            case 4:
            case 8:
            case 16:
                objArr[0] = Payload.SOURCE;
                break;
            case 5:
            default:
                objArr[0] = "containingDeclaration";
                break;
            case 9:
                objArr[0] = "typeParameters";
                break;
            case 10:
                objArr[0] = "unsubstitutedValueParameters";
                break;
            case 11:
                objArr[0] = "visibility";
                break;
            case 12:
            case 17:
            case 20:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaMethodDescriptor";
                break;
            case 13:
                objArr[0] = "newOwner";
                break;
            case 18:
                objArr[0] = "enhancedValueParametersData";
                break;
            case 19:
                objArr[0] = "enhancedReturnType";
                break;
        }
        if (i == 12) {
            objArr[1] = "initialize";
        } else if (i == 17) {
            objArr[1] = "createSubstitutedCopy";
        } else if (i != 20) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaMethodDescriptor";
        } else {
            objArr[1] = "enhance";
        }
        switch (i) {
            case 5:
            case 6:
            case 7:
            case 8:
                objArr[2] = "createJavaMethod";
                break;
            case 9:
            case 10:
            case 11:
                objArr[2] = "initialize";
                break;
            case 12:
            case 17:
            case 20:
                break;
            case 13:
            case 14:
            case 15:
            case 16:
                objArr[2] = "createSubstitutedCopy";
                break;
            case 18:
            case 19:
                objArr[2] = "enhance";
                break;
            default:
                objArr[2] = "<init>";
                break;
        }
        String format = String.format(str, objArr);
        throw ((i == 12 || i == 17 || i == 20) ? new IllegalStateException(format) : new IllegalArgumentException(format));
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.b.b
    public final /* synthetic */ b a(KotlinType kotlinType, List list, KotlinType kotlinType2, n nVar) {
        aq aqVar;
        if (kotlinType2 == null) {
            a(19);
        }
        List<ba> a2 = k.a(list, getValueParameters(), this);
        if (kotlinType == null) {
            aqVar = null;
        } else {
            g.a aVar = g.f37361a;
            aqVar = c.a(this, kotlinType, g.a.a());
        }
        f fVar = (f) newCopyBuilder().setValueParameters(a2).setReturnType(kotlinType2).setExtensionReceiverParameter(aqVar).setDropOriginalInContainingParts().setPreserveSourceElement().build();
        if (f37752b || fVar != null) {
            if (nVar != null) {
                fVar.putInUserDataMap((a.AbstractC0668a) nVar.f36810a, nVar.f36811b);
            }
            if (fVar == null) {
                a(20);
            }
            return fVar;
        }
        throw new AssertionError("null after substitution while enhancing " + toString());
    }

    public final void a(boolean z, boolean z2) {
        this.f37753c = a.get(z, z2);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.aa, kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl
    public /* synthetic */ FunctionDescriptorImpl createSubstitutedCopy(k kVar, w wVar, b.a aVar, e eVar, g gVar, at atVar) {
        if (kVar == null) {
            a(13);
        }
        if (aVar == null) {
            a(14);
        }
        if (gVar == null) {
            a(15);
        }
        if (atVar == null) {
            a(16);
        }
        as asVar = (as) wVar;
        if (eVar == null) {
            eVar = getName();
        }
        f fVar = new f(kVar, asVar, gVar, eVar, aVar, atVar, this.f37754d);
        fVar.a(hasStableParameterNames(), hasSynthesizedParameterNames());
        return fVar;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl
    public boolean hasStableParameterNames() {
        if (f37752b || this.f37753c != null) {
            return this.f37753c.isStable;
        }
        throw new AssertionError("Parameter names status was not set: ".concat(String.valueOf(this)));
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.a
    public boolean hasSynthesizedParameterNames() {
        if (f37752b || this.f37753c != null) {
            return this.f37753c.isSynthesized;
        }
        throw new AssertionError("Parameter names status was not set: ".concat(String.valueOf(this)));
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x00aa, code lost:
        if (r0.f37675b.a(r0) == false) goto L_0x007a;
     */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00d4 A[SYNTHETIC] */
    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.aa
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public kotlin.reflect.jvm.internal.impl.descriptors.impl.aa initialize(kotlin.reflect.jvm.internal.impl.descriptors.aq r11, kotlin.reflect.jvm.internal.impl.descriptors.aq r12, java.util.List<? extends kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor> r13, java.util.List<kotlin.reflect.jvm.internal.impl.descriptors.ba> r14, kotlin.reflect.jvm.internal.impl.types.KotlinType r15, kotlin.reflect.jvm.internal.impl.descriptors.y r16, kotlin.reflect.jvm.internal.impl.descriptors.s r17, java.util.Map<? extends kotlin.reflect.jvm.internal.impl.descriptors.a.AbstractC0668a<?>, ?> r18) {
        /*
            Method dump skipped, instructions count: 347
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.load.java.b.f.initialize(kotlin.reflect.jvm.internal.impl.descriptors.aq, kotlin.reflect.jvm.internal.impl.descriptors.aq, java.util.List, java.util.List, kotlin.reflect.jvm.internal.impl.types.KotlinType, kotlin.reflect.jvm.internal.impl.descriptors.y, kotlin.reflect.jvm.internal.impl.descriptors.s, java.util.Map):kotlin.reflect.jvm.internal.impl.descriptors.impl.aa");
    }
}
