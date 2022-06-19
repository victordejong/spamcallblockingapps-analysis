package p193e.p194a.p1146q2;

import android.os.Bundle;
import com.razorpay.AnalyticsConstants;
import java.util.Set;
import org.apache.avro.generic.GenericRecord;
import s1.z.c.f;
import s1.z.c.l;
/* renamed from: e.a.q2.x */
/* loaded from: classes4-dex2jar.jar:e/a/q2/x.class */
public abstract class AbstractC19580x {

    /* renamed from: e.a.q2.x$a */
    /* loaded from: classes4-dex2jar.jar:e/a/q2/x$a.class */
    public static final class C19581a extends AbstractC19580x {

        /* renamed from: a */
        public final AbstractC19502g f54425a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C19581a(AbstractC19502g abstractC19502g) {
            super(null);
            l.e(abstractC19502g, "record");
            this.f54425a = abstractC19502g;
        }
    }

    /* renamed from: e.a.q2.x$b */
    /* loaded from: classes4-dex2jar.jar:e/a/q2/x$b.class */
    public static final class C19582b extends AbstractC19580x {

        /* renamed from: a */
        public final String f54426a;

        /* renamed from: b */
        public final Bundle f54427b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C19582b(String str, Bundle bundle) {
            super(null);
            l.e(str, AnalyticsConstants.NAME);
            this.f54426a = str;
            this.f54427b = bundle;
        }
    }

    /* renamed from: e.a.q2.x$c */
    /* loaded from: classes4-dex2jar.jar:e/a/q2/x$c.class */
    public static final class C19583c extends AbstractC19580x {

        /* renamed from: a */
        public static final C19583c f54428a = new C19583c();

        public C19583c() {
            super(null);
        }
    }

    /* renamed from: e.a.q2.x$d */
    /* loaded from: classes4-dex2jar.jar:e/a/q2/x$d.class */
    public static final class C19584d<T extends GenericRecord> extends AbstractC19580x {

        /* renamed from: a */
        public final T f54429a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C19584d(T t) {
            super(null);
            l.e(t, "record");
            this.f54429a = t;
        }
    }

    /* renamed from: e.a.q2.x$e */
    /* loaded from: classes4-dex2jar.jar:e/a/q2/x$e.class */
    public static final class C19585e extends AbstractC19580x {

        /* renamed from: a */
        public final Set<AbstractC19580x> f54430a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public C19585e(Set<? extends AbstractC19580x> set) {
            super(null);
            l.e(set, "specs");
            this.f54430a = set;
        }
    }

    public AbstractC19580x() {
    }

    public AbstractC19580x(f fVar) {
    }
}
