package p1727n3.p1758e.p1776d;

import androidx.camera.view.PreviewView;
import com.google.common.util.concurrent.ListenableFuture;
import p1727n3.p1758e.p1767b.C26103y0;
import p1727n3.p1758e.p1767b.p1768j1.AbstractC25938b0;
import p1727n3.p1758e.p1767b.p1768j1.AbstractC25943c1;
import p1727n3.p1758e.p1767b.p1768j1.AbstractC26059z;
import p1727n3.p1868v.C27010k0;
/* renamed from: n3.e.d.t */
/* loaded from: classes-dex2jar.jar:n3/e/d/t.class */
public final class C26135t implements AbstractC25943c1.AbstractC25944a<AbstractC25938b0.EnumC25939a> {

    /* renamed from: a */
    public final AbstractC26059z f72870a;

    /* renamed from: b */
    public final C27010k0<PreviewView.EnumC0106e> f72871b;

    /* renamed from: c */
    public PreviewView.EnumC0106e f72872c;

    /* renamed from: d */
    public final AbstractC26137v f72873d;

    /* renamed from: e */
    public ListenableFuture<Void> f72874e;

    /* renamed from: f */
    public boolean f72875f = false;

    public C26135t(AbstractC26059z abstractC26059z, C27010k0<PreviewView.EnumC0106e> c27010k0, AbstractC26137v abstractC26137v) {
        this.f72870a = abstractC26059z;
        this.f72871b = c27010k0;
        this.f72873d = abstractC26137v;
        synchronized (this) {
            this.f72872c = c27010k0.m42869d();
        }
    }

    /* renamed from: a */
    public void m2700a(PreviewView.EnumC0106e enumC0106e) {
        synchronized (this) {
            if (this.f72872c.equals(enumC0106e)) {
                return;
            }
            this.f72872c = enumC0106e;
            C26103y0.m2724a("StreamStateObserver", "Update Preview stream state to " + enumC0106e, null);
            this.f72871b.mo1001j(enumC0106e);
        }
    }
}
