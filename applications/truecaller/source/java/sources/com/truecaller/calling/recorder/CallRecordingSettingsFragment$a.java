package com.truecaller.calling.recorder;

import android.view.View;
import androidx.appcompat.widget.SwitchCompat;
/* loaded from: classes3-dex2jar.jar:com/truecaller/calling/recorder/CallRecordingSettingsFragment$a.class */
public final class CallRecordingSettingsFragment$a implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ int f10748a;

    /* renamed from: b */
    public final /* synthetic */ Object f10749b;

    public CallRecordingSettingsFragment$a(int i, Object obj) {
        this.f10748a = i;
        this.f10749b = obj;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i = this.f10748a;
        if (i == 0) {
            ((SwitchCompat) ((CallRecordingSettingsFragment) this.f10749b).g.getValue()).toggle();
        } else if (i != 1) {
            throw null;
        } else {
            ((SwitchCompat) ((CallRecordingSettingsFragment) this.f10749b).i.getValue()).toggle();
        }
    }
}
