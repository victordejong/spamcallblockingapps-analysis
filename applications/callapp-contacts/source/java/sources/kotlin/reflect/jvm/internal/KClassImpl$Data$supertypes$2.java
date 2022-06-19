package kotlin.reflect.jvm.internal;

import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.jvm.internal.C18524p;
import kotlin.reflect.jvm.internal.C18670h;
import kotlin.reflect.jvm.internal.impl.builtins.AbstractC18940g;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d;
import kotlin.reflect.jvm.internal.impl.descriptors.EnumC19127e;
import kotlin.reflect.jvm.internal.impl.resolve.C19807d;
import kotlin.reflect.jvm.internal.impl.resolve.p564b.C19756a;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructor;
import kotlin.reflect.jvm.internal.impl.utils.C19999a;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0014\n��\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010��\n��\u0010��\u001a\u0016\u0012\u0004\u0012\u00020\u0002 \u0003*\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u00010\u0001\"\b\b��\u0010\u0004*\u00020\u0005H\n¢\u0006\u0002\b\u0006"}, m4298d2 = {"<anonymous>", "", "Lkotlin/reflect/jvm/internal/KTypeImpl;", "kotlin.jvm.PlatformType", "T", "", "invoke"}, m4297k = 3, m4296mv = {1, 4, 1})
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/KClassImpl$Data$supertypes$2.class */
public final class KClassImpl$Data$supertypes$2 extends AbstractC18526r implements Function0<List<? extends C20094w>> {
    final /* synthetic */ C18670h.C18671a this$0;

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u000e\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010��\n��\u0010��\u001a\u00020\u0001\"\b\b��\u0010\u0002*\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, m4298d2 = {"<anonymous>", "Ljava/lang/reflect/Type;", "T", "", "invoke"}, m4297k = 3, m4296mv = {1, 4, 1})
    /* renamed from: kotlin.reflect.jvm.internal.KClassImpl$Data$supertypes$2$3 */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/KClassImpl$Data$supertypes$2$3.class */
    public static final class C185723 extends AbstractC18526r implements Function0<Type> {
        public static final C185723 INSTANCE = new C185723();

        C185723() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final Type invoke() {
            return Object.class;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public KClassImpl$Data$supertypes$2(C18670h.C18671a c18671a) {
        super(0);
        this.this$0 = c18671a;
    }

    @Override // kotlin.jvm.functions.Function0
    public final List<? extends C20094w> invoke() {
        boolean z;
        TypeConstructor typeConstructor = this.this$0.m3715a().getTypeConstructor();
        C18524p.m3843b(typeConstructor, "descriptor.typeConstructor");
        Collection<KotlinType> mo53752getSupertypes = typeConstructor.mo53752getSupertypes();
        C18524p.m3843b(mo53752getSupertypes, "descriptor.typeConstructor.supertypes");
        ArrayList arrayList = new ArrayList(mo53752getSupertypes.size());
        for (Object obj : mo53752getSupertypes) {
            ArrayList arrayList2 = arrayList;
            KotlinType kotlinType = (KotlinType) obj;
            C18524p.m3843b(kotlinType, "kotlinType");
            arrayList2.add(new C20094w(kotlinType, new KClassImpl$Data$supertypes$2$$special$$inlined$mapTo$lambda$1(kotlinType, this)));
        }
        if (!AbstractC18940g.m2812c(this.this$0.m3715a())) {
            ArrayList<C20094w> arrayList3 = arrayList;
            if (!arrayList3.isEmpty()) {
                for (C20094w c20094w : arrayList3) {
                    AbstractC19070d m1465b = C19807d.m1465b(c20094w.f66488b);
                    C18524p.m3843b(m1465b, "DescriptorUtils.getClassDescriptorForType(it.type)");
                    EnumC19127e kind = m1465b.getKind();
                    C18524p.m3843b(kind, "DescriptorUtils.getClass…ptorForType(it.type).kind");
                    if (!(kind == EnumC19127e.INTERFACE || kind == EnumC19127e.ANNOTATION_CLASS)) {
                        z = false;
                        break;
                    }
                }
            }
            z = true;
            if (z) {
                ArrayList arrayList4 = arrayList;
                SimpleType m2798g = C19756a.m1526d(this.this$0.m3715a()).m2798g();
                C18524p.m3843b(m2798g, "descriptor.builtIns.anyType");
                arrayList4.add(new C20094w(m2798g, C185723.INSTANCE));
            }
        }
        return C19999a.m1209a(arrayList);
    }
}
