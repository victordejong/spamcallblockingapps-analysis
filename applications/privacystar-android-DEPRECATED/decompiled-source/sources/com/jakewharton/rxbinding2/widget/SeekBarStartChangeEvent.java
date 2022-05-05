package com.jakewharton.rxbinding2.widget;

import android.support.annotation.CheckResult;
import android.support.annotation.NonNull;
import android.widget.SeekBar;
/* loaded from: classes-dex2jar.jar:com/jakewharton/rxbinding2/widget/SeekBarStartChangeEvent.class */
public abstract class SeekBarStartChangeEvent extends SeekBarChangeEvent {
    @CheckResult
    @NonNull
    public static SeekBarStartChangeEvent create(@NonNull SeekBar seekBar) {
        return new AutoValue_SeekBarStartChangeEvent(seekBar);
    }
}
