package p293y2;

import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.google.android.datatransport.runtime.synchronization.SynchronizationException;
import java.util.Objects;
import p004a3.AbstractC0011a;
import p250u2.AbstractC4469i;
import p303z2.AbstractC5039c;
/* renamed from: y2.g */
/* loaded from: classes2-dex2jar.jar:y2/g.class */
public final /* synthetic */ class RunnableC4990g implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ C4997n f15198a;

    /* renamed from: b */
    public final /* synthetic */ AbstractC4469i f15199b;

    /* renamed from: c */
    public final /* synthetic */ int f15200c;

    /* renamed from: d */
    public final /* synthetic */ Runnable f15201d;

    public /* synthetic */ RunnableC4990g(C4997n c4997n, AbstractC4469i abstractC4469i, int i, Runnable runnable) {
        this.f15198a = c4997n;
        this.f15199b = abstractC4469i;
        this.f15200c = i;
        this.f15201d = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        final C4997n c4997n = this.f15198a;
        final AbstractC4469i abstractC4469i = this.f15199b;
        final int i = this.f15200c;
        Runnable runnable = this.f15201d;
        Objects.requireNonNull(c4997n);
        try {
            try {
                AbstractC0011a abstractC0011a = c4997n.f15225f;
                AbstractC5039c abstractC5039c = c4997n.f15222c;
                Objects.requireNonNull(abstractC5039c);
                abstractC0011a.mo90d(new C4995l(abstractC5039c, 0));
                NetworkInfo activeNetworkInfo = ((ConnectivityManager) c4997n.f15220a.getSystemService("connectivity")).getActiveNetworkInfo();
                boolean z = false;
                if (activeNetworkInfo != null) {
                    z = false;
                    if (activeNetworkInfo.isConnected()) {
                        z = true;
                    }
                }
                if (!z) {
                    c4997n.f15225f.mo90d(new AbstractC0011a.AbstractC0012a() { // from class: y2.i
                        @Override // p004a3.AbstractC0011a.AbstractC0012a
                        /* renamed from: e */
                        public final Object mo149e() {
                            C4997n c4997n2 = C4997n.this;
                            c4997n2.f15223d.mo147a(abstractC4469i, i + 1);
                            return null;
                        }
                    });
                } else {
                    c4997n.m153a(abstractC4469i, i);
                }
            } catch (SynchronizationException e) {
                c4997n.f15223d.mo147a(abstractC4469i, i + 1);
            }
        } finally {
            runnable.run();
        }
    }
}
