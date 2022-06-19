package com.bumptech.glide.manager;

import android.content.Context;
import android.util.Log;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import com.bumptech.glide.ComponentCallbacks2C3548c;
import com.bumptech.glide.ComponentCallbacks2C3653k;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
/* renamed from: com.bumptech.glide.manager.r */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/manager/r.class */
public class C3951r extends Fragment {

    /* renamed from: a */
    final C3930a f14389a;

    /* renamed from: b */
    final AbstractC3949p f14390b;

    /* renamed from: c */
    ComponentCallbacks2C3653k f14391c;

    /* renamed from: d */
    Fragment f14392d;

    /* renamed from: e */
    private final Set<C3951r> f14393e;

    /* renamed from: f */
    private C3951r f14394f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.bumptech.glide.manager.r$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/manager/r$a.class */
    public final class C3952a implements AbstractC3949p {
        C3952a() {
            C3951r.this = r4;
        }

        @Override // com.bumptech.glide.manager.AbstractC3949p
        /* renamed from: a */
        public final Set<ComponentCallbacks2C3653k> mo37151a() {
            Set<C3951r> m37159a = C3951r.this.m37159a();
            HashSet hashSet = new HashSet(m37159a.size());
            for (C3951r c3951r : m37159a) {
                if (c3951r.f14391c != null) {
                    hashSet.add(c3951r.f14391c);
                }
            }
            return hashSet;
        }

        public final String toString() {
            return super.toString() + "{fragment=" + C3951r.this + "}";
        }
    }

    public C3951r() {
        this(new C3930a());
    }

    public C3951r(C3930a c3930a) {
        this.f14390b = new C3952a();
        this.f14393e = new HashSet();
        this.f14389a = c3930a;
    }

    /* renamed from: a */
    static FragmentManager m37157a(Fragment fragment) {
        while (fragment.getParentFragment() != null) {
            fragment = fragment.getParentFragment();
        }
        return fragment.getFragmentManager();
    }

    /* renamed from: a */
    private void m37156a(C3951r c3951r) {
        this.f14393e.add(c3951r);
    }

    /* renamed from: b */
    private Fragment m37155b() {
        Fragment parentFragment = getParentFragment();
        return parentFragment != null ? parentFragment : this.f14392d;
    }

    /* renamed from: b */
    private void m37153b(C3951r c3951r) {
        this.f14393e.remove(c3951r);
    }

    /* renamed from: b */
    private boolean m37154b(Fragment fragment) {
        Fragment m37155b = m37155b();
        while (true) {
            Fragment parentFragment = fragment.getParentFragment();
            if (parentFragment != null) {
                if (parentFragment.equals(m37155b)) {
                    return true;
                }
                fragment = fragment.getParentFragment();
            } else {
                return false;
            }
        }
    }

    /* renamed from: c */
    private void m37152c() {
        C3951r c3951r = this.f14394f;
        if (c3951r != null) {
            c3951r.m37153b(this);
            this.f14394f = null;
        }
    }

    /* renamed from: a */
    final Set<C3951r> m37159a() {
        C3951r c3951r = this.f14394f;
        if (c3951r == null) {
            return Collections.emptySet();
        }
        if (equals(c3951r)) {
            return Collections.unmodifiableSet(this.f14393e);
        }
        HashSet hashSet = new HashSet();
        for (C3951r c3951r2 : this.f14394f.m37159a()) {
            if (m37154b(c3951r2.m37155b())) {
                hashSet.add(c3951r2);
            }
        }
        return Collections.unmodifiableSet(hashSet);
    }

    /* renamed from: a */
    void m37158a(Context context, FragmentManager fragmentManager) {
        m37152c();
        C3951r m37167a = ComponentCallbacks2C3548c.m37723a(context).f13535e.m37167a(fragmentManager, (Fragment) null);
        this.f14394f = m37167a;
        if (!equals(m37167a)) {
            this.f14394f.m37156a(this);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        FragmentManager m37157a = m37157a((Fragment) this);
        if (m37157a == null) {
            if (!Log.isLoggable("SupportRMFragment", 5)) {
                return;
            }
            Log.w("SupportRMFragment", "Unable to register fragment with root, ancestor detached");
            return;
        }
        try {
            m37158a(getContext(), m37157a);
        } catch (IllegalStateException e) {
            if (!Log.isLoggable("SupportRMFragment", 5)) {
                return;
            }
            Log.w("SupportRMFragment", "Unable to register fragment with root", e);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        this.f14389a.m37179c();
        m37152c();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDetach() {
        super.onDetach();
        this.f14392d = null;
        m37152c();
    }

    @Override // androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        this.f14389a.m37181a();
    }

    @Override // androidx.fragment.app.Fragment
    public void onStop() {
        super.onStop();
        this.f14389a.m37180b();
    }

    @Override // androidx.fragment.app.Fragment
    public String toString() {
        return super.toString() + "{parent=" + m37155b() + "}";
    }
}
