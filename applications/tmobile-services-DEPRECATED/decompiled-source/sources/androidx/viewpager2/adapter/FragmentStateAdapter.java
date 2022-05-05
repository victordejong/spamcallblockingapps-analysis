package androidx.viewpager2.adapter;

import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcelable;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.collection.ArraySet;
import androidx.collection.LongSparseArray;
import androidx.core.util.Preconditions;
import androidx.core.view.ViewCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
/* loaded from: classes-dex2jar.jar:androidx/viewpager2/adapter/FragmentStateAdapter.class */
public abstract class FragmentStateAdapter extends RecyclerView.Adapter<FragmentViewHolder> implements StatefulAdapter {

    /* renamed from: a */
    final Lifecycle f5578a;

    /* renamed from: b */
    final FragmentManager f5579b;

    /* renamed from: c */
    final LongSparseArray<Fragment> f5580c;

    /* renamed from: d */
    private final LongSparseArray<Fragment.SavedState> f5581d;

    /* renamed from: e */
    private final LongSparseArray<Integer> f5582e;

    /* renamed from: f */
    private FragmentMaxLifecycleEnforcer f5583f;

    /* renamed from: g */
    boolean f5584g;

    /* renamed from: h */
    private boolean f5585h;

    /* loaded from: classes-dex2jar.jar:androidx/viewpager2/adapter/FragmentStateAdapter$DataSetChangeObserver.class */
    private static abstract class DataSetChangeObserver extends RecyclerView.AdapterDataObserver {
        private DataSetChangeObserver() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        /* renamed from: b */
        public final void mo8901b(int i, int i2) {
            mo7065a();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        /* renamed from: c */
        public final void mo8900c(int i, int i2, @Nullable Object obj) {
            mo7065a();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        /* renamed from: d */
        public final void mo8899d(int i, int i2) {
            mo7065a();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        /* renamed from: e */
        public final void mo8898e(int i, int i2, int i3) {
            mo7065a();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        /* renamed from: f */
        public final void mo8897f(int i, int i2) {
            mo7065a();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager2/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer.class */
    public class FragmentMaxLifecycleEnforcer {

        /* renamed from: a */
        private ViewPager2.OnPageChangeCallback f5597a;

        /* renamed from: b */
        private RecyclerView.AdapterDataObserver f5598b;

        /* renamed from: c */
        private LifecycleEventObserver f5599c;

        /* renamed from: d */
        private ViewPager2 f5600d;

        /* renamed from: e */
        private long f5601e = -1;

        FragmentMaxLifecycleEnforcer() {
        }

        @NonNull
        /* renamed from: a */
        private ViewPager2 m16461a(@NonNull RecyclerView recyclerView) {
            ViewParent parent = recyclerView.getParent();
            if (parent instanceof ViewPager2) {
                return (ViewPager2) parent;
            }
            throw new IllegalStateException("Expected ViewPager2 instance. Got: " + parent);
        }

        /* renamed from: b */
        void m16460b(@NonNull RecyclerView recyclerView) {
            this.f5600d = m16461a(recyclerView);
            ViewPager2.OnPageChangeCallback onPageChangeCallback = new ViewPager2.OnPageChangeCallback() { // from class: androidx.viewpager2.adapter.FragmentStateAdapter.FragmentMaxLifecycleEnforcer.1
                @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
                /* renamed from: a */
                public void mo8895a(int i) {
                    FragmentMaxLifecycleEnforcer.this.m16458d(false);
                }

                @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
                /* renamed from: c */
                public void mo8893c(int i) {
                    FragmentMaxLifecycleEnforcer.this.m16458d(false);
                }
            };
            this.f5597a = onPageChangeCallback;
            this.f5600d.m16418g(onPageChangeCallback);
            DataSetChangeObserver dataSetChangeObserver = new DataSetChangeObserver() { // from class: androidx.viewpager2.adapter.FragmentStateAdapter.FragmentMaxLifecycleEnforcer.2
                @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
                /* renamed from: a */
                public void mo7065a() {
                    FragmentMaxLifecycleEnforcer.this.m16458d(true);
                }
            };
            this.f5598b = dataSetChangeObserver;
            FragmentStateAdapter.this.registerAdapterDataObserver(dataSetChangeObserver);
            LifecycleEventObserver lifecycleEventObserver = new LifecycleEventObserver() { // from class: androidx.viewpager2.adapter.FragmentStateAdapter.FragmentMaxLifecycleEnforcer.3
                @Override // androidx.lifecycle.LifecycleEventObserver
                /* renamed from: c */
                public void mo16457c(@NonNull LifecycleOwner lifecycleOwner, @NonNull Lifecycle.Event event) {
                    FragmentMaxLifecycleEnforcer.this.m16458d(false);
                }
            };
            this.f5599c = lifecycleEventObserver;
            FragmentStateAdapter.this.f5578a.mo18231a(lifecycleEventObserver);
        }

        /* renamed from: c */
        void m16459c(@NonNull RecyclerView recyclerView) {
            m16461a(recyclerView).m16412m(this.f5597a);
            FragmentStateAdapter.this.unregisterAdapterDataObserver(this.f5598b);
            FragmentStateAdapter.this.f5578a.mo18229c(this.f5599c);
            this.f5600d = null;
        }

        /* renamed from: d */
        void m16458d(boolean z) {
            int currentItem;
            Fragment g;
            if (!FragmentStateAdapter.this.m16463v() && this.f5600d.getScrollState() == 0 && !FragmentStateAdapter.this.f5580c.m21042l() && FragmentStateAdapter.this.getItemCount() != 0 && (currentItem = this.f5600d.getCurrentItem()) < FragmentStateAdapter.this.getItemCount()) {
                long itemId = FragmentStateAdapter.this.getItemId(currentItem);
                if ((itemId != this.f5601e || z) && (g = FragmentStateAdapter.this.f5580c.m21045g(itemId)) != null && g.isAdded()) {
                    this.f5601e = itemId;
                    FragmentTransaction beginTransaction = FragmentStateAdapter.this.f5579b.beginTransaction();
                    Fragment fragment = null;
                    for (int i = 0; i < FragmentStateAdapter.this.f5580c.m21037q(); i++) {
                        long m = FragmentStateAdapter.this.f5580c.m21041m(i);
                        Fragment r = FragmentStateAdapter.this.f5580c.m21036r(i);
                        if (r.isAdded()) {
                            if (m != this.f5601e) {
                                beginTransaction.mo18328t(r, Lifecycle.State.STARTED);
                            } else {
                                fragment = r;
                            }
                            r.setMenuVisibility(m == this.f5601e);
                        }
                    }
                    if (fragment != null) {
                        beginTransaction.mo18328t(fragment, Lifecycle.State.RESUMED);
                    }
                    if (!beginTransaction.mo18332p()) {
                        beginTransaction.mo18337k();
                    }
                }
            }
        }
    }

    @NonNull
    /* renamed from: f */
    private static String m16479f(@NonNull String str, long j) {
        return str + j;
    }

    /* renamed from: g */
    private void m16478g(int i) {
        long itemId = getItemId(i);
        if (!this.f5580c.m21047d(itemId)) {
            Fragment e = m16480e(i);
            e.setInitialSavedState(this.f5581d.m21045g(itemId));
            this.f5580c.m21040n(itemId, e);
        }
    }

    /* renamed from: i */
    private boolean m16476i(long j) {
        View view;
        boolean z = true;
        if (this.f5582e.m21047d(j)) {
            return true;
        }
        Fragment g = this.f5580c.m21045g(j);
        if (g == null || (view = g.getView()) == null) {
            return false;
        }
        if (view.getParent() == null) {
            z = false;
        }
        return z;
    }

    /* renamed from: j */
    private static boolean m16475j(@NonNull String str, @NonNull String str2) {
        return str.startsWith(str2) && str.length() > str2.length();
    }

    /* renamed from: k */
    private Long m16474k(int i) {
        Long l = null;
        for (int i2 = 0; i2 < this.f5582e.m21037q(); i2++) {
            l = l;
            if (this.f5582e.m21036r(i2).intValue() == i) {
                if (l == null) {
                    l = Long.valueOf(this.f5582e.m21041m(i2));
                } else {
                    throw new IllegalStateException("Design assumption violated: a ViewHolder can only be bound to one item at a time.");
                }
            }
        }
        return l;
    }

    /* renamed from: q */
    private static long m16468q(@NonNull String str, @NonNull String str2) {
        return Long.parseLong(str.substring(str2.length()));
    }

    /* renamed from: s */
    private void m16466s(long j) {
        ViewParent parent;
        Fragment g = this.f5580c.m21045g(j);
        if (g != null) {
            if (!(g.getView() == null || (parent = g.getView().getParent()) == null)) {
                ((FrameLayout) parent).removeAllViews();
            }
            if (!m16481d(j)) {
                this.f5581d.m21039o(j);
            }
            if (!g.isAdded()) {
                this.f5580c.m21039o(j);
            } else if (m16463v()) {
                this.f5585h = true;
            } else {
                if (g.isAdded() && m16481d(j)) {
                    this.f5581d.m21040n(j, this.f5579b.saveFragmentInstanceState(g));
                }
                FragmentTransaction beginTransaction = this.f5579b.beginTransaction();
                beginTransaction.mo18331q(g);
                beginTransaction.mo18337k();
                this.f5580c.m21039o(j);
            }
        }
    }

    /* renamed from: t */
    private void m16465t() {
        final Handler handler = new Handler(Looper.getMainLooper());
        final Runnable runnable = new Runnable() { // from class: androidx.viewpager2.adapter.FragmentStateAdapter.4
            @Override // java.lang.Runnable
            public void run() {
                FragmentStateAdapter fragmentStateAdapter = FragmentStateAdapter.this;
                fragmentStateAdapter.f5584g = false;
                fragmentStateAdapter.m16477h();
            }
        };
        this.f5578a.mo18231a(new LifecycleEventObserver(this) { // from class: androidx.viewpager2.adapter.FragmentStateAdapter.5
            @Override // androidx.lifecycle.LifecycleEventObserver
            /* renamed from: c */
            public void mo16457c(@NonNull LifecycleOwner lifecycleOwner, @NonNull Lifecycle.Event event) {
                if (event == Lifecycle.Event.ON_DESTROY) {
                    handler.removeCallbacks(runnable);
                    lifecycleOwner.getLifecycle().mo18229c(this);
                }
            }
        });
        handler.postDelayed(runnable, 10000L);
    }

    /* renamed from: u */
    private void m16464u(final Fragment fragment, @NonNull final FrameLayout frameLayout) {
        this.f5579b.registerFragmentLifecycleCallbacks(new FragmentManager.FragmentLifecycleCallbacks() { // from class: androidx.viewpager2.adapter.FragmentStateAdapter.3
            @Override // androidx.fragment.app.FragmentManager.FragmentLifecycleCallbacks
            /* renamed from: m */
            public void mo16462m(@NonNull FragmentManager fragmentManager, @NonNull Fragment fragment2, @NonNull View view, @Nullable Bundle bundle) {
                if (fragment2 == fragment) {
                    fragmentManager.unregisterFragmentLifecycleCallbacks(this);
                    FragmentStateAdapter.this.m16482c(view, frameLayout);
                }
            }
        }, false);
    }

    @Override // androidx.viewpager2.adapter.StatefulAdapter
    @NonNull
    /* renamed from: a */
    public final Parcelable mo16454a() {
        Bundle bundle = new Bundle(this.f5580c.m21037q() + this.f5581d.m21037q());
        for (int i = 0; i < this.f5580c.m21037q(); i++) {
            long m = this.f5580c.m21041m(i);
            Fragment g = this.f5580c.m21045g(m);
            if (g != null && g.isAdded()) {
                this.f5579b.putFragment(bundle, m16479f("f#", m), g);
            }
        }
        for (int i2 = 0; i2 < this.f5581d.m21037q(); i2++) {
            long m2 = this.f5581d.m21041m(i2);
            if (m16481d(m2)) {
                bundle.putParcelable(m16479f("s#", m2), this.f5581d.m21045g(m2));
            }
        }
        return bundle;
    }

    @Override // androidx.viewpager2.adapter.StatefulAdapter
    /* renamed from: b */
    public final void mo16453b(@NonNull Parcelable parcelable) {
        if (!this.f5581d.m21042l() || !this.f5580c.m21042l()) {
            throw new IllegalStateException("Expected the adapter to be 'fresh' while restoring state.");
        }
        Bundle bundle = (Bundle) parcelable;
        if (bundle.getClassLoader() == null) {
            bundle.setClassLoader(FragmentStateAdapter.class.getClassLoader());
        }
        for (String str : bundle.keySet()) {
            if (m16475j(str, "f#")) {
                this.f5580c.m21040n(m16468q(str, "f#"), this.f5579b.getFragment(bundle, str));
            } else if (m16475j(str, "s#")) {
                long q = m16468q(str, "s#");
                Fragment.SavedState savedState = (Fragment.SavedState) bundle.getParcelable(str);
                if (m16481d(q)) {
                    this.f5581d.m21040n(q, savedState);
                }
            } else {
                throw new IllegalArgumentException("Unexpected key in savedState: " + str);
            }
        }
        if (!this.f5580c.m21042l()) {
            this.f5585h = true;
            this.f5584g = true;
            m16477h();
            m16465t();
        }
    }

    /* renamed from: c */
    void m16482c(@NonNull View view, @NonNull FrameLayout frameLayout) {
        if (frameLayout.getChildCount() > 1) {
            throw new IllegalStateException("Design assumption violated.");
        } else if (view.getParent() != frameLayout) {
            if (frameLayout.getChildCount() > 0) {
                frameLayout.removeAllViews();
            }
            if (view.getParent() != null) {
                ((ViewGroup) view.getParent()).removeView(view);
            }
            frameLayout.addView(view);
        }
    }

    /* renamed from: d */
    public boolean m16481d(long j) {
        return j >= 0 && j < ((long) getItemCount());
    }

    @NonNull
    /* renamed from: e */
    public abstract Fragment m16480e(int i);

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public long getItemId(int i) {
        return i;
    }

    /* renamed from: h */
    void m16477h() {
        if (this.f5585h && !m16463v()) {
            ArraySet<Long> arraySet = new ArraySet();
            for (int i = 0; i < this.f5580c.m21037q(); i++) {
                long m = this.f5580c.m21041m(i);
                if (!m16481d(m)) {
                    arraySet.add(Long.valueOf(m));
                    this.f5582e.m21039o(m);
                }
            }
            if (!this.f5584g) {
                this.f5585h = false;
                for (int i2 = 0; i2 < this.f5580c.m21037q(); i2++) {
                    long m2 = this.f5580c.m21041m(i2);
                    if (!m16476i(m2)) {
                        arraySet.add(Long.valueOf(m2));
                    }
                }
            }
            for (Long l : arraySet) {
                m16466s(l.longValue());
            }
        }
    }

    /* renamed from: l */
    public final void onBindViewHolder(@NonNull final FragmentViewHolder fragmentViewHolder, int i) {
        long itemId = fragmentViewHolder.getItemId();
        int id = fragmentViewHolder.m16455b().getId();
        Long k = m16474k(id);
        if (!(k == null || k.longValue() == itemId)) {
            m16466s(k.longValue());
            this.f5582e.m21039o(k.longValue());
        }
        this.f5582e.m21040n(itemId, Integer.valueOf(id));
        m16478g(i);
        final FrameLayout b = fragmentViewHolder.m16455b();
        if (ViewCompat.m19219R(b)) {
            if (b.getParent() == null) {
                b.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: androidx.viewpager2.adapter.FragmentStateAdapter.1
                    @Override // android.view.View.OnLayoutChangeListener
                    public void onLayoutChange(View view, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
                        if (b.getParent() != null) {
                            b.removeOnLayoutChangeListener(this);
                            FragmentStateAdapter.this.m16467r(fragmentViewHolder);
                        }
                    }
                });
            } else {
                throw new IllegalStateException("Design assumption violated.");
            }
        }
        m16477h();
    }

    @NonNull
    /* renamed from: m */
    public final FragmentViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i) {
        return FragmentViewHolder.m16456a(viewGroup);
    }

    /* renamed from: n */
    public final boolean onFailedToRecycleView(@NonNull FragmentViewHolder fragmentViewHolder) {
        return true;
    }

    /* renamed from: o */
    public final void onViewAttachedToWindow(@NonNull FragmentViewHolder fragmentViewHolder) {
        m16467r(fragmentViewHolder);
        m16477h();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @CallSuper
    public void onAttachedToRecyclerView(@NonNull RecyclerView recyclerView) {
        Preconditions.m19340a(this.f5583f == null);
        FragmentMaxLifecycleEnforcer fragmentMaxLifecycleEnforcer = new FragmentMaxLifecycleEnforcer();
        this.f5583f = fragmentMaxLifecycleEnforcer;
        fragmentMaxLifecycleEnforcer.m16460b(recyclerView);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @CallSuper
    public void onDetachedFromRecyclerView(@NonNull RecyclerView recyclerView) {
        this.f5583f.m16459c(recyclerView);
        this.f5583f = null;
    }

    /* renamed from: p */
    public final void onViewRecycled(@NonNull FragmentViewHolder fragmentViewHolder) {
        Long k = m16474k(fragmentViewHolder.m16455b().getId());
        if (k != null) {
            m16466s(k.longValue());
            this.f5582e.m21039o(k.longValue());
        }
    }

    /* renamed from: r */
    void m16467r(@NonNull final FragmentViewHolder fragmentViewHolder) {
        Fragment g = this.f5580c.m21045g(fragmentViewHolder.getItemId());
        if (g != null) {
            FrameLayout b = fragmentViewHolder.m16455b();
            View view = g.getView();
            if (!g.isAdded() && view != null) {
                throw new IllegalStateException("Design assumption violated.");
            } else if (g.isAdded() && view == null) {
                m16464u(g, b);
            } else if (!g.isAdded() || view.getParent() == null) {
                if (g.isAdded()) {
                    m16482c(view, b);
                } else if (!m16463v()) {
                    m16464u(g, b);
                    FragmentTransaction beginTransaction = this.f5579b.beginTransaction();
                    beginTransaction.m18343e(g, "f" + fragmentViewHolder.getItemId());
                    beginTransaction.mo18328t(g, Lifecycle.State.STARTED);
                    beginTransaction.mo18337k();
                    this.f5583f.m16458d(false);
                } else if (!this.f5579b.isDestroyed()) {
                    this.f5578a.mo18231a(new LifecycleEventObserver() { // from class: androidx.viewpager2.adapter.FragmentStateAdapter.2
                        @Override // androidx.lifecycle.LifecycleEventObserver
                        /* renamed from: c */
                        public void mo16457c(@NonNull LifecycleOwner lifecycleOwner, @NonNull Lifecycle.Event event) {
                            if (!FragmentStateAdapter.this.m16463v()) {
                                lifecycleOwner.getLifecycle().mo18229c(this);
                                if (ViewCompat.m19219R(fragmentViewHolder.m16455b())) {
                                    FragmentStateAdapter.this.m16467r(fragmentViewHolder);
                                }
                            }
                        }
                    });
                }
            } else if (view.getParent() != b) {
                m16482c(view, b);
            }
        } else {
            throw new IllegalStateException("Design assumption violated.");
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void setHasStableIds(boolean z) {
        throw new UnsupportedOperationException("Stable Ids are required for the adapter to function properly, and the adapter takes care of setting the flag.");
    }

    /* renamed from: v */
    boolean m16463v() {
        return this.f5579b.isStateSaved();
    }
}
