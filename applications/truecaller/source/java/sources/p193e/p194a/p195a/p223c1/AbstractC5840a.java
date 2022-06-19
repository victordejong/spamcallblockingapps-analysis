package p193e.p194a.p195a.p223c1;

import com.truecaller.messaging.data.types.Draft;
import com.truecaller.messaging.data.types.Message;
import java.util.List;
import s1.k;
import s1.z.c.f;
import s1.z.c.l;
/* renamed from: e.a.a.c1.a */
/* loaded from: classes7-dex2jar.jar:e/a/a/c1/a.class */
public abstract class AbstractC5840a {

    /* renamed from: e.a.a.c1.a$a */
    /* loaded from: classes7-dex2jar.jar:e/a/a/c1/a$a.class */
    public static final class C5841a extends AbstractC5840a {

        /* renamed from: a */
        public final List<k<Draft, Message>> f19584a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5841a(List<k<Draft, Message>> list) {
            super(null);
            l.e(list, "draftsMessagesList");
            this.f19584a = list;
        }
    }

    /* renamed from: e.a.a.c1.a$b */
    /* loaded from: classes7-dex2jar.jar:e/a/a/c1/a$b.class */
    public static final class C5842b extends AbstractC5840a {

        /* renamed from: a */
        public final List<Draft> f19585a;

        /* renamed from: b */
        public final Draft f19586b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5842b(List<Draft> list, Draft draft) {
            super(null);
            l.e(list, "failedDrafts");
            l.e(draft, "failedDraft");
            this.f19585a = list;
            this.f19586b = draft;
        }
    }

    public AbstractC5840a() {
    }

    public AbstractC5840a(f fVar) {
    }
}
