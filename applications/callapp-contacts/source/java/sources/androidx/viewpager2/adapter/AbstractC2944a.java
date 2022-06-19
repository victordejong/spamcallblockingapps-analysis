package androidx.viewpager2.adapter;

import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcelable;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import androidx.core.p036e.C0833d;
import androidx.core.view.C0926v;
import androidx.fragment.app.AbstractC1121s;
import androidx.fragment.app.C1108j;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.lifecycle.AbstractC1253j;
import androidx.lifecycle.AbstractC1261n;
import androidx.lifecycle.AbstractC1263p;
import androidx.p023b.C0430b;
import androidx.p023b.C0433d;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.adapter.AbstractC2944a;
import androidx.viewpager2.widget.ViewPager2;
/* renamed from: androidx.viewpager2.adapter.a */
/* loaded from: classes-dex2jar.jar:androidx/viewpager2/adapter/a.class */
public abstract class AbstractC2944a extends RecyclerView.AbstractC2626a<C2952b> implements AbstractC2953c {

    /* renamed from: a */
    final AbstractC1253j f11022a;

    /* renamed from: b */
    final FragmentManager f11023b;

    /* renamed from: c */
    final C0433d<Fragment> f11024c;

    /* renamed from: d */
    boolean f11025d;

    /* renamed from: e */
    private final C0433d<Fragment.SavedState> f11026e;

    /* renamed from: f */
    private final C0433d<Integer> f11027f;

    /* renamed from: g */
    private C2949b f11028g;

    /* renamed from: h */
    private boolean f11029h;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.viewpager2.adapter.a$a */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager2/adapter/a$a.class */
    public static abstract class AbstractC2948a extends RecyclerView.AbstractC2629c {
        private AbstractC2948a() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2629c
        public abstract void onChanged();

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2629c
        public final void onItemRangeChanged(int i, int i2) {
            onChanged();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2629c
        public final void onItemRangeChanged(int i, int i2, Object obj) {
            onChanged();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2629c
        public final void onItemRangeInserted(int i, int i2) {
            onChanged();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2629c
        public final void onItemRangeMoved(int i, int i2, int i3) {
            onChanged();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2629c
        public final void onItemRangeRemoved(int i, int i2) {
            onChanged();
        }
    }

    /* renamed from: androidx.viewpager2.adapter.a$b */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager2/adapter/a$b.class */
    public final class C2949b {

        /* renamed from: a */
        ViewPager2.AbstractC2963e f11037a;

        /* renamed from: b */
        RecyclerView.AbstractC2629c f11038b;

        /* renamed from: c */
        AbstractC1261n f11039c;

        /* renamed from: d */
        ViewPager2 f11040d;

        /* renamed from: f */
        private long f11042f = -1;

        C2949b() {
            AbstractC2944a.this = r5;
        }

        /* renamed from: a */
        static ViewPager2 m39576a(RecyclerView recyclerView) {
            ViewParent parent = recyclerView.getParent();
            if (parent instanceof ViewPager2) {
                return (ViewPager2) parent;
            }
            throw new IllegalStateException("Expected ViewPager2 instance. Got: ".concat(String.valueOf(parent)));
        }

        /* renamed from: a */
        public final void m39575a(boolean z) {
            int i;
            if (!AbstractC2944a.this.f11023b.m43707f() && this.f11040d.f11051g.f11094b == 0 && !AbstractC2944a.this.f11024c.m45544c() && AbstractC2944a.this.getItemCount() != 0 && (i = this.f11040d.f11047c) < AbstractC2944a.this.getItemCount()) {
                long itemId = AbstractC2944a.this.getItemId(i);
                if (itemId == this.f11042f && !z) {
                    return;
                }
                Fragment fragment = null;
                Fragment m45549a = AbstractC2944a.this.f11024c.m45549a(itemId, null);
                if (m45549a == null || !m45549a.isAdded()) {
                    return;
                }
                this.f11042f = itemId;
                AbstractC1121s m43765a = AbstractC2944a.this.f11023b.m43765a();
                int i2 = 0;
                while (i2 < AbstractC2944a.this.f11024c.m45548b()) {
                    long m45547b = AbstractC2944a.this.f11024c.m45547b(i2);
                    Fragment m45543c = AbstractC2944a.this.f11024c.m45543c(i2);
                    Fragment fragment2 = fragment;
                    if (m45543c.isAdded()) {
                        if (m45547b != this.f11042f) {
                            m43765a.mo43538a(m45543c, AbstractC1253j.EnumC1256b.STARTED);
                        } else {
                            fragment = m45543c;
                        }
                        m45543c.setMenuVisibility(m45547b == this.f11042f);
                        fragment2 = fragment;
                    }
                    i2++;
                    fragment = fragment2;
                }
                if (fragment != null) {
                    m43765a.mo43538a(fragment, AbstractC1253j.EnumC1256b.RESUMED);
                }
                if (m43765a.mo43528h()) {
                    return;
                }
                m43765a.mo43530d();
            }
        }
    }

    public AbstractC2944a(Fragment fragment) {
        this(fragment.getChildFragmentManager(), fragment.getLifecycle());
    }

    public AbstractC2944a(FragmentActivity fragmentActivity) {
        this(fragmentActivity.getSupportFragmentManager(), fragmentActivity.getLifecycle());
    }

    public AbstractC2944a(FragmentManager fragmentManager, AbstractC1253j abstractC1253j) {
        this.f11024c = new C0433d<>();
        this.f11026e = new C0433d<>();
        this.f11027f = new C0433d<>();
        this.f11025d = false;
        this.f11029h = false;
        this.f11023b = fragmentManager;
        this.f11022a = abstractC1253j;
        super.setHasStableIds(true);
    }

    /* renamed from: a */
    private static String m39583a(String str, long j) {
        return str + j;
    }

    /* renamed from: a */
    private void m39587a(long j) {
        ViewParent parent;
        Fragment m45549a = this.f11024c.m45549a(j, null);
        if (m45549a == null) {
            return;
        }
        if (m45549a.getView() != null && (parent = m45549a.getView().getParent()) != null) {
            ((FrameLayout) parent).removeAllViews();
        }
        if (!m39579b(j)) {
            this.f11026e.m45550a(j);
        }
        if (!m45549a.isAdded()) {
            this.f11024c.m45550a(j);
        } else if (this.f11023b.m43707f()) {
            this.f11029h = true;
        } else {
            if (m45549a.isAdded() && m39579b(j)) {
                this.f11026e.m45545b(j, this.f11023b.m43718c(m45549a));
            }
            this.f11023b.m43765a().mo43539a(m45549a).mo43530d();
            this.f11024c.m45550a(j);
        }
    }

    /* renamed from: a */
    static void m39586a(View view, FrameLayout frameLayout) {
        if (frameLayout.getChildCount() <= 1) {
            if (view.getParent() == frameLayout) {
                return;
            }
            if (frameLayout.getChildCount() > 0) {
                frameLayout.removeAllViews();
            }
            if (view.getParent() != null) {
                ((ViewGroup) view.getParent()).removeView(view);
            }
            frameLayout.addView(view);
            return;
        }
        throw new IllegalStateException("Design assumption violated.");
    }

    /* renamed from: a */
    private void m39585a(final Fragment fragment, final FrameLayout frameLayout) {
        this.f11023b.m43748a(new FragmentManager.AbstractC1063c() { // from class: androidx.viewpager2.adapter.a.2
            @Override // androidx.fragment.app.FragmentManager.AbstractC1063c
            /* renamed from: a */
            public final void mo39577a(FragmentManager fragmentManager, Fragment fragment2, View view) {
                if (fragment2 == fragment) {
                    C1108j c1108j = fragmentManager.f4218j;
                    synchronized (c1108j.f4366a) {
                        int i = 0;
                        int size = c1108j.f4366a.size();
                        while (true) {
                            if (i >= size) {
                                break;
                            } else if (c1108j.f4366a.get(i).f4368a == this) {
                                c1108j.f4366a.remove(i);
                                break;
                            } else {
                                i++;
                            }
                        }
                    }
                    AbstractC2944a.m39586a(view, frameLayout);
                }
            }
        }, false);
    }

    /* renamed from: a */
    private static boolean m39582a(String str, String str2) {
        return str.startsWith(str2) && str.length() > str2.length();
    }

    /* renamed from: b */
    private static long m39578b(String str, String str2) {
        return Long.parseLong(str.substring(str2.length()));
    }

    /* renamed from: b */
    private Long m39580b(int i) {
        Long l = null;
        int i2 = 0;
        while (i2 < this.f11027f.m45548b()) {
            Long l2 = l;
            if (this.f11027f.m45543c(i2).intValue() == i) {
                if (l != null) {
                    throw new IllegalStateException("Design assumption violated: a ViewHolder can only be bound to one item at a time.");
                }
                l2 = Long.valueOf(this.f11027f.m45547b(i2));
            }
            i2++;
            l = l2;
        }
        return l;
    }

    /* renamed from: b */
    private boolean m39579b(long j) {
        return j >= 0 && j < ((long) getItemCount());
    }

    /* renamed from: a */
    public abstract Fragment mo26292a(int i);

    @Override // androidx.viewpager2.adapter.AbstractC2953c
    /* renamed from: a */
    public final void mo39573a(Parcelable parcelable) {
        if (!this.f11026e.m45544c() || !this.f11024c.m45544c()) {
            throw new IllegalStateException("Expected the adapter to be 'fresh' while restoring state.");
        }
        Bundle bundle = (Bundle) parcelable;
        if (bundle.getClassLoader() == null) {
            bundle.setClassLoader(getClass().getClassLoader());
        }
        for (String str : bundle.keySet()) {
            if (m39582a(str, "f#")) {
                this.f11024c.m45545b(m39578b(str, "f#"), this.f11023b.m43761a(bundle, str));
            } else if (!m39582a(str, "s#")) {
                throw new IllegalArgumentException("Unexpected key in savedState: ".concat(String.valueOf(str)));
            } else {
                long m39578b = m39578b(str, "s#");
                Fragment.SavedState savedState = (Fragment.SavedState) bundle.getParcelable(str);
                if (m39579b(m39578b)) {
                    this.f11026e.m45545b(m39578b, savedState);
                }
            }
        }
        if (this.f11024c.m45544c()) {
            return;
        }
        this.f11029h = true;
        this.f11025d = true;
        m39581b();
        final Handler handler = new Handler(Looper.getMainLooper());
        final Runnable runnable = new Runnable() { // from class: androidx.viewpager2.adapter.a.3
            @Override // java.lang.Runnable
            public final void run() {
                AbstractC2944a.this.f11025d = false;
                AbstractC2944a.this.m39581b();
            }
        };
        this.f11022a.addObserver(new AbstractC1261n() { // from class: androidx.viewpager2.adapter.FragmentStateAdapter$5
            @Override // androidx.lifecycle.AbstractC1261n
            /* renamed from: a */
            public final void mo39588a(AbstractC1263p abstractC1263p, AbstractC1253j.EnumC1255a enumC1255a) {
                if (enumC1255a == AbstractC1253j.EnumC1255a.ON_DESTROY) {
                    handler.removeCallbacks(runnable);
                    abstractC1263p.getLifecycle().removeObserver(this);
                }
            }
        });
        handler.postDelayed(runnable, 10000L);
    }

    /* renamed from: a */
    public final void m39584a(final C2952b c2952b) {
        Fragment m45549a = this.f11024c.m45549a(c2952b.getItemId(), null);
        if (m45549a != null) {
            FrameLayout frameLayout = (FrameLayout) c2952b.itemView;
            View view = m45549a.getView();
            if (!m45549a.isAdded() && view != null) {
                throw new IllegalStateException("Design assumption violated.");
            }
            if (m45549a.isAdded() && view == null) {
                m39585a(m45549a, frameLayout);
                return;
            } else if (m45549a.isAdded() && view.getParent() != null) {
                if (view.getParent() == frameLayout) {
                    return;
                }
                m39586a(view, frameLayout);
                return;
            } else if (m45549a.isAdded()) {
                m39586a(view, frameLayout);
                return;
            } else if (this.f11023b.m43707f()) {
                if (this.f11023b.f4230v) {
                    return;
                }
                this.f11022a.addObserver(new AbstractC1261n() { // from class: androidx.viewpager2.adapter.FragmentStateAdapter$2
                    @Override // androidx.lifecycle.AbstractC1261n
                    /* renamed from: a */
                    public final void mo39588a(AbstractC1263p abstractC1263p, AbstractC1253j.EnumC1255a enumC1255a) {
                        if (AbstractC2944a.this.f11023b.m43707f()) {
                            return;
                        }
                        abstractC1263p.getLifecycle().removeObserver(this);
                        if (!C0926v.m44154E((FrameLayout) c2952b.itemView)) {
                            return;
                        }
                        AbstractC2944a.this.m39584a(c2952b);
                    }
                });
                return;
            } else {
                m39585a(m45549a, frameLayout);
                AbstractC1121s m43765a = this.f11023b.m43765a();
                m43765a.m43537a(m45549a, "f" + c2952b.getItemId()).mo43538a(m45549a, AbstractC1253j.EnumC1256b.STARTED).mo43530d();
                this.f11028g.m39575a(false);
                return;
            }
        }
        throw new IllegalStateException("Design assumption violated.");
    }

    /* renamed from: b */
    final void m39581b() {
        Fragment m45549a;
        View view;
        if (!this.f11029h || this.f11023b.m43707f()) {
            return;
        }
        C0430b<Long> c0430b = new C0430b();
        for (int i = 0; i < this.f11024c.m45548b(); i++) {
            long m45547b = this.f11024c.m45547b(i);
            if (!m39579b(m45547b)) {
                c0430b.add(Long.valueOf(m45547b));
                this.f11027f.m45550a(m45547b);
            }
        }
        if (!this.f11025d) {
            this.f11029h = false;
            for (int i2 = 0; i2 < this.f11024c.m45548b(); i2++) {
                long m45547b2 = this.f11024c.m45547b(i2);
                boolean z = true;
                if (!this.f11027f.m45542c(m45547b2) && ((m45549a = this.f11024c.m45549a(m45547b2, null)) == null || (view = m45549a.getView()) == null || view.getParent() == null)) {
                    z = false;
                }
                if (!z) {
                    c0430b.add(Long.valueOf(m45547b2));
                }
            }
        }
        for (Long l : c0430b) {
            m39587a(l.longValue());
        }
    }

    @Override // androidx.viewpager2.adapter.AbstractC2953c
    /* renamed from: c */
    public final Parcelable mo39572c() {
        int i;
        Bundle bundle = new Bundle(this.f11024c.m45548b() + this.f11026e.m45548b());
        int i2 = 0;
        while (true) {
            if (i2 < this.f11024c.m45548b()) {
                long m45547b = this.f11024c.m45547b(i2);
                Fragment m45549a = this.f11024c.m45549a(m45547b, null);
                if (m45549a != null && m45549a.isAdded()) {
                    this.f11023b.m43760a(bundle, m39583a("f#", m45547b), m45549a);
                }
                i2++;
            }
        }
        for (i = 0; i < this.f11026e.m45548b(); i++) {
            long m45547b2 = this.f11026e.m45547b(i);
            if (m39579b(m45547b2)) {
                bundle.putParcelable(m39583a("s#", m45547b2), this.f11026e.m45549a(m45547b2, null));
            }
        }
        return bundle;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2626a
    public long getItemId(int i) {
        return i;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2626a
    public void onAttachedToRecyclerView(RecyclerView recyclerView) {
        C0833d.m44408a(this.f11028g == null);
        final C2949b c2949b = new C2949b();
        this.f11028g = c2949b;
        c2949b.f11040d = C2949b.m39576a(recyclerView);
        c2949b.f11037a = new ViewPager2.AbstractC2963e() { // from class: androidx.viewpager2.adapter.a.b.1
            @Override // androidx.viewpager2.widget.ViewPager2.AbstractC2963e
            /* renamed from: a */
            public final void mo39533a(int i) {
                c2949b.m39575a(false);
            }

            @Override // androidx.viewpager2.widget.ViewPager2.AbstractC2963e
            /* renamed from: b */
            public final void mo39531b(int i) {
                c2949b.m39575a(false);
            }
        };
        c2949b.f11040d.f11046b.m39535a(c2949b.f11037a);
        c2949b.f11038b = new AbstractC2948a() { // from class: androidx.viewpager2.adapter.a.b.2
            @Override // androidx.viewpager2.adapter.AbstractC2944a.AbstractC2948a, androidx.recyclerview.widget.RecyclerView.AbstractC2629c
            public final void onChanged() {
                c2949b.m39575a(true);
            }
        };
        AbstractC2944a.this.registerAdapterDataObserver(c2949b.f11038b);
        c2949b.f11039c = new AbstractC1261n() { // from class: androidx.viewpager2.adapter.FragmentStateAdapter$FragmentMaxLifecycleEnforcer$3
            @Override // androidx.lifecycle.AbstractC1261n
            /* renamed from: a */
            public final void mo39588a(AbstractC1263p abstractC1263p, AbstractC1253j.EnumC1255a enumC1255a) {
                AbstractC2944a.C2949b.this.m39575a(false);
            }
        };
        AbstractC2944a.this.f11022a.addObserver(c2949b.f11039c);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2626a
    public /* synthetic */ void onBindViewHolder(C2952b c2952b, int i) {
        final C2952b c2952b2 = c2952b;
        long itemId = c2952b2.getItemId();
        int id = ((FrameLayout) c2952b2.itemView).getId();
        Long m39580b = m39580b(id);
        if (m39580b != null && m39580b.longValue() != itemId) {
            m39587a(m39580b.longValue());
            this.f11027f.m45550a(m39580b.longValue());
        }
        this.f11027f.m45545b(itemId, Integer.valueOf(id));
        long itemId2 = getItemId(i);
        if (!this.f11024c.m45542c(itemId2)) {
            Fragment mo26292a = mo26292a(i);
            mo26292a.setInitialSavedState(this.f11026e.m45549a(itemId2, null));
            this.f11024c.m45545b(itemId2, mo26292a);
        }
        final FrameLayout frameLayout = (FrameLayout) c2952b2.itemView;
        if (C0926v.m44154E(frameLayout)) {
            if (frameLayout.getParent() != null) {
                throw new IllegalStateException("Design assumption violated.");
            }
            frameLayout.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: androidx.viewpager2.adapter.a.1
                @Override // android.view.View.OnLayoutChangeListener
                public final void onLayoutChange(View view, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
                    if (frameLayout.getParent() != null) {
                        frameLayout.removeOnLayoutChangeListener(this);
                        AbstractC2944a.this.m39584a(c2952b2);
                    }
                }
            });
        }
        m39581b();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2626a
    public /* synthetic */ C2952b onCreateViewHolder(ViewGroup viewGroup, int i) {
        return C2952b.m39574a(viewGroup);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2626a
    public void onDetachedFromRecyclerView(RecyclerView recyclerView) {
        C2949b c2949b = this.f11028g;
        ViewPager2 m39576a = C2949b.m39576a(recyclerView);
        m39576a.f11046b.f11087a.remove(c2949b.f11037a);
        AbstractC2944a.this.unregisterAdapterDataObserver(c2949b.f11038b);
        AbstractC2944a.this.f11022a.removeObserver(c2949b.f11039c);
        c2949b.f11040d = null;
        this.f11028g = null;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2626a
    public /* bridge */ /* synthetic */ boolean onFailedToRecycleView(C2952b c2952b) {
        return true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2626a
    public /* synthetic */ void onViewAttachedToWindow(C2952b c2952b) {
        m39584a(c2952b);
        m39581b();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2626a
    public /* synthetic */ void onViewRecycled(C2952b c2952b) {
        Long m39580b = m39580b(((FrameLayout) c2952b.itemView).getId());
        if (m39580b != null) {
            m39587a(m39580b.longValue());
            this.f11027f.m45550a(m39580b.longValue());
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2626a
    public final void setHasStableIds(boolean z) {
        throw new UnsupportedOperationException("Stable Ids are required for the adapter to function properly, and the adapter takes care of setting the flag.");
    }
}
