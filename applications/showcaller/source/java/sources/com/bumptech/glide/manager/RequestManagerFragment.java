package com.bumptech.glide.manager;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Fragment;
import android.os.Build;
import android.util.Log;
import com.bumptech.glide.ComponentCallbacks2C3958c;
import com.bumptech.glide.ComponentCallbacks2C3971i;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/manager/RequestManagerFragment.class */
public class RequestManagerFragment extends Fragment {

    /* renamed from: d */
    private final C4331a f13307d;

    /* renamed from: e */
    private final AbstractC4350p f13308e;

    /* renamed from: f */
    private final Set<RequestManagerFragment> f13309f;

    /* renamed from: g */
    private ComponentCallbacks2C3971i f13310g;

    /* renamed from: h */
    private RequestManagerFragment f13311h;

    /* renamed from: i */
    private Fragment f13312i;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.bumptech.glide.manager.RequestManagerFragment$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/manager/RequestManagerFragment$a.class */
    public class C4330a implements AbstractC4350p {
        C4330a() {
            RequestManagerFragment.this = r4;
        }

        @Override // com.bumptech.glide.manager.AbstractC4350p
        /* renamed from: a */
        public Set<ComponentCallbacks2C3971i> mo22786a() {
            Set<RequestManagerFragment> m22845b = RequestManagerFragment.this.m22845b();
            HashSet hashSet = new HashSet(m22845b.size());
            for (RequestManagerFragment requestManagerFragment : m22845b) {
                if (requestManagerFragment.m22842e() != null) {
                    hashSet.add(requestManagerFragment.m22842e());
                }
            }
            return hashSet;
        }

        public String toString() {
            return super.toString() + "{fragment=" + RequestManagerFragment.this + "}";
        }
    }

    public RequestManagerFragment() {
        this(new C4331a());
    }

    @SuppressLint({"ValidFragment"})
    RequestManagerFragment(C4331a c4331a) {
        this.f13308e = new C4330a();
        this.f13309f = new HashSet();
        this.f13307d = c4331a;
    }

    /* renamed from: a */
    private void m22846a(RequestManagerFragment requestManagerFragment) {
        this.f13309f.add(requestManagerFragment);
    }

    @TargetApi(17)
    /* renamed from: d */
    private Fragment m22843d() {
        Fragment parentFragment = Build.VERSION.SDK_INT >= 17 ? getParentFragment() : null;
        if (parentFragment == null) {
            parentFragment = this.f13312i;
        }
        return parentFragment;
    }

    @TargetApi(17)
    /* renamed from: g */
    private boolean m22840g(Fragment fragment) {
        Fragment parentFragment = getParentFragment();
        while (true) {
            Fragment parentFragment2 = fragment.getParentFragment();
            if (parentFragment2 != null) {
                if (parentFragment2.equals(parentFragment)) {
                    return true;
                }
                fragment = fragment.getParentFragment();
            } else {
                return false;
            }
        }
    }

    /* renamed from: h */
    private void m22839h(Activity activity) {
        m22835l();
        RequestManagerFragment m22815i = ComponentCallbacks2C3958c.m23695c(activity).m23687k().m22815i(activity);
        this.f13311h = m22815i;
        if (!equals(m22815i)) {
            this.f13311h.m22846a(this);
        }
    }

    /* renamed from: i */
    private void m22838i(RequestManagerFragment requestManagerFragment) {
        this.f13309f.remove(requestManagerFragment);
    }

    /* renamed from: l */
    private void m22835l() {
        RequestManagerFragment requestManagerFragment = this.f13311h;
        if (requestManagerFragment != null) {
            requestManagerFragment.m22838i(this);
            this.f13311h = null;
        }
    }

    @TargetApi(17)
    /* renamed from: b */
    Set<RequestManagerFragment> m22845b() {
        if (equals(this.f13311h)) {
            return Collections.unmodifiableSet(this.f13309f);
        }
        if (this.f13311h == null || Build.VERSION.SDK_INT < 17) {
            return Collections.emptySet();
        }
        HashSet hashSet = new HashSet();
        for (RequestManagerFragment requestManagerFragment : this.f13311h.m22845b()) {
            if (m22840g(requestManagerFragment.getParentFragment())) {
                hashSet.add(requestManagerFragment);
            }
        }
        return Collections.unmodifiableSet(hashSet);
    }

    /* renamed from: c */
    public C4331a m22844c() {
        return this.f13307d;
    }

    /* renamed from: e */
    public ComponentCallbacks2C3971i m22842e() {
        return this.f13310g;
    }

    /* renamed from: f */
    public AbstractC4350p m22841f() {
        return this.f13308e;
    }

    /* renamed from: j */
    public void m22837j(Fragment fragment) {
        this.f13312i = fragment;
        if (fragment == null || fragment.getActivity() == null) {
            return;
        }
        m22839h(fragment.getActivity());
    }

    /* renamed from: k */
    public void m22836k(ComponentCallbacks2C3971i componentCallbacks2C3971i) {
        this.f13310g = componentCallbacks2C3971i;
    }

    @Override // android.app.Fragment
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        try {
            m22839h(activity);
        } catch (IllegalStateException e) {
            if (!Log.isLoggable("RMFragment", 5)) {
                return;
            }
            Log.w("RMFragment", "Unable to register fragment with root", e);
        }
    }

    @Override // android.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        this.f13307d.m22834c();
        m22835l();
    }

    @Override // android.app.Fragment
    public void onDetach() {
        super.onDetach();
        m22835l();
    }

    @Override // android.app.Fragment
    public void onStart() {
        super.onStart();
        this.f13307d.m22833d();
    }

    @Override // android.app.Fragment
    public void onStop() {
        super.onStop();
        this.f13307d.m22832e();
    }

    @Override // android.app.Fragment
    public String toString() {
        return super.toString() + "{parent=" + m22843d() + "}";
    }
}
