package com.google.android.material.datepicker;

import android.content.Context;
import android.os.Bundle;
import android.os.Parcelable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.p025g.C0522d;
import java.util.Collection;
/* renamed from: com.google.android.material.datepicker.d */
/* loaded from: classes-dex2jar.jar:com/google/android/material/datepicker/d.class */
public interface AbstractC4600d<S> extends Parcelable {
    /* renamed from: a */
    View m3212a(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle, C4594a c4594a, AbstractC4632o<S> abstractC4632o);

    /* renamed from: a */
    S m3215a();

    /* renamed from: a */
    String m3213a(Context context);

    /* renamed from: a */
    void m3214a(long j);

    /* renamed from: b */
    int m3210b(Context context);

    /* renamed from: b */
    boolean m3211b();

    /* renamed from: c */
    Collection<Long> m3209c();

    /* renamed from: d */
    Collection<C0522d<Long, Long>> m3208d();
}
