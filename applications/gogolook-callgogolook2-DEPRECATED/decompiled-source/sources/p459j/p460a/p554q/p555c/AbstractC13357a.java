package p459j.p460a.p554q.p555c;

import kotlin.Metadata;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\"\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\b6\u0018��2\u00020\u0001:\u0005\u0003\u0004\u0005\u0006\u0007B\u0007\b\u0002¢\u0006\u0002\u0010\u0002\u0082\u0001\u0005\b\t\n\u000b\f¨\u0006\r"}, m815d2 = {"Lgogolook/callgogolook2/debug_tool/data/EditDataType;", "", "()V", "BooleanType", "IntType", "LongType", "StringType", "UnknownType", "Lgogolook/callgogolook2/debug_tool/data/EditDataType$IntType;", "Lgogolook/callgogolook2/debug_tool/data/EditDataType$StringType;", "Lgogolook/callgogolook2/debug_tool/data/EditDataType$LongType;", "Lgogolook/callgogolook2/debug_tool/data/EditDataType$BooleanType;", "Lgogolook/callgogolook2/debug_tool/data/EditDataType$UnknownType;", "whoscall_core_debugTool_release"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.q.c.a */
/* loaded from: classes2-dex2jar.jar:j/a/q/c/a.class */
public abstract class AbstractC13357a {

    /* renamed from: j.a.q.c.a$a */
    /* loaded from: classes2-dex2jar.jar:j/a/q/c/a$a.class */
    public static final class C13358a extends AbstractC13357a {

        /* renamed from: a */
        public final boolean f30083a;

        public C13358a(boolean z) {
            super(null);
            this.f30083a = z;
        }

        /* renamed from: a */
        public final boolean m4132a() {
            return this.f30083a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C13358a)) {
                return false;
            }
            return this.f30083a == ((C13358a) obj).f30083a;
        }

        public int hashCode() {
            boolean z = this.f30083a;
            boolean z2 = z;
            if (z) {
                z2 = true;
            }
            int i = z2 ? 1 : 0;
            int i2 = z2 ? 1 : 0;
            return i;
        }

        public String toString() {
            return "BooleanType(v=" + this.f30083a + ")";
        }
    }

    /* renamed from: j.a.q.c.a$b */
    /* loaded from: classes2-dex2jar.jar:j/a/q/c/a$b.class */
    public static final class C13359b extends AbstractC13357a {

        /* renamed from: a */
        public final int f30084a;

        public C13359b(int i) {
            super(null);
            this.f30084a = i;
        }

        /* renamed from: a */
        public final int m4131a() {
            return this.f30084a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C13359b)) {
                return false;
            }
            return this.f30084a == ((C13359b) obj).f30084a;
        }

        public int hashCode() {
            return this.f30084a;
        }

        public String toString() {
            return "IntType(v=" + this.f30084a + ")";
        }
    }

    /* renamed from: j.a.q.c.a$c */
    /* loaded from: classes2-dex2jar.jar:j/a/q/c/a$c.class */
    public static final class C13360c extends AbstractC13357a {

        /* renamed from: a */
        public final long f30085a;

        public C13360c(long j) {
            super(null);
            this.f30085a = j;
        }

        /* renamed from: a */
        public final long m4130a() {
            return this.f30085a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C13360c)) {
                return false;
            }
            return (this.f30085a > ((C13360c) obj).f30085a ? 1 : (this.f30085a == ((C13360c) obj).f30085a ? 0 : -1)) == 0;
        }

        public int hashCode() {
            long j = this.f30085a;
            return (int) (j ^ (j >>> 32));
        }

        public String toString() {
            return "LongType(v=" + this.f30085a + ")";
        }
    }

    /* renamed from: j.a.q.c.a$d */
    /* loaded from: classes2-dex2jar.jar:j/a/q/c/a$d.class */
    public static final class C13361d extends AbstractC13357a {

        /* renamed from: a */
        public final String f30086a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13361d(String str) {
            super(null);
            C15149k.m377b(str, "v");
            this.f30086a = str;
        }

        /* renamed from: a */
        public final String m4129a() {
            return this.f30086a;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                return (obj instanceof C13361d) && C15149k.m384a((Object) this.f30086a, (Object) ((C13361d) obj).f30086a);
            }
            return true;
        }

        public int hashCode() {
            String str = this.f30086a;
            return str != null ? str.hashCode() : 0;
        }

        public String toString() {
            return "StringType(v=" + this.f30086a + ")";
        }
    }

    /* renamed from: j.a.q.c.a$e */
    /* loaded from: classes2-dex2jar.jar:j/a/q/c/a$e.class */
    public static final class C13362e extends AbstractC13357a {

        /* renamed from: a */
        public final Object f30087a;

        public C13362e(Object obj) {
            super(null);
            this.f30087a = obj;
        }

        /* renamed from: a */
        public final Object m4128a() {
            return this.f30087a;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                return (obj instanceof C13362e) && C15149k.m384a(this.f30087a, ((C13362e) obj).f30087a);
            }
            return true;
        }

        public int hashCode() {
            Object obj = this.f30087a;
            return obj != null ? obj.hashCode() : 0;
        }

        public String toString() {
            return "UnknownType(v=" + this.f30087a + ")";
        }
    }

    public AbstractC13357a() {
    }

    public /* synthetic */ AbstractC13357a(C15145g gVar) {
        this();
    }
}
