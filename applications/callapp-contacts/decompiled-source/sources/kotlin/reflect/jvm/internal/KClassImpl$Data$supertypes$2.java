package kotlin.reflect.jvm.internal;

import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.p;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.h;
import kotlin.reflect.jvm.internal.impl.builtins.g;
import kotlin.reflect.jvm.internal.impl.descriptors.d;
import kotlin.reflect.jvm.internal.impl.descriptors.e;
import kotlin.reflect.jvm.internal.impl.resolve.b.a;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructor;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0014\n��\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010��\n��\u0010��\u001a\u0016\u0012\u0004\u0012\u00020\u0002 \u0003*\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u00010\u0001\"\b\b��\u0010\u0004*\u00020\u0005H\n¢\u0006\u0002\b\u0006"}, d2 = {"<anonymous>", "", "Lkotlin/reflect/jvm/internal/KTypeImpl;", "kotlin.jvm.PlatformType", "T", "", "invoke"}, k = 3, mv = {1, 4, 1})
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/KClassImpl$Data$supertypes$2.class */
public final class KClassImpl$Data$supertypes$2 extends r implements Function0<List<? extends w>> {
    final /* synthetic */ h.a this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata(bv = {1, 0, 3}, d1 = {"��\u000e\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010��\n��\u0010��\u001a\u00020\u0001\"\b\b��\u0010\u0002*\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "Ljava/lang/reflect/Type;", "T", "", "invoke"}, k = 3, mv = {1, 4, 1})
    /* renamed from: kotlin.reflect.jvm.internal.KClassImpl$Data$supertypes$2$3  reason: invalid class name */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/KClassImpl$Data$supertypes$2$3.class */
    public static final class AnonymousClass3 extends r implements Function0<Type> {
        public static final AnonymousClass3 INSTANCE = new AnonymousClass3();

        AnonymousClass3() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final Type invoke() {
            return Object.class;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public KClassImpl$Data$supertypes$2(h.a aVar) {
        super(0);
        this.this$0 = aVar;
    }

    @Override // kotlin.jvm.functions.Function0
    public final List<? extends w> invoke() {
        TypeConstructor typeConstructor = this.this$0.a().getTypeConstructor();
        p.b(typeConstructor, "descriptor.typeConstructor");
        Collection<KotlinType> supertypes = typeConstructor.mo7371getSupertypes();
        p.b(supertypes, "descriptor.typeConstructor.supertypes");
        ArrayList arrayList = new ArrayList(supertypes.size());
        for (Object obj : supertypes) {
            ArrayList arrayList2 = arrayList;
            KotlinType kotlinType = (KotlinType) obj;
            p.b(kotlinType, "kotlinType");
            arrayList2.add(new w(kotlinType, new KClassImpl$Data$supertypes$2$$special$$inlined$mapTo$lambda$1(kotlinType, this)));
        }
        if (!g.c(this.this$0.a())) {
            ArrayList<w> arrayList3 = arrayList;
            boolean z = false;
            if (!arrayList3.isEmpty()) {
                for (w wVar : arrayList3) {
                    d b2 = kotlin.reflect.jvm.internal.impl.resolve.d.b(wVar.f38615b);
                    p.b(b2, "DescriptorUtils.getClassDescriptorForType(it.type)");
                    e kind = b2.getKind();
                    p.b(kind, "DescriptorUtils.getClass…ptorForType(it.type).kind");
                    if (!(kind == e.INTERFACE || kind == e.ANNOTATION_CLASS)) {
                        break;
                    }
                }
            }
            z = true;
            if (z) {
                ArrayList arrayList4 = arrayList;
                SimpleType g = a.d(this.this$0.a()).g();
                p.b(g, "descriptor.builtIns.anyType");
                arrayList4.add(new w(g, AnonymousClass3.INSTANCE));
            }
        }
        return kotlin.reflect.jvm.internal.impl.utils.a.a(arrayList);
    }
}
