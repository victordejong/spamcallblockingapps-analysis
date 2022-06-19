package com.flexaspect.android.everycallcontrol.p003ui.fragments;

import android.view.View;
import p000.a81;
/* renamed from: com.flexaspect.android.everycallcontrol.ui.fragments.ContactFragment$i */
/* loaded from: classes-dex2jar.jar:com/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment$i.class */
public class ContactFragment$i implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ a81.C0018a f2935a;

    /* renamed from: b */
    public final /* synthetic */ ContactFragment f2936b;

    public ContactFragment$i(ContactFragment contactFragment, a81.C0018a c0018a) {
        this.f2936b = contactFragment;
        this.f2935a = c0018a;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        ie1.m1578h(this.f2936b.g, this.f2935a.m7321a().toString());
    }
}
