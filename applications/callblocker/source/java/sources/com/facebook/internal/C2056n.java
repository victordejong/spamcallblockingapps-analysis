package com.facebook.internal;

import android.app.Activity;
import android.content.Intent;
import androidx.fragment.app.Fragment;
/* renamed from: com.facebook.internal.n */
/* loaded from: classes-dex2jar.jar:com/facebook/internal/n.class */
public class C2056n {

    /* renamed from: a */
    private Fragment f6075a;

    /* renamed from: b */
    private android.app.Fragment f6076b;

    public C2056n(android.app.Fragment fragment) {
        C2084y.m15417a(fragment, "fragment");
        this.f6076b = fragment;
    }

    public C2056n(Fragment fragment) {
        C2084y.m15417a(fragment, "fragment");
        this.f6075a = fragment;
    }

    /* renamed from: a */
    public android.app.Fragment m15570a() {
        return this.f6076b;
    }

    /* renamed from: a */
    public void m15569a(Intent intent, int i) {
        if (this.f6075a != null) {
            this.f6075a.startActivityForResult(intent, i);
        } else {
            this.f6076b.startActivityForResult(intent, i);
        }
    }

    /* renamed from: b */
    public Fragment m15568b() {
        return this.f6075a;
    }

    /* renamed from: c */
    public final Activity m15567c() {
        return this.f6075a != null ? this.f6075a.m19922r() : this.f6076b.getActivity();
    }
}
