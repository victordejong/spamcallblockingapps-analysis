package com.google.android.gms.maps;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import java.util.ArrayList;
import java.util.List;
import p081h.p203i.p204a.p224e.p235d.C6795e;
import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
import p081h.p203i.p204a.p224e.p252e.AbstractC7104a;
import p081h.p203i.p204a.p224e.p252e.AbstractC7111e;
import p081h.p203i.p204a.p224e.p252e.BinderC7110d;
import p081h.p203i.p204a.p224e.p282l.AbstractC8867f;
import p081h.p203i.p204a.p224e.p282l.BinderC8935o;
import p081h.p203i.p204a.p224e.p282l.C8865d;
import p081h.p203i.p204a.p224e.p282l.p283j.AbstractC8881f;
import p081h.p203i.p204a.p224e.p282l.p283j.AbstractC8887i;
import p081h.p203i.p204a.p224e.p282l.p283j.C8872a0;
import p081h.p203i.p204a.p224e.p282l.p283j.C8905z;
import p081h.p203i.p204a.p224e.p282l.p284k.C8909d;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/StreetViewPanoramaView.class */
public class StreetViewPanoramaView extends FrameLayout {

    /* renamed from: com.google.android.gms.maps.StreetViewPanoramaView$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/StreetViewPanoramaView$a.class */
    public static final class C3578a implements AbstractC8887i {

        /* renamed from: a */
        public final ViewGroup f7014a;

        /* renamed from: b */
        public final AbstractC8881f f7015b;

        /* renamed from: c */
        public View f7016c;

        public C3578a(ViewGroup viewGroup, AbstractC8881f fVar) {
            C7021t.m21290a(fVar);
            this.f7015b = fVar;
            C7021t.m21290a(viewGroup);
            this.f7014a = viewGroup;
        }

        /* renamed from: a */
        public final void m31756a(AbstractC8867f fVar) {
            try {
                this.f7015b.mo16818a(new BinderC8935o(this, fVar));
            } catch (RemoteException e) {
                throw new C8909d(e);
            }
        }

        @Override // p081h.p203i.p204a.p224e.p252e.AbstractC7109c
        public final void onCreate(Bundle bundle) {
            try {
                Bundle bundle2 = new Bundle();
                C8905z.m16811a(bundle, bundle2);
                this.f7015b.onCreate(bundle2);
                C8905z.m16811a(bundle2, bundle);
                this.f7016c = (View) BinderC7110d.m21059A(this.f7015b.mo16817d());
                this.f7014a.removeAllViews();
                this.f7014a.addView(this.f7016c);
            } catch (RemoteException e) {
                throw new C8909d(e);
            }
        }

        @Override // p081h.p203i.p204a.p224e.p252e.AbstractC7109c
        public final void onDestroy() {
            try {
                this.f7015b.onDestroy();
            } catch (RemoteException e) {
                throw new C8909d(e);
            }
        }

        @Override // p081h.p203i.p204a.p224e.p252e.AbstractC7109c
        public final void onPause() {
            try {
                this.f7015b.onPause();
            } catch (RemoteException e) {
                throw new C8909d(e);
            }
        }

        @Override // p081h.p203i.p204a.p224e.p252e.AbstractC7109c
        public final void onResume() {
            try {
                this.f7015b.onResume();
            } catch (RemoteException e) {
                throw new C8909d(e);
            }
        }

        @Override // p081h.p203i.p204a.p224e.p252e.AbstractC7109c
        public final void onStart() {
            try {
                this.f7015b.onStart();
            } catch (RemoteException e) {
                throw new C8909d(e);
            }
        }

        @Override // p081h.p203i.p204a.p224e.p252e.AbstractC7109c
        public final void onStop() {
            try {
                this.f7015b.onStop();
            } catch (RemoteException e) {
                throw new C8909d(e);
            }
        }
    }

    /* renamed from: com.google.android.gms.maps.StreetViewPanoramaView$b */
    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/StreetViewPanoramaView$b.class */
    public static final class C3579b extends AbstractC7104a<C3578a> {

        /* renamed from: e */
        public final ViewGroup f7017e;

        /* renamed from: f */
        public final Context f7018f;

        /* renamed from: g */
        public AbstractC7111e<C3578a> f7019g;

        /* renamed from: h */
        public final StreetViewPanoramaOptions f7020h;

        /* renamed from: i */
        public final List<AbstractC8867f> f7021i = new ArrayList();

        public C3579b(ViewGroup viewGroup, Context context, StreetViewPanoramaOptions streetViewPanoramaOptions) {
            this.f7017e = viewGroup;
            this.f7018f = context;
            this.f7020h = streetViewPanoramaOptions;
        }

        @Override // p081h.p203i.p204a.p224e.p252e.AbstractC7104a
        /* renamed from: a */
        public final void mo21067a(AbstractC7111e<C3578a> eVar) {
            this.f7019g = eVar;
            if (this.f7019g != null && m21075a() == null) {
                try {
                    C8865d.m16858a(this.f7018f);
                    this.f7019g.mo21056a(new C3578a(this.f7017e, C8872a0.m16850a(this.f7018f).mo16841a(BinderC7110d.m21058a(this.f7018f), this.f7020h)));
                    for (AbstractC8867f fVar : this.f7021i) {
                        m21075a().m31756a(fVar);
                    }
                    this.f7021i.clear();
                } catch (RemoteException e) {
                    throw new C8909d(e);
                } catch (C6795e e2) {
                }
            }
        }
    }

    public StreetViewPanoramaView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        new C3579b(this, context, null);
    }

    public StreetViewPanoramaView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        new C3579b(this, context, null);
    }
}
