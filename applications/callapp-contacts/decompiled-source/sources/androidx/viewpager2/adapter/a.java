package androidx.viewpager2.adapter;

import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcelable;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import androidx.b.d;
import androidx.core.view.v;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.s;
import androidx.lifecycle.j;
import androidx.lifecycle.n;
import androidx.lifecycle.p;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.adapter.a;
import androidx.viewpager2.widget.ViewPager2;
/* loaded from: classes-dex2jar.jar:androidx/viewpager2/adapter/a.class */
public abstract class a extends RecyclerView.a<androidx.viewpager2.adapter.b> implements c {

    /* renamed from: a  reason: collision with root package name */
    final j f5898a;

    /* renamed from: b  reason: collision with root package name */
    final FragmentManager f5899b;

    /* renamed from: c  reason: collision with root package name */
    final d<Fragment> f5900c;

    /* renamed from: d  reason: collision with root package name */
    boolean f5901d;
    private final d<Fragment.SavedState> e;
    private final d<Integer> f;
    private b g;
    private boolean h;

    /* renamed from: androidx.viewpager2.adapter.a$a  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager2/adapter/a$a.class */
    static abstract class AbstractC0120a extends RecyclerView.c {
        private AbstractC0120a() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.c
        public abstract void onChanged();

        @Override // androidx.recyclerview.widget.RecyclerView.c
        public final void onItemRangeChanged(int i, int i2) {
            onChanged();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.c
        public final void onItemRangeChanged(int i, int i2, Object obj) {
            onChanged();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.c
        public final void onItemRangeInserted(int i, int i2) {
            onChanged();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.c
        public final void onItemRangeMoved(int i, int i2, int i3) {
            onChanged();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.c
        public final void onItemRangeRemoved(int i, int i2) {
            onChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager2/adapter/a$b.class */
    public final class b {

        /* renamed from: a  reason: collision with root package name */
        ViewPager2.e f5909a;

        /* renamed from: b  reason: collision with root package name */
        RecyclerView.c f5910b;

        /* renamed from: c  reason: collision with root package name */
        n f5911c;

        /* renamed from: d  reason: collision with root package name */
        ViewPager2 f5912d;
        private long f = -1;

        b() {
        }

        static ViewPager2 a(RecyclerView recyclerView) {
            ViewParent parent = recyclerView.getParent();
            if (parent instanceof ViewPager2) {
                return (ViewPager2) parent;
            }
            throw new IllegalStateException("Expected ViewPager2 instance. Got: ".concat(String.valueOf(parent)));
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final void a(boolean z) {
            int i;
            if (!a.this.f5899b.f() && this.f5912d.g.f5945b == 0 && !a.this.f5900c.c() && a.this.getItemCount() != 0 && (i = this.f5912d.f5917c) < a.this.getItemCount()) {
                long itemId = a.this.getItemId(i);
                if (itemId != this.f || z) {
                    Fragment fragment = null;
                    Fragment a2 = a.this.f5900c.a(itemId, null);
                    if (a2 != null && a2.isAdded()) {
                        this.f = itemId;
                        s a3 = a.this.f5899b.a();
                        for (int i2 = 0; i2 < a.this.f5900c.b(); i2++) {
                            long b2 = a.this.f5900c.b(i2);
                            Fragment c2 = a.this.f5900c.c(i2);
                            fragment = fragment;
                            if (c2.isAdded()) {
                                if (b2 != this.f) {
                                    a3.a(c2, j.b.STARTED);
                                } else {
                                    fragment = c2;
                                }
                                c2.setMenuVisibility(b2 == this.f);
                            }
                        }
                        if (fragment != null) {
                            a3.a(fragment, j.b.RESUMED);
                        }
                        if (!a3.h()) {
                            a3.d();
                        }
                    }
                }
            }
        }
    }

    public a(Fragment fragment) {
        this(fragment.getChildFragmentManager(), fragment.getLifecycle());
    }

    public a(FragmentActivity fragmentActivity) {
        this(fragmentActivity.getSupportFragmentManager(), fragmentActivity.getLifecycle());
    }

    public a(FragmentManager fragmentManager, j jVar) {
        this.f5900c = new d<>();
        this.e = new d<>();
        this.f = new d<>();
        this.f5901d = false;
        this.h = false;
        this.f5899b = fragmentManager;
        this.f5898a = jVar;
        super.setHasStableIds(true);
    }

    private static String a(String str, long j) {
        return str + j;
    }

    private void a(long j) {
        ViewParent parent;
        Fragment a2 = this.f5900c.a(j, null);
        if (a2 != null) {
            if (!(a2.getView() == null || (parent = a2.getView().getParent()) == null)) {
                ((FrameLayout) parent).removeAllViews();
            }
            if (!b(j)) {
                this.e.a(j);
            }
            if (!a2.isAdded()) {
                this.f5900c.a(j);
            } else if (this.f5899b.f()) {
                this.h = true;
            } else {
                if (a2.isAdded() && b(j)) {
                    this.e.b(j, this.f5899b.c(a2));
                }
                this.f5899b.a().a(a2).d();
                this.f5900c.a(j);
            }
        }
    }

    static void a(View view, FrameLayout frameLayout) {
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

    private void a(final Fragment fragment, final FrameLayout frameLayout) {
        this.f5899b.a(new FragmentManager.c() { // from class: androidx.viewpager2.adapter.a.2
            @Override // androidx.fragment.app.FragmentManager.c
            public final void a(FragmentManager fragmentManager, Fragment fragment2, View view) {
                if (fragment2 == fragment) {
                    androidx.fragment.app.j jVar = fragmentManager.j;
                    synchronized (jVar.f2296a) {
                        int i = 0;
                        int size = jVar.f2296a.size();
                        while (true) {
                            if (i >= size) {
                                break;
                            } else if (jVar.f2296a.get(i).f2298a == this) {
                                jVar.f2296a.remove(i);
                                break;
                            } else {
                                i++;
                            }
                        }
                    }
                    a.a(view, frameLayout);
                }
            }
        }, false);
    }

    private static boolean a(String str, String str2) {
        return str.startsWith(str2) && str.length() > str2.length();
    }

    private static long b(String str, String str2) {
        return Long.parseLong(str.substring(str2.length()));
    }

    private Long b(int i) {
        Long l = null;
        for (int i2 = 0; i2 < this.f.b(); i2++) {
            l = l;
            if (this.f.c(i2).intValue() == i) {
                if (l == null) {
                    l = Long.valueOf(this.f.b(i2));
                } else {
                    throw new IllegalStateException("Design assumption violated: a ViewHolder can only be bound to one item at a time.");
                }
            }
        }
        return l;
    }

    private boolean b(long j) {
        return j >= 0 && j < ((long) getItemCount());
    }

    public abstract Fragment a(int i);

    @Override // androidx.viewpager2.adapter.c
    public final void a(Parcelable parcelable) {
        if (!this.e.c() || !this.f5900c.c()) {
            throw new IllegalStateException("Expected the adapter to be 'fresh' while restoring state.");
        }
        Bundle bundle = (Bundle) parcelable;
        if (bundle.getClassLoader() == null) {
            bundle.setClassLoader(getClass().getClassLoader());
        }
        for (String str : bundle.keySet()) {
            if (a(str, "f#")) {
                this.f5900c.b(b(str, "f#"), this.f5899b.a(bundle, str));
            } else if (a(str, "s#")) {
                long b2 = b(str, "s#");
                Fragment.SavedState savedState = (Fragment.SavedState) bundle.getParcelable(str);
                if (b(b2)) {
                    this.e.b(b2, savedState);
                }
            } else {
                throw new IllegalArgumentException("Unexpected key in savedState: ".concat(String.valueOf(str)));
            }
        }
        if (!this.f5900c.c()) {
            this.h = true;
            this.f5901d = true;
            b();
            final Handler handler = new Handler(Looper.getMainLooper());
            final Runnable runnable = new Runnable() { // from class: androidx.viewpager2.adapter.a.3
                @Override // java.lang.Runnable
                public final void run() {
                    a.this.f5901d = false;
                    a.this.b();
                }
            };
            this.f5898a.addObserver(new n() { // from class: androidx.viewpager2.adapter.FragmentStateAdapter$5
                @Override // androidx.lifecycle.n
                public final void a(p pVar, j.a aVar) {
                    if (aVar == j.a.ON_DESTROY) {
                        handler.removeCallbacks(runnable);
                        pVar.getLifecycle().removeObserver(this);
                    }
                }
            });
            handler.postDelayed(runnable, 10000L);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(final androidx.viewpager2.adapter.b bVar) {
        Fragment a2 = this.f5900c.a(bVar.getItemId(), null);
        if (a2 != null) {
            FrameLayout frameLayout = (FrameLayout) bVar.itemView;
            View view = a2.getView();
            if (!a2.isAdded() && view != null) {
                throw new IllegalStateException("Design assumption violated.");
            } else if (a2.isAdded() && view == null) {
                a(a2, frameLayout);
            } else if (!a2.isAdded() || view.getParent() == null) {
                if (a2.isAdded()) {
                    a(view, frameLayout);
                } else if (!this.f5899b.f()) {
                    a(a2, frameLayout);
                    s a3 = this.f5899b.a();
                    a3.a(a2, "f" + bVar.getItemId()).a(a2, j.b.STARTED).d();
                    this.g.a(false);
                } else if (!this.f5899b.v) {
                    this.f5898a.addObserver(new n() { // from class: androidx.viewpager2.adapter.FragmentStateAdapter$2
                        @Override // androidx.lifecycle.n
                        public final void a(p pVar, j.a aVar) {
                            if (!a.this.f5899b.f()) {
                                pVar.getLifecycle().removeObserver(this);
                                if (v.E((FrameLayout) bVar.itemView)) {
                                    a.this.a(bVar);
                                }
                            }
                        }
                    });
                }
            } else if (view.getParent() != frameLayout) {
                a(view, frameLayout);
            }
        } else {
            throw new IllegalStateException("Design assumption violated.");
        }
    }

    final void b() {
        Fragment a2;
        View view;
        if (this.h && !this.f5899b.f()) {
            androidx.b.b<Long> bVar = new androidx.b.b();
            for (int i = 0; i < this.f5900c.b(); i++) {
                long b2 = this.f5900c.b(i);
                if (!b(b2)) {
                    bVar.add(Long.valueOf(b2));
                    this.f.a(b2);
                }
            }
            if (!this.f5901d) {
                this.h = false;
                for (int i2 = 0; i2 < this.f5900c.b(); i2++) {
                    long b3 = this.f5900c.b(i2);
                    boolean z = true;
                    if (!this.f.c(b3) && ((a2 = this.f5900c.a(b3, null)) == null || (view = a2.getView()) == null || view.getParent() == null)) {
                        z = false;
                    }
                    if (!z) {
                        bVar.add(Long.valueOf(b3));
                    }
                }
            }
            for (Long l : bVar) {
                a(l.longValue());
            }
        }
    }

    @Override // androidx.viewpager2.adapter.c
    public final Parcelable c() {
        Bundle bundle = new Bundle(this.f5900c.b() + this.e.b());
        for (int i = 0; i < this.f5900c.b(); i++) {
            long b2 = this.f5900c.b(i);
            Fragment a2 = this.f5900c.a(b2, null);
            if (a2 != null && a2.isAdded()) {
                this.f5899b.a(bundle, a("f#", b2), a2);
            }
        }
        for (int i2 = 0; i2 < this.e.b(); i2++) {
            long b3 = this.e.b(i2);
            if (b(b3)) {
                bundle.putParcelable(a("s#", b3), this.e.a(b3, null));
            }
        }
        return bundle;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.a
    public long getItemId(int i) {
        return i;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.a
    public void onAttachedToRecyclerView(RecyclerView recyclerView) {
        androidx.core.e.d.a(this.g == null);
        final b bVar = new b();
        this.g = bVar;
        bVar.f5912d = b.a(recyclerView);
        bVar.f5909a = new ViewPager2.e() { // from class: androidx.viewpager2.adapter.a.b.1
            @Override // androidx.viewpager2.widget.ViewPager2.e
            public final void a(int i) {
                b.this.a(false);
            }

            @Override // androidx.viewpager2.widget.ViewPager2.e
            public final void b(int i) {
                b.this.a(false);
            }
        };
        bVar.f5912d.f5916b.a(bVar.f5909a);
        bVar.f5910b = new AbstractC0120a() { // from class: androidx.viewpager2.adapter.a.b.2
            @Override // androidx.viewpager2.adapter.a.AbstractC0120a, androidx.recyclerview.widget.RecyclerView.c
            public final void onChanged() {
                b.this.a(true);
            }
        };
        a.this.registerAdapterDataObserver(bVar.f5910b);
        bVar.f5911c = new n() { // from class: androidx.viewpager2.adapter.FragmentStateAdapter$FragmentMaxLifecycleEnforcer$3
            @Override // androidx.lifecycle.n
            public final void a(p pVar, j.a aVar) {
                a.b.this.a(false);
            }
        };
        a.this.f5898a.addObserver(bVar.f5911c);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.a
    public /* synthetic */ void onBindViewHolder(androidx.viewpager2.adapter.b bVar, int i) {
        final androidx.viewpager2.adapter.b bVar2 = bVar;
        long itemId = bVar2.getItemId();
        int id = ((FrameLayout) bVar2.itemView).getId();
        Long b2 = b(id);
        if (!(b2 == null || b2.longValue() == itemId)) {
            a(b2.longValue());
            this.f.a(b2.longValue());
        }
        this.f.b(itemId, Integer.valueOf(id));
        long itemId2 = getItemId(i);
        if (!this.f5900c.c(itemId2)) {
            Fragment a2 = a(i);
            a2.setInitialSavedState(this.e.a(itemId2, null));
            this.f5900c.b(itemId2, a2);
        }
        final FrameLayout frameLayout = (FrameLayout) bVar2.itemView;
        if (v.E(frameLayout)) {
            if (frameLayout.getParent() == null) {
                frameLayout.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: androidx.viewpager2.adapter.a.1
                    @Override // android.view.View.OnLayoutChangeListener
                    public final void onLayoutChange(View view, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
                        if (frameLayout.getParent() != null) {
                            frameLayout.removeOnLayoutChangeListener(this);
                            a.this.a(bVar2);
                        }
                    }
                });
            } else {
                throw new IllegalStateException("Design assumption violated.");
            }
        }
        b();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.a
    public /* synthetic */ androidx.viewpager2.adapter.b onCreateViewHolder(ViewGroup viewGroup, int i) {
        return androidx.viewpager2.adapter.b.a(viewGroup);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.a
    public void onDetachedFromRecyclerView(RecyclerView recyclerView) {
        b bVar = this.g;
        ViewPager2 a2 = b.a(recyclerView);
        a2.f5916b.f5938a.remove(bVar.f5909a);
        a.this.unregisterAdapterDataObserver(bVar.f5910b);
        a.this.f5898a.removeObserver(bVar.f5911c);
        bVar.f5912d = null;
        this.g = null;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.a
    public /* bridge */ /* synthetic */ boolean onFailedToRecycleView(androidx.viewpager2.adapter.b bVar) {
        return true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.a
    public /* synthetic */ void onViewAttachedToWindow(androidx.viewpager2.adapter.b bVar) {
        a(bVar);
        b();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.a
    public /* synthetic */ void onViewRecycled(androidx.viewpager2.adapter.b bVar) {
        Long b2 = b(((FrameLayout) bVar.itemView).getId());
        if (b2 != null) {
            a(b2.longValue());
            this.f.a(b2.longValue());
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.a
    public final void setHasStableIds(boolean z) {
        throw new UnsupportedOperationException("Stable Ids are required for the adapter to function properly, and the adapter takes care of setting the flag.");
    }
}
