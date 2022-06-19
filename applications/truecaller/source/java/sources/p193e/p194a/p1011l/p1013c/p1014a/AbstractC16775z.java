package p193e.p194a.p1011l.p1013c.p1014a;

import com.huawei.hms.push.constant.RemoteMessageConst;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.f;
import s1.z.c.l;
/* renamed from: e.a.l.c.a.z */
/* loaded from: classes12-dex2jar.jar:e/a/l/c/a/z.class */
public abstract class AbstractC16775z {

    /* renamed from: e.a.l.c.a.z$a */
    /* loaded from: classes12-dex2jar.jar:e/a/l/c/a/z$a.class */
    public static final class C16776a extends AbstractC16775z {

        /* renamed from: a */
        public final String f47016a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16776a(String str) {
            super(null);
            l.e(str, RemoteMessageConst.Notification.TAG);
            this.f47016a = str;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                return (obj instanceof C16776a) && l.a(this.f47016a, ((C16776a) obj).f47016a);
            }
            return true;
        }

        public int hashCode() {
            String str = this.f47016a;
            return str != null ? str.hashCode() : 0;
        }

        public String toString() {
            return C22128a.m8618h(C22128a.m8728C("Dismiss(tag="), this.f47016a, ")");
        }
    }

    /* renamed from: e.a.l.c.a.z$b */
    /* loaded from: classes12-dex2jar.jar:e/a/l/c/a/z$b.class */
    public static final class C16777b extends AbstractC16775z {

        /* renamed from: a */
        public static final C16777b f47017a = new C16777b();

        public C16777b() {
            super(null);
        }
    }

    /* renamed from: e.a.l.c.a.z$c */
    /* loaded from: classes12-dex2jar.jar:e/a/l/c/a/z$c.class */
    public static final class C16778c extends AbstractC16775z {

        /* renamed from: a */
        public static final C16778c f47018a = new C16778c();

        public C16778c() {
            super(null);
        }
    }

    /* renamed from: e.a.l.c.a.z$d */
    /* loaded from: classes12-dex2jar.jar:e/a/l/c/a/z$d.class */
    public static final class C16779d extends AbstractC16775z {

        /* renamed from: a */
        public static final C16779d f47019a = new C16779d();

        public C16779d() {
            super(null);
        }
    }

    /* renamed from: e.a.l.c.a.z$e */
    /* loaded from: classes12-dex2jar.jar:e/a/l/c/a/z$e.class */
    public static final class C16780e extends AbstractC16775z {

        /* renamed from: a */
        public static final C16780e f47020a = new C16780e();

        public C16780e() {
            super(null);
        }
    }

    public AbstractC16775z() {
    }

    public AbstractC16775z(f fVar) {
    }
}
