package com.google.android.gms.ads.internal;

import android.view.MotionEvent;
import android.view.View;
import com.google.android.gms.internal.ads.die;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/internal/zzn.class */
public final class zzn implements View.OnTouchListener {
    private final /* synthetic */ zzl zzbqf;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzn(zzl zzlVar) {
        this.zzbqf = zzlVar;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        die dieVar;
        die dieVar2;
        dieVar = this.zzbqf.zzbqd;
        if (dieVar == null) {
            return false;
        }
        dieVar2 = this.zzbqf.zzbqd;
        dieVar2.a(motionEvent);
        return false;
    }
}
