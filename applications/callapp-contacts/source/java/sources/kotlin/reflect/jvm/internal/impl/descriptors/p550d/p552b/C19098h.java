package kotlin.reflect.jvm.internal.impl.descriptors.p550d.p552b;

import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.C18524p;
import kotlin.reflect.jvm.internal.impl.descriptors.p550d.p552b.AbstractC19092d;
import kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19396e;
import kotlin.reflect.jvm.internal.impl.p545c.C18966e;
/* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.d.b.h */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/d/b/h.class */
public final class C19098h extends AbstractC19092d implements AbstractC19396e {

    /* renamed from: b */
    private final Object[] f64821b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C19098h(C18966e c18966e, Object[] values) {
        super(c18966e);
        C18524p.m3840d(values, "values");
        this.f64821b = values;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19396e
    /* renamed from: b */
    public final List<AbstractC19092d> mo2218b() {
        Object[] objArr = this.f64821b;
        ArrayList arrayList = new ArrayList(objArr.length);
        for (Object obj : objArr) {
            C18524p.m3851a(obj);
            arrayList.add(AbstractC19092d.C19093a.m2651a(obj, null));
        }
        return arrayList;
    }
}
