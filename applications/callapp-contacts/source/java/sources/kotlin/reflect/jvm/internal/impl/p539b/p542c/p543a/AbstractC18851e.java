package kotlin.reflect.jvm.internal.impl.p539b.p542c.p543a;

import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
/* renamed from: kotlin.reflect.jvm.internal.impl.b.c.a.e */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/c/a/e.class */
public abstract class AbstractC18851e {

    /* renamed from: kotlin.reflect.jvm.internal.impl.b.c.a.e$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/c/a/e$a.class */
    public static final class C18852a extends AbstractC18851e {

        /* renamed from: a */
        public final String f64423a;

        /* renamed from: b */
        public final String f64424b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18852a(String name, String desc) {
            super(null);
            C18524p.m3840d(name, "name");
            C18524p.m3840d(desc, "desc");
            this.f64423a = name;
            this.f64424b = desc;
        }

        @Override // kotlin.reflect.jvm.internal.impl.p539b.p542c.p543a.AbstractC18851e
        /* renamed from: a */
        public final String mo2931a() {
            return this.f64423a;
        }

        @Override // kotlin.reflect.jvm.internal.impl.p539b.p542c.p543a.AbstractC18851e
        /* renamed from: b */
        public final String mo2930b() {
            return this.f64424b;
        }

        @Override // kotlin.reflect.jvm.internal.impl.p539b.p542c.p543a.AbstractC18851e
        /* renamed from: c */
        public final String mo2929c() {
            return this.f64423a + ':' + this.f64424b;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C18852a)) {
                return false;
            }
            C18852a c18852a = (C18852a) obj;
            return C18524p.m3850a((Object) this.f64423a, (Object) c18852a.f64423a) && C18524p.m3850a((Object) this.f64424b, (Object) c18852a.f64424b);
        }

        public final int hashCode() {
            return (this.f64423a.hashCode() * 31) + this.f64424b.hashCode();
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.b.c.a.e$b */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/c/a/e$b.class */
    public static final class C18853b extends AbstractC18851e {

        /* renamed from: a */
        public final String f64425a;

        /* renamed from: b */
        public final String f64426b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18853b(String name, String desc) {
            super(null);
            C18524p.m3840d(name, "name");
            C18524p.m3840d(desc, "desc");
            this.f64425a = name;
            this.f64426b = desc;
        }

        @Override // kotlin.reflect.jvm.internal.impl.p539b.p542c.p543a.AbstractC18851e
        /* renamed from: a */
        public final String mo2931a() {
            return this.f64425a;
        }

        @Override // kotlin.reflect.jvm.internal.impl.p539b.p542c.p543a.AbstractC18851e
        /* renamed from: b */
        public final String mo2930b() {
            return this.f64426b;
        }

        @Override // kotlin.reflect.jvm.internal.impl.p539b.p542c.p543a.AbstractC18851e
        /* renamed from: c */
        public final String mo2929c() {
            return C18524p.m3847a(this.f64425a, (Object) this.f64426b);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C18853b)) {
                return false;
            }
            C18853b c18853b = (C18853b) obj;
            return C18524p.m3850a((Object) this.f64425a, (Object) c18853b.f64425a) && C18524p.m3850a((Object) this.f64426b, (Object) c18853b.f64426b);
        }

        public final int hashCode() {
            return (this.f64425a.hashCode() * 31) + this.f64426b.hashCode();
        }
    }

    private AbstractC18851e() {
    }

    public /* synthetic */ AbstractC18851e(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    /* renamed from: a */
    public abstract String mo2931a();

    /* renamed from: b */
    public abstract String mo2930b();

    /* renamed from: c */
    public abstract String mo2929c();

    public final String toString() {
        return mo2929c();
    }
}
