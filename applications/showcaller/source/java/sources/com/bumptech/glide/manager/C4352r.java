package com.bumptech.glide.manager;

import android.annotation.SuppressLint;
import android.content.Context;
import android.util.Log;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import com.bumptech.glide.ComponentCallbacks2C3958c;
import com.bumptech.glide.ComponentCallbacks2C3971i;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
/* renamed from: com.bumptech.glide.manager.r */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/manager/r.class */
public class C4352r extends Fragment {

    /* renamed from: e0 */
    private final C4331a f13336e0;

    /* renamed from: f0 */
    private final AbstractC4350p f13337f0;

    /* renamed from: g0 */
    private final Set<C4352r> f13338g0;

    /* renamed from: h0 */
    private C4352r f13339h0;

    /* renamed from: i0 */
    private ComponentCallbacks2C3971i f13340i0;

    /* renamed from: j0 */
    private Fragment f13341j0;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.bumptech.glide.manager.r$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/manager/r$a.class */
    public class C4353a implements AbstractC4350p {
        C4353a() {
            C4352r.this = r4;
        }

        @Override // com.bumptech.glide.manager.AbstractC4350p
        /* renamed from: a */
        public Set<ComponentCallbacks2C3971i> mo22786a() {
            Set<C4352r> m22799b2 = C4352r.this.m22799b2();
            HashSet hashSet = new HashSet(m22799b2.size());
            for (C4352r c4352r : m22799b2) {
                if (c4352r.m22796e2() != null) {
                    hashSet.add(c4352r.m22796e2());
                }
            }
            return hashSet;
        }

        public String toString() {
            return super.toString() + "{fragment=" + C4352r.this + "}";
        }
    }

    public C4352r() {
        this(new C4331a());
    }

    @SuppressLint({"ValidFragment"})
    public C4352r(C4331a c4331a) {
        this.f13337f0 = new C4353a();
        this.f13338g0 = new HashSet();
        this.f13336e0 = c4331a;
    }

    /* renamed from: a2 */
    private void m22800a2(C4352r c4352r) {
        this.f13338g0.add(c4352r);
    }

    /* renamed from: d2 */
    private Fragment m22797d2() {
        Fragment m32960Q = m32960Q();
        if (m32960Q == null) {
            m32960Q = this.f13341j0;
        }
        return m32960Q;
    }

    /* renamed from: g2 */
    private static FragmentManager m22794g2(Fragment fragment) {
        while (fragment.m32960Q() != null) {
            fragment = fragment.m32960Q();
        }
        return fragment.m32976J();
    }

    /* renamed from: h2 */
    private boolean m22793h2(Fragment fragment) {
        Fragment m22797d2 = m22797d2();
        while (true) {
            Fragment m32960Q = fragment.m32960Q();
            if (m32960Q != null) {
                if (m32960Q.equals(m22797d2)) {
                    return true;
                }
                fragment = fragment.m32960Q();
            } else {
                return false;
            }
        }
    }

    /* renamed from: i2 */
    private void m22792i2(Context context, FragmentManager fragmentManager) {
        m22788m2();
        C4352r m22813k = ComponentCallbacks2C3958c.m23695c(context).m23687k().m22813k(fragmentManager);
        this.f13339h0 = m22813k;
        if (!equals(m22813k)) {
            this.f13339h0.m22800a2(this);
        }
    }

    /* renamed from: j2 */
    private void m22791j2(C4352r c4352r) {
        this.f13338g0.remove(c4352r);
    }

    /* renamed from: m2 */
    private void m22788m2() {
        C4352r c4352r = this.f13339h0;
        if (c4352r != null) {
            c4352r.m22791j2(this);
            this.f13339h0 = null;
        }
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: H0 */
    public void mo17304H0() {
        super.mo17304H0();
        this.f13336e0.m22834c();
        m22788m2();
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: L0 */
    public void mo22801L0() {
        super.mo22801L0();
        this.f13341j0 = null;
        m22788m2();
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: a1 */
    public void mo4903a1() {
        super.mo4903a1();
        this.f13336e0.m22833d();
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: b1 */
    public void mo4902b1() {
        super.mo4902b1();
        this.f13336e0.m22832e();
    }

    /* renamed from: b2 */
    Set<C4352r> m22799b2() {
        C4352r c4352r = this.f13339h0;
        if (c4352r == null) {
            return Collections.emptySet();
        }
        if (equals(c4352r)) {
            return Collections.unmodifiableSet(this.f13338g0);
        }
        HashSet hashSet = new HashSet();
        for (C4352r c4352r2 : this.f13339h0.m22799b2()) {
            if (m22793h2(c4352r2.m22797d2())) {
                hashSet.add(c4352r2);
            }
        }
        return Collections.unmodifiableSet(hashSet);
    }

    /* renamed from: c2 */
    public C4331a m22798c2() {
        return this.f13336e0;
    }

    /* renamed from: e2 */
    public ComponentCallbacks2C3971i m22796e2() {
        return this.f13340i0;
    }

    /* renamed from: f2 */
    public AbstractC4350p m22795f2() {
        return this.f13337f0;
    }

    /* renamed from: k2 */
    public void m22790k2(Fragment fragment) {
        FragmentManager m22794g2;
        this.f13341j0 = fragment;
        if (fragment == null || fragment.m32996B() == null || (m22794g2 = m22794g2(fragment)) == null) {
            return;
        }
        m22792i2(fragment.m32996B(), m22794g2);
    }

    /* renamed from: l2 */
    public void m22789l2(ComponentCallbacks2C3971i componentCallbacks2C3971i) {
        this.f13340i0 = componentCallbacks2C3971i;
    }

    @Override // androidx.fragment.app.Fragment
    public String toString() {
        return super.toString() + "{parent=" + m22797d2() + "}";
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: y0 */
    public void mo22787y0(Context context) {
        super.mo22787y0(context);
        FragmentManager m22794g2 = m22794g2(this);
        if (m22794g2 == null) {
            if (!Log.isLoggable("SupportRMFragment", 5)) {
                return;
            }
            Log.w("SupportRMFragment", "Unable to register fragment with root, ancestor detached");
            return;
        }
        try {
            m22792i2(m32996B(), m22794g2);
        } catch (IllegalStateException e) {
            if (!Log.isLoggable("SupportRMFragment", 5)) {
                return;
            }
            Log.w("SupportRMFragment", "Unable to register fragment with root", e);
        }
    }
}
