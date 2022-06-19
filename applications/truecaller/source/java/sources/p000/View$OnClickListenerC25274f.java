package p000;

import android.view.View;
import com.truecaller.videocallerid.p187ui.manageincomingvideo.managepreferences.ManagePreferencesView;
import com.truecaller.videocallerid.utils.ReceiveVideoPreferences;
import p193e.p194a.p947k.p948a.p954e.p957m.C15688f;
/* renamed from: f */
/* loaded from: classes2-dex2jar.jar:f.class */
public final class View$OnClickListenerC25274f implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ int f70707a;

    /* renamed from: b */
    public final /* synthetic */ Object f70708b;

    public View$OnClickListenerC25274f(int i, Object obj) {
        this.f70707a = i;
        this.f70708b = obj;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i = this.f70707a;
        if (i == 0) {
            ((C15688f) ((ManagePreferencesView) this.f70708b).getPresenter$video_caller_id_release()).m18513Hj(ReceiveVideoPreferences.Everyone, true);
        } else if (i == 1) {
            ((C15688f) ((ManagePreferencesView) this.f70708b).getPresenter$video_caller_id_release()).m18513Hj(ReceiveVideoPreferences.Contacts, true);
        } else if (i != 2) {
            throw null;
        } else {
            ((C15688f) ((ManagePreferencesView) this.f70708b).getPresenter$video_caller_id_release()).m18513Hj(ReceiveVideoPreferences.NoOne, true);
        }
    }
}
