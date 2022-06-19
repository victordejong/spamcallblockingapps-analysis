package com.google.android.libraries.places.widget;

import android.view.View;
/* loaded from: classes3-dex2jar.jar:com/google/android/libraries/places/widget/zzg.class */
public final /* synthetic */ class zzg implements View.OnClickListener {
    private final AutocompleteSupportFragment zza;

    public zzg(AutocompleteSupportFragment autocompleteSupportFragment) {
        this.zza = autocompleteSupportFragment;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        this.zza.zza(view);
    }
}
