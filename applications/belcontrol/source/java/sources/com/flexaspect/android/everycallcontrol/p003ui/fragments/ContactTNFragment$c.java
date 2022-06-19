package com.flexaspect.android.everycallcontrol.p003ui.fragments;

import android.widget.SeekBar;
/* renamed from: com.flexaspect.android.everycallcontrol.ui.fragments.ContactTNFragment$c */
/* loaded from: classes-dex2jar.jar:com/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$c.class */
public class ContactTNFragment$c implements SeekBar.OnSeekBarChangeListener {

    /* renamed from: a */
    public int f2950a = -1;

    /* renamed from: b */
    public final /* synthetic */ ContactTNFragment f2951b;

    public ContactTNFragment$c(ContactTNFragment contactTNFragment) {
        this.f2951b = contactTNFragment;
    }

    /* renamed from: a */
    public final int m4790a(int i) {
        return Math.round(i / 10.0f) * 10;
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
        int m4790a = m4790a(i);
        if (this.f2950a != m4790a) {
            this.f2950a = m4790a;
            ContactTNFragment.G(this.f2951b, m4790a);
        }
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onStartTrackingTouch(SeekBar seekBar) {
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onStopTrackingTouch(SeekBar seekBar) {
        if (seekBar == null) {
            return;
        }
        seekBar.setProgress(m4790a(seekBar.getProgress()));
    }
}
