package com.bumptech.glide.manager;

import android.app.Activity;
import android.app.Fragment;
import android.os.Build;
import android.util.Log;
import com.bumptech.glide.ComponentCallbacks2C3548c;
import com.bumptech.glide.ComponentCallbacks2C3653k;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/manager/RequestManagerFragment.class */
public class RequestManagerFragment extends Fragment {

    /* renamed from: a */
    final C3930a f14360a;

    /* renamed from: b */
    final AbstractC3949p f14361b;

    /* renamed from: c */
    ComponentCallbacks2C3653k f14362c;

    /* renamed from: d */
    private final Set<RequestManagerFragment> f14363d;

    /* renamed from: e */
    private RequestManagerFragment f14364e;

    /* renamed from: f */
    private Fragment f14365f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.bumptech.glide.manager.RequestManagerFragment$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/manager/RequestManagerFragment$a.class */
    public final class C3929a implements AbstractC3949p {
        C3929a() {
            RequestManagerFragment.this = r4;
        }

        @Override // com.bumptech.glide.manager.AbstractC3949p
        /* renamed from: a */
        public final Set<ComponentCallbacks2C3653k> mo37151a() {
            Set<RequestManagerFragment> m37188a = RequestManagerFragment.this.m37188a();
            HashSet hashSet = new HashSet(m37188a.size());
            for (RequestManagerFragment requestManagerFragment : m37188a) {
                if (requestManagerFragment.f14362c != null) {
                    hashSet.add(requestManagerFragment.f14362c);
                }
            }
            return hashSet;
        }

        public final String toString() {
            return super.toString() + "{fragment=" + RequestManagerFragment.this + "}";
        }
    }

    public RequestManagerFragment() {
        this(new C3930a());
    }

    RequestManagerFragment(C3930a c3930a) {
        this.f14361b = new C3929a();
        this.f14363d = new HashSet();
        this.f14360a = c3930a;
    }

    /* renamed from: a */
    private void m37187a(Activity activity) {
        m37184b();
        RequestManagerFragment m37173a = ComponentCallbacks2C3548c.m37723a(activity).f13535e.m37173a(activity);
        this.f14364e = m37173a;
        if (!equals(m37173a)) {
            this.f14364e.m37185a(this);
        }
    }

    /* renamed from: a */
    private void m37185a(RequestManagerFragment requestManagerFragment) {
        this.f14363d.add(requestManagerFragment);
    }

    /* renamed from: b */
    private void m37184b() {
        RequestManagerFragment requestManagerFragment = this.f14364e;
        if (requestManagerFragment != null) {
            requestManagerFragment.m37182b(this);
            this.f14364e = null;
        }
    }

    /* renamed from: b */
    private void m37182b(RequestManagerFragment requestManagerFragment) {
        this.f14363d.remove(requestManagerFragment);
    }

    /* renamed from: b */
    private boolean m37183b(Fragment fragment) {
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

    /* renamed from: a */
    final Set<RequestManagerFragment> m37188a() {
        if (equals(this.f14364e)) {
            return Collections.unmodifiableSet(this.f14363d);
        }
        if (this.f14364e == null || Build.VERSION.SDK_INT < 17) {
            return Collections.emptySet();
        }
        HashSet hashSet = new HashSet();
        for (RequestManagerFragment requestManagerFragment : this.f14364e.m37188a()) {
            if (m37183b(requestManagerFragment.getParentFragment())) {
                hashSet.add(requestManagerFragment);
            }
        }
        return Collections.unmodifiableSet(hashSet);
    }

    /* renamed from: a */
    public final void m37186a(Fragment fragment) {
        this.f14365f = fragment;
        if (fragment == null || fragment.getActivity() == null) {
            return;
        }
        m37187a(fragment.getActivity());
    }

    @Override // android.app.Fragment
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        try {
            m37187a(activity);
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
        this.f14360a.m37179c();
        m37184b();
    }

    @Override // android.app.Fragment
    public void onDetach() {
        super.onDetach();
        m37184b();
    }

    @Override // android.app.Fragment
    public void onStart() {
        super.onStart();
        this.f14360a.m37181a();
    }

    @Override // android.app.Fragment
    public void onStop() {
        super.onStop();
        this.f14360a.m37180b();
    }

    @Override // android.app.Fragment
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        sb.append("{parent=");
        Fragment parentFragment = Build.VERSION.SDK_INT >= 17 ? getParentFragment() : null;
        if (parentFragment == null) {
            parentFragment = this.f14365f;
        }
        sb.append(parentFragment);
        sb.append("}");
        return sb.toString();
    }
}
