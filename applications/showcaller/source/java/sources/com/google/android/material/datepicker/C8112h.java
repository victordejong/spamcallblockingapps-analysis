package com.google.android.material.datepicker;

import android.os.Bundle;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import java.util.Iterator;
/* renamed from: com.google.android.material.datepicker.h */
/* loaded from: classes2-dex2jar.jar:com/google/android/material/datepicker/h.class */
public final class C8112h<S> extends AbstractC8119l<S> {

    /* renamed from: f0 */
    private int f36677f0;

    /* renamed from: g0 */
    private DateSelector<S> f36678g0;

    /* renamed from: h0 */
    private CalendarConstraints f36679h0;

    /* renamed from: com.google.android.material.datepicker.h$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/datepicker/h$a.class */
    class C8113a extends AbstractC8118k<S> {
        C8113a() {
            C8112h.this = r4;
        }

        @Override // com.google.android.material.datepicker.AbstractC8118k
        /* renamed from: a */
        public void mo4864a() {
            Iterator<AbstractC8118k<S>> it = C8112h.this.f36696e0.iterator();
            while (it.hasNext()) {
                it.next().mo4864a();
            }
        }

        @Override // com.google.android.material.datepicker.AbstractC8118k
        /* renamed from: b */
        public void mo4863b(S s) {
            Iterator<AbstractC8118k<S>> it = C8112h.this.f36696e0.iterator();
            while (it.hasNext()) {
                it.next().mo4863b(s);
            }
        }
    }

    /* renamed from: c2 */
    public static <T> C8112h<T> m4885c2(DateSelector<T> dateSelector, int i, CalendarConstraints calendarConstraints) {
        C8112h<T> c8112h = new C8112h<>();
        Bundle bundle = new Bundle();
        bundle.putInt("THEME_RES_ID_KEY", i);
        bundle.putParcelable("DATE_SELECTOR_KEY", dateSelector);
        bundle.putParcelable("CALENDAR_CONSTRAINTS_KEY", calendarConstraints);
        c8112h.m32971L1(bundle);
        return c8112h;
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: B0 */
    public void mo4888B0(Bundle bundle) {
        super.mo4888B0(bundle);
        Bundle bundle2 = bundle;
        if (bundle == null) {
            bundle2 = m32884z();
        }
        this.f36677f0 = bundle2.getInt("THEME_RES_ID_KEY");
        this.f36678g0 = (DateSelector) bundle2.getParcelable("DATE_SELECTOR_KEY");
        this.f36679h0 = (CalendarConstraints) bundle2.getParcelable("CALENDAR_CONSTRAINTS_KEY");
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: G0 */
    public View mo4887G0(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return this.f36678g0.mo4953L(layoutInflater.cloneInContext(new ContextThemeWrapper(m32996B(), this.f36677f0)), viewGroup, bundle, this.f36679h0, new C8113a());
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: Z0 */
    public void mo4886Z0(Bundle bundle) {
        super.mo4886Z0(bundle);
        bundle.putInt("THEME_RES_ID_KEY", this.f36677f0);
        bundle.putParcelable("DATE_SELECTOR_KEY", this.f36678g0);
        bundle.putParcelable("CALENDAR_CONSTRAINTS_KEY", this.f36679h0);
    }
}
