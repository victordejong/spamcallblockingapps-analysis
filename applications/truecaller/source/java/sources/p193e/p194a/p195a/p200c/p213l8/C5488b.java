package p193e.p194a.p195a.p200c.p213l8;

import com.truecaller.messaging.conversation.atttachmentPicker.AttachmentPicker;
import java.util.ArrayList;
import java.util.Objects;
import p193e.p194a.p1187r2.AbstractC19851d0;
import s1.u.i;
/* renamed from: e.a.a.c.l8.b */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/l8/b.class */
public final class C5488b<R> implements AbstractC19851d0<ArrayList<C5494g>> {

    /* renamed from: a */
    public final /* synthetic */ AttachmentPicker f18641a;

    public C5488b(AttachmentPicker attachmentPicker) {
        this.f18641a = attachmentPicker;
    }

    @Override // p193e.p194a.p1187r2.AbstractC19851d0
    public void onResult(ArrayList<C5494g> arrayList) {
        ArrayList<C5494g> arrayList2 = arrayList;
        if (arrayList2 != null) {
            this.f18641a.f13053j.addAll(arrayList2);
            Object[] array = i.r(this.f18641a.f13053j).toArray(new Object[0]);
            Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
            this.f18641a.f13053j.clear();
            i.c(this.f18641a.f13053j, array);
        }
        C5511r c5511r = this.f18641a.f13067x;
        if (c5511r != null) {
            c5511r.notifyDataSetChanged();
        }
    }
}
