package com.google.android.material.datepicker;

import android.os.Bundle;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import java.util.Iterator;
/* renamed from: com.google.android.material.datepicker.r */
/* loaded from: classes-dex2jar.jar:com/google/android/material/datepicker/r.class */
public final class C1759r<S> extends AbstractC1768x<S> {

    /* renamed from: b */
    public int f6591b;

    /* renamed from: c */
    public AbstractC1736d<S> f6592c;

    /* renamed from: d */
    public C1726a f6593d;

    /* renamed from: com.google.android.material.datepicker.r$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/datepicker/r$a.class */
    public class C1760a extends AbstractC1767w<S> {
        public C1760a() {
            C1759r.this = r4;
        }

        @Override // com.google.android.material.datepicker.AbstractC1767w
        /* renamed from: a */
        public void mo4593a(S s) {
            Iterator<AbstractC1767w<S>> it2 = C1759r.this.f6617a.iterator();
            while (it2.hasNext()) {
                it2.next().mo4593a(s);
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Bundle bundle2 = bundle;
        if (bundle == null) {
            bundle2 = getArguments();
        }
        this.f6591b = bundle2.getInt("THEME_RES_ID_KEY");
        this.f6592c = (AbstractC1736d) bundle2.getParcelable("DATE_SELECTOR_KEY");
        this.f6593d = (C1726a) bundle2.getParcelable("CALENDAR_CONSTRAINTS_KEY");
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return this.f6592c.m4630U(layoutInflater.cloneInContext(new ContextThemeWrapper(getContext(), this.f6591b)), viewGroup, bundle, this.f6593d, new C1760a());
    }

    @Override // androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt("THEME_RES_ID_KEY", this.f6591b);
        bundle.putParcelable("DATE_SELECTOR_KEY", this.f6592c);
        bundle.putParcelable("CALENDAR_CONSTRAINTS_KEY", this.f6593d);
    }
}
