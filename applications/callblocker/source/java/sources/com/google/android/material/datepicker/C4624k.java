package com.google.android.material.datepicker;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import java.util.Iterator;
/* renamed from: com.google.android.material.datepicker.k */
/* loaded from: classes-dex2jar.jar:com/google/android/material/datepicker/k.class */
public final class C4624k<S> extends AbstractC4633p<S> {

    /* renamed from: a */
    private AbstractC4600d<S> f20117a;

    /* renamed from: b */
    private C4594a f20118b;

    /* renamed from: a */
    public static <T> C4624k<T> m3148a(AbstractC4600d<T> abstractC4600d, C4594a c4594a) {
        C4624k<T> c4624k = new C4624k<>();
        Bundle bundle = new Bundle();
        bundle.putParcelable("DATE_SELECTOR_KEY", abstractC4600d);
        bundle.putParcelable("CALENDAR_CONSTRAINTS_KEY", c4594a);
        c4624k.m19941g(bundle);
        return c4624k;
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: a */
    public View mo850a(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return this.f20117a.m3212a(layoutInflater, viewGroup, bundle, this.f20118b, new AbstractC4632o<S>() { // from class: com.google.android.material.datepicker.k.1
            @Override // com.google.android.material.datepicker.AbstractC4632o
            /* renamed from: a */
            public void mo3117a(S s) {
                Iterator<AbstractC4632o<S>> it = C4624k.this.f20140e.iterator();
                while (it.hasNext()) {
                    it.next().mo3117a(s);
                }
            }
        });
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: a */
    public void mo3149a(Bundle bundle) {
        super.mo3149a(bundle);
        Bundle bundle2 = bundle;
        if (bundle == null) {
            bundle2 = m19929m();
        }
        this.f20117a = (AbstractC4600d) bundle2.getParcelable("DATE_SELECTOR_KEY");
        this.f20118b = (C4594a) bundle2.getParcelable("CALENDAR_CONSTRAINTS_KEY");
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: e */
    public void mo3147e(Bundle bundle) {
        super.mo3147e(bundle);
        bundle.putParcelable("DATE_SELECTOR_KEY", this.f20117a);
        bundle.putParcelable("CALENDAR_CONSTRAINTS_KEY", this.f20118b);
    }
}
