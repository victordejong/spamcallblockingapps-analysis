package com.google.android.gms.ads.internal.overlay;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.widget.ImageButton;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/overlay/zzp.class */
public final class zzp extends AnimatorListenerAdapter {
    public final /* synthetic */ zzr zza;

    public zzp(zzr zzrVar) {
        this.zza = zzrVar;
    }

    private final void zza(boolean z) {
        ImageButton imageButton;
        this.zza.setClickable(z);
        imageButton = this.zza.zza;
        imageButton.setClickable(z);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationCancel(Animator animator) {
        zza(true);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        zza(true);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        zza(false);
    }
}
