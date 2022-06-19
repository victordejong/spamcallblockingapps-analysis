package com.google.android.gms.dynamic;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.zac;
import com.google.android.gms.dynamic.LifecycleDelegate;
import java.util.LinkedList;
import p193e.p1577m.p1578a.p1642f.p1660f.AbstractC25001h;
import p193e.p1577m.p1578a.p1642f.p1660f.C24994a;
import p193e.p1577m.p1578a.p1642f.p1660f.C24997d;
import p193e.p1577m.p1578a.p1642f.p1660f.C24999f;
import p193e.p1577m.p1578a.p1642f.p1660f.C25000g;
import p193e.p1577m.p1578a.p1642f.p1660f.View$OnClickListenerC24998e;
@KeepForSdk
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/dynamic/DeferredLifecycleHelper.class */
public abstract class DeferredLifecycleHelper<T extends LifecycleDelegate> {

    /* renamed from: a */
    public T f6169a;

    /* renamed from: b */
    public Bundle f6170b;

    /* renamed from: c */
    public LinkedList<AbstractC25001h> f6171c;

    /* renamed from: d */
    public final OnDelegateCreatedListener<T> f6172d = new C24994a(this);

    @KeepForSdk
    /* renamed from: k */
    public static void m38753k(@RecentlyNonNull FrameLayout frameLayout) {
        GoogleApiAvailability googleApiAvailability = GoogleApiAvailability.f5673d;
        Context context = frameLayout.getContext();
        int mo39063d = googleApiAvailability.mo39063d(context);
        String m38833b = zac.m38833b(context, mo39063d);
        String m38832c = zac.m38832c(context, mo39063d);
        LinearLayout linearLayout = new LinearLayout(frameLayout.getContext());
        linearLayout.setOrientation(1);
        linearLayout.setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
        frameLayout.addView(linearLayout);
        TextView textView = new TextView(frameLayout.getContext());
        textView.setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
        textView.setText(m38833b);
        linearLayout.addView(textView);
        Intent mo39066a = googleApiAvailability.mo39066a(context, mo39063d, null);
        if (mo39066a != null) {
            Button button = new Button(context);
            button.setId(16908313);
            button.setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
            button.setText(m38832c);
            linearLayout.addView(button);
            button.setOnClickListener(new View$OnClickListenerC24998e(context, mo39066a));
        }
    }

    @KeepForSdk
    /* renamed from: a */
    public abstract void m38763a(@RecentlyNonNull OnDelegateCreatedListener<T> onDelegateCreatedListener);

    @RecentlyNonNull
    @KeepForSdk
    /* renamed from: b */
    public View m38762b(@RecentlyNonNull LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        FrameLayout frameLayout = new FrameLayout(layoutInflater.getContext());
        m38751m(bundle, new C24997d(this, frameLayout, layoutInflater, viewGroup, bundle));
        if (this.f6169a == null) {
            m38753k(frameLayout);
        }
        return frameLayout;
    }

    @KeepForSdk
    /* renamed from: c */
    public void m38761c() {
        T t = this.f6169a;
        if (t != null) {
            t.onDestroy();
        } else {
            m38752l(1);
        }
    }

    @KeepForSdk
    /* renamed from: d */
    public void m38760d() {
        T t = this.f6169a;
        if (t != null) {
            t.m38749d();
        } else {
            m38752l(2);
        }
    }

    @KeepForSdk
    /* renamed from: e */
    public void m38759e() {
        T t = this.f6169a;
        if (t != null) {
            t.onLowMemory();
        }
    }

    @KeepForSdk
    /* renamed from: f */
    public void m38758f() {
        T t = this.f6169a;
        if (t != null) {
            t.onPause();
        } else {
            m38752l(5);
        }
    }

    @KeepForSdk
    /* renamed from: g */
    public void m38757g() {
        m38751m(null, new C25000g(this));
    }

    @KeepForSdk
    /* renamed from: h */
    public void m38756h(@RecentlyNonNull Bundle bundle) {
        T t = this.f6169a;
        if (t != null) {
            t.onSaveInstanceState(bundle);
            return;
        }
        Bundle bundle2 = this.f6170b;
        if (bundle2 == null) {
            return;
        }
        bundle.putAll(bundle2);
    }

    @KeepForSdk
    /* renamed from: i */
    public void m38755i() {
        m38751m(null, new C24999f(this));
    }

    @KeepForSdk
    /* renamed from: j */
    public void m38754j() {
        T t = this.f6169a;
        if (t != null) {
            t.onStop();
        } else {
            m38752l(4);
        }
    }

    /* renamed from: l */
    public final void m38752l(int i) {
        while (!this.f6171c.isEmpty() && this.f6171c.getLast().mo4235b() >= i) {
            this.f6171c.removeLast();
        }
    }

    /* renamed from: m */
    public final void m38751m(Bundle bundle, AbstractC25001h abstractC25001h) {
        T t = this.f6169a;
        if (t != null) {
            abstractC25001h.mo4236a(t);
            return;
        }
        if (this.f6171c == null) {
            this.f6171c = new LinkedList<>();
        }
        this.f6171c.add(abstractC25001h);
        if (bundle != null) {
            Bundle bundle2 = this.f6170b;
            if (bundle2 == null) {
                this.f6170b = (Bundle) bundle.clone();
            } else {
                bundle2.putAll(bundle);
            }
        }
        m38763a(this.f6172d);
    }
}
