package com.google.android.gms.maps;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.dynamic.d;
import com.google.android.gms.dynamic.e;
import com.google.android.gms.maps.a.aa;
import com.google.android.gms.maps.a.ab;
import com.google.android.gms.maps.a.g;
import com.google.android.gms.maps.a.j;
import com.google.android.gms.maps.model.RuntimeRemoteException;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/StreetViewPanoramaView.class */
public class StreetViewPanoramaView extends FrameLayout {

    /* renamed from: a  reason: collision with root package name */
    private final b f29353a;

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/StreetViewPanoramaView$a.class */
    static final class a implements j {

        /* renamed from: a  reason: collision with root package name */
        final g f29354a;

        /* renamed from: b  reason: collision with root package name */
        private final ViewGroup f29355b;

        /* renamed from: c  reason: collision with root package name */
        private View f29356c;

        public a(ViewGroup viewGroup, g gVar) {
            this.f29354a = (g) o.a(gVar);
            this.f29355b = (ViewGroup) o.a(viewGroup);
        }

        @Override // com.google.android.gms.dynamic.c
        public final View a(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
            throw new UnsupportedOperationException("onCreateView not allowed on StreetViewPanoramaViewDelegate");
        }

        @Override // com.google.android.gms.dynamic.c
        public final void a() {
            try {
                this.f29354a.f();
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        @Override // com.google.android.gms.dynamic.c
        public final void a(Activity activity, Bundle bundle, Bundle bundle2) {
            throw new UnsupportedOperationException("onInflate not allowed on StreetViewPanoramaViewDelegate");
        }

        @Override // com.google.android.gms.dynamic.c
        public final void a(Bundle bundle) {
            try {
                Bundle bundle2 = new Bundle();
                aa.a(bundle, bundle2);
                this.f29354a.a(bundle2);
                aa.a(bundle2, bundle);
                this.f29356c = (View) d.a(this.f29354a.e());
                this.f29355b.removeAllViews();
                this.f29355b.addView(this.f29356c);
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        @Override // com.google.android.gms.dynamic.c
        public final void b() {
            try {
                this.f29354a.a();
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        @Override // com.google.android.gms.dynamic.c
        public final void b(Bundle bundle) {
            try {
                Bundle bundle2 = new Bundle();
                aa.a(bundle, bundle2);
                this.f29354a.b(bundle2);
                aa.a(bundle2, bundle);
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        @Override // com.google.android.gms.dynamic.c
        public final void c() {
            try {
                this.f29354a.b();
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        @Override // com.google.android.gms.dynamic.c
        public final void d() {
            try {
                this.f29354a.g();
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        @Override // com.google.android.gms.dynamic.c
        public final void e() {
            throw new UnsupportedOperationException("onDestroyView not allowed on StreetViewPanoramaViewDelegate");
        }

        @Override // com.google.android.gms.dynamic.c
        public final void f() {
            try {
                this.f29354a.c();
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        @Override // com.google.android.gms.dynamic.c
        public final void g() {
            try {
                this.f29354a.d();
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/StreetViewPanoramaView$b.class */
    static final class b extends com.google.android.gms.dynamic.a<a> {

        /* renamed from: d  reason: collision with root package name */
        private final ViewGroup f29357d;
        private final Context e;
        private e<a> f;
        private final StreetViewPanoramaOptions g;
        private final List<f> h = new ArrayList();

        b(ViewGroup viewGroup, Context context, StreetViewPanoramaOptions streetViewPanoramaOptions) {
            this.f29357d = viewGroup;
            this.e = context;
            this.g = streetViewPanoramaOptions;
        }

        @Override // com.google.android.gms.dynamic.a
        public final void a(e<a> eVar) {
            this.f = eVar;
            if (eVar != null && this.f22960a == 0) {
                try {
                    try {
                        d.a(this.e);
                        this.f.a(new a(this.f29357d, ab.a(this.e).a(d.a(this.e), this.g)));
                        for (f fVar : this.h) {
                            a aVar = (a) this.f22960a;
                            try {
                                aVar.f29354a.a(new q(aVar, fVar));
                            } catch (RemoteException e) {
                                throw new RuntimeRemoteException(e);
                            }
                        }
                        this.h.clear();
                    } catch (RemoteException e2) {
                        throw new RuntimeRemoteException(e2);
                    }
                } catch (GooglePlayServicesNotAvailableException e3) {
                }
            }
        }
    }

    public StreetViewPanoramaView(Context context) {
        super(context);
        this.f29353a = new b(this, context, null);
    }

    public StreetViewPanoramaView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f29353a = new b(this, context, null);
    }

    public StreetViewPanoramaView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f29353a = new b(this, context, null);
    }

    public StreetViewPanoramaView(Context context, StreetViewPanoramaOptions streetViewPanoramaOptions) {
        super(context);
        this.f29353a = new b(this, context, streetViewPanoramaOptions);
    }
}
