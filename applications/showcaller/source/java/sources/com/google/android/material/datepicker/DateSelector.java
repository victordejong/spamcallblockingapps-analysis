package com.google.android.material.datepicker;

import android.content.Context;
import android.os.Bundle;
import android.os.Parcelable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import java.util.Collection;
import p020b.p041h.p049k.C1593d;
/* loaded from: classes2-dex2jar.jar:com/google/android/material/datepicker/DateSelector.class */
public interface DateSelector<S> extends Parcelable {
    /* renamed from: L */
    View mo4953L(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle, CalendarConstraints calendarConstraints, AbstractC8118k<S> abstractC8118k);

    /* renamed from: Q */
    int mo4952Q(Context context);

    /* renamed from: U */
    boolean mo4951U();

    /* renamed from: W */
    Collection<Long> mo4950W();

    /* renamed from: a0 */
    S mo4948a0();

    /* renamed from: i0 */
    void mo4944i0(long j);

    /* renamed from: p */
    String mo4943p(Context context);

    /* renamed from: q */
    Collection<C1593d<Long, Long>> mo4942q();
}
