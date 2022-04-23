package com.google.android.gms.maps;

import android.app.Activity;
import android.os.Bundle;
import android.os.RemoteException;
import android.os.StrictMode;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.dynamic.d;
import com.google.android.gms.dynamic.e;
import com.google.android.gms.maps.a.aa;
import com.google.android.gms.maps.a.ab;
import com.google.android.gms.maps.a.f;
import com.google.android.gms.maps.model.RuntimeRemoteException;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/j.class */
public class j extends Fragment {

    /* renamed from: a  reason: collision with root package name */
    private final b f29371a = new b(this);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/j$a.class */
    public static final class a implements com.google.android.gms.maps.a.j {

        /* renamed from: a  reason: collision with root package name */
        private final Fragment f29372a;

        /* renamed from: b  reason: collision with root package name */
        private final f f29373b;

        public a(Fragment fragment, f fVar) {
            this.f29373b = (f) o.a(fVar);
            this.f29372a = (Fragment) o.a(fragment);
        }

        @Override // com.google.android.gms.dynamic.c
        public final View a(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
            try {
                Bundle bundle2 = new Bundle();
                aa.a(bundle, bundle2);
                com.google.android.gms.dynamic.b a2 = this.f29373b.a(d.a(layoutInflater), d.a(viewGroup), bundle2);
                aa.a(bundle2, bundle);
                return (View) d.a(a2);
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        @Override // com.google.android.gms.dynamic.c
        public final void a() {
            try {
                this.f29373b.f();
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        @Override // com.google.android.gms.dynamic.c
        public final void a(Activity activity, Bundle bundle, Bundle bundle2) {
            try {
                Bundle bundle3 = new Bundle();
                aa.a(bundle2, bundle3);
                this.f29373b.a(d.a(activity), bundle3);
                aa.a(bundle3, bundle2);
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        @Override // com.google.android.gms.dynamic.c
        public final void a(Bundle bundle) {
            try {
                Bundle bundle2 = new Bundle();
                aa.a(bundle, bundle2);
                Bundle arguments = this.f29372a.getArguments();
                if (arguments != null && arguments.containsKey("StreetViewPanoramaOptions")) {
                    aa.a(bundle2, "StreetViewPanoramaOptions", arguments.getParcelable("StreetViewPanoramaOptions"));
                }
                this.f29373b.a(bundle2);
                aa.a(bundle2, bundle);
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        public final void a(f fVar) {
            try {
                this.f29373b.a(new s(this, fVar));
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        @Override // com.google.android.gms.dynamic.c
        public final void b() {
            try {
                this.f29373b.a();
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        @Override // com.google.android.gms.dynamic.c
        public final void b(Bundle bundle) {
            try {
                Bundle bundle2 = new Bundle();
                aa.a(bundle, bundle2);
                this.f29373b.b(bundle2);
                aa.a(bundle2, bundle);
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        @Override // com.google.android.gms.dynamic.c
        public final void c() {
            try {
                this.f29373b.b();
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        @Override // com.google.android.gms.dynamic.c
        public final void d() {
            try {
                this.f29373b.g();
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        @Override // com.google.android.gms.dynamic.c
        public final void e() {
            try {
                this.f29373b.c();
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        @Override // com.google.android.gms.dynamic.c
        public final void f() {
            try {
                this.f29373b.d();
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        @Override // com.google.android.gms.dynamic.c
        public final void g() {
            try {
                this.f29373b.e();
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/j$b.class */
    static final class b extends com.google.android.gms.dynamic.a<a> {

        /* renamed from: d  reason: collision with root package name */
        private final Fragment f29374d;
        private e<a> e;
        private Activity f;
        private final List<f> g = new ArrayList();

        b(Fragment fragment) {
            this.f29374d = fragment;
        }

        private final void h() {
            if (this.f != null && this.e != null && this.f22960a == 0) {
                try {
                    d.a(this.f);
                    this.e.a(new a(this.f29374d, ab.a(this.f).b(d.a(this.f))));
                    for (f fVar : this.g) {
                        ((a) this.f22960a).a(fVar);
                    }
                    this.g.clear();
                } catch (RemoteException e) {
                    throw new RuntimeRemoteException(e);
                } catch (GooglePlayServicesNotAvailableException e2) {
                }
            }
        }

        final void a(Activity activity) {
            this.f = activity;
            h();
        }

        @Override // com.google.android.gms.dynamic.a
        public final void a(e<a> eVar) {
            this.e = eVar;
            h();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        if (bundle != null) {
            bundle.setClassLoader(j.class.getClassLoader());
        }
        super.onActivityCreated(bundle);
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        this.f29371a.a(activity);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f29371a.a(bundle);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return this.f29371a.a(layoutInflater, viewGroup, bundle);
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        this.f29371a.f();
        super.onDestroy();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        this.f29371a.e();
        super.onDestroyView();
    }

    @Override // androidx.fragment.app.Fragment
    public void onInflate(Activity activity, AttributeSet attributeSet, Bundle bundle) {
        StrictMode.ThreadPolicy threadPolicy = StrictMode.getThreadPolicy();
        StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder(threadPolicy).permitAll().build());
        try {
            super.onInflate(activity, attributeSet, bundle);
            this.f29371a.a(activity);
            this.f29371a.a(activity, new Bundle(), bundle);
        } finally {
            StrictMode.setThreadPolicy(threadPolicy);
        }
    }

    @Override // androidx.fragment.app.Fragment, android.content.ComponentCallbacks
    public void onLowMemory() {
        this.f29371a.g();
        super.onLowMemory();
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        this.f29371a.c();
        super.onPause();
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        this.f29371a.b();
    }

    @Override // androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        if (bundle != null) {
            bundle.setClassLoader(j.class.getClassLoader());
        }
        super.onSaveInstanceState(bundle);
        this.f29371a.b(bundle);
    }

    @Override // androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        this.f29371a.a();
    }

    @Override // androidx.fragment.app.Fragment
    public void onStop() {
        this.f29371a.d();
        super.onStop();
    }

    @Override // androidx.fragment.app.Fragment
    public void setArguments(Bundle bundle) {
        super.setArguments(bundle);
    }
}
