package com.google.android.libraries.places.widget;

import android.view.MotionEvent;
import android.view.View;
import com.google.android.libraries.places.widget.internal.ui.AutocompleteImplFragment;
/* loaded from: classes3-dex2jar.jar:com/google/android/libraries/places/widget/zza.class */
public final /* synthetic */ class zza implements View.OnTouchListener {
    private final AutocompleteActivity zza;
    private final AutocompleteImplFragment zzb;

    public zza(AutocompleteActivity autocompleteActivity, AutocompleteImplFragment autocompleteImplFragment) {
        this.zza = autocompleteActivity;
        this.zzb = autocompleteImplFragment;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        return this.zza.zza(this.zzb, view, motionEvent);
    }
}
