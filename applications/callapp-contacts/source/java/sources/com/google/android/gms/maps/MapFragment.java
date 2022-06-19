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
import com.google.android.gms.common.internal.C12045o;
import com.google.android.gms.dynamic.AbstractC12125a;
import com.google.android.gms.dynamic.AbstractC12126b;
import com.google.android.gms.dynamic.AbstractC12130e;
import com.google.android.gms.dynamic.BinderC12129d;
import com.google.android.gms.maps.model.RuntimeRemoteException;
import com.google.android.gms.maps.p362a.AbstractC13796c;
import com.google.android.gms.maps.p362a.AbstractC13802i;
import com.google.android.gms.maps.p362a.C13788aa;
import com.google.android.gms.maps.p362a.C13789ab;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/MapFragment.class */
public class MapFragment extends Fragment {

    /* renamed from: a */
    private final C13779b f51113a = new C13779b(this);

    /* renamed from: com.google.android.gms.maps.MapFragment$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/MapFragment$a.class */
    public static final class C13778a implements AbstractC13802i {

        /* renamed from: a */
        private final Fragment f51114a;

        /* renamed from: b */
        private final AbstractC13796c f51115b;

        public C13778a(Fragment fragment, AbstractC13796c abstractC13796c) {
            this.f51115b = (AbstractC13796c) C12045o.m19162a(abstractC13796c);
            this.f51114a = (Fragment) C12045o.m19162a(fragment);
        }

        @Override // com.google.android.gms.dynamic.AbstractC12128c
        /* renamed from: a */
        public final View mo12159a(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
            try {
                Bundle bundle2 = new Bundle();
                C13788aa.m12249a(bundle, bundle2);
                AbstractC12126b mo12224a = this.f51115b.mo12224a(BinderC12129d.m18979a(layoutInflater), BinderC12129d.m18979a(viewGroup), bundle2);
                C13788aa.m12249a(bundle2, bundle);
                return (View) BinderC12129d.m18980a(mo12224a);
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        @Override // com.google.android.gms.dynamic.AbstractC12128c
        /* renamed from: a */
        public final void mo12162a() {
            try {
                this.f51115b.mo12216f();
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        @Override // com.google.android.gms.dynamic.AbstractC12128c
        /* renamed from: a */
        public final void mo12161a(Activity activity, Bundle bundle, Bundle bundle2) {
            GoogleMapOptions googleMapOptions = (GoogleMapOptions) bundle.getParcelable("MapOptions");
            try {
                Bundle bundle3 = new Bundle();
                C13788aa.m12249a(bundle2, bundle3);
                this.f51115b.mo12223a(BinderC12129d.m18979a(activity), googleMapOptions, bundle3);
                C13788aa.m12249a(bundle3, bundle2);
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        @Override // com.google.android.gms.dynamic.AbstractC12128c
        /* renamed from: a */
        public final void mo12160a(Bundle bundle) {
            try {
                Bundle bundle2 = new Bundle();
                C13788aa.m12249a(bundle, bundle2);
                Bundle arguments = this.f51114a.getArguments();
                if (arguments != null && arguments.containsKey("MapOptions")) {
                    C13788aa.m12247a(bundle2, "MapOptions", arguments.getParcelable("MapOptions"));
                }
                this.f51115b.mo12225a(bundle2);
                C13788aa.m12249a(bundle2, bundle);
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        /* renamed from: a */
        public final void m12259a(AbstractC13826e abstractC13826e) {
            try {
                this.f51115b.mo12222a(new BinderC13839m(this, abstractC13826e));
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        @Override // com.google.android.gms.dynamic.AbstractC12128c
        /* renamed from: b */
        public final void mo12157b() {
            try {
                this.f51115b.mo12226a();
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        @Override // com.google.android.gms.dynamic.AbstractC12128c
        /* renamed from: b */
        public final void mo12156b(Bundle bundle) {
            try {
                Bundle bundle2 = new Bundle();
                C13788aa.m12249a(bundle, bundle2);
                this.f51115b.mo12220b(bundle2);
                C13788aa.m12249a(bundle2, bundle);
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        @Override // com.google.android.gms.dynamic.AbstractC12128c
        /* renamed from: c */
        public final void mo12155c() {
            try {
                this.f51115b.mo12221b();
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        @Override // com.google.android.gms.dynamic.AbstractC12128c
        /* renamed from: d */
        public final void mo12154d() {
            try {
                this.f51115b.mo12215g();
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        @Override // com.google.android.gms.dynamic.AbstractC12128c
        /* renamed from: e */
        public final void mo12153e() {
            try {
                this.f51115b.mo12219c();
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        @Override // com.google.android.gms.dynamic.AbstractC12128c
        /* renamed from: f */
        public final void mo12152f() {
            try {
                this.f51115b.mo12218d();
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        @Override // com.google.android.gms.dynamic.AbstractC12128c
        /* renamed from: g */
        public final void mo12151g() {
            try {
                this.f51115b.mo12217e();
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }
    }

    /* renamed from: com.google.android.gms.maps.MapFragment$b */
    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/MapFragment$b.class */
    static final class C13779b extends AbstractC12125a<C13778a> {

        /* renamed from: d */
        private final Fragment f51116d;

        /* renamed from: e */
        private AbstractC12130e<C13778a> f51117e;

        /* renamed from: f */
        private Activity f51118f;

        /* renamed from: g */
        private final List<AbstractC13826e> f51119g = new ArrayList();

        C13779b(Fragment fragment) {
            this.f51116d = fragment;
        }

        /* renamed from: h */
        private final void m12257h() {
            if (this.f51118f == null || this.f51117e == null || this.f39650a != 0) {
                return;
            }
            try {
                C13825d.m12166a(this.f51118f);
                AbstractC13796c mo12240a = C13789ab.m12246a(this.f51118f).mo12240a(BinderC12129d.m18979a(this.f51118f));
                if (mo12240a == null) {
                    return;
                }
                this.f51117e.mo18978a(new C13778a(this.f51116d, mo12240a));
                for (AbstractC13826e abstractC13826e : this.f51119g) {
                    ((C13778a) this.f39650a).m12259a(abstractC13826e);
                }
                this.f51119g.clear();
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            } catch (GooglePlayServicesNotAvailableException e2) {
            }
        }

        /* renamed from: a */
        final void m12258a(Activity activity) {
            this.f51118f = activity;
            m12257h();
        }

        @Override // com.google.android.gms.dynamic.AbstractC12125a
        /* renamed from: a */
        public final void mo12149a(AbstractC12130e<C13778a> abstractC12130e) {
            this.f51117e = abstractC12130e;
            m12257h();
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
        this.f51113a.m12258a(activity);
    }

    @Override // android.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f51113a.m18992a(bundle);
    }

    @Override // android.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View a = this.f51113a.m18990a(layoutInflater, viewGroup, bundle);
        a.setClickable(true);
        return a;
    }

    @Override // android.app.Fragment
    public void onDestroy() {
        this.f51113a.m18983f();
        super.onDestroy();
    }

    @Override // android.app.Fragment
    public void onDestroyView() {
        this.f51113a.m18984e();
        super.onDestroyView();
    }

    @Override // android.app.Fragment
    public void onInflate(Activity activity, AttributeSet attributeSet, Bundle bundle) {
        StrictMode.ThreadPolicy threadPolicy = StrictMode.getThreadPolicy();
        StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder(threadPolicy).permitAll().build());
        try {
            super.onInflate(activity, attributeSet, bundle);
            this.f51113a.m12258a(activity);
            GoogleMapOptions createFromAttributes = GoogleMapOptions.createFromAttributes(activity, attributeSet);
            Bundle bundle2 = new Bundle();
            bundle2.putParcelable("MapOptions", createFromAttributes);
            this.f51113a.m18993a(activity, bundle2, bundle);
        } finally {
            StrictMode.setThreadPolicy(threadPolicy);
        }
    }

    @Override // android.app.Fragment, android.content.ComponentCallbacks
    public void onLowMemory() {
        this.f51113a.m18982g();
        super.onLowMemory();
    }

    @Override // android.app.Fragment
    public void onPause() {
        this.f51113a.m18986c();
        super.onPause();
    }

    @Override // android.app.Fragment
    public void onResume() {
        super.onResume();
        this.f51113a.m18988b();
    }

    @Override // android.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        if (bundle != null) {
            bundle.setClassLoader(MapFragment.class.getClassLoader());
        }
        super.onSaveInstanceState(bundle);
        this.f51113a.m18987b(bundle);
    }

    @Override // android.app.Fragment
    public void onStart() {
        super.onStart();
        this.f51113a.m18995a();
    }

    @Override // android.app.Fragment
    public void onStop() {
        this.f51113a.m18985d();
        super.onStop();
    }

    @Override // android.app.Fragment
    public void setArguments(Bundle bundle) {
        super.setArguments(bundle);
    }
}
