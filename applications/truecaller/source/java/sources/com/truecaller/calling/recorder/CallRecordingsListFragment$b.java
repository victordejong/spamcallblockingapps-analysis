package com.truecaller.calling.recorder;

import android.view.View;
import androidx.appcompat.widget.SwitchCompat;
/* loaded from: classes3-dex2jar.jar:com/truecaller/calling/recorder/CallRecordingsListFragment$b.class */
public final class CallRecordingsListFragment$b implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ int f10754a;

    /* renamed from: b */
    public final /* synthetic */ Object f10755b;

    public CallRecordingsListFragment$b(int i, Object obj) {
        this.f10754a = i;
        this.f10755b = obj;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i = this.f10754a;
        if (i == 0) {
            ((CallRecordingsListFragment) this.f10755b).iB().Qx();
        } else if (i == 1) {
            ((SwitchCompat) ((CallRecordingsListFragment) this.f10755b).A.getValue()).toggle();
        } else if (i == 2) {
            ((CallRecordingsListFragment) this.f10755b).iB().hA();
        } else if (i == 3) {
            ((CallRecordingsListFragment) this.f10755b).iB().hA();
        } else if (i != 4) {
            throw null;
        } else {
            ((CallRecordingsListFragment) this.f10755b).iB().Pm();
        }
    }
}
