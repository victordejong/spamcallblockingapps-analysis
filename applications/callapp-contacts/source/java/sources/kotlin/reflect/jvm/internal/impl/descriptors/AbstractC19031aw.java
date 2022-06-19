package kotlin.reflect.jvm.internal.impl.descriptors;

import java.util.Collection;
import kotlin.C20128v;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.C18524p;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructor;
/* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.aw */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/aw.class */
public interface AbstractC19031aw {

    /* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.aw$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/aw$a.class */
    public static final class C19032a implements AbstractC19031aw {

        /* renamed from: a */
        public static final C19032a f64761a = new C19032a();

        private C19032a() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19031aw
        /* renamed from: a */
        public final Collection<KotlinType> mo2691a(TypeConstructor currentTypeConstructor, Collection<? extends KotlinType> superTypes, Function1<? super TypeConstructor, ? extends Iterable<? extends KotlinType>> neighbors, Function1<? super KotlinType, C20128v> reportLoop) {
            C18524p.m3840d(currentTypeConstructor, "currentTypeConstructor");
            C18524p.m3840d(superTypes, "superTypes");
            C18524p.m3840d(neighbors, "neighbors");
            C18524p.m3840d(reportLoop, "reportLoop");
            return superTypes;
        }
    }

    /* renamed from: a */
    Collection<KotlinType> mo2691a(TypeConstructor typeConstructor, Collection<? extends KotlinType> collection, Function1<? super TypeConstructor, ? extends Iterable<? extends KotlinType>> function1, Function1<? super KotlinType, C20128v> function12);
}
