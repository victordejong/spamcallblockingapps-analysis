package com.flexaspect.android.everycallcontrol.p003ui.fragments;

import android.os.Bundle;
import android.view.View;
/* renamed from: com.flexaspect.android.everycallcontrol.ui.fragments.ContactFragment$f */
/* loaded from: classes-dex2jar.jar:com/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment$f.class */
public class ContactFragment$f implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ ContactFragment f2930a;

    public ContactFragment$f(ContactFragment contactFragment) {
        this.f2930a = contactFragment;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.f2930a.g.t(this, NewMessagesFragment.class, (Bundle) null, true, true);
    }
}
