package com.bumptech.glide.p070c;

import android.annotation.SuppressLint;
import android.content.Context;
import android.util.Log;
import androidx.fragment.app.ActivityC0664d;
import androidx.fragment.app.Fragment;
import com.bumptech.glide.C1459i;
import com.bumptech.glide.ComponentCallbacks2C1361c;
import java.util.HashSet;
import java.util.Set;
/* renamed from: com.bumptech.glide.c.o */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/c/o.class */
public class C1381o extends Fragment {

    /* renamed from: a */
    private final C1362a f4573a;

    /* renamed from: b */
    private final AbstractC1379m f4574b;

    /* renamed from: c */
    private final Set<C1381o> f4575c;

    /* renamed from: d */
    private C1381o f4576d;

    /* renamed from: e */
    private C1459i f4577e;

    /* renamed from: f */
    private Fragment f4578f;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.bumptech.glide.c.o$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/c/o$a.class */
    public class C1382a implements AbstractC1379m {
        C1382a() {
            C1381o.this = r4;
        }

        public String toString() {
            return super.toString() + "{fragment=" + C1381o.this + "}";
        }
    }

    public C1381o() {
        this(new C1362a());
    }

    @SuppressLint({"ValidFragment"})
    public C1381o(C1362a c1362a) {
        this.f4574b = new C1382a();
        this.f4575c = new HashSet();
        this.f4573a = c1362a;
    }

    /* renamed from: a */
    private void m17249a(ActivityC0664d activityC0664d) {
        m17246as();
        this.f4576d = ComponentCallbacks2C1361c.m17308a((Context) activityC0664d).m17293g().m17262b(activityC0664d);
        if (!equals(this.f4576d)) {
            this.f4576d.m17248a(this);
        }
    }

    /* renamed from: a */
    private void m17248a(C1381o c1381o) {
        this.f4575c.add(c1381o);
    }

    /* renamed from: as */
    private void m17246as() {
        if (this.f4576d != null) {
            this.f4576d.m17244b(this);
            this.f4576d = null;
        }
    }

    /* renamed from: b */
    private void m17244b(C1381o c1381o) {
        this.f4575c.remove(c1381o);
    }

    /* renamed from: g */
    private Fragment m17241g() {
        Fragment y = m19915y();
        if (y == null) {
            y = this.f4578f;
        }
        return y;
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: K */
    public void mo954K() {
        super.mo954K();
        this.f4573a.m17288c();
        m17246as();
    }

    /* renamed from: a */
    public C1362a m17251a() {
        return this.f4573a;
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: a */
    public void mo17250a(Context context) {
        super.mo17250a(context);
        try {
            m17249a(m19922r());
        } catch (IllegalStateException e) {
            if (!Log.isLoggable("SupportRMFragment", 5)) {
                return;
            }
            Log.w("SupportRMFragment", "Unable to register fragment with root", e);
        }
    }

    /* renamed from: a */
    public void m17247a(C1459i c1459i) {
        this.f4577e = c1459i;
    }

    /* renamed from: b */
    public void m17245b(Fragment fragment) {
        this.f4578f = fragment;
        if (fragment == null || fragment.m19922r() == null) {
            return;
        }
        m17249a(fragment.m19922r());
    }

    /* renamed from: d */
    public C1459i m17243d() {
        return this.f4577e;
    }

    /* renamed from: f */
    public AbstractC1379m m17242f() {
        return this.f4574b;
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: h */
    public void mo17240h() {
        super.mo17240h();
        this.f4578f = null;
        m17246as();
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: i */
    public void mo3152i() {
        super.mo3152i();
        this.f4573a.m17290a();
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: j */
    public void mo3151j() {
        super.mo3151j();
        this.f4573a.m17289b();
    }

    @Override // androidx.fragment.app.Fragment
    public String toString() {
        return super.toString() + "{parent=" + m17241g() + "}";
    }
}
