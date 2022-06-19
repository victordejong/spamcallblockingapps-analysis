package p1727n3.p1758e.p1759a.p1761e;

import android.util.ArrayMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import p1727n3.p1758e.p1767b.C26103y0;
import p1727n3.p1758e.p1767b.p1768j1.AbstractC26002q;
import p1727n3.p1758e.p1767b.p1768j1.AbstractC26013t;
import p1727n3.p1758e.p1767b.p1768j1.C26007s;
/* renamed from: n3.e.a.e.z0$a */
/* loaded from: classes-dex2jar.jar:n3/e/a/e/z0$a.class */
public final class z0$a extends AbstractC26002q {

    /* renamed from: a */
    public Set<AbstractC26002q> f72397a = new HashSet();

    /* renamed from: b */
    public Map<AbstractC26002q, Executor> f72398b = new ArrayMap();

    @Override // p1727n3.p1758e.p1767b.p1768j1.AbstractC26002q
    /* renamed from: a */
    public void mo2793a() {
        for (final AbstractC26002q abstractC26002q : this.f72397a) {
            try {
                this.f72398b.get(abstractC26002q).execute(new Runnable() { // from class: n3.e.a.e.d
                    @Override // java.lang.Runnable
                    public final void run() {
                        AbstractC26002q.this.mo2793a();
                    }
                });
            } catch (RejectedExecutionException e) {
                C26103y0.m2723b("Camera2CameraControlImp", "Executor rejected to invoke onCaptureCancelled.", e);
            }
        }
    }

    @Override // p1727n3.p1758e.p1767b.p1768j1.AbstractC26002q
    /* renamed from: b */
    public void mo2701b(final AbstractC26013t abstractC26013t) {
        for (final AbstractC26002q abstractC26002q : this.f72397a) {
            try {
                this.f72398b.get(abstractC26002q).execute(new Runnable() { // from class: n3.e.a.e.c
                    @Override // java.lang.Runnable
                    public final void run() {
                        AbstractC26002q.this.mo2701b(abstractC26013t);
                    }
                });
            } catch (RejectedExecutionException e) {
                C26103y0.m2723b("Camera2CameraControlImp", "Executor rejected to invoke onCaptureCompleted.", e);
            }
        }
    }

    @Override // p1727n3.p1758e.p1767b.p1768j1.AbstractC26002q
    /* renamed from: c */
    public void mo2792c(final C26007s c26007s) {
        for (final AbstractC26002q abstractC26002q : this.f72397a) {
            try {
                this.f72398b.get(abstractC26002q).execute(new Runnable() { // from class: n3.e.a.e.e
                    @Override // java.lang.Runnable
                    public final void run() {
                        AbstractC26002q.this.mo2792c(c26007s);
                    }
                });
            } catch (RejectedExecutionException e) {
                C26103y0.m2723b("Camera2CameraControlImp", "Executor rejected to invoke onCaptureFailed.", e);
            }
        }
    }
}
