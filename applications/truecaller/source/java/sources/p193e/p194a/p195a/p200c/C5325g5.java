package p193e.p194a.p195a.p200c;

import com.truecaller.C2752R;
import java.util.ArrayList;
import p193e.p194a.p1187r2.AbstractC19851d0;
/* renamed from: e.a.a.c.g5 */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/g5.class */
public final class C5325g5<R> implements AbstractC19851d0<Boolean> {

    /* renamed from: a */
    public final /* synthetic */ C5240e5 f18254a;

    /* renamed from: b */
    public final /* synthetic */ ArrayList f18255b;

    public C5325g5(C5240e5 c5240e5, ArrayList arrayList) {
        this.f18254a = c5240e5;
        this.f18255b = arrayList;
    }

    @Override // p193e.p194a.p1187r2.AbstractC19851d0
    public void onResult(Boolean bool) {
        Boolean bool2 = bool;
        if (bool2 == null || !bool2.booleanValue()) {
            AbstractC5444k5 abstractC5444k5 = (AbstractC5444k5) this.f18254a.f57683a;
            if (abstractC5444k5 == null) {
                return;
            }
            abstractC5444k5.mo32353a(C2752R.string.ConversationFileNoLongerAvailable);
            return;
        }
        C5240e5 c5240e5 = this.f18254a;
        AbstractC5444k5 abstractC5444k52 = (AbstractC5444k5) c5240e5.f57683a;
        if (abstractC5444k52 == null) {
            return;
        }
        abstractC5444k52.mo32556D8(this.f18255b, c5240e5.f17963A);
    }
}
