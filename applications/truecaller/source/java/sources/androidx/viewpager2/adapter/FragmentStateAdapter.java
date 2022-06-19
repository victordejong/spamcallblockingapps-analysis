package androidx.viewpager2.adapter;

import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcelable;
import android.support.p001v4.media.session.MediaSessionCompat;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.Fragment$SavedState;
import androidx.fragment.app.FragmentManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicInteger;
import n3.l0.a.e;
import p1727n3.p1788g.C26177c;
import p1727n3.p1788g.C26179e;
import p1727n3.p1807k.p1821i.C26614s;
import p1727n3.p1829l0.p1830a.AbstractC26652g;
import p1727n3.p1829l0.p1830a.C26648b;
import p1727n3.p1829l0.p1830a.C26650d;
import p1727n3.p1829l0.p1830a.C26651f;
import p1727n3.p1829l0.p1830a.RunnableC26649c;
import p1727n3.p1829l0.p1830a.View$OnLayoutChangeListenerC26647a;
import p1727n3.p1859r.p1860a.C26907a;
import p1727n3.p1859r.p1860a.C26971w;
import p1727n3.p1868v.AbstractC27028u;
import p1727n3.p1868v.AbstractC27041z;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes-dex2jar.jar:androidx/viewpager2/adapter/FragmentStateAdapter.class */
public abstract class FragmentStateAdapter extends RecyclerView.AbstractC0317g<C26651f> implements AbstractC26652g {

    /* renamed from: a */
    public final AbstractC27028u f1504a;

    /* renamed from: b */
    public final FragmentManager f1505b;

    /* renamed from: f */
    public C0403b f1509f;

    /* renamed from: c */
    public final C26179e<Fragment> f1506c = new C26179e<>(10);

    /* renamed from: d */
    public final C26179e<Fragment$SavedState> f1507d = new C26179e<>(10);

    /* renamed from: e */
    public final C26179e<Integer> f1508e = new C26179e<>(10);

    /* renamed from: g */
    public boolean f1510g = false;

    /* renamed from: h */
    public boolean f1511h = false;

    /* renamed from: androidx.viewpager2.adapter.FragmentStateAdapter$a */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager2/adapter/FragmentStateAdapter$a.class */
    public static abstract class AbstractC0402a extends RecyclerView.AbstractC0320i {
        public AbstractC0402a(View$OnLayoutChangeListenerC26647a view$OnLayoutChangeListenerC26647a) {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0320i
        public final void onItemRangeChanged(int i, int i2) {
            onChanged();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0320i
        public final void onItemRangeChanged(int i, int i2, Object obj) {
            onChanged();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0320i
        public final void onItemRangeInserted(int i, int i2) {
            onChanged();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0320i
        public final void onItemRangeMoved(int i, int i2, int i3) {
            onChanged();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0320i
        public final void onItemRangeRemoved(int i, int i2) {
            onChanged();
        }
    }

    /* renamed from: androidx.viewpager2.adapter.FragmentStateAdapter$b */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager2/adapter/FragmentStateAdapter$b.class */
    public class C0403b {

        /* renamed from: a */
        public ViewPager2.AbstractC0407e f1512a;

        /* renamed from: b */
        public RecyclerView.AbstractC0320i f1513b;

        /* renamed from: c */
        public AbstractC27041z f1514c;

        /* renamed from: d */
        public ViewPager2 f1515d;

        /* renamed from: e */
        public long f1516e = -1;

        public C0403b() {
            FragmentStateAdapter.this = r5;
        }

        /* renamed from: a */
        public final ViewPager2 m42625a(RecyclerView recyclerView) {
            ViewParent parent = recyclerView.getParent();
            if (parent instanceof ViewPager2) {
                return (ViewPager2) parent;
            }
            throw new IllegalStateException("Expected ViewPager2 instance. Got: " + parent);
        }

        /* renamed from: b */
        public void m42624b(boolean z) {
            int currentItem;
            Fragment m2604g;
            if (!FragmentStateAdapter.this.m42626o() && this.f1515d.getScrollState() == 0 && !FragmentStateAdapter.this.f1506c.m2602i() && FragmentStateAdapter.this.getItemCount() != 0 && (currentItem = this.f1515d.getCurrentItem()) < FragmentStateAdapter.this.getItemCount()) {
                long itemId = FragmentStateAdapter.this.getItemId(currentItem);
                if ((itemId == this.f1516e && !z) || (m2604g = FragmentStateAdapter.this.f1506c.m2604g(itemId)) == null || !m2604g.isAdded()) {
                    return;
                }
                this.f1516e = itemId;
                C26907a c26907a = new C26907a(FragmentStateAdapter.this.f1505b);
                Fragment fragment = null;
                for (int i = 0; i < FragmentStateAdapter.this.f1506c.m2598m(); i++) {
                    long m2601j = FragmentStateAdapter.this.f1506c.m2601j(i);
                    Fragment m2597n = FragmentStateAdapter.this.f1506c.m2597n(i);
                    if (m2597n.isAdded()) {
                        if (m2601j != this.f1516e) {
                            c26907a.mo1117p(m2597n, AbstractC27028u.EnumC27030b.STARTED);
                        } else {
                            fragment = m2597n;
                        }
                        m2597n.setMenuVisibility(m2601j == this.f1516e);
                    }
                }
                if (fragment != null) {
                    c26907a.mo1117p(fragment, AbstractC27028u.EnumC27030b.RESUMED);
                }
                if (c26907a.f75317a.isEmpty()) {
                    return;
                }
                c26907a.mo1125h();
            }
        }
    }

    public FragmentStateAdapter(FragmentManager fragmentManager, AbstractC27028u abstractC27028u) {
        this.f1505b = fragmentManager;
        this.f1504a = abstractC27028u;
        super.setHasStableIds(true);
    }

    /* renamed from: k */
    public static boolean m42630k(String str, String str2) {
        return str.startsWith(str2) && str.length() > str2.length();
    }

    @Override // p1727n3.p1829l0.p1830a.AbstractC26652g
    /* renamed from: a */
    public final Parcelable mo1524a() {
        int i;
        Bundle bundle = new Bundle(this.f1507d.m2598m() + this.f1506c.m2598m());
        int i2 = 0;
        while (true) {
            if (i2 < this.f1506c.m2598m()) {
                long m2601j = this.f1506c.m2601j(i2);
                Fragment m2604g = this.f1506c.m2604g(m2601j);
                if (m2604g != null && m2604g.isAdded()) {
                    this.f1505b.m42913g0(bundle, C22128a.m8583p2("f#", m2601j), m2604g);
                }
                i2++;
            }
        }
        for (i = 0; i < this.f1507d.m2598m(); i++) {
            long m2601j2 = this.f1507d.m2601j(i);
            if (mo28689g(m2601j2)) {
                bundle.putParcelable(C22128a.m8583p2("s#", m2601j2), this.f1507d.m2604g(m2601j2));
            }
        }
        return bundle;
    }

    @Override // p1727n3.p1829l0.p1830a.AbstractC26652g
    /* renamed from: d */
    public final void mo1523d(Parcelable parcelable) {
        if (!this.f1507d.m2602i() || !this.f1506c.m2602i()) {
            throw new IllegalStateException("Expected the adapter to be 'fresh' while restoring state.");
        }
        Bundle bundle = (Bundle) parcelable;
        if (bundle.getClassLoader() == null) {
            bundle.setClassLoader(getClass().getClassLoader());
        }
        for (String str : bundle.keySet()) {
            if (m42630k(str, "f#")) {
                this.f1506c.m2600k(Long.parseLong(str.substring(2)), this.f1505b.m42939N(bundle, str));
            } else if (!m42630k(str, "s#")) {
                throw new IllegalArgumentException(C22128a.m8543z2("Unexpected key in savedState: ", str));
            } else {
                long parseLong = Long.parseLong(str.substring(2));
                Fragment$SavedState fragment$SavedState = (Fragment$SavedState) bundle.getParcelable(str);
                if (mo28689g(parseLong)) {
                    this.f1507d.m2600k(parseLong, fragment$SavedState);
                }
            }
        }
        if (this.f1506c.m2602i()) {
            return;
        }
        this.f1511h = true;
        this.f1510g = true;
        m42631i();
        Handler handler = new Handler(Looper.getMainLooper());
        RunnableC26649c runnableC26649c = new RunnableC26649c(this);
        this.f1504a.mo988a(new 5(this, handler, runnableC26649c));
        handler.postDelayed(runnableC26649c, 10000L);
    }

    /* renamed from: e */
    public void m42632e(View view, FrameLayout frameLayout) {
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

    /* renamed from: g */
    public boolean mo28689g(long j) {
        return j >= 0 && j < ((long) getItemCount());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public long getItemId(int i) {
        return i;
    }

    /* renamed from: h */
    public abstract Fragment mo16623h(int i);

    /* renamed from: i */
    public void m42631i() {
        Fragment m2603h;
        View view;
        if (!this.f1511h || m42626o()) {
            return;
        }
        C26177c c26177c = new C26177c(0);
        for (int i = 0; i < this.f1506c.m2598m(); i++) {
            long m2601j = this.f1506c.m2601j(i);
            if (!mo28689g(m2601j)) {
                c26177c.add(Long.valueOf(m2601j));
                this.f1508e.m2599l(m2601j);
            }
        }
        if (!this.f1510g) {
            this.f1511h = false;
            for (int i2 = 0; i2 < this.f1506c.m2598m(); i2++) {
                long m2601j2 = this.f1506c.m2601j(i2);
                boolean z = true;
                if (!this.f1508e.m2606e(m2601j2) && ((m2603h = this.f1506c.m2603h(m2601j2, null)) == null || (view = m2603h.getView()) == null || view.getParent() == null)) {
                    z = false;
                }
                if (!z) {
                    c26177c.add(Long.valueOf(m2601j2));
                }
            }
        }
        Iterator it = c26177c.iterator();
        while (it.hasNext()) {
            m42627n(((Long) it.next()).longValue());
        }
    }

    /* renamed from: l */
    public final Long m42629l(int i) {
        Long l = null;
        int i2 = 0;
        while (i2 < this.f1508e.m2598m()) {
            Long l2 = l;
            if (this.f1508e.m2597n(i2).intValue() == i) {
                if (l != null) {
                    throw new IllegalStateException("Design assumption violated: a ViewHolder can only be bound to one item at a time.");
                }
                l2 = Long.valueOf(this.f1508e.m2601j(i2));
            }
            i2++;
            l = l2;
        }
        return l;
    }

    /* renamed from: m */
    public void m42628m(C26651f c26651f) {
        Fragment m2604g = this.f1506c.m2604g(c26651f.getItemId());
        if (m2604g != null) {
            FrameLayout frameLayout = (FrameLayout) c26651f.itemView;
            View view = m2604g.getView();
            if (!m2604g.isAdded() && view != null) {
                throw new IllegalStateException("Design assumption violated.");
            }
            if (m2604g.isAdded() && view == null) {
                this.f1505b.f851n.f75477a.add(new C26971w.C26972a(new C26648b(this, m2604g, frameLayout), false));
                return;
            } else if (m2604g.isAdded() && view.getParent() != null) {
                if (view.getParent() == frameLayout) {
                    return;
                }
                m42632e(view, frameLayout);
                return;
            } else if (m2604g.isAdded()) {
                m42632e(view, frameLayout);
                return;
            } else if (m42626o()) {
                if (this.f1505b.f830E) {
                    return;
                }
                this.f1504a.mo988a(new 2(this, c26651f));
                return;
            } else {
                this.f1505b.f851n.f75477a.add(new C26971w.C26972a(new C26648b(this, m2604g, frameLayout), false));
                C26907a c26907a = new C26907a(this.f1505b);
                StringBuilder m8728C = C22128a.m8728C("f");
                m8728C.append(c26651f.getItemId());
                c26907a.mo1122k(0, m2604g, m8728C.toString(), 1);
                c26907a.mo1117p(m2604g, AbstractC27028u.EnumC27030b.STARTED);
                c26907a.mo1125h();
                this.f1509f.m42624b(false);
                return;
            }
        }
        throw new IllegalStateException("Design assumption violated.");
    }

    /* renamed from: n */
    public final void m42627n(long j) {
        ViewParent parent;
        Fragment m2603h = this.f1506c.m2603h(j, null);
        if (m2603h == null) {
            return;
        }
        if (m2603h.getView() != null && (parent = m2603h.getView().getParent()) != null) {
            ((FrameLayout) parent).removeAllViews();
        }
        if (!mo28689g(j)) {
            this.f1507d.m2599l(j);
        }
        if (!m2603h.isAdded()) {
            this.f1506c.m2599l(j);
        } else if (m42626o()) {
            this.f1511h = true;
        } else {
            if (m2603h.isAdded() && mo28689g(j)) {
                this.f1507d.m2600k(j, this.f1505b.m42903l0(m2603h));
            }
            C26907a c26907a = new C26907a(this.f1505b);
            c26907a.mo1121l(m2603h);
            c26907a.mo1125h();
            this.f1506c.m2599l(j);
        }
    }

    /* renamed from: o */
    public boolean m42626o() {
        return this.f1505b.m42929X();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public void onAttachedToRecyclerView(RecyclerView recyclerView) {
        MediaSessionCompat.m43217n(this.f1509f == null);
        C0403b c0403b = new C0403b();
        this.f1509f = c0403b;
        ViewPager2 m42625a = c0403b.m42625a(recyclerView);
        c0403b.f1515d = m42625a;
        C26650d c26650d = new C26650d(c0403b);
        c0403b.f1512a = c26650d;
        m42625a.m42622b(c26650d);
        RecyclerView.AbstractC0320i eVar = new e(c0403b);
        c0403b.f1513b = eVar;
        FragmentStateAdapter.this.registerAdapterDataObserver(eVar);
        FragmentMaxLifecycleEnforcer.3 r0 = new FragmentMaxLifecycleEnforcer.3(c0403b);
        c0403b.f1514c = r0;
        FragmentStateAdapter.this.f1504a.mo988a(r0);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public void onBindViewHolder(C26651f c26651f, int i) {
        C26651f c26651f2 = c26651f;
        long itemId = c26651f2.getItemId();
        int id = ((FrameLayout) c26651f2.itemView).getId();
        Long m42629l = m42629l(id);
        if (m42629l != null && m42629l.longValue() != itemId) {
            m42627n(m42629l.longValue());
            this.f1508e.m2599l(m42629l.longValue());
        }
        this.f1508e.m2600k(itemId, Integer.valueOf(id));
        long itemId2 = getItemId(i);
        if (!this.f1506c.m2606e(itemId2)) {
            Fragment mo16623h = mo16623h(i);
            mo16623h.setInitialSavedState(this.f1507d.m2604g(itemId2));
            this.f1506c.m2600k(itemId2, mo16623h);
        }
        FrameLayout frameLayout = (FrameLayout) c26651f2.itemView;
        AtomicInteger atomicInteger = C26614s.f74505a;
        if (frameLayout.isAttachedToWindow()) {
            if (frameLayout.getParent() != null) {
                throw new IllegalStateException("Design assumption violated.");
            }
            frameLayout.addOnLayoutChangeListener(new View$OnLayoutChangeListenerC26647a(this, frameLayout, c26651f2));
        }
        m42631i();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public C26651f onCreateViewHolder(ViewGroup viewGroup, int i) {
        int i2 = C26651f.f74593a;
        FrameLayout frameLayout = new FrameLayout(viewGroup.getContext());
        frameLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        AtomicInteger atomicInteger = C26614s.f74505a;
        frameLayout.setId(View.generateViewId());
        frameLayout.setSaveEnabled(false);
        return new C26651f(frameLayout);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public void onDetachedFromRecyclerView(RecyclerView recyclerView) {
        C0403b c0403b = this.f1509f;
        c0403b.m42625a(recyclerView).m42618f(c0403b.f1512a);
        FragmentStateAdapter.this.unregisterAdapterDataObserver(c0403b.f1513b);
        FragmentStateAdapter.this.f1504a.mo987b(c0403b.f1514c);
        c0403b.f1515d = null;
        this.f1509f = null;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public /* bridge */ /* synthetic */ boolean onFailedToRecycleView(C26651f c26651f) {
        return true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public void onViewAttachedToWindow(C26651f c26651f) {
        m42628m(c26651f);
        m42631i();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public void onViewRecycled(C26651f c26651f) {
        Long m42629l = m42629l(((FrameLayout) c26651f.itemView).getId());
        if (m42629l != null) {
            m42627n(m42629l.longValue());
            this.f1508e.m2599l(m42629l.longValue());
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public final void setHasStableIds(boolean z) {
        throw new UnsupportedOperationException("Stable Ids are required for the adapter to function properly, and the adapter takes care of setting the flag.");
    }
}
