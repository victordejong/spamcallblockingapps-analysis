package com.bumptech.glide.manager;

import android.app.Activity;
import android.app.Fragment;
import android.os.Build;
import android.util.Log;
import com.bumptech.glide.c;
import com.bumptech.glide.k;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/manager/RequestManagerFragment.class */
public class RequestManagerFragment extends Fragment {

    /* renamed from: a  reason: collision with root package name */
    final com.bumptech.glide.manager.a f7748a;

    /* renamed from: b  reason: collision with root package name */
    final p f7749b;

    /* renamed from: c  reason: collision with root package name */
    k f7750c;

    /* renamed from: d  reason: collision with root package name */
    private final Set<RequestManagerFragment> f7751d;
    private RequestManagerFragment e;
    private Fragment f;

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/manager/RequestManagerFragment$a.class */
    final class a implements p {
        a() {
        }

        @Override // com.bumptech.glide.manager.p
        public final Set<k> a() {
            Set<RequestManagerFragment> a2 = RequestManagerFragment.this.a();
            HashSet hashSet = new HashSet(a2.size());
            for (RequestManagerFragment requestManagerFragment : a2) {
                if (requestManagerFragment.f7750c != null) {
                    hashSet.add(requestManagerFragment.f7750c);
                }
            }
            return hashSet;
        }

        public final String toString() {
            return super.toString() + "{fragment=" + RequestManagerFragment.this + "}";
        }
    }

    public RequestManagerFragment() {
        this(new com.bumptech.glide.manager.a());
    }

    RequestManagerFragment(com.bumptech.glide.manager.a aVar) {
        this.f7749b = new a();
        this.f7751d = new HashSet();
        this.f7748a = aVar;
    }

    private void a(Activity activity) {
        b();
        RequestManagerFragment a2 = c.a(activity).e.a(activity);
        this.e = a2;
        if (!equals(a2)) {
            this.e.a(this);
        }
    }

    private void a(RequestManagerFragment requestManagerFragment) {
        this.f7751d.add(requestManagerFragment);
    }

    private void b() {
        RequestManagerFragment requestManagerFragment = this.e;
        if (requestManagerFragment != null) {
            requestManagerFragment.b(this);
            this.e = null;
        }
    }

    private void b(RequestManagerFragment requestManagerFragment) {
        this.f7751d.remove(requestManagerFragment);
    }

    private boolean b(Fragment fragment) {
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

    final Set<RequestManagerFragment> a() {
        if (equals(this.e)) {
            return Collections.unmodifiableSet(this.f7751d);
        }
        if (this.e == null || Build.VERSION.SDK_INT < 17) {
            return Collections.emptySet();
        }
        HashSet hashSet = new HashSet();
        for (RequestManagerFragment requestManagerFragment : this.e.a()) {
            if (b(requestManagerFragment.getParentFragment())) {
                hashSet.add(requestManagerFragment);
            }
        }
        return Collections.unmodifiableSet(hashSet);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(Fragment fragment) {
        this.f = fragment;
        if (fragment != null && fragment.getActivity() != null) {
            a(fragment.getActivity());
        }
    }

    @Override // android.app.Fragment
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        try {
            a(activity);
        } catch (IllegalStateException e) {
            if (Log.isLoggable("RMFragment", 5)) {
                Log.w("RMFragment", "Unable to register fragment with root", e);
            }
        }
    }

    @Override // android.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        this.f7748a.c();
        b();
    }

    @Override // android.app.Fragment
    public void onDetach() {
        super.onDetach();
        b();
    }

    @Override // android.app.Fragment
    public void onStart() {
        super.onStart();
        this.f7748a.a();
    }

    @Override // android.app.Fragment
    public void onStop() {
        super.onStop();
        this.f7748a.b();
    }

    @Override // android.app.Fragment
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        sb.append("{parent=");
        Fragment parentFragment = Build.VERSION.SDK_INT >= 17 ? getParentFragment() : null;
        if (parentFragment == null) {
            parentFragment = this.f;
        }
        sb.append(parentFragment);
        sb.append("}");
        return sb.toString();
    }
}
