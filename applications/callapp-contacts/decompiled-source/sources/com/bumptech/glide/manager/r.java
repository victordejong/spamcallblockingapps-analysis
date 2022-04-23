package com.bumptech.glide.manager;

import android.content.Context;
import android.util.Log;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import com.bumptech.glide.c;
import com.bumptech.glide.k;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/manager/r.class */
public class r extends Fragment {

    /* renamed from: a  reason: collision with root package name */
    final com.bumptech.glide.manager.a f7768a;

    /* renamed from: b  reason: collision with root package name */
    final p f7769b;

    /* renamed from: c  reason: collision with root package name */
    k f7770c;

    /* renamed from: d  reason: collision with root package name */
    Fragment f7771d;
    private final Set<r> e;
    private r f;

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/manager/r$a.class */
    final class a implements p {
        a() {
        }

        @Override // com.bumptech.glide.manager.p
        public final Set<k> a() {
            Set<r> a2 = r.this.a();
            HashSet hashSet = new HashSet(a2.size());
            for (r rVar : a2) {
                if (rVar.f7770c != null) {
                    hashSet.add(rVar.f7770c);
                }
            }
            return hashSet;
        }

        public final String toString() {
            return super.toString() + "{fragment=" + r.this + "}";
        }
    }

    public r() {
        this(new com.bumptech.glide.manager.a());
    }

    public r(com.bumptech.glide.manager.a aVar) {
        this.f7769b = new a();
        this.e = new HashSet();
        this.f7768a = aVar;
    }

    static FragmentManager a(Fragment fragment) {
        while (fragment.getParentFragment() != null) {
            fragment = fragment.getParentFragment();
        }
        return fragment.getFragmentManager();
    }

    private void a(r rVar) {
        this.e.add(rVar);
    }

    private Fragment b() {
        Fragment parentFragment = getParentFragment();
        return parentFragment != null ? parentFragment : this.f7771d;
    }

    private void b(r rVar) {
        this.e.remove(rVar);
    }

    private boolean b(Fragment fragment) {
        Fragment b2 = b();
        while (true) {
            Fragment parentFragment = fragment.getParentFragment();
            if (parentFragment == null) {
                return false;
            }
            if (parentFragment.equals(b2)) {
                return true;
            }
            fragment = fragment.getParentFragment();
        }
    }

    private void c() {
        r rVar = this.f;
        if (rVar != null) {
            rVar.b(this);
            this.f = null;
        }
    }

    final Set<r> a() {
        r rVar = this.f;
        if (rVar == null) {
            return Collections.emptySet();
        }
        if (equals(rVar)) {
            return Collections.unmodifiableSet(this.e);
        }
        HashSet hashSet = new HashSet();
        for (r rVar2 : this.f.a()) {
            if (b(rVar2.b())) {
                hashSet.add(rVar2);
            }
        }
        return Collections.unmodifiableSet(hashSet);
    }

    void a(Context context, FragmentManager fragmentManager) {
        c();
        r a2 = c.a(context).e.a(fragmentManager, (Fragment) null);
        this.f = a2;
        if (!equals(a2)) {
            this.f.a(this);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        FragmentManager a2 = a((Fragment) this);
        if (a2 != null) {
            try {
                a(getContext(), a2);
            } catch (IllegalStateException e) {
                if (Log.isLoggable("SupportRMFragment", 5)) {
                    Log.w("SupportRMFragment", "Unable to register fragment with root", e);
                }
            }
        } else if (Log.isLoggable("SupportRMFragment", 5)) {
            Log.w("SupportRMFragment", "Unable to register fragment with root, ancestor detached");
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        this.f7768a.c();
        c();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDetach() {
        super.onDetach();
        this.f7771d = null;
        c();
    }

    @Override // androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        this.f7768a.a();
    }

    @Override // androidx.fragment.app.Fragment
    public void onStop() {
        super.onStop();
        this.f7768a.b();
    }

    @Override // androidx.fragment.app.Fragment
    public String toString() {
        return super.toString() + "{parent=" + b() + "}";
    }
}
