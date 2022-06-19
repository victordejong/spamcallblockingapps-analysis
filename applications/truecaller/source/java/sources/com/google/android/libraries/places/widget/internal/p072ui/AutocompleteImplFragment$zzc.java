package com.google.android.libraries.places.widget.internal.p072ui;

import android.text.Editable;
import android.text.TextWatcher;
import com.google.android.libraries.places.internal.zzdk;
/* renamed from: com.google.android.libraries.places.widget.internal.ui.AutocompleteImplFragment$zzc */
/* loaded from: classes3-dex2jar.jar:com/google/android/libraries/places/widget/internal/ui/AutocompleteImplFragment$zzc.class */
public final class AutocompleteImplFragment$zzc implements TextWatcher {
    private final /* synthetic */ AutocompleteImplFragment zza;

    private AutocompleteImplFragment$zzc(AutocompleteImplFragment autocompleteImplFragment) {
        this.zza = autocompleteImplFragment;
    }

    public /* synthetic */ AutocompleteImplFragment$zzc(AutocompleteImplFragment autocompleteImplFragment, zzg zzgVar) {
        this(autocompleteImplFragment);
    }

    @Override // android.text.TextWatcher
    public final void afterTextChanged(Editable editable) {
        try {
            AutocompleteImplFragment.zza(this.zza).zza(editable.toString());
        } catch (Error | RuntimeException e) {
            zzdk.zza(e);
            throw e;
        }
    }

    @Override // android.text.TextWatcher
    public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    @Override // android.text.TextWatcher
    public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }
}
