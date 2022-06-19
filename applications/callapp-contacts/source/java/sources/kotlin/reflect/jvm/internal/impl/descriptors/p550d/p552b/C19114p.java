package kotlin.reflect.jvm.internal.impl.descriptors.p550d.p552b;

import java.lang.reflect.Field;
import java.lang.reflect.Member;
import java.lang.reflect.Type;
import kotlin.jvm.internal.C18524p;
import kotlin.reflect.jvm.internal.impl.descriptors.p550d.p552b.AbstractC19122w;
import kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19405n;
import kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19414w;
/* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.d.b.p */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/d/b/p.class */
public final class C19114p extends AbstractC19116r implements AbstractC19405n {

    /* renamed from: a */
    public final Field f64840a;

    public C19114p(Field member) {
        C18524p.m3840d(member, "member");
        this.f64840a = member;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19405n
    /* renamed from: e */
    public final boolean mo2195e() {
        return this.f64840a.isEnumConstant();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.p550d.p552b.AbstractC19116r
    /* renamed from: f */
    public final /* bridge */ /* synthetic */ Member mo2645f() {
        return this.f64840a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19405n
    /* renamed from: g */
    public final /* synthetic */ AbstractC19414w mo2194g() {
        AbstractC19122w.C19123a c19123a = AbstractC19122w.f64847b;
        Type genericType = this.f64840a.getGenericType();
        C18524p.m3843b(genericType, "member.genericType");
        return AbstractC19122w.C19123a.m2639a(genericType);
    }
}
