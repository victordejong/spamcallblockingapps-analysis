package com.facebook.internal;

import android.app.Activity;
import android.app.Fragment;
import android.content.Intent;
/* loaded from: classes-dex2jar.jar:com/facebook/internal/FragmentWrapper.class */
public class FragmentWrapper {
    private Fragment nativeFragment;
    private androidx.fragment.app.Fragment supportFragment;

    public FragmentWrapper(Fragment fragment) {
        Validate.notNull(fragment, "fragment");
        this.nativeFragment = fragment;
    }

    public FragmentWrapper(androidx.fragment.app.Fragment fragment) {
        Validate.notNull(fragment, "fragment");
        this.supportFragment = fragment;
    }

    public final Activity getActivity() {
        androidx.fragment.app.Fragment fragment = this.supportFragment;
        return fragment != null ? fragment.getActivity() : this.nativeFragment.getActivity();
    }

    public Fragment getNativeFragment() {
        return this.nativeFragment;
    }

    public androidx.fragment.app.Fragment getSupportFragment() {
        return this.supportFragment;
    }

    public void startActivityForResult(Intent intent, int i) {
        androidx.fragment.app.Fragment fragment = this.supportFragment;
        if (fragment != null) {
            fragment.startActivityForResult(intent, i);
        } else {
            this.nativeFragment.startActivityForResult(intent, i);
        }
    }
}
