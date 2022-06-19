package com.google.android.gms.maps;

import android.app.Activity;
import android.app.Fragment;
import android.os.Bundle;
import android.os.StrictMode;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import p193e.p1577m.p1578a.p1642f.p1660f.C24995b;
import p193e.p1577m.p1578a.p1642f.p1660f.C24996c;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/maps/StreetViewPanoramaFragment.class */
public class StreetViewPanoramaFragment extends Fragment {

    /* renamed from: a */
    public final b f6243a = new b(this);

    @Override // android.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        if (bundle != null) {
            bundle.setClassLoader(StreetViewPanoramaFragment.class.getClassLoader());
        }
        super.onActivityCreated(bundle);
    }

    @Override // android.app.Fragment
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        b bVar = this.f6243a;
        bVar.g = activity;
        bVar.n();
    }

    @Override // android.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        b bVar = this.f6243a;
        bVar.m38751m(bundle, new C24996c(bVar, bundle));
    }

    @Override // android.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return this.f6243a.m38762b(layoutInflater, viewGroup, bundle);
    }

    @Override // android.app.Fragment
    public void onDestroy() {
        this.f6243a.m38761c();
        super.onDestroy();
    }

    @Override // android.app.Fragment
    public void onDestroyView() {
        this.f6243a.m38760d();
        super.onDestroyView();
    }

    @Override // android.app.Fragment
    public void onInflate(Activity activity, AttributeSet attributeSet, Bundle bundle) {
        StrictMode.ThreadPolicy threadPolicy = StrictMode.getThreadPolicy();
        StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder(threadPolicy).permitAll().build());
        try {
            super.onInflate(activity, attributeSet, bundle);
            b bVar = this.f6243a;
            bVar.g = activity;
            bVar.n();
            Bundle bundle2 = new Bundle();
            b bVar2 = this.f6243a;
            bVar2.m38751m(bundle, new C24995b(bVar2, activity, bundle2, bundle));
        } finally {
            StrictMode.setThreadPolicy(threadPolicy);
        }
    }

    @Override // android.app.Fragment, android.content.ComponentCallbacks
    public void onLowMemory() {
        this.f6243a.m38759e();
        super.onLowMemory();
    }

    @Override // android.app.Fragment
    public void onPause() {
        this.f6243a.m38758f();
        super.onPause();
    }

    @Override // android.app.Fragment
    public void onResume() {
        super.onResume();
        this.f6243a.m38757g();
    }

    @Override // android.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        if (bundle != null) {
            bundle.setClassLoader(StreetViewPanoramaFragment.class.getClassLoader());
        }
        super.onSaveInstanceState(bundle);
        this.f6243a.m38756h(bundle);
    }

    @Override // android.app.Fragment
    public void onStart() {
        super.onStart();
        this.f6243a.m38755i();
    }

    @Override // android.app.Fragment
    public void onStop() {
        this.f6243a.m38754j();
        super.onStop();
    }

    @Override // android.app.Fragment
    public void setArguments(Bundle bundle) {
        super.setArguments(bundle);
    }
}
