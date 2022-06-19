package p1727n3.p1758e.p1767b.p1768j1;

import android.support.p001v4.media.session.MediaSessionCompat;
import androidx.camera.view.PreviewView;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.Executor;
import n3.e.b.j1.t1.c.c;
import p1727n3.p1746c.p1747a.p1750c.AbstractC25640a;
import p1727n3.p1758e.p1767b.AbstractC26075l0;
import p1727n3.p1758e.p1767b.p1768j1.AbstractC25938b0;
import p1727n3.p1758e.p1767b.p1768j1.AbstractC26059z;
import p1727n3.p1758e.p1767b.p1768j1.C26053x0;
import p1727n3.p1758e.p1767b.p1768j1.p1769t1.p1771c.AbstractC26029b;
import p1727n3.p1758e.p1767b.p1768j1.p1769t1.p1771c.C26031e;
import p1727n3.p1758e.p1767b.p1768j1.p1769t1.p1771c.C26033f;
import p1727n3.p1758e.p1767b.p1768j1.p1769t1.p1771c.C26034g;
import p1727n3.p1758e.p1776d.C26133r;
import p1727n3.p1758e.p1776d.C26135t;
import p1727n3.p1790h.p1791a.AbstractC26249d;
import p1727n3.p1790h.p1791a.C26247b;
/* renamed from: n3.e.b.j1.w0 */
/* loaded from: classes-dex2jar.jar:n3/e/b/j1/w0.class */
public class RunnableC26050w0 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ C26053x0.C26055b f72721a;

    /* renamed from: b */
    public final /* synthetic */ C26053x0.C26054a f72722b;

    public RunnableC26050w0(C26053x0.C26054a c26054a, C26053x0.C26055b c26055b) {
        this.f72722b = c26054a;
        this.f72721a = c26055b;
    }

    @Override // java.lang.Runnable
    public void run() {
        PreviewView.EnumC0106e enumC0106e = PreviewView.EnumC0106e.IDLE;
        if (!this.f72722b.f72725a.get()) {
            return;
        }
        if (!this.f72721a.m2770a()) {
            Objects.requireNonNull(this.f72721a.f72729b);
            Object obj = this.f72722b.f72726b;
            Throwable th = this.f72721a.f72729b;
            C26135t c26135t = (C26135t) obj;
            ListenableFuture<Void> listenableFuture = c26135t.f72874e;
            if (listenableFuture != null) {
                listenableFuture.cancel(false);
                c26135t.f72874e = null;
            }
            c26135t.m2700a(enumC0106e);
            return;
        }
        Object obj2 = this.f72722b.f72726b;
        C26053x0.C26055b c26055b = this.f72721a;
        if (!c26055b.m2770a()) {
            throw new IllegalStateException("Result contains an error. Does not contain a value.");
        }
        T t = c26055b.f72728a;
        final C26135t c26135t2 = (C26135t) obj2;
        Objects.requireNonNull(c26135t2);
        AbstractC25938b0.EnumC25939a enumC25939a = (AbstractC25938b0.EnumC25939a) t;
        if (enumC25939a == AbstractC25938b0.EnumC25939a.CLOSING || enumC25939a == AbstractC25938b0.EnumC25939a.CLOSED || enumC25939a == AbstractC25938b0.EnumC25939a.RELEASING || enumC25939a == AbstractC25938b0.EnumC25939a.RELEASED) {
            c26135t2.m2700a(enumC0106e);
            if (!c26135t2.f72875f) {
                return;
            }
            c26135t2.f72875f = false;
            ListenableFuture<Void> listenableFuture2 = c26135t2.f72874e;
            if (listenableFuture2 == null) {
                return;
            }
            listenableFuture2.cancel(false);
            c26135t2.f72874e = null;
        } else if ((enumC25939a != AbstractC25938b0.EnumC25939a.OPENING && enumC25939a != AbstractC25938b0.EnumC25939a.OPEN && enumC25939a != AbstractC25938b0.EnumC25939a.PENDING_OPEN) || c26135t2.f72875f) {
        } else {
            final AbstractC26059z abstractC26059z = c26135t2.f72870a;
            c26135t2.m2700a(enumC0106e);
            final ArrayList arrayList = new ArrayList();
            C26031e m2784c = C26031e.m2786a(MediaSessionCompat.m43231i0(new AbstractC26249d() { // from class: n3.e.d.b
                @Override // p1727n3.p1790h.p1791a.AbstractC26249d
                /* renamed from: a */
                public final Object mo2255a(C26247b c26247b) {
                    C26135t c26135t3 = C26135t.this;
                    AbstractC26075l0 abstractC26075l0 = abstractC26059z;
                    List list = arrayList;
                    Objects.requireNonNull(c26135t3);
                    C26134s c26134s = new C26134s(c26135t3, c26247b, abstractC26075l0);
                    list.add(c26134s);
                    ((AbstractC26059z) abstractC26075l0).m2765b(MediaSessionCompat.m43268U(), c26134s);
                    return "waitForCaptureResult";
                }
            })).m2784c(new AbstractC26029b() { // from class: n3.e.d.c
                @Override // p1727n3.p1758e.p1767b.p1768j1.p1769t1.p1771c.AbstractC26029b
                public final ListenableFuture apply(Object obj3) {
                    Void r0 = (Void) obj3;
                    return C26135t.this.f72873d.mo2683g();
                }
            }, MediaSessionCompat.m43268U());
            AbstractC25640a abstractC25640a = new AbstractC25640a() { // from class: n3.e.d.a
                @Override // p1727n3.p1746c.p1747a.p1750c.AbstractC25640a
                public final Object apply(Object obj3) {
                    Void r0 = (Void) obj3;
                    C26135t.this.m2700a(PreviewView.EnumC0106e.STREAMING);
                    return null;
                }
            };
            Executor m43268U = MediaSessionCompat.m43268U();
            c cVar = new c(new C26033f(abstractC25640a), m2784c);
            m2784c.f72694a.addListener(cVar, m43268U);
            c26135t2.f72874e = cVar;
            C26133r c26133r = new C26133r(c26135t2, arrayList, abstractC26059z);
            Executor m43268U2 = MediaSessionCompat.m43268U();
            cVar.f72694a.addListener(new C26034g.RunnableC26038d(cVar, c26133r), m43268U2);
            c26135t2.f72875f = true;
        }
    }
}
