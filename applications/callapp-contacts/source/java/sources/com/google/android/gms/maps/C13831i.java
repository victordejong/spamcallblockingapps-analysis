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
/* renamed from: com.google.android.gms.maps.i */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/i.class */
public class C13831i extends Fragment {

    /* renamed from: a */
    private final C13833b f51154a = new C13833b(this);

    /* renamed from: com.google.android.gms.maps.i$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/i$a.class */
    public static final class C13832a implements AbstractC13802i {

        /* renamed from: a */
        private final Fragment f51155a;

        /* renamed from: b */
        private final AbstractC13796c f51156b;

        public C13832a(Fragment fragment, AbstractC13796c abstractC13796c) {
            this.f51156b = (AbstractC13796c) C12045o.m19162a(abstractC13796c);
            this.f51155a = (Fragment) C12045o.m19162a(fragment);
        }

        @Override // com.google.android.gms.dynamic.AbstractC12128c
        /* renamed from: a */
        public final View mo12159a(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
            try {
                Bundle bundle2 = new Bundle();
                C13788aa.m12249a(bundle, bundle2);
                AbstractC12126b mo12224a = this.f51156b.mo12224a(BinderC12129d.m18979a(layoutInflater), BinderC12129d.m18979a(viewGroup), bundle2);
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
                this.f51156b.mo12216f();
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
                this.f51156b.mo12223a(BinderC12129d.m18979a(activity), googleMapOptions, bundle3);
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
                Bundle arguments = this.f51155a.getArguments();
                if (arguments != null && arguments.containsKey("MapOptions")) {
                    C13788aa.m12247a(bundle2, "MapOptions", arguments.getParcelable("MapOptions"));
                }
                this.f51156b.mo12225a(bundle2);
                C13788aa.m12249a(bundle2, bundle);
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        /* renamed from: a */
        public final void m12165a(AbstractC13826e abstractC13826e) {
            try {
                this.f51156b.mo12222a(new BinderC13844r(this, abstractC13826e));
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        @Override // com.google.android.gms.dynamic.AbstractC12128c
        /* renamed from: b */
        public final void mo12157b() {
            try {
                this.f51156b.mo12226a();
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
                this.f51156b.mo12220b(bundle2);
                C13788aa.m12249a(bundle2, bundle);
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        @Override // com.google.android.gms.dynamic.AbstractC12128c
        /* renamed from: c */
        public final void mo12155c() {
            try {
                this.f51156b.mo12221b();
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        @Override // com.google.android.gms.dynamic.AbstractC12128c
        /* renamed from: d */
        public final void mo12154d() {
            try {
                this.f51156b.mo12215g();
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        @Override // com.google.android.gms.dynamic.AbstractC12128c
        /* renamed from: e */
        public final void mo12153e() {
            try {
                this.f51156b.mo12219c();
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        @Override // com.google.android.gms.dynamic.AbstractC12128c
        /* renamed from: f */
        public final void mo12152f() {
            try {
                this.f51156b.mo12218d();
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        @Override // com.google.android.gms.dynamic.AbstractC12128c
        /* renamed from: g */
        public final void mo12151g() {
            try {
                this.f51156b.mo12217e();
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }
    }

    /* renamed from: com.google.android.gms.maps.i$b */
    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/i$b.class */
    static final class C13833b extends AbstractC12125a<C13832a> {

        /* renamed from: d */
        private final Fragment f51157d;

        /* renamed from: e */
        private AbstractC12130e<C13832a> f51158e;

        /* renamed from: f */
        private Activity f51159f;

        /* renamed from: g */
        private final List<AbstractC13826e> f51160g = new ArrayList();

        C13833b(Fragment fragment) {
            this.f51157d = fragment;
        }

        /* renamed from: h */
        private final void m12163h() {
            if (this.f51159f == null || this.f51158e == null || this.f39650a != 0) {
                return;
            }
            try {
                C13825d.m12166a(this.f51159f);
                AbstractC13796c mo12240a = C13789ab.m12246a(this.f51159f).mo12240a(BinderC12129d.m18979a(this.f51159f));
                if (mo12240a == null) {
                    return;
                }
                this.f51158e.mo18978a(new C13832a(this.f51157d, mo12240a));
                for (AbstractC13826e abstractC13826e : this.f51160g) {
                    ((C13832a) this.f39650a).m12165a(abstractC13826e);
                }
                this.f51160g.clear();
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            } catch (GooglePlayServicesNotAvailableException e2) {
            }
        }

        /* renamed from: a */
        final void m12164a(Activity activity) {
            this.f51159f = activity;
            m12163h();
        }

        @Override // com.google.android.gms.dynamic.AbstractC12125a
        /* renamed from: a */
        public final void mo12149a(AbstractC12130e<C13832a> abstractC12130e) {
            this.f51158e = abstractC12130e;
            m12163h();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        if (bundle != null) {
            bundle.setClassLoader(C13831i.class.getClassLoader());
        }
        super.onActivityCreated(bundle);
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        this.f51154a.m12164a(activity);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f51154a.m18992a(bundle);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View a = this.f51154a.m18990a(layoutInflater, viewGroup, bundle);
        a.setClickable(true);
        return a;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        this.f51154a.m18983f();
        super.onDestroy();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        this.f51154a.m18984e();
        super.onDestroyView();
    }

    @Override // androidx.fragment.app.Fragment
    public void onInflate(Activity activity, AttributeSet attributeSet, Bundle bundle) {
        StrictMode.ThreadPolicy threadPolicy = StrictMode.getThreadPolicy();
        StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder(threadPolicy).permitAll().build());
        try {
            super.onInflate(activity, attributeSet, bundle);
            this.f51154a.m12164a(activity);
            GoogleMapOptions createFromAttributes = GoogleMapOptions.createFromAttributes(activity, attributeSet);
            Bundle bundle2 = new Bundle();
            bundle2.putParcelable("MapOptions", createFromAttributes);
            this.f51154a.m18993a(activity, bundle2, bundle);
        } finally {
            StrictMode.setThreadPolicy(threadPolicy);
        }
    }

    @Override // androidx.fragment.app.Fragment, android.content.ComponentCallbacks
    public void onLowMemory() {
        this.f51154a.m18982g();
        super.onLowMemory();
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        this.f51154a.m18986c();
        super.onPause();
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        this.f51154a.m18988b();
    }

    @Override // androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        if (bundle != null) {
            bundle.setClassLoader(C13831i.class.getClassLoader());
        }
        super.onSaveInstanceState(bundle);
        this.f51154a.m18987b(bundle);
    }

    @Override // androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        this.f51154a.m18995a();
    }

    @Override // androidx.fragment.app.Fragment
    public void onStop() {
        this.f51154a.m18985d();
        super.onStop();
    }

    @Override // androidx.fragment.app.Fragment
    public void setArguments(Bundle bundle) {
        super.setArguments(bundle);
    }
}
