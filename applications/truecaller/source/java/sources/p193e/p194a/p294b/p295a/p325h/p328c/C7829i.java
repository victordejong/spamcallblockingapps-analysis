package p193e.p194a.p294b.p295a.p325h.p328c;

import android.os.Bundle;
import com.truecaller.bizmon.C3478R;
import java.util.Objects;
import p193e.p194a.p294b.p295a.p308b.C7639a;
import s1.s;
import s1.z.b.l;
import s1.z.c.m;
/* renamed from: e.a.b.a.h.c.i */
/* loaded from: classes6-dex2jar.jar:e/a/b/a/h/c/i.class */
public final class C7829i extends m implements l<Boolean, s> {

    /* renamed from: b */
    public final /* synthetic */ View$OnClickListenerC7819a f24353b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C7829i(View$OnClickListenerC7819a view$OnClickListenerC7819a) {
        super(1);
        this.f24353b = view$OnClickListenerC7819a;
    }

    /* renamed from: d */
    public Object m29269d(Object obj) {
        boolean booleanValue = ((Boolean) obj).booleanValue();
        View$OnClickListenerC7819a view$OnClickListenerC7819a = this.f24353b;
        String str = View$OnClickListenerC7819a.f24338e;
        Objects.requireNonNull(view$OnClickListenerC7819a);
        if (booleanValue) {
            C7639a c7639a = new C7639a();
            Bundle bundle = new Bundle();
            bundle.putString("title", view$OnClickListenerC7819a.getString(C3478R.string.EditBizAddress_CancelTitle));
            bundle.putString("message", view$OnClickListenerC7819a.getString(C3478R.string.EditBizAddress_CancelMessage));
            c7639a.setArguments(bundle);
            c7639a.f24010a = view$OnClickListenerC7819a;
            c7639a.show(view$OnClickListenerC7819a.getChildFragmentManager(), c7639a.getTag());
        } else {
            n3.r.a.l activity = view$OnClickListenerC7819a.getActivity();
            if (activity != null) {
                activity.setResult(0);
            }
            n3.r.a.l activity2 = view$OnClickListenerC7819a.getActivity();
            if (activity2 != null) {
                activity2.finish();
            }
        }
        return s.a;
    }
}
