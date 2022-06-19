package kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors;

import java.util.Iterator;
import java.util.List;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.C18489aa;
import kotlin.jvm.internal.C18496ac;
import kotlin.jvm.internal.C18524p;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18977c;
import kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18983g;
import kotlin.reflect.jvm.internal.impl.p545c.C18961b;
import kotlin.reflect.jvm.internal.impl.p554f.AbstractC19296i;
import kotlin.reflect.jvm.internal.impl.p554f.AbstractC19302n;
import kotlin.reflect.jvm.internal.impl.p554f.C19301m;
/* renamed from: kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.b */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/b.class */
public class C19902b implements AbstractC18983g {

    /* renamed from: b */
    static final /* synthetic */ KProperty<Object>[] f66144b = {C18496ac.m3883a(new C18489aa(C18496ac.m3882b(C19902b.class), "annotations", "getAnnotations()Ljava/util/List;"))};

    /* renamed from: c */
    private final AbstractC19296i f66145c;

    public C19902b(AbstractC19302n storageManager, Function0<? extends List<? extends AbstractC18977c>> compute) {
        C18524p.m3840d(storageManager, "storageManager");
        C18524p.m3840d(compute, "compute");
        this.f66145c = storageManager.mo2313a(compute);
    }

    /* renamed from: b */
    private final List<AbstractC18977c> m1339b() {
        return (List) C19301m.m2316a(this.f66145c, f66144b[0]);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18983g
    /* renamed from: a */
    public final AbstractC18977c mo1340a(C18961b c18961b) {
        return AbstractC18983g.C18986b.m2703a(this, c18961b);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18983g
    /* renamed from: a */
    public boolean mo1275a() {
        return m1339b().isEmpty();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18983g
    /* renamed from: b */
    public final boolean mo1338b(C18961b c18961b) {
        return AbstractC18983g.C18986b.m2702b(this, c18961b);
    }

    @Override // java.lang.Iterable
    public Iterator<AbstractC18977c> iterator() {
        return m1339b().iterator();
    }
}
