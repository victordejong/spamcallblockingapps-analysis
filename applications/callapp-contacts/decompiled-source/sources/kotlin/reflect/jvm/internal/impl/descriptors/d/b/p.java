package kotlin.reflect.jvm.internal.impl.descriptors.d.b;

import java.lang.reflect.Field;
import java.lang.reflect.Member;
import java.lang.reflect.Type;
import kotlin.reflect.jvm.internal.impl.descriptors.d.b.w;
import kotlin.reflect.jvm.internal.impl.load.java.d.n;
import kotlin.reflect.jvm.internal.impl.load.java.d.w;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/d/b/p.class */
public final class p extends r implements n {

    /* renamed from: a  reason: collision with root package name */
    public final Field f37481a;

    public p(Field member) {
        kotlin.jvm.internal.p.d(member, "member");
        this.f37481a = member;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.d.n
    public final boolean e() {
        return this.f37481a.isEnumConstant();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d.b.r
    public final /* bridge */ /* synthetic */ Member f() {
        return this.f37481a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.d.n
    public final /* synthetic */ w g() {
        w.a aVar = w.f37488b;
        Type genericType = this.f37481a.getGenericType();
        kotlin.jvm.internal.p.b(genericType, "member.genericType");
        return w.a.a(genericType);
    }
}
