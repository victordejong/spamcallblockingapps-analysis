package p193e.p194a.p195a.p224d.p225a;

import com.truecaller.data.entity.messaging.Participant;
import java.util.List;
import java.util.Objects;
import p193e.p194a.p1187r2.AbstractC19851d0;
/* renamed from: e.a.a.d.a.n */
/* loaded from: classes7-dex2jar.jar:e/a/a/d/a/n.class */
public final class C5899n<R> implements AbstractC19851d0<List<? extends Participant>> {

    /* renamed from: a */
    public final /* synthetic */ C5893m f19702a;

    public C5899n(C5893m c5893m) {
        this.f19702a = c5893m;
    }

    @Override // p193e.p194a.p1187r2.AbstractC19851d0
    public void onResult(List<? extends Participant> list) {
        Participant[] participantArr;
        List<? extends Participant> list2 = list;
        AbstractC5883e abstractC5883e = this.f19702a.f19685r;
        int i = 0;
        if (list2 != null) {
            Object[] array = list2.toArray(new Participant[0]);
            Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
            participantArr = (Participant[]) array;
        } else {
            participantArr = null;
        }
        abstractC5883e.f19656a = participantArr;
        AbstractC5885g abstractC5885g = (AbstractC5885g) this.f19702a.f57683a;
        if (abstractC5885g != null) {
            if (list2 != null) {
                i = list2.size();
            }
            abstractC5885g.mo32304F3(i);
            abstractC5885g.mo32292c0();
        }
    }
}
