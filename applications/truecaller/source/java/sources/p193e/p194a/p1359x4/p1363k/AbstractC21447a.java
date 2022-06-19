package p193e.p194a.p1359x4.p1363k;

import com.truecaller.api.services.searchwarnings.p141v1.models.SupernovaStatus;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.f;
import s1.z.c.l;
/* renamed from: e.a.x4.k.a */
/* loaded from: classes13-dex2jar.jar:e/a/x4/k/a.class */
public abstract class AbstractC21447a {

    /* renamed from: e.a.x4.k.a$a */
    /* loaded from: classes13-dex2jar.jar:e/a/x4/k/a$a.class */
    public static final class C21448a extends AbstractC21447a {

        /* renamed from: a */
        public static final C21448a f59934a = new C21448a();

        public C21448a() {
            super(null);
        }
    }

    /* renamed from: e.a.x4.k.a$b */
    /* loaded from: classes13-dex2jar.jar:e/a/x4/k/a$b.class */
    public static final class C21449b extends AbstractC21447a {

        /* renamed from: a */
        public final Exception f59935a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C21449b(Exception exc) {
            super(null);
            l.e(exc, "exception");
            this.f59935a = exc;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                return (obj instanceof C21449b) && l.a(this.f59935a, ((C21449b) obj).f59935a);
            }
            return true;
        }

        public int hashCode() {
            Exception exc = this.f59935a;
            return exc != null ? exc.hashCode() : 0;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("NetworkFail(exception=");
            m8728C.append(this.f59935a);
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    /* renamed from: e.a.x4.k.a$c */
    /* loaded from: classes13-dex2jar.jar:e/a/x4/k/a$c.class */
    public static final class C21450c extends AbstractC21447a {

        /* renamed from: a */
        public final SupernovaStatus f59936a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C21450c(SupernovaStatus supernovaStatus) {
            super(null);
            l.e(supernovaStatus, "supernovaStatus");
            this.f59936a = supernovaStatus;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                return (obj instanceof C21450c) && l.a(this.f59936a, ((C21450c) obj).f59936a);
            }
            return true;
        }

        public int hashCode() {
            SupernovaStatus supernovaStatus = this.f59936a;
            return supernovaStatus != null ? supernovaStatus.hashCode() : 0;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("Ok(supernovaStatus=");
            m8728C.append(this.f59936a);
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    public AbstractC21447a() {
    }

    public AbstractC21447a(f fVar) {
    }
}
