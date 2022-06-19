package com.google.android.material.datepicker;

import android.content.Context;
import android.os.Bundle;
import android.os.Parcelable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.p036e.C0828b;
import java.util.Collection;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/datepicker/DateSelector.class */
public interface DateSelector<S> extends Parcelable {
    int getDefaultThemeResId(Context context);

    int getDefaultTitleResId();

    Collection<Long> getSelectedDays();

    Collection<C0828b<Long, Long>> getSelectedRanges();

    S getSelection();

    String getSelectionDisplayString(Context context);

    boolean isSelectionComplete();

    View onCreateTextInputView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle, CalendarConstraints calendarConstraints, AbstractC14543k<S> abstractC14543k);

    void select(long j);

    void setSelection(S s);
}
