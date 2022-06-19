package kotlin.reflect.jvm.internal.impl.serialization.deserialization;

import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19026at;
import kotlin.reflect.jvm.internal.impl.p539b.C18702a;
import kotlin.reflect.jvm.internal.impl.p539b.p541b.AbstractC18813c;
import kotlin.reflect.jvm.internal.impl.p539b.p541b.C18808b;
import kotlin.reflect.jvm.internal.impl.p539b.p541b.C18818g;
import kotlin.reflect.jvm.internal.impl.p545c.C18960a;
import kotlin.reflect.jvm.internal.impl.p545c.C18961b;
/* renamed from: kotlin.reflect.jvm.internal.impl.serialization.deserialization.w */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/w.class */
public abstract class AbstractC19972w {

    /* renamed from: a */
    public final AbstractC18813c f66320a;

    /* renamed from: b */
    public final C18818g f66321b;

    /* renamed from: c */
    public final AbstractC19026at f66322c;

    /* renamed from: kotlin.reflect.jvm.internal.impl.serialization.deserialization.w$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/w$a.class */
    public static final class C19973a extends AbstractC19972w {

        /* renamed from: d */
        final C18702a.C18715b f66323d;

        /* renamed from: e */
        public final C19973a f66324e;

        /* renamed from: f */
        public final C18960a f66325f;

        /* renamed from: g */
        public final C18702a.C18715b.EnumC18718b f66326g;

        /* renamed from: h */
        public final boolean f66327h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C19973a(C18702a.C18715b classProto, AbstractC18813c nameResolver, C18818g typeTable, AbstractC19026at abstractC19026at, C19973a c19973a) {
            super(nameResolver, typeTable, abstractC19026at, null);
            C18524p.m3840d(classProto, "classProto");
            C18524p.m3840d(nameResolver, "nameResolver");
            C18524p.m3840d(typeTable, "typeTable");
            this.f66323d = classProto;
            this.f66324e = c19973a;
            this.f66325f = C19970u.m1229a(nameResolver, classProto.f63865c);
            C18702a.C18715b.EnumC18718b mo3059b = C18808b.f64284e.mo3059b(classProto.f63864b);
            this.f66326g = mo3059b == null ? C18702a.C18715b.EnumC18718b.CLASS : mo3059b;
            Boolean mo3059b2 = C18808b.f64285f.mo3059b(classProto.f63864b);
            C18524p.m3843b(mo3059b2, "IS_INNER.get(classProto.flags)");
            this.f66327h = mo3059b2.booleanValue();
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.AbstractC19972w
        /* renamed from: a */
        public final C18961b mo1226a() {
            C18961b m2748f = this.f66325f.m2748f();
            C18524p.m3843b(m2748f, "classId.asSingleFqName()");
            return m2748f;
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.serialization.deserialization.w$b */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/w$b.class */
    public static final class C19974b extends AbstractC19972w {

        /* renamed from: d */
        private final C18961b f66328d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C19974b(C18961b fqName, AbstractC18813c nameResolver, C18818g typeTable, AbstractC19026at abstractC19026at) {
            super(nameResolver, typeTable, abstractC19026at, null);
            C18524p.m3840d(fqName, "fqName");
            C18524p.m3840d(nameResolver, "nameResolver");
            C18524p.m3840d(typeTable, "typeTable");
            this.f66328d = fqName;
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.AbstractC19972w
        /* renamed from: a */
        public final C18961b mo1226a() {
            return this.f66328d;
        }
    }

    private AbstractC19972w(AbstractC18813c abstractC18813c, C18818g c18818g, AbstractC19026at abstractC19026at) {
        this.f66320a = abstractC18813c;
        this.f66321b = c18818g;
        this.f66322c = abstractC19026at;
    }

    public /* synthetic */ AbstractC19972w(AbstractC18813c abstractC18813c, C18818g c18818g, AbstractC19026at abstractC19026at, DefaultConstructorMarker defaultConstructorMarker) {
        this(abstractC18813c, c18818g, abstractC19026at);
    }

    /* renamed from: a */
    public abstract C18961b mo1226a();

    public String toString() {
        return ((Object) getClass().getSimpleName()) + ": " + mo1226a();
    }
}
