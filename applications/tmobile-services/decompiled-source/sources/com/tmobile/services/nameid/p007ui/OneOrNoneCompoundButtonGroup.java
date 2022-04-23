package com.tmobile.services.nameid.p007ui;

import android.widget.CompoundButton;
import androidx.annotation.IdRes;
/* renamed from: com.tmobile.services.nameid.ui.OneOrNoneCompoundButtonGroup */
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/ui/OneOrNoneCompoundButtonGroup.class */
public class OneOrNoneCompoundButtonGroup implements CompoundButton.OnCheckedChangeListener {

    /* renamed from: f */
    private CompoundButton[] f13846f;

    /* renamed from: g */
    private boolean f13847g;

    /* renamed from: h */
    private ButtonGroupListener f13848h;

    /* renamed from: com.tmobile.services.nameid.ui.OneOrNoneCompoundButtonGroup$ButtonGroupListener */
    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/ui/OneOrNoneCompoundButtonGroup$ButtonGroupListener.class */
    public interface ButtonGroupListener {
        /* renamed from: a */
        void mo5619a(@IdRes int i);
    }

    /* renamed from: b */
    private void m6253b() {
        if (this.f13848h != null) {
            this.f13848h.mo5619a(m6254a());
        }
    }

    /* renamed from: c */
    private void m6252c(CompoundButton compoundButton) {
        CompoundButton[] compoundButtonArr;
        this.f13847g = true;
        for (CompoundButton compoundButton2 : this.f13846f) {
            if (compoundButton2 != compoundButton) {
                compoundButton2.setChecked(false);
            }
        }
        this.f13847g = false;
    }

    @IdRes
    /* renamed from: a */
    public int m6254a() {
        CompoundButton[] compoundButtonArr;
        for (CompoundButton compoundButton : this.f13846f) {
            if (compoundButton.isChecked()) {
                return compoundButton.getId();
            }
        }
        return -1;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        if (!this.f13847g && z) {
            m6252c(compoundButton);
        }
        m6253b();
    }
}
