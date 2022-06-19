package com.google.android.libraries.places.widget.internal.p072ui;

import android.content.Context;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import com.google.android.libraries.places.internal.zzdk;
import p1727n3.p1807k.p1809b.C26467a;
/* renamed from: com.google.android.libraries.places.widget.internal.ui.AutocompleteImplFragment$zzb */
/* loaded from: classes3-dex2jar.jar:com/google/android/libraries/places/widget/internal/ui/AutocompleteImplFragment$zzb.class */
public final class AutocompleteImplFragment$zzb implements View.OnFocusChangeListener {
    private AutocompleteImplFragment$zzb() {
    }

    public /* synthetic */ AutocompleteImplFragment$zzb(zzg zzgVar) {
        this();
    }

    @Override // android.view.View.OnFocusChangeListener
    public final void onFocusChange(View view, boolean z) {
        try {
            Context context = view.getContext();
            Object obj = C26467a.f74235a;
            InputMethodManager inputMethodManager = (InputMethodManager) C26467a.C26471d.m1785c(context, InputMethodManager.class);
            if (inputMethodManager == null) {
                return;
            }
            if (z) {
                inputMethodManager.showSoftInput(view, 1);
            } else {
                inputMethodManager.hideSoftInputFromWindow(view.getWindowToken(), 0);
            }
        } catch (Error | RuntimeException e) {
            zzdk.zza(e);
            throw e;
        }
    }
}
