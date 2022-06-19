package com.google.android.libraries.places.widget.internal.p072ui;

import android.view.View;
/* renamed from: com.google.android.libraries.places.widget.internal.ui.zzd */
/* loaded from: classes3-dex2jar.jar:com/google/android/libraries/places/widget/internal/ui/zzd.class */
public final /* synthetic */ class zzd implements View.OnClickListener {
    private final AutocompleteImplFragment zza;

    public zzd(AutocompleteImplFragment autocompleteImplFragment) {
        this.zza = autocompleteImplFragment;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        this.zza.zza(view);
    }
}
