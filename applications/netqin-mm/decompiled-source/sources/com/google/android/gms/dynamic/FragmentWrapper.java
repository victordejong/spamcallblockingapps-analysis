package com.google.android.gms.dynamic;

import android.app.Fragment;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.dynamic.IFragmentWrapper;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/dynamic/FragmentWrapper.class */
public final class FragmentWrapper extends IFragmentWrapper.Stub {

    /* renamed from: a */
    public Fragment f23587a;

    public FragmentWrapper(Fragment fragment) {
        this.f23587a = fragment;
    }

    @KeepForSdk
    /* renamed from: a */
    public static FragmentWrapper m17024a(Fragment fragment) {
        if (fragment != null) {
            return new FragmentWrapper(fragment);
        }
        return null;
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    /* renamed from: B */
    public final boolean mo17018B() {
        return this.f23587a.isDetached();
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    /* renamed from: E */
    public final IObjectWrapper mo17017E() {
        return ObjectWrapper.m17020a(this.f23587a.getView());
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    /* renamed from: F */
    public final IFragmentWrapper mo17016F() {
        return m17024a(this.f23587a.getTargetFragment());
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    /* renamed from: I */
    public final int mo17015I() {
        return this.f23587a.getTargetRequestCode();
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    /* renamed from: K */
    public final boolean mo17014K() {
        return this.f23587a.getRetainInstance();
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    /* renamed from: L */
    public final String mo17013L() {
        return this.f23587a.getTag();
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    /* renamed from: T */
    public final boolean mo17012T() {
        return this.f23587a.getUserVisibleHint();
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    /* renamed from: a */
    public final void mo17011a(Intent intent) {
        this.f23587a.startActivity(intent);
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    /* renamed from: a */
    public final void mo17010a(Intent intent, int i) {
        this.f23587a.startActivityForResult(intent, i);
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    /* renamed from: b */
    public final void mo17008b(IObjectWrapper iObjectWrapper) {
        this.f23587a.registerForContextMenu((View) ObjectWrapper.m17021Q(iObjectWrapper));
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    /* renamed from: b */
    public final void mo17007b(boolean z) {
        this.f23587a.setMenuVisibility(z);
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    /* renamed from: c */
    public final IObjectWrapper mo17006c() {
        return ObjectWrapper.m17020a(this.f23587a.getResources());
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    /* renamed from: c */
    public final void mo17005c(boolean z) {
        this.f23587a.setHasOptionsMenu(z);
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    /* renamed from: e */
    public final void mo17004e(boolean z) {
        this.f23587a.setUserVisibleHint(z);
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    /* renamed from: f */
    public final void mo17003f(IObjectWrapper iObjectWrapper) {
        this.f23587a.unregisterForContextMenu((View) ObjectWrapper.m17021Q(iObjectWrapper));
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    /* renamed from: j */
    public final void mo17001j(boolean z) {
        this.f23587a.setRetainInstance(z);
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    /* renamed from: j */
    public final boolean mo17002j() {
        return this.f23587a.isRemoving();
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    /* renamed from: p */
    public final boolean mo17000p() {
        return this.f23587a.isResumed();
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    /* renamed from: r */
    public final boolean mo16999r() {
        return this.f23587a.isVisible();
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    /* renamed from: u */
    public final boolean mo16998u() {
        return this.f23587a.isHidden();
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    /* renamed from: w */
    public final boolean mo16997w() {
        return this.f23587a.isInLayout();
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    /* renamed from: z */
    public final boolean mo16996z() {
        return this.f23587a.isAdded();
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    public final IObjectWrapper zza() {
        return ObjectWrapper.m17020a(this.f23587a.getActivity());
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    public final Bundle zzb() {
        return this.f23587a.getArguments();
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    public final int zzc() {
        return this.f23587a.getId();
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    public final IFragmentWrapper zzd() {
        return m17024a(this.f23587a.getParentFragment());
    }
}
