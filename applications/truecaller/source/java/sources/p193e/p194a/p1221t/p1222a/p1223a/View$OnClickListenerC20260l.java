package p193e.p194a.p1221t.p1222a.p1223a;

import android.view.View;
import com.truecaller.android.truemoji.gifs.GifView;
import s1.s;
import s1.z.b.a;
import s1.z.c.l;
/* renamed from: e.a.t.a.a.l */
/* loaded from: classes5-dex2jar.jar:e/a/t/a/a/l.class */
public final class View$OnClickListenerC20260l implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ GifView f57033a;

    public View$OnClickListenerC20260l(GifView gifView) {
        this.f57033a = gifView;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        a<s> aVar;
        GifView gifView = this.f57033a;
        EnumC20266r enumC20266r = gifView.f10055b;
        if (enumC20266r == null) {
            l.l("state");
            throw null;
        } else if (enumC20266r != EnumC20266r.NO_INTERNET || (aVar = gifView.f10054a) == null) {
        } else {
            if (aVar != null) {
                aVar.invoke();
            } else {
                l.l("onNoInternetClicked");
                throw null;
            }
        }
    }
}
