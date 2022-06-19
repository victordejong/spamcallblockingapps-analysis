package androidx.viewpager2.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.Gravity;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.core.view.C0926v;
import androidx.core.view.p038a.AbstractC0878f;
import androidx.core.view.p038a.C0869c;
import androidx.recyclerview.widget.C2697k;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.C2942a;
import androidx.viewpager2.adapter.AbstractC2953c;
import io.objectbox.model.PropertyFlags;
/* loaded from: classes-dex2jar.jar:androidx/viewpager2/widget/ViewPager2.class */
public final class ViewPager2 extends ViewGroup {

    /* renamed from: a */
    static boolean f11045a = true;

    /* renamed from: c */
    public int f11047c;

    /* renamed from: e */
    LinearLayoutManager f11049e;

    /* renamed from: f */
    RecyclerView f11050f;

    /* renamed from: g */
    public C2977e f11051g;

    /* renamed from: h */
    C2975c f11052h;

    /* renamed from: k */
    AbstractC2959a f11055k;

    /* renamed from: p */
    private Parcelable f11060p;

    /* renamed from: q */
    private C2697k f11061q;

    /* renamed from: r */
    private C2974b f11062r;

    /* renamed from: s */
    private C2976d f11063s;

    /* renamed from: l */
    private final Rect f11056l = new Rect();

    /* renamed from: m */
    private final Rect f11057m = new Rect();

    /* renamed from: b */
    public C2974b f11046b = new C2974b(3);

    /* renamed from: d */
    boolean f11048d = false;

    /* renamed from: n */
    private RecyclerView.AbstractC2629c f11058n = new AbstractC2961c() { // from class: androidx.viewpager2.widget.ViewPager2.1
        @Override // androidx.viewpager2.widget.ViewPager2.AbstractC2961c, androidx.recyclerview.widget.RecyclerView.AbstractC2629c
        public final void onChanged() {
            ViewPager2.this.f11048d = true;
            ViewPager2.this.f11051g.f11095c = true;
        }
    };

    /* renamed from: o */
    private int f11059o = -1;

    /* renamed from: t */
    private RecyclerView.AbstractC2632f f11064t = null;

    /* renamed from: u */
    private boolean f11065u = false;

    /* renamed from: i */
    boolean f11053i = true;

    /* renamed from: j */
    int f11054j = -1;

    /* loaded from: classes-dex2jar.jar:androidx/viewpager2/widget/ViewPager2$SavedState.class */
    public static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.ClassLoaderCreator<SavedState>() { // from class: androidx.viewpager2.widget.ViewPager2.SavedState.1
            /* renamed from: a */
            private static SavedState m39563a(Parcel parcel, ClassLoader classLoader) {
                return Build.VERSION.SDK_INT >= 24 ? new SavedState(parcel, classLoader) : new SavedState(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public final /* synthetic */ Object createFromParcel(Parcel parcel) {
                return m39563a(parcel, null);
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            public final /* synthetic */ SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return m39563a(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            public final /* bridge */ /* synthetic */ Object[] newArray(int i) {
                return new SavedState[i];
            }
        };
        Parcelable mAdapterState;
        int mCurrentItem;
        int mRecyclerViewId;

        SavedState(Parcel parcel) {
            super(parcel);
            readValues(parcel, null);
        }

        SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            readValues(parcel, classLoader);
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        private void readValues(Parcel parcel, ClassLoader classLoader) {
            this.mRecyclerViewId = parcel.readInt();
            this.mCurrentItem = parcel.readInt();
            this.mAdapterState = parcel.readParcelable(classLoader);
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.mRecyclerViewId);
            parcel.writeInt(this.mCurrentItem);
            parcel.writeParcelable(this.mAdapterState, i);
        }
    }

    /* renamed from: androidx.viewpager2.widget.ViewPager2$a */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager2/widget/ViewPager2$a.class */
    public abstract class AbstractC2959a {
        private AbstractC2959a() {
            ViewPager2.this = r4;
        }

        /* renamed from: a */
        void mo39552a(AccessibilityEvent accessibilityEvent) {
        }

        /* renamed from: a */
        void mo39551a(AccessibilityNodeInfo accessibilityNodeInfo) {
        }

        /* renamed from: a */
        void mo39562a(C0869c c0869c) {
        }

        /* renamed from: a */
        void mo39550a(RecyclerView.AbstractC2626a<?> abstractC2626a) {
        }

        /* renamed from: a */
        void mo39549a(RecyclerView recyclerView) {
        }

        /* renamed from: a */
        boolean mo39554a() {
            return false;
        }

        /* renamed from: a */
        boolean mo39553a(int i) {
            return false;
        }

        /* renamed from: b */
        String mo39548b() {
            throw new IllegalStateException("Not implemented.");
        }

        /* renamed from: b */
        void mo39546b(RecyclerView.AbstractC2626a<?> abstractC2626a) {
        }

        /* renamed from: b */
        boolean mo39547b(int i) {
            throw new IllegalStateException("Not implemented.");
        }

        /* renamed from: c */
        void mo39545c() {
        }

        /* renamed from: c */
        boolean mo39561c(int i) {
            return false;
        }

        /* renamed from: d */
        void mo39544d() {
        }

        /* renamed from: d */
        boolean mo39560d(int i) {
            throw new IllegalStateException("Not implemented.");
        }

        /* renamed from: e */
        void mo39543e() {
        }

        /* renamed from: f */
        void mo39541f() {
        }

        /* renamed from: g */
        void mo39540g() {
        }

        /* renamed from: h */
        boolean mo39559h() {
            return false;
        }

        /* renamed from: i */
        CharSequence mo39558i() {
            throw new IllegalStateException("Not implemented.");
        }
    }

    /* renamed from: androidx.viewpager2.widget.ViewPager2$b */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager2/widget/ViewPager2$b.class */
    public final class C2960b extends AbstractC2959a {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C2960b() {
            super();
            ViewPager2.this = r5;
        }

        @Override // androidx.viewpager2.widget.ViewPager2.AbstractC2959a
        /* renamed from: a */
        public final void mo39562a(C0869c c0869c) {
            if (!ViewPager2.this.f11053i) {
                c0869c.m44266b(C0869c.C0870a.f3671n);
                c0869c.m44266b(C0869c.C0870a.f3670m);
                c0869c.m44240j(false);
            }
        }

        @Override // androidx.viewpager2.widget.ViewPager2.AbstractC2959a
        /* renamed from: c */
        public final boolean mo39561c(int i) {
            return (i == 8192 || i == 4096) && !ViewPager2.this.f11053i;
        }

        @Override // androidx.viewpager2.widget.ViewPager2.AbstractC2959a
        /* renamed from: d */
        public final boolean mo39560d(int i) {
            if (mo39561c(i)) {
                return false;
            }
            throw new IllegalStateException();
        }

        @Override // androidx.viewpager2.widget.ViewPager2.AbstractC2959a
        /* renamed from: h */
        public final boolean mo39559h() {
            return true;
        }

        @Override // androidx.viewpager2.widget.ViewPager2.AbstractC2959a
        /* renamed from: i */
        public final CharSequence mo39558i() {
            return "androidx.viewpager.widget.ViewPager";
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.viewpager2.widget.ViewPager2$c */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager2/widget/ViewPager2$c.class */
    public static abstract class AbstractC2961c extends RecyclerView.AbstractC2629c {
        private AbstractC2961c() {
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

    /* renamed from: androidx.viewpager2.widget.ViewPager2$d */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager2/widget/ViewPager2$d.class */
    public final class C2962d extends LinearLayoutManager {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C2962d(Context context) {
            super(context);
            ViewPager2.this = r4;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2637i
        /* renamed from: a */
        public final void mo39556a(RecyclerView.C2648o c2648o, RecyclerView.C2654s c2654s, C0869c c0869c) {
            super.mo39556a(c2648o, c2654s, c0869c);
            ViewPager2.this.f11055k.mo39562a(c0869c);
        }

        @Override // androidx.recyclerview.widget.LinearLayoutManager
        /* renamed from: a */
        public final void mo10835a(RecyclerView.C2654s c2654s, int[] iArr) {
            int i = ViewPager2.this.f11054j;
            if (i == -1) {
                super.mo10835a(c2654s, iArr);
                return;
            }
            int m39568b = ViewPager2.this.m39568b() * i;
            iArr[0] = m39568b;
            iArr[1] = m39568b;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2637i
        /* renamed from: a */
        public final boolean mo39557a(RecyclerView.C2648o c2648o, RecyclerView.C2654s c2654s, int i, Bundle bundle) {
            return ViewPager2.this.f11055k.mo39561c(i) ? ViewPager2.this.f11055k.mo39560d(i) : super.mo39557a(c2648o, c2654s, i, bundle);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2637i
        /* renamed from: a */
        public final boolean mo39555a(RecyclerView recyclerView, View view, Rect rect, boolean z, boolean z2) {
            return false;
        }
    }

    /* renamed from: androidx.viewpager2.widget.ViewPager2$e */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager2/widget/ViewPager2$e.class */
    public static abstract class AbstractC2963e {
        /* renamed from: a */
        public void mo39533a(int i) {
        }

        /* renamed from: a */
        public void mo39532a(int i, float f, int i2) {
        }

        /* renamed from: b */
        public void mo39531b(int i) {
        }
    }

    /* renamed from: androidx.viewpager2.widget.ViewPager2$f */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager2/widget/ViewPager2$f.class */
    public final class C2964f extends AbstractC2959a {

        /* renamed from: c */
        private final AbstractC0878f f11074c = new AbstractC0878f() { // from class: androidx.viewpager2.widget.ViewPager2.f.1
            @Override // androidx.core.view.p038a.AbstractC0878f
            /* renamed from: a */
            public final boolean mo11089a(View view) {
                C2964f.this.m39542e(((ViewPager2) view).f11047c + 1);
                return true;
            }
        };

        /* renamed from: d */
        private final AbstractC0878f f11075d = new AbstractC0878f() { // from class: androidx.viewpager2.widget.ViewPager2.f.2
            @Override // androidx.core.view.p038a.AbstractC0878f
            /* renamed from: a */
            public final boolean mo11089a(View view) {
                C2964f.this.m39542e(((ViewPager2) view).f11047c - 1);
                return true;
            }
        };

        /* renamed from: e */
        private RecyclerView.AbstractC2629c f11076e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C2964f() {
            super();
            ViewPager2.this = r6;
        }

        @Override // androidx.viewpager2.widget.ViewPager2.AbstractC2959a
        /* renamed from: a */
        public final void mo39552a(AccessibilityEvent accessibilityEvent) {
            accessibilityEvent.setSource(ViewPager2.this);
            accessibilityEvent.setClassName("androidx.viewpager.widget.ViewPager");
        }

        @Override // androidx.viewpager2.widget.ViewPager2.AbstractC2959a
        /* renamed from: a */
        public final void mo39551a(AccessibilityNodeInfo accessibilityNodeInfo) {
            int i;
            int i2;
            RecyclerView.AbstractC2626a adapter;
            int itemCount;
            if (ViewPager2.this.f11050f.getAdapter() == null) {
                i2 = 0;
            } else if (ViewPager2.this.f11049e.getOrientation() != 1) {
                i = ViewPager2.this.f11050f.getAdapter().getItemCount();
                i2 = 0;
                C0869c.m44278a(accessibilityNodeInfo).m44274a(C0869c.C0871b.m44235a(i2, i, false, 0));
                if (Build.VERSION.SDK_INT >= 16 || (adapter = ViewPager2.this.f11050f.getAdapter()) == null || (itemCount = adapter.getItemCount()) == 0 || !ViewPager2.this.f11053i) {
                    return;
                }
                if (ViewPager2.this.f11047c > 0) {
                    accessibilityNodeInfo.addAction(PropertyFlags.UNSIGNED);
                }
                if (ViewPager2.this.f11047c < itemCount - 1) {
                    accessibilityNodeInfo.addAction(4096);
                }
                accessibilityNodeInfo.setScrollable(true);
                return;
            } else {
                i2 = ViewPager2.this.f11050f.getAdapter().getItemCount();
            }
            i = 0;
            C0869c.m44278a(accessibilityNodeInfo).m44274a(C0869c.C0871b.m44235a(i2, i, false, 0));
            if (Build.VERSION.SDK_INT >= 16) {
            }
        }

        @Override // androidx.viewpager2.widget.ViewPager2.AbstractC2959a
        /* renamed from: a */
        public final void mo39550a(RecyclerView.AbstractC2626a<?> abstractC2626a) {
            m39539j();
            if (abstractC2626a != null) {
                abstractC2626a.registerAdapterDataObserver(this.f11076e);
            }
        }

        @Override // androidx.viewpager2.widget.ViewPager2.AbstractC2959a
        /* renamed from: a */
        public final void mo39549a(RecyclerView recyclerView) {
            C0926v.m44102c((View) recyclerView, 2);
            this.f11076e = new AbstractC2961c() { // from class: androidx.viewpager2.widget.ViewPager2.f.3
                @Override // androidx.viewpager2.widget.ViewPager2.AbstractC2961c, androidx.recyclerview.widget.RecyclerView.AbstractC2629c
                public final void onChanged() {
                    C2964f.this.m39539j();
                }
            };
            if (C0926v.m44099e(ViewPager2.this) == 0) {
                C0926v.m44102c((View) ViewPager2.this, 1);
            }
        }

        @Override // androidx.viewpager2.widget.ViewPager2.AbstractC2959a
        /* renamed from: a */
        public final boolean mo39554a() {
            return true;
        }

        @Override // androidx.viewpager2.widget.ViewPager2.AbstractC2959a
        /* renamed from: a */
        public final boolean mo39553a(int i) {
            return i == 8192 || i == 4096;
        }

        @Override // androidx.viewpager2.widget.ViewPager2.AbstractC2959a
        /* renamed from: b */
        public final String mo39548b() {
            return "androidx.viewpager.widget.ViewPager";
        }

        @Override // androidx.viewpager2.widget.ViewPager2.AbstractC2959a
        /* renamed from: b */
        public final void mo39546b(RecyclerView.AbstractC2626a<?> abstractC2626a) {
            if (abstractC2626a != null) {
                abstractC2626a.unregisterAdapterDataObserver(this.f11076e);
            }
        }

        @Override // androidx.viewpager2.widget.ViewPager2.AbstractC2959a
        /* renamed from: b */
        public final boolean mo39547b(int i) {
            if (mo39553a(i)) {
                m39542e(i == 8192 ? ViewPager2.this.f11047c - 1 : ViewPager2.this.f11047c + 1);
                return true;
            }
            throw new IllegalStateException();
        }

        @Override // androidx.viewpager2.widget.ViewPager2.AbstractC2959a
        /* renamed from: c */
        public final void mo39545c() {
            m39539j();
        }

        @Override // androidx.viewpager2.widget.ViewPager2.AbstractC2959a
        /* renamed from: d */
        public final void mo39544d() {
            m39539j();
        }

        @Override // androidx.viewpager2.widget.ViewPager2.AbstractC2959a
        /* renamed from: e */
        public final void mo39543e() {
            m39539j();
        }

        /* renamed from: e */
        final void m39542e(int i) {
            if (ViewPager2.this.f11053i) {
                ViewPager2.this.m39570a(i, true);
            }
        }

        @Override // androidx.viewpager2.widget.ViewPager2.AbstractC2959a
        /* renamed from: f */
        public final void mo39541f() {
            m39539j();
            if (Build.VERSION.SDK_INT < 21) {
                ViewPager2.this.sendAccessibilityEvent(2048);
            }
        }

        @Override // androidx.viewpager2.widget.ViewPager2.AbstractC2959a
        /* renamed from: g */
        public final void mo39540g() {
            m39539j();
        }

        /* renamed from: j */
        final void m39539j() {
            int itemCount;
            ViewPager2 viewPager2 = ViewPager2.this;
            int i = 16908360;
            C0926v.m44100d(viewPager2, 16908360);
            C0926v.m44100d(viewPager2, 16908361);
            C0926v.m44100d(viewPager2, 16908358);
            C0926v.m44100d(viewPager2, 16908359);
            if (ViewPager2.this.f11050f.getAdapter() == null || (itemCount = ViewPager2.this.f11050f.getAdapter().getItemCount()) == 0 || !ViewPager2.this.f11053i) {
                return;
            }
            if (ViewPager2.this.f11049e.getOrientation() != 0) {
                if (ViewPager2.this.f11047c < itemCount - 1) {
                    C0926v.m44125a(viewPager2, new C0869c.C0870a(16908359, null), this.f11074c);
                }
                if (ViewPager2.this.f11047c <= 0) {
                    return;
                }
                C0926v.m44125a(viewPager2, new C0869c.C0870a(16908358, null), this.f11075d);
                return;
            }
            boolean m39566c = ViewPager2.this.m39566c();
            int i2 = m39566c ? 16908360 : 16908361;
            if (m39566c) {
                i = 16908361;
            }
            if (ViewPager2.this.f11047c < itemCount - 1) {
                C0926v.m44125a(viewPager2, new C0869c.C0870a(i2, null), this.f11074c);
            }
            if (ViewPager2.this.f11047c <= 0) {
                return;
            }
            C0926v.m44125a(viewPager2, new C0869c.C0870a(i, null), this.f11075d);
        }
    }

    /* renamed from: androidx.viewpager2.widget.ViewPager2$g */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager2/widget/ViewPager2$g.class */
    public interface AbstractC2968g {
    }

    /* renamed from: androidx.viewpager2.widget.ViewPager2$h */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager2/widget/ViewPager2$h.class */
    public final class C2969h extends C2697k {
        C2969h() {
            ViewPager2.this = r4;
        }

        @Override // androidx.recyclerview.widget.C2697k, androidx.recyclerview.widget.AbstractC2703o
        /* renamed from: a */
        public final View mo29893a(RecyclerView.AbstractC2637i abstractC2637i) {
            if (ViewPager2.this.f11052h.f11088a.f11096d) {
                return null;
            }
            return super.mo29893a(abstractC2637i);
        }
    }

    /* renamed from: androidx.viewpager2.widget.ViewPager2$i */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager2/widget/ViewPager2$i.class */
    public final class C2970i extends RecyclerView {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C2970i(Context context) {
            super(context);
            ViewPager2.this = r4;
        }

        @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, android.view.View
        public final CharSequence getAccessibilityClassName() {
            return ViewPager2.this.f11055k.mo39559h() ? ViewPager2.this.f11055k.mo39558i() : super.getAccessibilityClassName();
        }

        @Override // android.view.View
        public final void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
            super.onInitializeAccessibilityEvent(accessibilityEvent);
            accessibilityEvent.setFromIndex(ViewPager2.this.f11047c);
            accessibilityEvent.setToIndex(ViewPager2.this.f11047c);
            ViewPager2.this.f11055k.mo39552a(accessibilityEvent);
        }

        @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup
        public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
            return ViewPager2.this.f11053i && super.onInterceptTouchEvent(motionEvent);
        }

        @Override // androidx.recyclerview.widget.RecyclerView, android.view.View
        public final boolean onTouchEvent(MotionEvent motionEvent) {
            return ViewPager2.this.f11053i && super.onTouchEvent(motionEvent);
        }
    }

    /* renamed from: androidx.viewpager2.widget.ViewPager2$j */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager2/widget/ViewPager2$j.class */
    public static final class RunnableC2971j implements Runnable {

        /* renamed from: a */
        private final int f11082a;

        /* renamed from: b */
        private final RecyclerView f11083b;

        RunnableC2971j(int i, RecyclerView recyclerView) {
            this.f11082a = i;
            this.f11083b = recyclerView;
        }

        @Override // java.lang.Runnable
        public final void run() {
            this.f11083b.m40449d(this.f11082a);
        }
    }

    public ViewPager2(Context context) {
        super(context);
        m39569a(context, (AttributeSet) null);
    }

    public ViewPager2(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m39569a(context, attributeSet);
    }

    public ViewPager2(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m39569a(context, attributeSet);
    }

    public ViewPager2(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        m39569a(context, attributeSet);
    }

    /* renamed from: a */
    private void m39569a(Context context, AttributeSet attributeSet) {
        this.f11055k = f11045a ? new C2964f() : new C2960b();
        C2970i c2970i = new C2970i(context);
        this.f11050f = c2970i;
        c2970i.setId(C0926v.m44141a());
        this.f11050f.setDescendantFocusability(131072);
        C2962d c2962d = new C2962d(context);
        this.f11049e = c2962d;
        this.f11050f.setLayoutManager(c2962d);
        this.f11050f.setScrollingTouchSlop(1);
        m39567b(context, attributeSet);
        this.f11050f.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        this.f11050f.m40479a(m39565d());
        C2977e c2977e = new C2977e(this);
        this.f11051g = c2977e;
        this.f11052h = new C2975c(this, c2977e, this.f11050f);
        C2969h c2969h = new C2969h();
        this.f11061q = c2969h;
        c2969h.mo29891a(this.f11050f);
        this.f11050f.m40478a(this.f11051g);
        C2974b c2974b = new C2974b(3);
        this.f11062r = c2974b;
        this.f11051g.f11093a = c2974b;
        AbstractC2963e abstractC2963e = new AbstractC2963e() { // from class: androidx.viewpager2.widget.ViewPager2.2
            @Override // androidx.viewpager2.widget.ViewPager2.AbstractC2963e
            /* renamed from: a */
            public final void mo39533a(int i) {
                if (i == 0) {
                    ViewPager2.this.m39571a();
                }
            }

            @Override // androidx.viewpager2.widget.ViewPager2.AbstractC2963e
            /* renamed from: b */
            public final void mo39531b(int i) {
                if (ViewPager2.this.f11047c != i) {
                    ViewPager2.this.f11047c = i;
                    ViewPager2.this.f11055k.mo39543e();
                }
            }
        };
        AbstractC2963e abstractC2963e2 = new AbstractC2963e() { // from class: androidx.viewpager2.widget.ViewPager2.3
            @Override // androidx.viewpager2.widget.ViewPager2.AbstractC2963e
            /* renamed from: b */
            public final void mo39531b(int i) {
                ViewPager2.this.clearFocus();
                if (ViewPager2.this.hasFocus()) {
                    ViewPager2.this.f11050f.requestFocus(2);
                }
            }
        };
        this.f11062r.m39535a(abstractC2963e);
        this.f11062r.m39535a(abstractC2963e2);
        this.f11055k.mo39549a(this.f11050f);
        this.f11062r.m39535a(this.f11046b);
        C2976d c2976d = new C2976d(this.f11049e);
        this.f11063s = c2976d;
        this.f11062r.m39535a(c2976d);
        RecyclerView recyclerView = this.f11050f;
        attachViewToParent(recyclerView, 0, recyclerView.getLayoutParams());
    }

    /* renamed from: b */
    private void m39567b(Context context, AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C2942a.C2943a.ViewPager2);
        if (Build.VERSION.SDK_INT >= 29) {
            saveAttributeDataForStyleable(context, C2942a.C2943a.ViewPager2, attributeSet, obtainStyledAttributes, 0, 0);
        }
        try {
            setOrientation(obtainStyledAttributes.getInt(C2942a.C2943a.ViewPager2_android_orientation, 0));
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    /* renamed from: d */
    private RecyclerView.AbstractC2642j m39565d() {
        return new RecyclerView.AbstractC2642j() { // from class: androidx.viewpager2.widget.ViewPager2.4
            @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2642j
            /* renamed from: a */
            public final void mo29864a(View view) {
                RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
                if (layoutParams.width == -1 && layoutParams.height == -1) {
                    return;
                }
                throw new IllegalStateException("Pages must fill the whole ViewPager2 (use match_parent)");
            }

            @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2642j
            /* renamed from: b */
            public final void mo29863b(View view) {
            }
        };
    }

    /* renamed from: e */
    private void m39564e() {
        RecyclerView.AbstractC2626a adapter;
        if (this.f11059o == -1 || (adapter = this.f11050f.getAdapter()) == null) {
            return;
        }
        Parcelable parcelable = this.f11060p;
        if (parcelable != null) {
            if (adapter instanceof AbstractC2953c) {
                ((AbstractC2953c) adapter).mo39573a(parcelable);
            }
            this.f11060p = null;
        }
        int max = Math.max(0, Math.min(this.f11059o, adapter.getItemCount() - 1));
        this.f11047c = max;
        this.f11059o = -1;
        this.f11050f.m40464b(max);
        this.f11055k.mo39545c();
    }

    /* renamed from: a */
    final void m39571a() {
        C2697k c2697k = this.f11061q;
        if (c2697k != null) {
            View mo29893a = c2697k.mo29893a(this.f11049e);
            if (mo29893a == null) {
                return;
            }
            int c = LinearLayoutManager.m40366c(mo29893a);
            if (c != this.f11047c && this.f11051g.f11094b == 0) {
                this.f11062r.mo39531b(c);
            }
            this.f11048d = false;
            return;
        }
        throw new IllegalStateException("Design assumption violated.");
    }

    /* JADX WARN: Type inference failed for: r0v14, types: [double] */
    /* JADX WARN: Type inference failed for: r0v49, types: [double] */
    /* renamed from: a */
    final void m39570a(int i, boolean z) {
        RecyclerView.AbstractC2626a adapter = this.f11050f.getAdapter();
        if (adapter == null) {
            if (this.f11059o == -1) {
                return;
            }
            this.f11059o = Math.max(i, 0);
        } else if (adapter.getItemCount() <= 0) {
        } else {
            int min = Math.min(Math.max(i, 0), adapter.getItemCount() - 1);
            if (min == this.f11047c && this.f11051g.m39530a()) {
                return;
            }
            int i2 = this.f11047c;
            if (min == i2 && z) {
                return;
            }
            char c = i2;
            this.f11047c = min;
            this.f11055k.mo39543e();
            if (!this.f11051g.m39530a()) {
                c = this.f11051g.m39526b();
            }
            this.f11051g.m39527a(min, z);
            if (!z) {
                this.f11050f.m40464b(min);
                return;
            }
            double d = min;
            if (Math.abs(d - c) <= 3.0d) {
                this.f11050f.m40449d(min);
                return;
            }
            this.f11050f.m40464b(d > c ? min - 3 : min + 3);
            RecyclerView recyclerView = this.f11050f;
            recyclerView.post(new RunnableC2971j(min, recyclerView));
        }
    }

    /* renamed from: b */
    final int m39568b() {
        int height;
        int paddingBottom;
        RecyclerView recyclerView = this.f11050f;
        if (this.f11049e.getOrientation() == 0) {
            height = recyclerView.getWidth() - recyclerView.getPaddingLeft();
            paddingBottom = recyclerView.getPaddingRight();
        } else {
            height = recyclerView.getHeight() - recyclerView.getPaddingTop();
            paddingBottom = recyclerView.getPaddingBottom();
        }
        return height - paddingBottom;
    }

    /* renamed from: c */
    public final boolean m39566c() {
        return this.f11049e.getLayoutDirection() == 1;
    }

    @Override // android.view.View
    public final boolean canScrollHorizontally(int i) {
        return this.f11050f.canScrollHorizontally(i);
    }

    @Override // android.view.View
    public final boolean canScrollVertically(int i) {
        return this.f11050f.canScrollVertically(i);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected final void dispatchRestoreInstanceState(SparseArray<Parcelable> sparseArray) {
        Parcelable parcelable = sparseArray.get(getId());
        if (parcelable instanceof SavedState) {
            int i = ((SavedState) parcelable).mRecyclerViewId;
            sparseArray.put(this.f11050f.getId(), sparseArray.get(i));
            sparseArray.remove(i);
        }
        super.dispatchRestoreInstanceState(sparseArray);
        m39564e();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final CharSequence getAccessibilityClassName() {
        return this.f11055k.mo39554a() ? this.f11055k.mo39548b() : super.getAccessibilityClassName();
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        this.f11055k.mo39551a(accessibilityNodeInfo);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int measuredWidth = this.f11050f.getMeasuredWidth();
        int measuredHeight = this.f11050f.getMeasuredHeight();
        this.f11056l.left = getPaddingLeft();
        this.f11056l.right = (i3 - i) - getPaddingRight();
        this.f11056l.top = getPaddingTop();
        this.f11056l.bottom = (i4 - i2) - getPaddingBottom();
        Gravity.apply(8388659, measuredWidth, measuredHeight, this.f11056l, this.f11057m);
        this.f11050f.layout(this.f11057m.left, this.f11057m.top, this.f11057m.right, this.f11057m.bottom);
        if (this.f11048d) {
            m39571a();
        }
    }

    @Override // android.view.View
    protected final void onMeasure(int i, int i2) {
        measureChild(this.f11050f, i, i2);
        int measuredWidth = this.f11050f.getMeasuredWidth();
        int measuredHeight = this.f11050f.getMeasuredHeight();
        int measuredState = this.f11050f.getMeasuredState();
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        setMeasuredDimension(resolveSizeAndState(Math.max(measuredWidth + paddingLeft + paddingRight, getSuggestedMinimumWidth()), i, measuredState), resolveSizeAndState(Math.max(measuredHeight + paddingTop + paddingBottom, getSuggestedMinimumHeight()), i2, measuredState << 16));
    }

    @Override // android.view.View
    protected final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.f11059o = savedState.mCurrentItem;
        this.f11060p = savedState.mAdapterState;
    }

    @Override // android.view.View
    protected final Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.mRecyclerViewId = this.f11050f.getId();
        int i = this.f11059o;
        int i2 = i;
        if (i == -1) {
            i2 = this.f11047c;
        }
        savedState.mCurrentItem = i2;
        Parcelable parcelable = this.f11060p;
        if (parcelable != null) {
            savedState.mAdapterState = parcelable;
        } else {
            RecyclerView.AbstractC2626a adapter = this.f11050f.getAdapter();
            if (adapter instanceof AbstractC2953c) {
                savedState.mAdapterState = ((AbstractC2953c) adapter).mo39572c();
            }
        }
        return savedState;
    }

    @Override // android.view.ViewGroup
    public final void onViewAdded(View view) {
        throw new IllegalStateException(getClass().getSimpleName() + " does not support direct child views");
    }

    @Override // android.view.View
    public final boolean performAccessibilityAction(int i, Bundle bundle) {
        return this.f11055k.mo39553a(i) ? this.f11055k.mo39547b(i) : super.performAccessibilityAction(i, bundle);
    }

    public final void setAdapter(RecyclerView.AbstractC2626a abstractC2626a) {
        RecyclerView.AbstractC2626a<?> adapter = this.f11050f.getAdapter();
        this.f11055k.mo39546b(adapter);
        if (adapter != null) {
            adapter.unregisterAdapterDataObserver(this.f11058n);
        }
        this.f11050f.setAdapter(abstractC2626a);
        this.f11047c = 0;
        m39564e();
        this.f11055k.mo39550a(abstractC2626a);
        if (abstractC2626a != null) {
            abstractC2626a.registerAdapterDataObserver(this.f11058n);
        }
    }

    public final void setCurrentItem(int i) {
        setCurrentItem(i, true);
    }

    public final void setCurrentItem(int i, boolean z) {
        if (!this.f11052h.f11088a.f11096d) {
            m39570a(i, z);
            return;
        }
        throw new IllegalStateException("Cannot change current item when ViewPager2 is fake dragging");
    }

    @Override // android.view.View
    public final void setLayoutDirection(int i) {
        super.setLayoutDirection(i);
        this.f11055k.mo39540g();
    }

    public final void setOffscreenPageLimit(int i) {
        if (i > 0 || i == -1) {
            this.f11054j = i;
            this.f11050f.requestLayout();
            return;
        }
        throw new IllegalArgumentException("Offscreen page limit must be OFFSCREEN_PAGE_LIMIT_DEFAULT or a number > 0");
    }

    public final void setOrientation(int i) {
        this.f11049e.setOrientation(i);
        this.f11055k.mo39544d();
    }

    public final void setPageTransformer(AbstractC2968g abstractC2968g) {
        if (abstractC2968g != null) {
            if (!this.f11065u) {
                this.f11064t = this.f11050f.getItemAnimator();
                this.f11065u = true;
            }
            this.f11050f.setItemAnimator(null);
        } else if (this.f11065u) {
            this.f11050f.setItemAnimator(this.f11064t);
            this.f11064t = null;
            this.f11065u = false;
        }
        if (abstractC2968g == this.f11063s.f11091a) {
            return;
        }
        this.f11063s.f11091a = abstractC2968g;
        if (this.f11063s.f11091a == null) {
            return;
        }
        double m39526b = this.f11051g.m39526b();
        int i = (int) m39526b;
        float f = (float) (m39526b - i);
        this.f11063s.mo39532a(i, f, Math.round(m39568b() * f));
    }

    public final void setUserInputEnabled(boolean z) {
        this.f11053i = z;
        this.f11055k.mo39541f();
    }
}
