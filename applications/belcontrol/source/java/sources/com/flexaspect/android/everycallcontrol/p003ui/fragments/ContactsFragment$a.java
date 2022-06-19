package com.flexaspect.android.everycallcontrol.p003ui.fragments;

import android.view.MotionEvent;
import android.view.View;
import p000.sb1;
/* renamed from: com.flexaspect.android.everycallcontrol.ui.fragments.ContactsFragment$a */
/* loaded from: classes-dex2jar.jar:com/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$a.class */
public class ContactsFragment$a implements View.OnTouchListener {

    /* renamed from: a */
    public final /* synthetic */ int f2973a;

    /* renamed from: b */
    public final /* synthetic */ ContactsFragment f2974b;

    public ContactsFragment$a(ContactsFragment contactsFragment, int i) {
        this.f2974b = contactsFragment;
        this.f2973a = i;
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        if (motionEvent.getAction() != 1 || motionEvent.getRawX() < ContactsFragment.Z(this.f2974b).getRight() - this.f2973a) {
            return false;
        }
        this.f2974b.g(sb1.EnumC1653c.BTN_PLUS);
        return true;
    }
}
