package com.flexaspect.android.everycallcontrol.p003ui.fragments;

import android.os.Bundle;
import android.view.View;
/* renamed from: com.flexaspect.android.everycallcontrol.ui.fragments.ContactTNFragment$f */
/* loaded from: classes-dex2jar.jar:com/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$f.class */
public class ContactTNFragment$f implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ ContactTNFragment f2953a;

    public ContactTNFragment$f(ContactTNFragment contactTNFragment) {
        this.f2953a = contactTNFragment;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        ContactTNFragment.x(this.f2953a).t(this, NewMessagesFragment.class, (Bundle) null, true, true);
    }
}
