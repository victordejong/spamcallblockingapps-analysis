package p1727n3.p1758e.p1776d;

import android.support.p001v4.media.session.MediaSessionCompat;
import androidx.camera.view.PreviewView;
import com.google.common.util.concurrent.ListenableFuture;
import p1727n3.p1758e.p1767b.p1768j1.AbstractC25938b0;
import p1727n3.p1758e.p1767b.p1768j1.C26053x0;
import p1727n3.p1758e.p1767b.p1768j1.RunnableC26046v0;
import p1727n3.p1758e.p1776d.AbstractC26137v;
/* renamed from: n3.e.d.d */
/* loaded from: classes-dex2jar.jar:n3/e/d/d.class */
public final /* synthetic */ class C26119d implements AbstractC26137v.AbstractC26138a {

    /* renamed from: a */
    public final /* synthetic */ PreviewView.C0102a f72841a;

    /* renamed from: b */
    public final /* synthetic */ C26135t f72842b;

    /* renamed from: c */
    public final /* synthetic */ AbstractC25938b0 f72843c;

    public /* synthetic */ C26119d(PreviewView.C0102a c0102a, C26135t c26135t, AbstractC25938b0 abstractC25938b0) {
        this.f72841a = c0102a;
        this.f72842b = c26135t;
        this.f72843c = abstractC25938b0;
    }

    /* renamed from: a */
    public final void m2703a() {
        PreviewView.C0102a c0102a = this.f72841a;
        C26135t c26135t = this.f72842b;
        AbstractC25938b0 abstractC25938b0 = this.f72843c;
        if (PreviewView.this.f512e.compareAndSet(c26135t, null)) {
            c26135t.m2700a(PreviewView.EnumC0106e.IDLE);
        }
        ListenableFuture<Void> listenableFuture = c26135t.f72874e;
        if (listenableFuture != null) {
            listenableFuture.cancel(false);
            c26135t.f72874e = null;
        }
        C26053x0 c26053x0 = (C26053x0) abstractC25938b0.m2877e();
        synchronized (c26053x0.f72724b) {
            C26053x0.C26054a c26054a = (C26053x0.C26054a) c26053x0.f72724b.remove(c26135t);
            if (c26054a != null) {
                c26054a.f72725a.set(false);
                MediaSessionCompat.m43279O0().execute(new RunnableC26046v0(c26053x0, c26054a));
            }
        }
    }
}
