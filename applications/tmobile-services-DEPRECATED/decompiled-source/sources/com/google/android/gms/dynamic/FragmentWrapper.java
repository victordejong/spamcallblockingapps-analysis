package com.google.android.gms.dynamic;

import android.annotation.SuppressLint;
import android.app.Fragment;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.dynamic.IFragmentWrapper;
@KeepForSdk
@SuppressLint({"NewApi"})
/* loaded from: classes-dex2jar.jar:com/google/android/gms/dynamic/FragmentWrapper.class */
public final class FragmentWrapper extends IFragmentWrapper.Stub {

    /* renamed from: a */
    private Fragment f7689a;

    private FragmentWrapper(Fragment fragment) {
        this.f7689a = fragment;
    }

    @KeepForSdk
    /* renamed from: c */
    public static FragmentWrapper m14261c(Fragment fragment) {
        if (fragment != null) {
            return new FragmentWrapper(fragment);
        }
        return null;
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    /* renamed from: B */
    public final boolean mo14254B() {
        return this.f7689a.isDetached();
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    /* renamed from: F */
    public final boolean mo14253F() {
        return this.f7689a.getRetainInstance();
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    /* renamed from: N0 */
    public final void mo14252N0(boolean z) {
        this.f7689a.setRetainInstance(z);
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    /* renamed from: Y */
    public final boolean mo14251Y() {
        return this.f7689a.isInLayout();
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    /* renamed from: e */
    public final IFragmentWrapper mo14249e() {
        return m14261c(this.f7689a.getParentFragment());
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    /* renamed from: g0 */
    public final void mo14248g0(IObjectWrapper iObjectWrapper) {
        this.f7689a.unregisterForContextMenu((View) ObjectWrapper.m14258c(iObjectWrapper));
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    public final int getId() {
        return this.f7689a.getId();
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    public final String getTag() {
        return this.f7689a.getTag();
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    public final boolean isVisible() {
        return this.f7689a.isVisible();
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    /* renamed from: j */
    public final IObjectWrapper mo14247j() {
        return ObjectWrapper.m14257f(this.f7689a.getResources());
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    /* renamed from: j0 */
    public final boolean mo14246j0() {
        return this.f7689a.isRemoving();
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    /* renamed from: k0 */
    public final boolean mo14245k0() {
        return this.f7689a.isResumed();
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    /* renamed from: l */
    public final IFragmentWrapper mo14244l() {
        return m14261c(this.f7689a.getTargetFragment());
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    /* renamed from: n0 */
    public final boolean mo14243n0() {
        return this.f7689a.isAdded();
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    /* renamed from: o */
    public final IObjectWrapper mo14242o() {
        return ObjectWrapper.m14257f(this.f7689a.getActivity());
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    /* renamed from: p */
    public final Bundle mo14241p() {
        return this.f7689a.getArguments();
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    /* renamed from: q */
    public final IObjectWrapper mo14240q() {
        return ObjectWrapper.m14257f(this.f7689a.getView());
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    /* renamed from: r */
    public final boolean mo14239r() {
        return this.f7689a.isHidden();
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    /* renamed from: s */
    public final void mo14238s(boolean z) {
        this.f7689a.setHasOptionsMenu(z);
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    public final void startActivityForResult(Intent intent, int i) {
        this.f7689a.startActivityForResult(intent, i);
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    /* renamed from: t */
    public final boolean mo14237t() {
        return this.f7689a.getUserVisibleHint();
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    /* renamed from: u */
    public final void mo14236u(boolean z) {
        this.f7689a.setUserVisibleHint(z);
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    /* renamed from: v */
    public final void mo14235v(Intent intent) {
        this.f7689a.startActivity(intent);
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    /* renamed from: w */
    public final void mo14234w(boolean z) {
        this.f7689a.setMenuVisibility(z);
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    /* renamed from: x0 */
    public final void mo14233x0(IObjectWrapper iObjectWrapper) {
        this.f7689a.registerForContextMenu((View) ObjectWrapper.m14258c(iObjectWrapper));
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    /* renamed from: y0 */
    public final int mo14232y0() {
        return this.f7689a.getTargetRequestCode();
    }
}
