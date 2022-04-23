package com.google.android.material.datepicker;

import android.os.Bundle;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import java.util.Iterator;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/datepicker/h.class */
public final class h<S> extends l<S> {

    /* renamed from: a  reason: collision with root package name */
    private int f30470a;

    /* renamed from: b  reason: collision with root package name */
    private DateSelector<S> f30471b;

    /* renamed from: c  reason: collision with root package name */
    private CalendarConstraints f30472c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> h<T> a(DateSelector<T> dateSelector, int i, CalendarConstraints calendarConstraints) {
        h<T> hVar = new h<>();
        Bundle bundle = new Bundle();
        bundle.putInt("THEME_RES_ID_KEY", i);
        bundle.putParcelable("DATE_SELECTOR_KEY", dateSelector);
        bundle.putParcelable("CALENDAR_CONSTRAINTS_KEY", calendarConstraints);
        hVar.setArguments(bundle);
        return hVar;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Bundle bundle2 = bundle;
        if (bundle == null) {
            bundle2 = getArguments();
        }
        this.f30470a = bundle2.getInt("THEME_RES_ID_KEY");
        this.f30471b = (DateSelector) bundle2.getParcelable("DATE_SELECTOR_KEY");
        this.f30472c = (CalendarConstraints) bundle2.getParcelable("CALENDAR_CONSTRAINTS_KEY");
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return this.f30471b.onCreateTextInputView(layoutInflater.cloneInContext(new ContextThemeWrapper(getContext(), this.f30470a)), viewGroup, bundle, this.f30472c, new k<S>() { // from class: com.google.android.material.datepicker.h.1
            @Override // com.google.android.material.datepicker.k
            public final void a() {
                Iterator<k<S>> it2 = h.this.j.iterator();
                while (it2.hasNext()) {
                    it2.next().a();
                }
            }

            @Override // com.google.android.material.datepicker.k
            public final void a(S s) {
                Iterator<k<S>> it2 = h.this.j.iterator();
                while (it2.hasNext()) {
                    it2.next().a(s);
                }
            }
        });
    }

    @Override // androidx.fragment.app.Fragment
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt("THEME_RES_ID_KEY", this.f30470a);
        bundle.putParcelable("DATE_SELECTOR_KEY", this.f30471b);
        bundle.putParcelable("CALENDAR_CONSTRAINTS_KEY", this.f30472c);
    }
}
