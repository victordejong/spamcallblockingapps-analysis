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
import com.google.android.gms.common.internal.o;
import com.google.android.gms.dynamic.e;
import com.google.android.gms.maps.a.aa;
import com.google.android.gms.maps.a.ab;
import com.google.android.gms.maps.a.d;
import com.google.android.gms.maps.a.i;
import com.google.android.gms.maps.model.RuntimeRemoteException;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/MapView.class */
public class MapView extends FrameLayout {

    /* renamed from: a  reason: collision with root package name */
    public final b f29344a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/MapView$a.class */
    public static final class a implements i {

        /* renamed from: a  reason: collision with root package name */
        private final ViewGroup f29345a;

        /* renamed from: b  reason: collision with root package name */
        private final d f29346b;

        /* renamed from: c  reason: collision with root package name */
        private View f29347c;

        public a(ViewGroup viewGroup, d dVar) {
            this.f29346b = (d) o.a(dVar);
            this.f29345a = (ViewGroup) o.a(viewGroup);
        }

        @Override // com.google.android.gms.dynamic.c
        public final View a(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
            throw new UnsupportedOperationException("onCreateView not allowed on MapViewDelegate");
        }

        @Override // com.google.android.gms.dynamic.c
        public final void a() {
            try {
                this.f29346b.f();
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        @Override // com.google.android.gms.dynamic.c
        public final void a(Activity activity, Bundle bundle, Bundle bundle2) {
            throw new UnsupportedOperationException("onInflate not allowed on MapViewDelegate");
        }

        @Override // com.google.android.gms.dynamic.c
        public final void a(Bundle bundle) {
            try {
                Bundle bundle2 = new Bundle();
                aa.a(bundle, bundle2);
                this.f29346b.a(bundle2);
                aa.a(bundle2, bundle);
                this.f29347c = (View) com.google.android.gms.dynamic.d.a(this.f29346b.e());
                this.f29345a.removeAllViews();
                this.f29345a.addView(this.f29347c);
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        public final void a(e eVar) {
            try {
                this.f29346b.a(new n(this, eVar));
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        @Override // com.google.android.gms.dynamic.c
        public final void b() {
            try {
                this.f29346b.a();
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        @Override // com.google.android.gms.dynamic.c
        public final void b(Bundle bundle) {
            try {
                Bundle bundle2 = new Bundle();
                aa.a(bundle, bundle2);
                this.f29346b.b(bundle2);
                aa.a(bundle2, bundle);
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        @Override // com.google.android.gms.dynamic.c
        public final void c() {
            try {
                this.f29346b.b();
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        @Override // com.google.android.gms.dynamic.c
        public final void d() {
            try {
                this.f29346b.g();
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        @Override // com.google.android.gms.dynamic.c
        public final void e() {
            throw new UnsupportedOperationException("onDestroyView not allowed on MapViewDelegate");
        }

        @Override // com.google.android.gms.dynamic.c
        public final void f() {
            try {
                this.f29346b.c();
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        @Override // com.google.android.gms.dynamic.c
        public final void g() {
            try {
                this.f29346b.d();
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/MapView$b.class */
    public static final class b extends com.google.android.gms.dynamic.a<a> {

        /* renamed from: d  reason: collision with root package name */
        private final ViewGroup f29348d;
        private final Context e;
        private e<a> f;
        private final GoogleMapOptions g;
        private final List<e> h = new ArrayList();

        b(ViewGroup viewGroup, Context context, GoogleMapOptions googleMapOptions) {
            this.f29348d = viewGroup;
            this.e = context;
            this.g = googleMapOptions;
        }

        @Override // com.google.android.gms.dynamic.a
        public final void a(e<a> eVar) {
            this.f = eVar;
            if (eVar != null && this.f22960a == 0) {
                try {
                    d.a(this.e);
                    d a2 = ab.a(this.e).a(com.google.android.gms.dynamic.d.a(this.e), this.g);
                    if (a2 != null) {
                        this.f.a(new a(this.f29348d, a2));
                        for (e eVar2 : this.h) {
                            ((a) this.f22960a).a(eVar2);
                        }
                        this.h.clear();
                    }
                } catch (RemoteException e) {
                    throw new RuntimeRemoteException(e);
                } catch (GooglePlayServicesNotAvailableException e2) {
                }
            }
        }

        public final void a(e eVar) {
            if (this.f22960a != 0) {
                ((a) this.f22960a).a(eVar);
            } else {
                this.h.add(eVar);
            }
        }
    }

    public MapView(Context context) {
        super(context);
        this.f29344a = new b(this, context, null);
        setClickable(true);
    }

    public MapView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f29344a = new b(this, context, GoogleMapOptions.createFromAttributes(context, attributeSet));
        setClickable(true);
    }

    public MapView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f29344a = new b(this, context, GoogleMapOptions.createFromAttributes(context, attributeSet));
        setClickable(true);
    }

    public MapView(Context context, GoogleMapOptions googleMapOptions) {
        super(context);
        this.f29344a = new b(this, context, googleMapOptions);
        setClickable(true);
    }

    public final void a() {
        StrictMode.ThreadPolicy threadPolicy = StrictMode.getThreadPolicy();
        StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder(threadPolicy).permitAll().build());
        try {
            this.f29344a.a((Bundle) null);
            if (this.f29344a.f22960a == 0) {
                com.google.android.gms.dynamic.a.a(this);
            }
        } finally {
            StrictMode.setThreadPolicy(threadPolicy);
        }
    }

    public final void a(e eVar) {
        o.b("getMapAsync() must be called on the main thread");
        this.f29344a.a(eVar);
    }
}
