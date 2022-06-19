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
import com.google.android.gms.maps.p362a.AbstractC13799f;
import com.google.android.gms.maps.p362a.AbstractC13803j;
import com.google.android.gms.maps.p362a.C13788aa;
import com.google.android.gms.maps.p362a.C13789ab;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/StreetViewPanoramaFragment.class */
public class StreetViewPanoramaFragment extends Fragment {

    /* renamed from: a */
    private final C13783b f51129a = new C13783b(this);

    /* renamed from: com.google.android.gms.maps.StreetViewPanoramaFragment$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/StreetViewPanoramaFragment$a.class */
    public static final class C13782a implements AbstractC13803j {

        /* renamed from: a */
        private final Fragment f51130a;

        /* renamed from: b */
        private final AbstractC13799f f51131b;

        public C13782a(Fragment fragment, AbstractC13799f abstractC13799f) {
            this.f51131b = (AbstractC13799f) C12045o.m19162a(abstractC13799f);
            this.f51130a = (Fragment) C12045o.m19162a(fragment);
        }

        @Override // com.google.android.gms.dynamic.AbstractC12128c
        /* renamed from: a */
        public final View mo12159a(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
            try {
                Bundle bundle2 = new Bundle();
                C13788aa.m12249a(bundle, bundle2);
                AbstractC12126b mo12198a = this.f51131b.mo12198a(BinderC12129d.m18979a(layoutInflater), BinderC12129d.m18979a(viewGroup), bundle2);
                C13788aa.m12249a(bundle2, bundle);
                return (View) BinderC12129d.m18980a(mo12198a);
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        @Override // com.google.android.gms.dynamic.AbstractC12128c
        /* renamed from: a */
        public final void mo12162a() {
            try {
                this.f51131b.mo12191f();
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        @Override // com.google.android.gms.dynamic.AbstractC12128c
        /* renamed from: a */
        public final void mo12161a(Activity activity, Bundle bundle, Bundle bundle2) {
            try {
                Bundle bundle3 = new Bundle();
                C13788aa.m12249a(bundle2, bundle3);
                this.f51131b.mo12199a(BinderC12129d.m18979a(activity), bundle3);
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
                Bundle arguments = this.f51130a.getArguments();
                if (arguments != null && arguments.containsKey("StreetViewPanoramaOptions")) {
                    C13788aa.m12247a(bundle2, "StreetViewPanoramaOptions", arguments.getParcelable("StreetViewPanoramaOptions"));
                }
                this.f51131b.mo12200a(bundle2);
                C13788aa.m12249a(bundle2, bundle);
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        /* renamed from: a */
        public final void m12252a(AbstractC13827f abstractC13827f) {
            try {
                this.f51131b.mo12197a(new BinderC13841o(this, abstractC13827f));
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        @Override // com.google.android.gms.dynamic.AbstractC12128c
        /* renamed from: b */
        public final void mo12157b() {
            try {
                this.f51131b.mo12201a();
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
                this.f51131b.mo12195b(bundle2);
                C13788aa.m12249a(bundle2, bundle);
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        @Override // com.google.android.gms.dynamic.AbstractC12128c
        /* renamed from: c */
        public final void mo12155c() {
            try {
                this.f51131b.mo12196b();
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        @Override // com.google.android.gms.dynamic.AbstractC12128c
        /* renamed from: d */
        public final void mo12154d() {
            try {
                this.f51131b.mo12190g();
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        @Override // com.google.android.gms.dynamic.AbstractC12128c
        /* renamed from: e */
        public final void mo12153e() {
            try {
                this.f51131b.mo12194c();
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        @Override // com.google.android.gms.dynamic.AbstractC12128c
        /* renamed from: f */
        public final void mo12152f() {
            try {
                this.f51131b.mo12193d();
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        @Override // com.google.android.gms.dynamic.AbstractC12128c
        /* renamed from: g */
        public final void mo12151g() {
            try {
                this.f51131b.mo12192e();
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }
    }

    /* renamed from: com.google.android.gms.maps.StreetViewPanoramaFragment$b */
    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/StreetViewPanoramaFragment$b.class */
    static final class C13783b extends AbstractC12125a<C13782a> {

        /* renamed from: d */
        private final Fragment f51132d;

        /* renamed from: e */
        private AbstractC12130e<C13782a> f51133e;

        /* renamed from: f */
        private Activity f51134f;

        /* renamed from: g */
        private final List<AbstractC13827f> f51135g = new ArrayList();

        C13783b(Fragment fragment) {
            this.f51132d = fragment;
        }

        /* renamed from: h */
        private final void m12250h() {
            if (this.f51134f == null || this.f51133e == null || this.f39650a != 0) {
                return;
            }
            try {
                C13825d.m12166a(this.f51134f);
                this.f51133e.mo18978a(new C13782a(this.f51132d, C13789ab.m12246a(this.f51134f).mo12235b(BinderC12129d.m18979a(this.f51134f))));
                for (AbstractC13827f abstractC13827f : this.f51135g) {
                    ((C13782a) this.f39650a).m12252a(abstractC13827f);
                }
                this.f51135g.clear();
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            } catch (GooglePlayServicesNotAvailableException e2) {
            }
        }

        /* renamed from: a */
        final void m12251a(Activity activity) {
            this.f51134f = activity;
            m12250h();
        }

        @Override // com.google.android.gms.dynamic.AbstractC12125a
        /* renamed from: a */
        public final void mo12149a(AbstractC12130e<C13782a> abstractC12130e) {
            this.f51133e = abstractC12130e;
            m12250h();
        }
    }

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
        this.f51129a.m12251a(activity);
    }

    @Override // android.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f51129a.m18992a(bundle);
    }

    @Override // android.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return this.f51129a.m18990a(layoutInflater, viewGroup, bundle);
    }

    @Override // android.app.Fragment
    public void onDestroy() {
        this.f51129a.m18983f();
        super.onDestroy();
    }

    @Override // android.app.Fragment
    public void onDestroyView() {
        this.f51129a.m18984e();
        super.onDestroyView();
    }

    @Override // android.app.Fragment
    public void onInflate(Activity activity, AttributeSet attributeSet, Bundle bundle) {
        StrictMode.ThreadPolicy threadPolicy = StrictMode.getThreadPolicy();
        StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder(threadPolicy).permitAll().build());
        try {
            super.onInflate(activity, attributeSet, bundle);
            this.f51129a.m12251a(activity);
            this.f51129a.m18993a(activity, new Bundle(), bundle);
        } finally {
            StrictMode.setThreadPolicy(threadPolicy);
        }
    }

    @Override // android.app.Fragment, android.content.ComponentCallbacks
    public void onLowMemory() {
        this.f51129a.m18982g();
        super.onLowMemory();
    }

    @Override // android.app.Fragment
    public void onPause() {
        this.f51129a.m18986c();
        super.onPause();
    }

    @Override // android.app.Fragment
    public void onResume() {
        super.onResume();
        this.f51129a.m18988b();
    }

    @Override // android.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        if (bundle != null) {
            bundle.setClassLoader(StreetViewPanoramaFragment.class.getClassLoader());
        }
        super.onSaveInstanceState(bundle);
        this.f51129a.m18987b(bundle);
    }

    @Override // android.app.Fragment
    public void onStart() {
        super.onStart();
        this.f51129a.m18995a();
    }

    @Override // android.app.Fragment
    public void onStop() {
        this.f51129a.m18985d();
        super.onStop();
    }

    @Override // android.app.Fragment
    public void setArguments(Bundle bundle) {
        super.setArguments(bundle);
    }
}
