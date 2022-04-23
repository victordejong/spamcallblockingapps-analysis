package com.google.android.material.slider;

import androidx.annotation.NonNull;
import java.util.Locale;
/* loaded from: classes-dex2jar.jar:com/google/android/material/slider/BasicLabelFormatter.class */
public final class BasicLabelFormatter implements LabelFormatter {
    @Override // com.google.android.material.slider.LabelFormatter
    @NonNull
    /* renamed from: a */
    public String mo9079a(float f) {
        return f >= 1.0E12f ? String.format(Locale.US, "%.1fT", Float.valueOf(f / 1.0E12f)) : f >= 1.0E9f ? String.format(Locale.US, "%.1fB", Float.valueOf(f / 1.0E9f)) : f >= 1000000.0f ? String.format(Locale.US, "%.1fM", Float.valueOf(f / 1000000.0f)) : f >= 1000.0f ? String.format(Locale.US, "%.1fK", Float.valueOf(f / 1000.0f)) : String.format(Locale.US, "%.0f", Float.valueOf(f));
    }
}
