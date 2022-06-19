package com.google.android.gms.maps;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.os.StrictMode;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.internal.C12045o;
import com.google.android.gms.dynamic.AbstractC12125a;
import com.google.android.gms.dynamic.AbstractC12130e;
import com.google.android.gms.dynamic.BinderC12129d;
import com.google.android.gms.maps.model.RuntimeRemoteException;
import com.google.android.gms.maps.p362a.AbstractC13797d;
import com.google.android.gms.maps.p362a.AbstractC13802i;
import com.google.android.gms.maps.p362a.C13788aa;
import com.google.android.gms.maps.p362a.C13789ab;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/MapView.class */
public class MapView extends FrameLayout {

    /* renamed from: a */
    public final C13781b f51120a;

    /* renamed from: com.google.android.gms.maps.MapView$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/MapView$a.class */
    public static final class C13780a implements AbstractC13802i {

        /* renamed from: a */
        private final ViewGroup f51121a;

        /* renamed from: b */
        private final AbstractC13797d f51122b;

        /* renamed from: c */
        private View f51123c;

        public C13780a(ViewGroup viewGroup, AbstractC13797d abstractC13797d) {
            this.f51122b = (AbstractC13797d) C12045o.m19162a(abstractC13797d);
            this.f51121a = (ViewGroup) C12045o.m19162a(viewGroup);
        }

        @Override // com.google.android.gms.dynamic.AbstractC12128c
        /* renamed from: a */
        public final View mo12159a(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
            throw new UnsupportedOperationException("onCreateView not allowed on MapViewDelegate");
        }

        @Override // com.google.android.gms.dynamic.AbstractC12128c
        /* renamed from: a */
        public final void mo12162a() {
            try {
                this.f51122b.mo12206f();
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        @Override // com.google.android.gms.dynamic.AbstractC12128c
        /* renamed from: a */
        public final void mo12161a(Activity activity, Bundle bundle, Bundle bundle2) {
            throw new UnsupportedOperationException("onInflate not allowed on MapViewDelegate");
        }

        @Override // com.google.android.gms.dynamic.AbstractC12128c
        /* renamed from: a */
        public final void mo12160a(Bundle bundle) {
            try {
                Bundle bundle2 = new Bundle();
                C13788aa.m12249a(bundle, bundle2);
                this.f51122b.mo12213a(bundle2);
                C13788aa.m12249a(bundle2, bundle);
                this.f51123c = (View) BinderC12129d.m18980a(this.f51122b.mo12207e());
                this.f51121a.removeAllViews();
                this.f51121a.addView(this.f51123c);
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        /* renamed from: a */
        public final void m12254a(AbstractC13826e abstractC13826e) {
            try {
                this.f51122b.mo12212a(new BinderC13840n(this, abstractC13826e));
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        @Override // com.google.android.gms.dynamic.AbstractC12128c
        /* renamed from: b */
        public final void mo12157b() {
            try {
                this.f51122b.mo12214a();
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
                this.f51122b.mo12210b(bundle2);
                C13788aa.m12249a(bundle2, bundle);
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        @Override // com.google.android.gms.dynamic.AbstractC12128c
        /* renamed from: c */
        public final void mo12155c() {
            try {
                this.f51122b.mo12211b();
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        @Override // com.google.android.gms.dynamic.AbstractC12128c
        /* renamed from: d */
        public final void mo12154d() {
            try {
                this.f51122b.mo12205g();
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        @Override // com.google.android.gms.dynamic.AbstractC12128c
        /* renamed from: e */
        public final void mo12153e() {
            throw new UnsupportedOperationException("onDestroyView not allowed on MapViewDelegate");
        }

        @Override // com.google.android.gms.dynamic.AbstractC12128c
        /* renamed from: f */
        public final void mo12152f() {
            try {
                this.f51122b.mo12209c();
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        @Override // com.google.android.gms.dynamic.AbstractC12128c
        /* renamed from: g */
        public final void mo12151g() {
            try {
                this.f51122b.mo12208d();
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }
    }

    /* renamed from: com.google.android.gms.maps.MapView$b */
    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/MapView$b.class */
    public static final class C13781b extends AbstractC12125a<C13780a> {

        /* renamed from: d */
        private final ViewGroup f51124d;

        /* renamed from: e */
        private final Context f51125e;

        /* renamed from: f */
        private AbstractC12130e<C13780a> f51126f;

        /* renamed from: g */
        private final GoogleMapOptions f51127g;

        /* renamed from: h */
        private final List<AbstractC13826e> f51128h = new ArrayList();

        C13781b(ViewGroup viewGroup, Context context, GoogleMapOptions googleMapOptions) {
            this.f51124d = viewGroup;
            this.f51125e = context;
            this.f51127g = googleMapOptions;
        }

        @Override // com.google.android.gms.dynamic.AbstractC12125a
        /* renamed from: a */
        public final void mo12149a(AbstractC12130e<C13780a> abstractC12130e) {
            this.f51126f = abstractC12130e;
            if (abstractC12130e == null || this.f39650a != 0) {
                return;
            }
            try {
                C13825d.m12166a(this.f51125e);
                AbstractC13797d mo12238a = C13789ab.m12246a(this.f51125e).mo12238a(BinderC12129d.m18979a(this.f51125e), this.f51127g);
                if (mo12238a == null) {
                    return;
                }
                this.f51126f.mo18978a(new C13780a(this.f51124d, mo12238a));
                for (AbstractC13826e abstractC13826e : this.f51128h) {
                    ((C13780a) this.f39650a).m12254a(abstractC13826e);
                }
                this.f51128h.clear();
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            } catch (GooglePlayServicesNotAvailableException e2) {
            }
        }

        /* renamed from: a */
        public final void m12253a(AbstractC13826e abstractC13826e) {
            if (this.f39650a != 0) {
                ((C13780a) this.f39650a).m12254a(abstractC13826e);
            } else {
                this.f51128h.add(abstractC13826e);
            }
        }
    }

    public MapView(Context context) {
        super(context);
        this.f51120a = new C13781b(this, context, null);
        setClickable(true);
    }

    public MapView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f51120a = new C13781b(this, context, GoogleMapOptions.createFromAttributes(context, attributeSet));
        setClickable(true);
    }

    public MapView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f51120a = new C13781b(this, context, GoogleMapOptions.createFromAttributes(context, attributeSet));
        setClickable(true);
    }

    public MapView(Context context, GoogleMapOptions googleMapOptions) {
        super(context);
        this.f51120a = new C13781b(this, context, googleMapOptions);
        setClickable(true);
    }

    /* renamed from: a */
    public final void m12256a() {
        StrictMode.ThreadPolicy threadPolicy = StrictMode.getThreadPolicy();
        StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder(threadPolicy).permitAll().build());
        try {
            this.f51120a.m18992a((Bundle) null);
            if (this.f51120a.f39650a == 0) {
                AbstractC12125a.m18989a(this);
            }
        } finally {
            StrictMode.setThreadPolicy(threadPolicy);
        }
    }

    /* renamed from: a */
    public final void m12255a(AbstractC13826e abstractC13826e) {
        C12045o.m19155b("getMapAsync() must be called on the main thread");
        this.f51120a.m12253a(abstractC13826e);
    }
}
