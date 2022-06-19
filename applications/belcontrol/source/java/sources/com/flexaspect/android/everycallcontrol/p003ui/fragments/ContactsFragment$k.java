package com.flexaspect.android.everycallcontrol.p003ui.fragments;

import p000.m91;
/* renamed from: com.flexaspect.android.everycallcontrol.ui.fragments.ContactsFragment$k */
/* loaded from: classes-dex2jar.jar:com/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$k.class */
public class ContactsFragment$k implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ m91.EnumC1470c f2996a;

    /* renamed from: b */
    public final /* synthetic */ ContactsFragment f2997b;

    public ContactsFragment$k(ContactsFragment contactsFragment, m91.EnumC1470c enumC1470c) {
        this.f2997b = contactsFragment;
        this.f2996a = enumC1470c;
    }

    @Override // java.lang.Runnable
    public void run() {
        m91.EnumC1470c enumC1470c = this.f2996a;
        if (enumC1470c == m91.EnumC1470c.DATA_SYNC_BEGIN) {
            this.f2997b.m630v().m588n(true);
            return;
        }
        if (enumC1470c == m91.EnumC1470c.DATA_SYNC_FINISH) {
            this.f2997b.m630v().m588n(false);
        }
        ContactsFragment.F(this.f2997b, true);
        ContactsFragment.G(this.f2997b);
    }
}
