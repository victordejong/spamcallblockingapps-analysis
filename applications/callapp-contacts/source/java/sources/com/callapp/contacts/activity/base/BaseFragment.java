package com.callapp.contacts.activity.base;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/base/BaseFragment.class */
public abstract class BaseFragment extends Fragment {
    protected abstract int getLayoutResourceId();

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(getLayoutResourceId(), viewGroup, false);
    }
}
