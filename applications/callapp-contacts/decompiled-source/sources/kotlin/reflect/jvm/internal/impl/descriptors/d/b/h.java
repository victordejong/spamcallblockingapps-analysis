package kotlin.reflect.jvm.internal.impl.descriptors.d.b;

import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.descriptors.d.b.d;
import kotlin.reflect.jvm.internal.impl.load.java.d.e;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/d/b/h.class */
public final class h extends d implements e {

    /* renamed from: b  reason: collision with root package name */
    private final Object[] f37463b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h(kotlin.reflect.jvm.internal.impl.c.e eVar, Object[] values) {
        super(eVar);
        p.d(values, "values");
        this.f37463b = values;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.d.e
    public final List<d> b() {
        Object[] objArr = this.f37463b;
        ArrayList arrayList = new ArrayList(objArr.length);
        for (Object obj : objArr) {
            p.a(obj);
            arrayList.add(d.a.a(obj, null));
        }
        return arrayList;
    }
}
