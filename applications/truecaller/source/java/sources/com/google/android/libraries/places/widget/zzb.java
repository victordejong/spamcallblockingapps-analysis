package com.google.android.libraries.places.widget;

import com.google.android.libraries.places.widget.model.AutocompleteActivityMode;
/* loaded from: classes3-dex2jar.jar:com/google/android/libraries/places/widget/zzb.class */
public final /* synthetic */ class zzb {
    public static final /* synthetic */ int[] zza;

    static {
        AutocompleteActivityMode.values();
        int[] iArr = new int[2];
        zza = iArr;
        try {
            AutocompleteActivityMode autocompleteActivityMode = AutocompleteActivityMode.OVERLAY;
            iArr[1] = 1;
        } catch (NoSuchFieldError e) {
        }
        try {
            int[] iArr2 = zza;
            AutocompleteActivityMode autocompleteActivityMode2 = AutocompleteActivityMode.FULLSCREEN;
            iArr2[0] = 2;
        } catch (NoSuchFieldError e2) {
        }
    }
}
