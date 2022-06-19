package kotlin.reflect.jvm.internal.impl.p539b.p541b;

import io.objectbox.model.PropertyFlags;
import kotlin.EnumC18224a;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.jvm.internal.impl.p539b.C18702a;
/* renamed from: kotlin.reflect.jvm.internal.impl.b.b.h */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/b/h.class */
public final class C18819h {

    /* renamed from: a */
    public static final C18820a f64313a = new C18820a(null);

    /* renamed from: b */
    public final C18822b f64314b;

    /* renamed from: c */
    public final C18702a.C18790u.EnumC18795c f64315c;

    /* renamed from: d */
    private final EnumC18224a f64316d;

    /* renamed from: e */
    private final Integer f64317e;

    /* renamed from: f */
    private final String f64318f;

    /* renamed from: kotlin.reflect.jvm.internal.impl.b.b.h$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/b/h$a.class */
    public static final class C18820a {

        /* renamed from: kotlin.reflect.jvm.internal.impl.b.b.h$a$a */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/b/h$a$a.class */
        public final /* synthetic */ class C18821a {

            /* renamed from: a */
            public static final /* synthetic */ int[] f64319a;

            static {
                int[] iArr = new int[C18702a.C18790u.EnumC18793b.values().length];
                iArr[C18702a.C18790u.EnumC18793b.WARNING.ordinal()] = 1;
                iArr[C18702a.C18790u.EnumC18793b.ERROR.ordinal()] = 2;
                iArr[C18702a.C18790u.EnumC18793b.HIDDEN.ordinal()] = 3;
                f64319a = iArr;
            }
        }

        private C18820a() {
        }

        public /* synthetic */ C18820a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX WARN: Removed duplicated region for block: B:40:0x0180  */
        /* JADX WARN: Removed duplicated region for block: B:48:0x01a2  */
        /* JADX WARN: Removed duplicated region for block: B:51:0x01ae  */
        /* JADX WARN: Removed duplicated region for block: B:52:0x01bb  */
        /* JADX WARN: Removed duplicated region for block: B:55:0x01c6  */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static java.util.List<kotlin.reflect.jvm.internal.impl.p539b.p541b.C18819h> m3042a(kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p r8, kotlin.reflect.jvm.internal.impl.p539b.p541b.AbstractC18813c r9, kotlin.reflect.jvm.internal.impl.p539b.p541b.C18824i r10) {
            /*
                Method dump skipped, instructions count: 535
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.p539b.p541b.C18819h.C18820a.m3042a(kotlin.reflect.jvm.internal.impl.protobuf.p, kotlin.reflect.jvm.internal.impl.b.b.c, kotlin.reflect.jvm.internal.impl.b.b.i):java.util.List");
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.b.b.h$b */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/b/h$b.class */
    public static final class C18822b {

        /* renamed from: a */
        public static final C18823a f64320a = new C18823a(null);

        /* renamed from: b */
        public static final C18822b f64321b = new C18822b(PropertyFlags.INDEX_PARTIAL_SKIP_NULL, PropertyFlags.INDEX_PARTIAL_SKIP_NULL, PropertyFlags.INDEX_PARTIAL_SKIP_NULL);

        /* renamed from: c */
        private final int f64322c;

        /* renamed from: d */
        private final int f64323d;

        /* renamed from: e */
        private final int f64324e;

        /* renamed from: kotlin.reflect.jvm.internal.impl.b.b.h$b$a */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/b/h$b$a.class */
        public static final class C18823a {
            private C18823a() {
            }

            public /* synthetic */ C18823a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }
        }

        public C18822b(int i, int i2, int i3) {
            this.f64322c = i;
            this.f64323d = i2;
            this.f64324e = i3;
        }

        public /* synthetic */ C18822b(int i, int i2, int i3, int i4, DefaultConstructorMarker defaultConstructorMarker) {
            this(i, i2, (i4 & 4) != 0 ? 0 : i3);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C18822b)) {
                return false;
            }
            C18822b c18822b = (C18822b) obj;
            return this.f64322c == c18822b.f64322c && this.f64323d == c18822b.f64323d && this.f64324e == c18822b.f64324e;
        }

        public final int hashCode() {
            return (((this.f64322c * 31) + this.f64323d) * 31) + this.f64324e;
        }

        public final String toString() {
            StringBuilder sb;
            int i;
            if (this.f64324e == 0) {
                sb = new StringBuilder();
                sb.append(this.f64322c);
                sb.append('.');
                i = this.f64323d;
            } else {
                sb = new StringBuilder();
                sb.append(this.f64322c);
                sb.append('.');
                sb.append(this.f64323d);
                sb.append('.');
                i = this.f64324e;
            }
            sb.append(i);
            return sb.toString();
        }
    }

    public C18819h(C18822b version, C18702a.C18790u.EnumC18795c kind, EnumC18224a level, Integer num, String str) {
        C18524p.m3840d(version, "version");
        C18524p.m3840d(kind, "kind");
        C18524p.m3840d(level, "level");
        this.f64314b = version;
        this.f64315c = kind;
        this.f64316d = level;
        this.f64317e = num;
        this.f64318f = str;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("since ");
        sb.append(this.f64314b);
        sb.append(' ');
        sb.append(this.f64316d);
        Integer num = this.f64317e;
        sb.append(num != null ? C18524p.m3847a(" error ", (Object) num) : "");
        String str = this.f64318f;
        String str2 = "";
        if (str != null) {
            str2 = C18524p.m3847a(": ", (Object) str);
        }
        sb.append(str2);
        return sb.toString();
    }
}
