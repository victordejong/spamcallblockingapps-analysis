package androidx.activity.result;

import androidx.activity.result.AbstractC0096c;
import androidx.activity.result.p006e.AbstractC0101a;
import androidx.lifecycle.AbstractC0795f;
import androidx.lifecycle.AbstractC0797h;
import androidx.lifecycle.Lifecycle;
/* loaded from: classes-dex2jar.jar:androidx/activity/result/ActivityResultRegistry$1.class */
class ActivityResultRegistry$1 implements AbstractC0795f {

    /* renamed from: d */
    final /* synthetic */ String f179d;

    /* renamed from: e */
    final /* synthetic */ AbstractC0094a f180e;

    /* renamed from: f */
    final /* synthetic */ AbstractC0101a f181f;

    /* renamed from: g */
    final /* synthetic */ AbstractC0096c f182g;

    @Override // androidx.lifecycle.AbstractC0795f
    /* renamed from: c */
    public void mo30701c(AbstractC0797h abstractC0797h, Lifecycle.Event event) {
        if (!Lifecycle.Event.ON_START.equals(event)) {
            if (Lifecycle.Event.ON_STOP.equals(event)) {
                this.f182g.f196f.remove(this.f179d);
                return;
            } else if (!Lifecycle.Event.ON_DESTROY.equals(event)) {
                return;
            } else {
                this.f182g.m35723k(this.f179d);
                return;
            }
        }
        this.f182g.f196f.put(this.f179d, new AbstractC0096c.C0098b<>(this.f180e, this.f181f));
        if (this.f182g.f197g.containsKey(this.f179d)) {
            Object obj = this.f182g.f197g.get(this.f179d);
            this.f182g.f197g.remove(this.f179d);
            this.f180e.mo32734a(obj);
        }
        ActivityResult activityResult = (ActivityResult) this.f182g.f198h.getParcelable(this.f179d);
        if (activityResult == null) {
            return;
        }
        this.f182g.f198h.remove(this.f179d);
        this.f180e.mo32734a(this.f181f.mo32731c(activityResult.m35747b(), activityResult.m35748a()));
    }
}
