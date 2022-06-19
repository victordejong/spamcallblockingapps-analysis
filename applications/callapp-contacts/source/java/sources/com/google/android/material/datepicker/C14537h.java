package com.google.android.material.datepicker;

import android.os.Bundle;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import java.util.Iterator;
/* renamed from: com.google.android.material.datepicker.h */
/* loaded from: classes4-dex2jar.jar:com/google/android/material/datepicker/h.class */
public final class C14537h<S> extends AbstractC14544l<S> {

    /* renamed from: a */
    private int f53039a;

    /* renamed from: b */
    private DateSelector<S> f53040b;

    /* renamed from: c */
    private CalendarConstraints f53041c;

    /* renamed from: a */
    public static <T> C14537h<T> m10814a(DateSelector<T> dateSelector, int i, CalendarConstraints calendarConstraints) {
        C14537h<T> c14537h = new C14537h<>();
        Bundle bundle = new Bundle();
        bundle.putInt("THEME_RES_ID_KEY", i);
        bundle.putParcelable("DATE_SELECTOR_KEY", dateSelector);
        bundle.putParcelable("CALENDAR_CONSTRAINTS_KEY", calendarConstraints);
        c14537h.setArguments(bundle);
        return c14537h;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Bundle bundle2 = bundle;
        if (bundle == null) {
            bundle2 = getArguments();
        }
        this.f53039a = bundle2.getInt("THEME_RES_ID_KEY");
        this.f53040b = (DateSelector) bundle2.getParcelable("DATE_SELECTOR_KEY");
        this.f53041c = (CalendarConstraints) bundle2.getParcelable("CALENDAR_CONSTRAINTS_KEY");
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return this.f53040b.onCreateTextInputView(layoutInflater.cloneInContext(new ContextThemeWrapper(getContext(), this.f53039a)), viewGroup, bundle, this.f53041c, new AbstractC14543k<S>() { // from class: com.google.android.material.datepicker.h.1
            @Override // com.google.android.material.datepicker.AbstractC14543k
            /* renamed from: a */
            public final void mo10804a() {
                Iterator<AbstractC14543k<S>> it2 = C14537h.this.f53058j.iterator();
                while (it2.hasNext()) {
                    it2.next().mo10804a();
                }
            }

            @Override // com.google.android.material.datepicker.AbstractC14543k
            /* renamed from: a */
            public final void mo10803a(S s) {
                Iterator<AbstractC14543k<S>> it2 = C14537h.this.f53058j.iterator();
                while (it2.hasNext()) {
                    it2.next().mo10803a(s);
                }
            }
        });
    }

    @Override // androidx.fragment.app.Fragment
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt("THEME_RES_ID_KEY", this.f53039a);
        bundle.putParcelable("DATE_SELECTOR_KEY", this.f53040b);
        bundle.putParcelable("CALENDAR_CONSTRAINTS_KEY", this.f53041c);
    }
}
