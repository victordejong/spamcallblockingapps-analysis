package com.facebook.internal;

import android.app.Activity;
import android.content.Intent;
import androidx.fragment.app.Fragment;
/* renamed from: com.facebook.internal.r */
/* loaded from: classes-dex2jar.jar:com/facebook/internal/r.class */
public class C2486r {

    /* renamed from: a */
    public Fragment f3179a;

    /* renamed from: b */
    public android.app.Fragment f3180b;

    public C2486r(android.app.Fragment fragment) {
        C2416h0.m34791a(fragment, "fragment");
        this.f3180b = fragment;
    }

    public C2486r(Fragment fragment) {
        C2416h0.m34791a(fragment, "fragment");
        this.f3179a = fragment;
    }

    /* renamed from: a */
    public final Activity m34605a() {
        Fragment fragment = this.f3179a;
        return fragment != null ? fragment.getActivity() : this.f3180b.getActivity();
    }

    /* renamed from: a */
    public void m34604a(Intent intent, int i) {
        Fragment fragment = this.f3179a;
        if (fragment != null) {
            fragment.startActivityForResult(intent, i);
        } else {
            this.f3180b.startActivityForResult(intent, i);
        }
    }

    /* renamed from: b */
    public android.app.Fragment m34603b() {
        return this.f3180b;
    }

    /* renamed from: c */
    public Fragment m34602c() {
        return this.f3179a;
    }
}
