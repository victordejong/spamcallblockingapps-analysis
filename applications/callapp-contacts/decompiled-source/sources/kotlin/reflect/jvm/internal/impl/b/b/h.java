package kotlin.reflect.jvm.internal.impl.b.b;

import io.objectbox.model.PropertyFlags;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.b.a;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/b/h.class */
public final class h {

    /* renamed from: a  reason: collision with root package name */
    public static final a f37153a = new a(null);

    /* renamed from: b  reason: collision with root package name */
    public final b f37154b;

    /* renamed from: c  reason: collision with root package name */
    public final a.u.c f37155c;

    /* renamed from: d  reason: collision with root package name */
    private final kotlin.a f37156d;
    private final Integer e;
    private final String f;

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/b/h$a.class */
    public static final class a {

        /* renamed from: kotlin.reflect.jvm.internal.impl.b.b.h$a$a  reason: collision with other inner class name */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/b/h$a$a.class */
        public final /* synthetic */ class C0656a {

            /* renamed from: a  reason: collision with root package name */
            public static final /* synthetic */ int[] f37157a;

            static {
                int[] iArr = new int[a.u.b.values().length];
                iArr[a.u.b.WARNING.ordinal()] = 1;
                iArr[a.u.b.ERROR.ordinal()] = 2;
                iArr[a.u.b.HIDDEN.ordinal()] = 3;
                f37157a = iArr;
            }
        }

        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX WARN: Removed duplicated region for block: B:40:0x0180  */
        /* JADX WARN: Removed duplicated region for block: B:48:0x01a2  */
        /* JADX WARN: Removed duplicated region for block: B:51:0x01ae  */
        /* JADX WARN: Removed duplicated region for block: B:52:0x01bb  */
        /* JADX WARN: Removed duplicated region for block: B:55:0x01c6  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static java.util.List<kotlin.reflect.jvm.internal.impl.b.b.h> a(kotlin.reflect.jvm.internal.impl.protobuf.p r8, kotlin.reflect.jvm.internal.impl.b.b.c r9, kotlin.reflect.jvm.internal.impl.b.b.i r10) {
            /*
                Method dump skipped, instructions count: 535
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.b.b.h.a.a(kotlin.reflect.jvm.internal.impl.protobuf.p, kotlin.reflect.jvm.internal.impl.b.b.c, kotlin.reflect.jvm.internal.impl.b.b.i):java.util.List");
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/b/h$b.class */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public static final a f37158a = new a(null);

        /* renamed from: b  reason: collision with root package name */
        public static final b f37159b = new b(PropertyFlags.INDEX_PARTIAL_SKIP_NULL, PropertyFlags.INDEX_PARTIAL_SKIP_NULL, PropertyFlags.INDEX_PARTIAL_SKIP_NULL);

        /* renamed from: c  reason: collision with root package name */
        private final int f37160c;

        /* renamed from: d  reason: collision with root package name */
        private final int f37161d;
        private final int e;

        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/b/h$b$a.class */
        public static final class a {
            private a() {
            }

            public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }
        }

        public b(int i, int i2, int i3) {
            this.f37160c = i;
            this.f37161d = i2;
            this.e = i3;
        }

        public /* synthetic */ b(int i, int i2, int i3, int i4, DefaultConstructorMarker defaultConstructorMarker) {
            this(i, i2, (i4 & 4) != 0 ? 0 : i3);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return this.f37160c == bVar.f37160c && this.f37161d == bVar.f37161d && this.e == bVar.e;
        }

        public final int hashCode() {
            return (((this.f37160c * 31) + this.f37161d) * 31) + this.e;
        }

        public final String toString() {
            StringBuilder sb;
            int i;
            if (this.e == 0) {
                sb = new StringBuilder();
                sb.append(this.f37160c);
                sb.append('.');
                i = this.f37161d;
            } else {
                sb = new StringBuilder();
                sb.append(this.f37160c);
                sb.append('.');
                sb.append(this.f37161d);
                sb.append('.');
                i = this.e;
            }
            sb.append(i);
            return sb.toString();
        }
    }

    public h(b version, a.u.c kind, kotlin.a level, Integer num, String str) {
        p.d(version, "version");
        p.d(kind, "kind");
        p.d(level, "level");
        this.f37154b = version;
        this.f37155c = kind;
        this.f37156d = level;
        this.e = num;
        this.f = str;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("since ");
        sb.append(this.f37154b);
        sb.append(' ');
        sb.append(this.f37156d);
        Integer num = this.e;
        String str = "";
        sb.append(num != null ? p.a(" error ", (Object) num) : "");
        String str2 = this.f;
        if (str2 != null) {
            str = p.a(": ", (Object) str2);
        }
        sb.append(str);
        return sb.toString();
    }
}
