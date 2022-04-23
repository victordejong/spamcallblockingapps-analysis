package com.google.android.gms.dynamic;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import androidx.fragment.app.Fragment;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.dynamic.IFragmentWrapper;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/dynamic/SupportFragmentWrapper.class */
public final class SupportFragmentWrapper extends IFragmentWrapper.Stub {

    /* renamed from: a */
    public Fragment f23591a;

    public SupportFragmentWrapper(Fragment fragment) {
        this.f23591a = fragment;
    }

    @KeepForSdk
    /* renamed from: a */
    public static SupportFragmentWrapper m17009a(Fragment fragment) {
        if (fragment != null) {
            return new SupportFragmentWrapper(fragment);
        }
        return null;
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    /* renamed from: B */
    public final boolean mo17018B() {
        return this.f23591a.m38446P();
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    /* renamed from: E */
    public final IObjectWrapper mo17017E() {
        return ObjectWrapper.m17020a(this.f23591a.m38450L());
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    /* renamed from: F */
    public final IFragmentWrapper mo17016F() {
        return m17009a(this.f23591a.m38453I());
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    /* renamed from: I */
    public final int mo17015I() {
        return this.f23591a.m38452J();
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    /* renamed from: K */
    public final boolean mo17014K() {
        return this.f23591a.m38459C();
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    /* renamed from: L */
    public final String mo17013L() {
        return this.f23591a.m38454H();
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    /* renamed from: T */
    public final boolean mo17012T() {
        return this.f23591a.m38451K();
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    /* renamed from: a */
    public final void mo17011a(Intent intent) {
        this.f23591a.m38427a(intent);
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    /* renamed from: a */
    public final void mo17010a(Intent intent, int i) {
        this.f23591a.startActivityForResult(intent, i);
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    /* renamed from: b */
    public final void mo17008b(IObjectWrapper iObjectWrapper) {
        this.f23591a.m38418a((View) ObjectWrapper.m17021Q(iObjectWrapper));
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    /* renamed from: b */
    public final void mo17007b(boolean z) {
        this.f23591a.m38381i(z);
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    /* renamed from: c */
    public final IObjectWrapper mo17006c() {
        return ObjectWrapper.m17020a(this.f23591a.m38460B());
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    /* renamed from: c */
    public final void mo17005c(boolean z) {
        this.f23591a.m38387g(z);
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    /* renamed from: e */
    public final void mo17004e(boolean z) {
        this.f23591a.m38373k(z);
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    /* renamed from: f */
    public final void mo17003f(IObjectWrapper iObjectWrapper) {
        this.f23591a.m38399c((View) ObjectWrapper.m17021Q(iObjectWrapper));
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    /* renamed from: j */
    public final void mo17001j(boolean z) {
        this.f23591a.m38377j(z);
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    /* renamed from: j */
    public final boolean mo17002j() {
        return this.f23591a.m38440V();
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    /* renamed from: p */
    public final boolean mo17000p() {
        return this.f23591a.m38439W();
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    /* renamed from: r */
    public final boolean mo16999r() {
        return this.f23591a.m38437Y();
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    /* renamed from: u */
    public final boolean mo16998u() {
        return this.f23591a.m38445Q();
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    /* renamed from: w */
    public final boolean mo16997w() {
        return this.f23591a.m38442T();
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    /* renamed from: z */
    public final boolean mo16996z() {
        return this.f23591a.m38447O();
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    public final IObjectWrapper zza() {
        return ObjectWrapper.m17020a(this.f23591a.m38386h());
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    public final Bundle zzb() {
        return this.f23591a.m38368m();
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    public final int zzc() {
        return this.f23591a.m38349v();
    }

    @Override // com.google.android.gms.dynamic.IFragmentWrapper
    public final IFragmentWrapper zzd() {
        return m17009a(this.f23591a.m38343z());
    }
}
