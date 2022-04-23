package com.bumptech.glide.manager;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Fragment;
import android.os.Build;
import android.util.Log;
import com.bumptech.glide.ComponentCallbacks2C0700b;
import com.bumptech.glide.h;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/manager/RequestManagerFragment.class */
public class RequestManagerFragment extends Fragment {

    /* renamed from: b */
    private final a f3788b;

    /* renamed from: c */
    private final AbstractC0841p f3789c;

    /* renamed from: d */
    private final Set<RequestManagerFragment> f3790d;

    /* renamed from: e */
    private h f3791e;

    /* renamed from: f */
    private RequestManagerFragment f3792f;

    /* renamed from: g */
    private Fragment f3793g;

    public RequestManagerFragment() {
        this(new a());
    }

    @SuppressLint({"ValidFragment"})
    RequestManagerFragment(a aVar) {
        this.f3789c = new a(this);
        this.f3790d = new HashSet();
        this.f3788b = aVar;
    }

    /* renamed from: a */
    private void m10831a(RequestManagerFragment requestManagerFragment) {
        this.f3790d.add(requestManagerFragment);
    }

    @TargetApi(17)
    /* renamed from: d */
    private Fragment m10828d() {
        Fragment parentFragment = Build.VERSION.SDK_INT >= 17 ? getParentFragment() : null;
        if (parentFragment == null) {
            parentFragment = this.f3793g;
        }
        return parentFragment;
    }

    @TargetApi(17)
    /* renamed from: g */
    private boolean m10825g(Fragment fragment) {
        Fragment parentFragment = getParentFragment();
        while (true) {
            Fragment parentFragment2 = fragment.getParentFragment();
            if (parentFragment2 == null) {
                return false;
            }
            if (parentFragment2.equals(parentFragment)) {
                return true;
            }
            fragment = fragment.getParentFragment();
        }
    }

    /* renamed from: h */
    private void m10824h(Activity activity) {
        m10820l();
        RequestManagerFragment i = ComponentCallbacks2C0700b.m11348c(activity).m11340k().m10805i(activity);
        this.f3792f = i;
        if (!equals(i)) {
            this.f3792f.m10831a(this);
        }
    }

    /* renamed from: i */
    private void m10823i(RequestManagerFragment requestManagerFragment) {
        this.f3790d.remove(requestManagerFragment);
    }

    /* renamed from: l */
    private void m10820l() {
        RequestManagerFragment requestManagerFragment = this.f3792f;
        if (requestManagerFragment != null) {
            requestManagerFragment.m10823i(this);
            this.f3792f = null;
        }
    }

    @TargetApi(17)
    /* renamed from: b */
    Set<RequestManagerFragment> m10830b() {
        if (equals(this.f3792f)) {
            return Collections.unmodifiableSet(this.f3790d);
        }
        if (this.f3792f == null || Build.VERSION.SDK_INT < 17) {
            return Collections.emptySet();
        }
        HashSet hashSet = new HashSet();
        for (RequestManagerFragment requestManagerFragment : this.f3792f.m10830b()) {
            if (m10825g(requestManagerFragment.getParentFragment())) {
                hashSet.add(requestManagerFragment);
            }
        }
        return Collections.unmodifiableSet(hashSet);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public a m10829c() {
        return this.f3788b;
    }

    /* renamed from: e */
    public h m10827e() {
        return this.f3791e;
    }

    /* renamed from: f */
    public AbstractC0841p m10826f() {
        return this.f3789c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j */
    public void m10822j(Fragment fragment) {
        this.f3793g = fragment;
        if (fragment != null && fragment.getActivity() != null) {
            m10824h(fragment.getActivity());
        }
    }

    /* renamed from: k */
    public void m10821k(h hVar) {
        this.f3791e = hVar;
    }

    @Override // android.app.Fragment
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        try {
            m10824h(activity);
        } catch (IllegalStateException e) {
            if (Log.isLoggable("RMFragment", 5)) {
                Log.w("RMFragment", "Unable to register fragment with root", e);
            }
        }
    }

    @Override // android.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        this.f3788b.c();
        m10820l();
    }

    @Override // android.app.Fragment
    public void onDetach() {
        super.onDetach();
        m10820l();
    }

    @Override // android.app.Fragment
    public void onStart() {
        super.onStart();
        this.f3788b.d();
    }

    @Override // android.app.Fragment
    public void onStop() {
        super.onStop();
        this.f3788b.e();
    }

    @Override // android.app.Fragment
    public String toString() {
        return super.toString() + "{parent=" + m10828d() + "}";
    }
}
