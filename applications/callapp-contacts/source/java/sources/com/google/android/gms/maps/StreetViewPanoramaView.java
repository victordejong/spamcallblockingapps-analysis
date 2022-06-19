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
import com.google.android.gms.common.internal.C12045o;
import com.google.android.gms.dynamic.AbstractC12125a;
import com.google.android.gms.dynamic.AbstractC12130e;
import com.google.android.gms.dynamic.BinderC12129d;
import com.google.android.gms.maps.model.RuntimeRemoteException;
import com.google.android.gms.maps.p362a.AbstractC13800g;
import com.google.android.gms.maps.p362a.AbstractC13803j;
import com.google.android.gms.maps.p362a.C13788aa;
import com.google.android.gms.maps.p362a.C13789ab;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/StreetViewPanoramaView.class */
public class StreetViewPanoramaView extends FrameLayout {

    /* renamed from: a */
    private final C13785b f51136a;

    /* renamed from: com.google.android.gms.maps.StreetViewPanoramaView$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/StreetViewPanoramaView$a.class */
    static final class C13784a implements AbstractC13803j {

        /* renamed from: a */
        final AbstractC13800g f51137a;

        /* renamed from: b */
        private final ViewGroup f51138b;

        /* renamed from: c */
        private View f51139c;

        public C13784a(ViewGroup viewGroup, AbstractC13800g abstractC13800g) {
            this.f51137a = (AbstractC13800g) C12045o.m19162a(abstractC13800g);
            this.f51138b = (ViewGroup) C12045o.m19162a(viewGroup);
        }

        @Override // com.google.android.gms.dynamic.AbstractC12128c
        /* renamed from: a */
        public final View mo12159a(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
            throw new UnsupportedOperationException("onCreateView not allowed on StreetViewPanoramaViewDelegate");
        }

        @Override // com.google.android.gms.dynamic.AbstractC12128c
        /* renamed from: a */
        public final void mo12162a() {
            try {
                this.f51137a.mo12181f();
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        @Override // com.google.android.gms.dynamic.AbstractC12128c
        /* renamed from: a */
        public final void mo12161a(Activity activity, Bundle bundle, Bundle bundle2) {
            throw new UnsupportedOperationException("onInflate not allowed on StreetViewPanoramaViewDelegate");
        }

        @Override // com.google.android.gms.dynamic.AbstractC12128c
        /* renamed from: a */
        public final void mo12160a(Bundle bundle) {
            try {
                Bundle bundle2 = new Bundle();
                C13788aa.m12249a(bundle, bundle2);
                this.f51137a.mo12188a(bundle2);
                C13788aa.m12249a(bundle2, bundle);
                this.f51139c = (View) BinderC12129d.m18980a(this.f51137a.mo12182e());
                this.f51138b.removeAllViews();
                this.f51138b.addView(this.f51139c);
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        @Override // com.google.android.gms.dynamic.AbstractC12128c
        /* renamed from: b */
        public final void mo12157b() {
            try {
                this.f51137a.mo12189a();
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
                this.f51137a.mo12185b(bundle2);
                C13788aa.m12249a(bundle2, bundle);
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        @Override // com.google.android.gms.dynamic.AbstractC12128c
        /* renamed from: c */
        public final void mo12155c() {
            try {
                this.f51137a.mo12186b();
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        @Override // com.google.android.gms.dynamic.AbstractC12128c
        /* renamed from: d */
        public final void mo12154d() {
            try {
                this.f51137a.mo12180g();
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        @Override // com.google.android.gms.dynamic.AbstractC12128c
        /* renamed from: e */
        public final void mo12153e() {
            throw new UnsupportedOperationException("onDestroyView not allowed on StreetViewPanoramaViewDelegate");
        }

        @Override // com.google.android.gms.dynamic.AbstractC12128c
        /* renamed from: f */
        public final void mo12152f() {
            try {
                this.f51137a.mo12184c();
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }

        @Override // com.google.android.gms.dynamic.AbstractC12128c
        /* renamed from: g */
        public final void mo12151g() {
            try {
                this.f51137a.mo12183d();
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }
    }

    /* renamed from: com.google.android.gms.maps.StreetViewPanoramaView$b */
    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/StreetViewPanoramaView$b.class */
    static final class C13785b extends AbstractC12125a<C13784a> {

        /* renamed from: d */
        private final ViewGroup f51140d;

        /* renamed from: e */
        private final Context f51141e;

        /* renamed from: f */
        private AbstractC12130e<C13784a> f51142f;

        /* renamed from: g */
        private final StreetViewPanoramaOptions f51143g;

        /* renamed from: h */
        private final List<AbstractC13827f> f51144h = new ArrayList();

        C13785b(ViewGroup viewGroup, Context context, StreetViewPanoramaOptions streetViewPanoramaOptions) {
            this.f51140d = viewGroup;
            this.f51141e = context;
            this.f51143g = streetViewPanoramaOptions;
        }

        @Override // com.google.android.gms.dynamic.AbstractC12125a
        /* renamed from: a */
        public final void mo12149a(AbstractC12130e<C13784a> abstractC12130e) {
            this.f51142f = abstractC12130e;
            if (abstractC12130e == null || this.f39650a != 0) {
                return;
            }
            try {
                try {
                    C13825d.m12166a(this.f51141e);
                    this.f51142f.mo18978a(new C13784a(this.f51140d, C13789ab.m12246a(this.f51141e).mo12237a(BinderC12129d.m18979a(this.f51141e), this.f51143g)));
                    for (AbstractC13827f abstractC13827f : this.f51144h) {
                        C13784a c13784a = (C13784a) this.f39650a;
                        try {
                            c13784a.f51137a.mo12187a(new BinderC13843q(c13784a, abstractC13827f));
                        } catch (RemoteException e) {
                            throw new RuntimeRemoteException(e);
                        }
                    }
                    this.f51144h.clear();
                } catch (RemoteException e2) {
                    throw new RuntimeRemoteException(e2);
                }
            } catch (GooglePlayServicesNotAvailableException e3) {
            }
        }
    }

    public StreetViewPanoramaView(Context context) {
        super(context);
        this.f51136a = new C13785b(this, context, null);
    }

    public StreetViewPanoramaView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f51136a = new C13785b(this, context, null);
    }

    public StreetViewPanoramaView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f51136a = new C13785b(this, context, null);
    }

    public StreetViewPanoramaView(Context context, StreetViewPanoramaOptions streetViewPanoramaOptions) {
        super(context);
        this.f51136a = new C13785b(this, context, streetViewPanoramaOptions);
    }
}
