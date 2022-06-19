package com.google.android.material.datepicker;

import android.content.Context;
import android.os.Bundle;
import android.os.Parcelable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import e.m.a.g.j.s;
import java.util.Collection;
import p1727n3.p1807k.p1820h.C26553c;
/* loaded from: classes3-dex2jar.jar:com/google/android/material/datepicker/DateSelector.class */
public interface DateSelector<S> extends Parcelable {
    /* renamed from: D0 */
    Collection<Long> m38450D0();

    /* renamed from: F0 */
    S m38449F0();

    /* renamed from: F1 */
    String m38448F1(Context context);

    /* renamed from: I1 */
    Collection<C26553c<Long, Long>> m38447I1();

    /* renamed from: K0 */
    void m38446K0(long j);

    /* renamed from: S */
    int m38445S(Context context);

    /* renamed from: p0 */
    View m38444p0(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle, CalendarConstraints calendarConstraints, s<S> sVar);

    /* renamed from: z0 */
    boolean m38443z0();
}
