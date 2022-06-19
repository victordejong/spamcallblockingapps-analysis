package com.google.android.gms.dynamic;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import androidx.fragment.app.Fragment;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.dynamic.IFragmentWrapper;
import java.util.Objects;
@KeepForSdk
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/dynamic/SupportFragmentWrapper.class */
public final class SupportFragmentWrapper extends IFragmentWrapper.Stub {

    /* renamed from: a */
    public Fragment f6175a;

    public SupportFragmentWrapper(Fragment fragment) {
        this.f6175a = fragment;
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    /* renamed from: D */
    public final void mo38745D(boolean z) {
        this.f6175a.setHasOptionsMenu(z);
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    /* renamed from: H0 */
    public final void mo38744H0(IObjectWrapper iObjectWrapper) {
        View view = (View) ObjectWrapper.m38746B1(iObjectWrapper);
        Fragment fragment = this.f6175a;
        Objects.requireNonNull(view, "null reference");
        fragment.unregisterForContextMenu(view);
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    /* renamed from: K */
    public final void mo38743K(boolean z) {
        this.f6175a.setMenuVisibility(z);
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    /* renamed from: W */
    public final void mo38742W(Intent intent) {
        this.f6175a.startActivity(intent);
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    /* renamed from: X */
    public final void mo38741X(Intent intent, int i) {
        this.f6175a.startActivityForResult(intent, i);
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    public final boolean zzA() {
        return this.f6175a.isVisible();
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    public final int zzb() {
        return this.f6175a.getId();
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    public final int zzc() {
        return this.f6175a.getTargetRequestCode();
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    public final Bundle zzd() {
        return this.f6175a.getArguments();
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    public final IFragmentWrapper zze() {
        Fragment parentFragment = this.f6175a.getParentFragment();
        return parentFragment != null ? new SupportFragmentWrapper(parentFragment) : null;
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    public final IFragmentWrapper zzf() {
        Fragment targetFragment = this.f6175a.getTargetFragment();
        return targetFragment != null ? new SupportFragmentWrapper(targetFragment) : null;
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    public final IObjectWrapper zzg() {
        return new ObjectWrapper(this.f6175a.getActivity());
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    public final IObjectWrapper zzh() {
        return new ObjectWrapper(this.f6175a.getResources());
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    public final IObjectWrapper zzi() {
        return new ObjectWrapper(this.f6175a.getView());
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    public final String zzj() {
        return this.f6175a.getTag();
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    public final void zzk(IObjectWrapper iObjectWrapper) {
        View view = (View) ObjectWrapper.m38746B1(iObjectWrapper);
        Fragment fragment = this.f6175a;
        Objects.requireNonNull(view, "null reference");
        fragment.registerForContextMenu(view);
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    public final void zzn(boolean z) {
        this.f6175a.setRetainInstance(z);
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    public final void zzo(boolean z) {
        this.f6175a.setUserVisibleHint(z);
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    public final boolean zzs() {
        return this.f6175a.getRetainInstance();
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    public final boolean zzt() {
        return this.f6175a.getUserVisibleHint();
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    public final boolean zzu() {
        return this.f6175a.isAdded();
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    public final boolean zzv() {
        return this.f6175a.isDetached();
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    public final boolean zzw() {
        return this.f6175a.isHidden();
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    public final boolean zzx() {
        return this.f6175a.isInLayout();
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    public final boolean zzy() {
        return this.f6175a.isRemoving();
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    public final boolean zzz() {
        return this.f6175a.isResumed();
    }
}
