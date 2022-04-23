package com.android.contacts.list;

import android.database.Cursor;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
/* loaded from: classes-dex2jar.jar:com/android/contacts/list/ao.class */
public final class ao extends p<o> {

    /* renamed from: a  reason: collision with root package name */
    public az f1786a;

    public ao() {
        this.n = false;
        x();
        f(true);
        this.q = 3;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.list.p
    public final View a(LayoutInflater layoutInflater) {
        return layoutInflater.inflate(2131427478, (ViewGroup) null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.list.p
    public final void a(int i) {
        this.f1786a.onPickEmailAddressAction(an.b((Cursor) ((an) this.t).getItem(i)));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.list.p
    public final void a(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        super.a(layoutInflater, viewGroup);
        g(!this.s);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.list.p
    public final o c() {
        an anVar = new an(getActivity(), 0L);
        anVar.X = true;
        anVar.p = true;
        return anVar;
    }
}
