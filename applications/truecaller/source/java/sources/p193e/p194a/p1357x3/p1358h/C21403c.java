package p193e.p194a.p1357x3.p1358h;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.truecaller.forcedupdate.UpdateType;
import com.truecaller.forcedupdate.p167ui.C3993R;
/* renamed from: e.a.x3.h.c */
/* loaded from: classes9-dex2jar.jar:e/a/x3/h/c.class */
public class C21403c extends View$OnClickListenerC21407e {
    @Override // p193e.p194a.p1357x3.p1358h.View$OnClickListenerC21407e
    /* renamed from: QA */
    public int mo9762QA() {
        return 17170445;
    }

    @Override // p193e.p194a.p1357x3.p1358h.View$OnClickListenerC21407e
    /* renamed from: RA */
    public int mo9761RA() {
        int ordinal = this.f59872e.ordinal();
        if (ordinal != 2) {
            if (ordinal == 3) {
                return C3993R.C3994drawable.fu_img_discontinued_small;
            }
            return 0;
        }
        return C3993R.C3994drawable.fu_img_required_small;
    }

    @Override // p193e.p194a.p1357x3.p1358h.View$OnClickListenerC21407e, android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == C3993R.C3995id.spacer) {
            getActivity().finish();
        } else {
            super.onClick(view);
        }
    }

    @Override // p193e.p194a.p1357x3.p1358h.View$OnClickListenerC21407e
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(C3993R.layout.fu_update_compact, viewGroup, false);
    }

    @Override // p193e.p194a.p1357x3.p1358h.View$OnClickListenerC21407e
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        if (this.f59872e == UpdateType.DISCONTINUED) {
            this.f59873f.setCardBackgroundColor(getResources().getColor(C3993R.color.fu_grey_dark));
        }
        view.findViewById(C3993R.C3995id.spacer).setOnClickListener(this);
    }
}
