package p193e.p194a.p195a.p223c1;

import com.truecaller.messaging.data.types.Draft;
import com.truecaller.messaging.data.types.Message;
import java.util.List;
import s1.k;
import s1.z.c.f;
import s1.z.c.l;
/* renamed from: e.a.a.c1.c */
/* loaded from: classes7-dex2jar.jar:e/a/a/c1/c.class */
public abstract class AbstractC5851c {

    /* renamed from: e.a.a.c1.c$a */
    /* loaded from: classes7-dex2jar.jar:e/a/a/c1/c$a.class */
    public static final class C5852a extends AbstractC5851c {

        /* renamed from: a */
        public final List<Draft> f19597a;

        /* renamed from: b */
        public final Draft f19598b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5852a(List<Draft> list, Draft draft) {
            super(null);
            l.e(list, "failedDrafts");
            l.e(draft, "failedDraft");
            this.f19597a = list;
            this.f19598b = draft;
        }
    }

    /* renamed from: e.a.a.c1.c$b */
    /* loaded from: classes7-dex2jar.jar:e/a/a/c1/c$b.class */
    public static final class C5853b extends AbstractC5851c {

        /* renamed from: a */
        public final List<k<Draft, Message>> f19599a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5853b(List<k<Draft, Message>> list) {
            super(null);
            l.e(list, "draftsMessagesList");
            this.f19599a = list;
        }
    }

    public AbstractC5851c() {
    }

    public AbstractC5851c(f fVar) {
    }
}
