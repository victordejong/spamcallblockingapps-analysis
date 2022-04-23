package com.google.android.gms.maps;

import android.app.Activity;
import android.app.Fragment;
import android.os.Bundle;
import android.os.RemoteException;
import android.os.StrictMode;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.dynamic.d;
import com.google.android.gms.dynamic.e;
import com.google.android.gms.maps.a.aa;
import com.google.android.gms.maps.a.ab;
import com.google.android.gms.maps.a.c;
import com.google.android.gms.maps.a.i;
import com.google.android.gms.maps.model.RuntimeRemoteException;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/MapFragment.class */
public class MapFragment extends Fragment {

    /* renamed from: a  reason: collision with root package name */
    private final b f29340a = new b(this);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/MapFragment$a.class */
    public static final class a implements i {

        /* renamed from: a  reason: collision with root package name */
        private final Fragment f29341a;

        /* renamed from: b  reason: collision with root package name */
        private final c f29342b;

        public a(Fragment fragment, c cVar) {
            this.f29342b = (c) o.a(cVar);
            this.f29341a = (Fragment) o.a(fragment);
        }

        @Override // com.google.android.gms.dynamic.c
        public final View a(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
            try {
                Bundle bundle2 = new Bundle();
                aa.a(bundle, bundle2);
                com.google.android.gms.dynamic.b a2 = this.f29342b.a(d.a(layoutInflater), d.a(viewGroup), bundle2);
                aa.a(bundle2, bundle);
                return (View) d.a(a2);
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        @Override // com.google.android.gms.dynamic.c
        public final void a() {
            try {
                this.f29342b.f();
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        @Override // com.google.android.gms.dynamic.c
        public final void a(Activity activity, Bundle bundle, Bundle bundle2) {
            GoogleMapOptions googleMapOptions = (GoogleMapOptions) bundle.getParcelable("MapOptions");
            try {
                Bundle bundle3 = new Bundle();
                aa.a(bundle2, bundle3);
                this.f29342b.a(d.a(activity), googleMapOptions, bundle3);
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
                Bundle arguments = this.f29341a.getArguments();
                if (arguments != null && arguments.containsKey("MapOptions")) {
                    aa.a(bundle2, "MapOptions", arguments.getParcelable("MapOptions"));
                }
                this.f29342b.a(bundle2);
                aa.a(bundle2, bundle);
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        public final void a(e eVar) {
            try {
                this.f29342b.a(new m(this, eVar));
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        @Override // com.google.android.gms.dynamic.c
        public final void b() {
            try {
                this.f29342b.a();
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        @Override // com.google.android.gms.dynamic.c
        public final void b(Bundle bundle) {
            try {
                Bundle bundle2 = new Bundle();
                aa.a(bundle, bundle2);
                this.f29342b.b(bundle2);
                aa.a(bundle2, bundle);
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        @Override // com.google.android.gms.dynamic.c
        public final void c() {
            try {
                this.f29342b.b();
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        @Override // com.google.android.gms.dynamic.c
        public final void d() {
            try {
                this.f29342b.g();
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        @Override // com.google.android.gms.dynamic.c
        public final void e() {
            try {
                this.f29342b.c();
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        @Override // com.google.android.gms.dynamic.c
        public final void f() {
            try {
                this.f29342b.d();
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        @Override // com.google.android.gms.dynamic.c
        public final void g() {
            try {
                this.f29342b.e();
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/MapFragment$b.class */
    static final class b extends com.google.android.gms.dynamic.a<a> {

        /* renamed from: d  reason: collision with root package name */
        private final Fragment f29343d;
        private e<a> e;
        private Activity f;
        private final List<e> g = new ArrayList();

        b(Fragment fragment) {
            this.f29343d = fragment;
        }

        private final void h() {
            if (this.f != null && this.e != null && this.f22960a == 0) {
                try {
                    d.a(this.f);
                    c a2 = ab.a(this.f).a(d.a(this.f));
                    if (a2 != null) {
                        this.e.a(new a(this.f29343d, a2));
                        for (e eVar : this.g) {
                            ((a) this.f22960a).a(eVar);
                        }
                        this.g.clear();
                    }
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

    @Override // android.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        if (bundle != null) {
            bundle.setClassLoader(MapFragment.class.getClassLoader());
        }
        super.onActivityCreated(bundle);
    }

    @Override // android.app.Fragment
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        this.f29340a.a(activity);
    }

    @Override // android.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f29340a.a(bundle);
    }

    @Override // android.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View a2 = this.f29340a.a(layoutInflater, viewGroup, bundle);
        a2.setClickable(true);
        return a2;
    }

    @Override // android.app.Fragment
    public void onDestroy() {
        this.f29340a.f();
        super.onDestroy();
    }

    @Override // android.app.Fragment
    public void onDestroyView() {
        this.f29340a.e();
        super.onDestroyView();
    }

    @Override // android.app.Fragment
    public void onInflate(Activity activity, AttributeSet attributeSet, Bundle bundle) {
        StrictMode.ThreadPolicy threadPolicy = StrictMode.getThreadPolicy();
        StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder(threadPolicy).permitAll().build());
        try {
            super.onInflate(activity, attributeSet, bundle);
            this.f29340a.a(activity);
            GoogleMapOptions createFromAttributes = GoogleMapOptions.createFromAttributes(activity, attributeSet);
            Bundle bundle2 = new Bundle();
            bundle2.putParcelable("MapOptions", createFromAttributes);
            this.f29340a.a(activity, bundle2, bundle);
        } finally {
            StrictMode.setThreadPolicy(threadPolicy);
        }
    }

    @Override // android.app.Fragment, android.content.ComponentCallbacks
    public void onLowMemory() {
        this.f29340a.g();
        super.onLowMemory();
    }

    @Override // android.app.Fragment
    public void onPause() {
        this.f29340a.c();
        super.onPause();
    }

    @Override // android.app.Fragment
    public void onResume() {
        super.onResume();
        this.f29340a.b();
    }

    @Override // android.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        if (bundle != null) {
            bundle.setClassLoader(MapFragment.class.getClassLoader());
        }
        super.onSaveInstanceState(bundle);
        this.f29340a.b(bundle);
    }

    @Override // android.app.Fragment
    public void onStart() {
        super.onStart();
        this.f29340a.a();
    }

    @Override // android.app.Fragment
    public void onStop() {
        this.f29340a.d();
        super.onStop();
    }

    @Override // android.app.Fragment
    public void setArguments(Bundle bundle) {
        super.setArguments(bundle);
    }
}
