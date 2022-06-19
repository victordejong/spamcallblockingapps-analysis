package p1727n3.p1874y.p1906c;

import androidx.media2.common.MediaItem;
import java.io.IOException;
import p1727n3.p1874y.p1906c.AbstractC27489x0;
/* renamed from: n3.y.c.m$k */
/* loaded from: classes-dex2jar.jar:n3/y/c/m$k.class */
public abstract class m$k implements Runnable {

    /* renamed from: a */
    public final int f77390a;

    /* renamed from: b */
    public final boolean f77391b;

    /* renamed from: c */
    public MediaItem f77392c;

    /* renamed from: d */
    public boolean f77393d;

    /* renamed from: e */
    public final /* synthetic */ m f77394e;

    public m$k(m mVar, int i, boolean z) {
        this.f77394e = mVar;
        this.f77390a = i;
        this.f77391b = z;
    }

    /* renamed from: a */
    public abstract void m214a() throws IOException, AbstractC27489x0.C27492c;

    /* renamed from: b */
    public void m213b(int i) {
        if (this.f77390a >= 1000) {
            return;
        }
        this.f77394e.h(new a(this, i));
    }

    @Override // java.lang.Runnable
    public void run() {
        boolean z;
        int i;
        boolean z2;
        if (this.f77390a == 14) {
            synchronized (this.f77394e.d) {
                m$k m_k = (m$k) this.f77394e.c.peekFirst();
                z2 = m_k != null && m_k.f77390a == 14;
            }
            z = z2;
        } else {
            z = false;
        }
        if (!z) {
            try {
            } catch (IOException e) {
                i = 4;
            } catch (IllegalArgumentException e2) {
                i = 2;
            } catch (IllegalStateException e3) {
            } catch (SecurityException e4) {
                i = 3;
            } catch (Exception e5) {
                i = Integer.MIN_VALUE;
            }
            if (this.f77390a == 1000 || !this.f77394e.a.m224g()) {
                m214a();
                i = 0;
            } else {
                i = 1;
            }
        } else {
            i = 5;
        }
        this.f77392c = this.f77394e.a.m230a();
        if (!this.f77391b || i != 0 || z) {
            m213b(i);
            synchronized (this.f77394e.d) {
                m mVar = this.f77394e;
                mVar.e = null;
                mVar.l();
            }
        }
        synchronized (this) {
            this.f77393d = true;
            notifyAll();
        }
    }
}
