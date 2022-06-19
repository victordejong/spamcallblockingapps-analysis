package p193e.p194a.p1365y.p1366a.p1371f;

import android.view.View;
import com.truecaller.flashsdk.C3909R;
import com.truecaller.flashsdk.p166ui.FlashButton;
import p193e.p194a.p1365y.p1366a.p1371f.C21494b;
import s1.z.c.l;
/* renamed from: e.a.y.a.f.a */
/* loaded from: classes9-dex2jar.jar:e/a/y/a/f/a.class */
public final class View$OnClickListenerC21493a implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ C21494b.C21495a f60028a;

    public View$OnClickListenerC21493a(C21494b.C21495a c21495a) {
        this.f60028a = c21495a;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        ((FlashButton) view.findViewById(C3909R.C3911id.flash_button)).onClick(view);
        AbstractC21501f abstractC21501f = this.f60028a.f60035d.f60030b;
        if (abstractC21501f != null) {
            abstractC21501f.mo9586Ja();
        } else {
            l.l("presenter");
            throw null;
        }
    }
}
