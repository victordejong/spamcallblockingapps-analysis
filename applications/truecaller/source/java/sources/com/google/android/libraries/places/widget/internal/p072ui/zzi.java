package com.google.android.libraries.places.widget.internal.p072ui;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewPropertyAnimator;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.libraries.places.internal.zzdk;
/* renamed from: com.google.android.libraries.places.widget.internal.ui.zzi */
/* loaded from: classes3-dex2jar.jar:com/google/android/libraries/places/widget/internal/ui/zzi.class */
public final class zzi extends AnimatorListenerAdapter {
    private final /* synthetic */ View zza;
    private final /* synthetic */ RecyclerView.AbstractC0313c0 zzb;
    private final /* synthetic */ ViewPropertyAnimator zzc;
    private final /* synthetic */ zzj zzd;

    public zzi(zzj zzjVar, View view, RecyclerView.AbstractC0313c0 abstractC0313c0, ViewPropertyAnimator viewPropertyAnimator) {
        this.zzd = zzjVar;
        this.zza = view;
        this.zzb = abstractC0313c0;
        this.zzc = viewPropertyAnimator;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationCancel(Animator animator) {
        try {
            zzj.zza(this.zza);
        } catch (Error | RuntimeException e) {
            zzdk.zza(e);
            throw e;
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        try {
            this.zzc.setListener(null);
            this.zzd.dispatchAddFinished(this.zzb);
            zzj.zza(this.zzd).remove(this.zzb);
            zzj.zzb(this.zzd);
            this.zzc.setStartDelay(0L);
        } catch (Error | RuntimeException e) {
            zzdk.zza(e);
            throw e;
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        try {
            this.zza.setAlpha(0.0f);
            this.zzd.dispatchAddStarting(this.zzb);
        } catch (Error | RuntimeException e) {
            zzdk.zza(e);
            throw e;
        }
    }
}
