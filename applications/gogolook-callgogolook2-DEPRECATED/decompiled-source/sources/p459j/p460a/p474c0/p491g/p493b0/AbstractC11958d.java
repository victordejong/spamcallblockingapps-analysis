package p459j.p460a.p474c0.p491g.p493b0;

import android.os.Bundle;
import androidx.appcompat.app.ActionBar;
/* renamed from: j.a.c0.g.b0.d */
/* loaded from: classes3-dex2jar.jar:j/a/c0/g/b0/d.class */
public abstract class AbstractC11958d {

    /* renamed from: a */
    public boolean f26813a;

    /* renamed from: b */
    public AbstractC11959a f26814b;

    /* renamed from: j.a.c0.g.b0.d$a */
    /* loaded from: classes3-dex2jar.jar:j/a/c0/g/b0/d$a.class */
    public interface AbstractC11959a {
        /* renamed from: a */
        String mo7754a(AbstractC11958d dVar);

        /* renamed from: a */
        void mo7757a();

        /* renamed from: a */
        boolean mo7753a(AbstractC11958d dVar, boolean z, boolean z2);

        /* renamed from: b */
        void mo7748b();

        /* renamed from: b */
        void mo7747b(AbstractC11958d dVar);
    }

    public AbstractC11958d(AbstractC11959a aVar, boolean z) {
        this.f26814b = aVar;
        this.f26813a = z;
    }

    /* renamed from: a */
    public void m7761a(Bundle bundle) {
        if (bundle.getBoolean(this.f26814b.mo7754a(this))) {
            this.f26814b.mo7753a(this, true, false);
        }
    }

    /* renamed from: a */
    public boolean mo7713a() {
        if (!this.f26813a) {
            return false;
        }
        this.f26814b.mo7753a(this, false, true);
        return true;
    }

    /* renamed from: a */
    public boolean mo7711a(ActionBar actionBar) {
        return false;
    }

    /* renamed from: a */
    public abstract boolean mo7699a(boolean z);

    /* renamed from: b */
    public void m7760b(Bundle bundle) {
        bundle.putBoolean(this.f26814b.mo7754a(this), this.f26813a);
    }

    /* renamed from: b */
    public void m7759b(boolean z) {
        if (this.f26813a != z) {
            this.f26814b.mo7748b();
            this.f26813a = z;
            if (z) {
                this.f26814b.mo7747b(this);
            }
            this.f26814b.mo7757a();
        }
    }

    /* renamed from: b */
    public boolean mo7709b() {
        return false;
    }

    /* renamed from: c */
    public abstract boolean mo7695c(boolean z);

    /* renamed from: d */
    public boolean m7758d(boolean z) {
        this.f26814b.mo7753a(this, !this.f26813a, true);
        return this.f26813a;
    }
}
