package p193e.p194a.p195a.p200c.p202b;

import com.truecaller.data.entity.messaging.Participant;
import java.util.List;
import p193e.p194a.p1187r2.AbstractC19851d0;
/* renamed from: e.a.a.c.b.p */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/b/p.class */
public final class C5100p<R> implements AbstractC19851d0<List<? extends Participant>> {

    /* renamed from: a */
    public final /* synthetic */ C5101q f17472a;

    public C5100p(C5101q c5101q) {
        this.f17472a = c5101q;
    }

    @Override // p193e.p194a.p1187r2.AbstractC19851d0
    public void onResult(List<? extends Participant> list) {
        List<? extends Participant> list2 = list;
        if (list2 != null) {
            this.f17472a.f17473b.addAll(list2);
            C5101q c5101q = this.f17472a;
            c5101q.f17474c.addAll(list2);
            AbstractC5099o abstractC5099o = (AbstractC5099o) c5101q.f57683a;
            if (abstractC5099o == null) {
                return;
            }
            abstractC5099o.mo33834gh(c5101q.f17474c);
        }
    }
}
