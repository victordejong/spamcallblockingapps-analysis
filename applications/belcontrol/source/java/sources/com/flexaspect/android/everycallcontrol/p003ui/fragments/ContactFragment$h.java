package com.flexaspect.android.everycallcontrol.p003ui.fragments;

import android.view.View;
import p000.a81;
/* renamed from: com.flexaspect.android.everycallcontrol.ui.fragments.ContactFragment$h */
/* loaded from: classes-dex2jar.jar:com/flexaspect/android/everycallcontrol/ui/fragments/ContactFragment$h.class */
public class ContactFragment$h implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ a81.C0018a f2932a;

    /* renamed from: b */
    public final /* synthetic */ boolean f2933b;

    /* renamed from: c */
    public final /* synthetic */ ContactFragment f2934c;

    public ContactFragment$h(ContactFragment contactFragment, a81.C0018a c0018a, boolean z) {
        this.f2934c = contactFragment;
        this.f2932a = c0018a;
        this.f2933b = z;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        ContactFragment.x(this.f2934c, this.f2932a.m7321a(), this.f2933b);
    }
}
