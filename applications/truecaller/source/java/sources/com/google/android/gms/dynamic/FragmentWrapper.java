package com.google.android.gms.dynamic;

import android.app.Fragment;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.dynamic.IFragmentWrapper;
import java.util.Objects;
@KeepForSdk
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/dynamic/FragmentWrapper.class */
public final class FragmentWrapper extends IFragmentWrapper.Stub {

    /* renamed from: a */
    public Fragment f6173a;

    public FragmentWrapper(Fragment fragment) {
        this.f6173a = fragment;
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    /* renamed from: D */
    public final void mo38745D(boolean z) {
        this.f6173a.setHasOptionsMenu(z);
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    /* renamed from: H0 */
    public final void mo38744H0(IObjectWrapper iObjectWrapper) {
        View view = (View) ObjectWrapper.m38746B1(iObjectWrapper);
        Fragment fragment = this.f6173a;
        Objects.requireNonNull(view, "null reference");
        fragment.unregisterForContextMenu(view);
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    /* renamed from: K */
    public final void mo38743K(boolean z) {
        this.f6173a.setMenuVisibility(z);
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    /* renamed from: W */
    public final void mo38742W(Intent intent) {
        this.f6173a.startActivity(intent);
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    /* renamed from: X */
    public final void mo38741X(Intent intent, int i) {
        this.f6173a.startActivityForResult(intent, i);
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    public final boolean zzA() {
        return this.f6173a.isVisible();
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    public final int zzb() {
        return this.f6173a.getId();
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    public final int zzc() {
        return this.f6173a.getTargetRequestCode();
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    public final Bundle zzd() {
        return this.f6173a.getArguments();
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    public final IFragmentWrapper zze() {
        Fragment parentFragment = this.f6173a.getParentFragment();
        return parentFragment != null ? new FragmentWrapper(parentFragment) : null;
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    public final IFragmentWrapper zzf() {
        Fragment targetFragment = this.f6173a.getTargetFragment();
        return targetFragment != null ? new FragmentWrapper(targetFragment) : null;
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    public final IObjectWrapper zzg() {
        return new ObjectWrapper(this.f6173a.getActivity());
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    public final IObjectWrapper zzh() {
        return new ObjectWrapper(this.f6173a.getResources());
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    public final IObjectWrapper zzi() {
        return new ObjectWrapper(this.f6173a.getView());
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    public final String zzj() {
        return this.f6173a.getTag();
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    public final void zzk(IObjectWrapper iObjectWrapper) {
        View view = (View) ObjectWrapper.m38746B1(iObjectWrapper);
        Fragment fragment = this.f6173a;
        Objects.requireNonNull(view, "null reference");
        fragment.registerForContextMenu(view);
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    public final void zzn(boolean z) {
        this.f6173a.setRetainInstance(z);
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    public final void zzo(boolean z) {
        this.f6173a.setUserVisibleHint(z);
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    public final boolean zzs() {
        return this.f6173a.getRetainInstance();
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    public final boolean zzt() {
        return this.f6173a.getUserVisibleHint();
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    public final boolean zzu() {
        return this.f6173a.isAdded();
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    public final boolean zzv() {
        return this.f6173a.isDetached();
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    public final boolean zzw() {
        return this.f6173a.isHidden();
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    public final boolean zzx() {
        return this.f6173a.isInLayout();
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    public final boolean zzy() {
        return this.f6173a.isRemoving();
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    public final boolean zzz() {
        return this.f6173a.isResumed();
    }
}
