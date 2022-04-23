package com.android.contacts.list;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.android.contacts.q;
/* loaded from: classes-dex2jar.jar:com/android/contacts/list/ContactTileFrequentFragment.class */
public class ContactTileFrequentFragment extends ContactTileListFragment {
    @Override // com.android.contacts.list.ContactTileListFragment, android.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View a2 = a(layoutInflater, viewGroup, 2131427486);
        ((ViewGroup) a2.findViewById(2131296926)).addView(q.a(getActivity(), 2131755652));
        return a2;
    }
}
