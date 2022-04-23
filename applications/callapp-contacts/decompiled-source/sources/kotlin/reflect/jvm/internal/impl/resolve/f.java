package kotlin.reflect.jvm.internal.impl.resolve;

import java.util.Comparator;
import java.util.List;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.an;
import kotlin.reflect.jvm.internal.impl.descriptors.aq;
import kotlin.reflect.jvm.internal.impl.descriptors.ax;
import kotlin.reflect.jvm.internal.impl.descriptors.b;
import kotlin.reflect.jvm.internal.impl.descriptors.ba;
import kotlin.reflect.jvm.internal.impl.descriptors.d;
import kotlin.reflect.jvm.internal.impl.descriptors.j;
import kotlin.reflect.jvm.internal.impl.descriptors.k;
import kotlin.reflect.jvm.internal.impl.descriptors.w;
import kotlin.reflect.jvm.internal.impl.e.c;
import kotlin.reflect.jvm.internal.impl.e.e;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.v;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/f.class */
public class f implements Comparator<k> {

    /* renamed from: b  reason: collision with root package name */
    static final /* synthetic */ boolean f38314b = true;

    /* renamed from: a  reason: collision with root package name */
    public static final f f38313a = new f();

    /* renamed from: c  reason: collision with root package name */
    private static final c f38315c = c.a.a(new Function1<kotlin.reflect.jvm.internal.impl.e.f, v>() { // from class: kotlin.reflect.jvm.internal.impl.resolve.f.1
        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ v invoke(kotlin.reflect.jvm.internal.impl.e.f fVar) {
            kotlin.reflect.jvm.internal.impl.e.f fVar2 = fVar;
            fVar2.f(false);
            fVar2.e(true);
            fVar2.a(kotlin.reflect.jvm.internal.impl.e.a.UNLESS_EMPTY);
            fVar2.b(e.ALL);
            return v.f38654a;
        }
    });

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/f$a.class */
    public static final class a implements Comparator<k> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f38316a = new a();

        private a() {
        }

        private static int a(k kVar) {
            if (d.i(kVar)) {
                return 8;
            }
            if (kVar instanceof j) {
                return 7;
            }
            if (kVar instanceof an) {
                return ((an) kVar).getExtensionReceiverParameter() == null ? 6 : 5;
            }
            if (kVar instanceof w) {
                return ((w) kVar).getExtensionReceiverParameter() == null ? 4 : 3;
            }
            if (kVar instanceof d) {
                return 2;
            }
            return kVar instanceof ax ? 1 : 0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static Integer b(k kVar, k kVar2) {
            int a2 = a(kVar2) - a(kVar);
            if (a2 != 0) {
                return Integer.valueOf(a2);
            }
            if (d.i(kVar) && d.i(kVar2)) {
                return 0;
            }
            int a3 = kVar.getName().compareTo(kVar2.getName());
            if (a3 != 0) {
                return Integer.valueOf(a3);
            }
            return null;
        }

        @Override // java.util.Comparator
        public final /* synthetic */ int compare(k kVar, k kVar2) {
            Integer b2 = b(kVar, kVar2);
            if (b2 != null) {
                return b2.intValue();
            }
            return 0;
        }
    }

    static {
        c.a aVar = c.f37599a;
    }

    private f() {
    }

    @Override // java.util.Comparator
    public /* synthetic */ int compare(k kVar, k kVar2) {
        int ordinal;
        k kVar3 = kVar;
        k kVar4 = kVar2;
        Integer b2 = a.b(kVar3, kVar4);
        if (b2 != null) {
            return b2.intValue();
        }
        if (!(kVar3 instanceof ax) || !(kVar4 instanceof ax)) {
            boolean z = true;
            if ((kVar3 instanceof kotlin.reflect.jvm.internal.impl.descriptors.a) && (kVar4 instanceof kotlin.reflect.jvm.internal.impl.descriptors.a)) {
                kotlin.reflect.jvm.internal.impl.descriptors.a aVar = (kotlin.reflect.jvm.internal.impl.descriptors.a) kVar3;
                kotlin.reflect.jvm.internal.impl.descriptors.a aVar2 = (kotlin.reflect.jvm.internal.impl.descriptors.a) kVar4;
                aq extensionReceiverParameter = aVar.getExtensionReceiverParameter();
                aq extensionReceiverParameter2 = aVar2.getExtensionReceiverParameter();
                if (!f38314b) {
                    boolean z2 = extensionReceiverParameter != null;
                    if (extensionReceiverParameter2 == null) {
                        z = false;
                    }
                    if (z2 != z) {
                        throw new AssertionError();
                    }
                }
                if (extensionReceiverParameter != null) {
                    c cVar = f38315c;
                    int compareTo = cVar.a(extensionReceiverParameter.g()).compareTo(cVar.a(extensionReceiverParameter2.g()));
                    if (compareTo != 0) {
                        return compareTo;
                    }
                }
                List<ba> valueParameters = aVar.getValueParameters();
                List<ba> valueParameters2 = aVar2.getValueParameters();
                for (int i = 0; i < Math.min(valueParameters.size(), valueParameters2.size()); i++) {
                    c cVar2 = f38315c;
                    int compareTo2 = cVar2.a(valueParameters.get(i).g()).compareTo(cVar2.a(valueParameters2.get(i).g()));
                    if (compareTo2 != 0) {
                        return compareTo2;
                    }
                }
                int size = valueParameters.size() - valueParameters2.size();
                if (size != 0) {
                    return size;
                }
                List<TypeParameterDescriptor> typeParameters = aVar.getTypeParameters();
                List<TypeParameterDescriptor> typeParameters2 = aVar2.getTypeParameters();
                for (int i2 = 0; i2 < Math.min(typeParameters.size(), typeParameters2.size()); i2++) {
                    List<KotlinType> upperBounds = typeParameters.get(i2).getUpperBounds();
                    List<KotlinType> upperBounds2 = typeParameters2.get(i2).getUpperBounds();
                    int size2 = upperBounds.size() - upperBounds2.size();
                    if (size2 != 0) {
                        return size2;
                    }
                    for (int i3 = 0; i3 < upperBounds.size(); i3++) {
                        c cVar3 = f38315c;
                        int compareTo3 = cVar3.a(upperBounds.get(i3)).compareTo(cVar3.a(upperBounds2.get(i3)));
                        if (compareTo3 != 0) {
                            return compareTo3;
                        }
                    }
                }
                int size3 = typeParameters.size() - typeParameters2.size();
                if (size3 != 0) {
                    return size3;
                }
                if ((aVar instanceof b) && (aVar2 instanceof b) && (ordinal = ((b) aVar).getKind().ordinal() - ((b) aVar2).getKind().ordinal()) != 0) {
                    return ordinal;
                }
            } else if (!(kVar3 instanceof d) || !(kVar4 instanceof d)) {
                throw new AssertionError(String.format("Unsupported pair of descriptors:\n'%s' Class: %s\n%s' Class: %s", kVar3, kVar3.getClass(), kVar4, kVar4.getClass()));
            } else {
                d dVar = (d) kVar3;
                d dVar2 = (d) kVar4;
                if (dVar.getKind().ordinal() != dVar2.getKind().ordinal()) {
                    return dVar.getKind().ordinal() - dVar2.getKind().ordinal();
                }
                if (dVar.isCompanionObject() != dVar2.isCompanionObject()) {
                    return dVar.isCompanionObject() ? 1 : -1;
                }
            }
        } else {
            ax axVar = (ax) kVar3;
            ax axVar2 = (ax) kVar4;
            c cVar4 = f38315c;
            int compareTo4 = cVar4.a(axVar.a()).compareTo(cVar4.a(axVar2.a()));
            if (compareTo4 != 0) {
                return compareTo4;
            }
        }
        c cVar5 = f38315c;
        int compareTo5 = cVar5.a(kVar3).compareTo(cVar5.a(kVar4));
        return compareTo5 != 0 ? compareTo5 : d.f(kVar3).getName().compareTo(d.f(kVar4).getName());
    }
}
