package p193e.p194a.p294b.p295a.p325h.p328c;

import android.content.Intent;
import com.truecaller.profile.data.dto.businessV2.LocationDetail;
import s1.s;
import s1.z.b.l;
import s1.z.c.m;
/* renamed from: e.a.b.a.h.c.h */
/* loaded from: classes6-dex2jar.jar:e/a/b/a/h/c/h.class */
public final class C7828h extends m implements l<LocationDetail, s> {

    /* renamed from: b */
    public final /* synthetic */ View$OnClickListenerC7819a f24352b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C7828h(View$OnClickListenerC7819a view$OnClickListenerC7819a) {
        super(1);
        this.f24352b = view$OnClickListenerC7819a;
    }

    /* renamed from: d */
    public Object m29270d(Object obj) {
        LocationDetail locationDetail = (LocationDetail) obj;
        s1.z.c.l.e(locationDetail, "it");
        Intent intent = new Intent();
        intent.putExtra("tagSelectionResultKey", locationDetail);
        n3.r.a.l activity = this.f24352b.getActivity();
        if (activity != null) {
            activity.setResult(-1, intent);
        }
        n3.r.a.l activity2 = this.f24352b.getActivity();
        if (activity2 != null) {
            activity2.finish();
        }
        return s.a;
    }
}
