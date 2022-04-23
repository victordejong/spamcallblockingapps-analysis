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
import androidx.core.view.a.c;
import androidx.core.view.v;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.k;
import androidx.viewpager2.a;
import io.objectbox.model.PropertyFlags;
/* loaded from: classes-dex2jar.jar:androidx/viewpager2/widget/ViewPager2.class */
public final class ViewPager2 extends ViewGroup {

    /* renamed from: a  reason: collision with root package name */
    static boolean f5915a = true;

    /* renamed from: c  reason: collision with root package name */
    public int f5917c;
    LinearLayoutManager e;
    RecyclerView f;
    public androidx.viewpager2.widget.e g;
    androidx.viewpager2.widget.c h;
    a k;
    private Parcelable p;
    private k q;
    private androidx.viewpager2.widget.b r;
    private androidx.viewpager2.widget.d s;
    private final Rect l = new Rect();
    private final Rect m = new Rect();

    /* renamed from: b  reason: collision with root package name */
    public androidx.viewpager2.widget.b f5916b = new androidx.viewpager2.widget.b(3);

    /* renamed from: d  reason: collision with root package name */
    boolean f5918d = false;
    private RecyclerView.c n = new c() { // from class: androidx.viewpager2.widget.ViewPager2.1
        @Override // androidx.viewpager2.widget.ViewPager2.c, androidx.recyclerview.widget.RecyclerView.c
        public final void onChanged() {
            ViewPager2.this.f5918d = true;
            ViewPager2.this.g.f5946c = true;
        }
    };
    private int o = -1;
    private RecyclerView.f t = null;
    private boolean u = false;
    boolean i = true;
    int j = -1;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager2/widget/ViewPager2$SavedState.class */
    public static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.ClassLoaderCreator<SavedState>() { // from class: androidx.viewpager2.widget.ViewPager2.SavedState.1
            private static SavedState a(Parcel parcel, ClassLoader classLoader) {
                return Build.VERSION.SDK_INT >= 24 ? new SavedState(parcel, classLoader) : new SavedState(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public final /* synthetic */ Object createFromParcel(Parcel parcel) {
                return a(parcel, null);
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            public final /* synthetic */ SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return a(parcel, classLoader);
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

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager2/widget/ViewPager2$a.class */
    public abstract class a {
        private a() {
        }

        void a(AccessibilityEvent accessibilityEvent) {
        }

        void a(AccessibilityNodeInfo accessibilityNodeInfo) {
        }

        void a(androidx.core.view.a.c cVar) {
        }

        void a(RecyclerView.a<?> aVar) {
        }

        void a(RecyclerView recyclerView) {
        }

        boolean a() {
            return false;
        }

        boolean a(int i) {
            return false;
        }

        String b() {
            throw new IllegalStateException("Not implemented.");
        }

        void b(RecyclerView.a<?> aVar) {
        }

        boolean b(int i) {
            throw new IllegalStateException("Not implemented.");
        }

        void c() {
        }

        boolean c(int i) {
            return false;
        }

        void d() {
        }

        boolean d(int i) {
            throw new IllegalStateException("Not implemented.");
        }

        void e() {
        }

        void f() {
        }

        void g() {
        }

        boolean h() {
            return false;
        }

        CharSequence i() {
            throw new IllegalStateException("Not implemented.");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager2/widget/ViewPager2$b.class */
    public final class b extends a {
        b() {
            super();
        }

        @Override // androidx.viewpager2.widget.ViewPager2.a
        public final void a(androidx.core.view.a.c cVar) {
            if (!ViewPager2.this.i) {
                cVar.b(c.a.n);
                cVar.b(c.a.m);
                cVar.j(false);
            }
        }

        @Override // androidx.viewpager2.widget.ViewPager2.a
        public final boolean c(int i) {
            return (i == 8192 || i == 4096) && !ViewPager2.this.i;
        }

        @Override // androidx.viewpager2.widget.ViewPager2.a
        public final boolean d(int i) {
            if (c(i)) {
                return false;
            }
            throw new IllegalStateException();
        }

        @Override // androidx.viewpager2.widget.ViewPager2.a
        public final boolean h() {
            return true;
        }

        @Override // androidx.viewpager2.widget.ViewPager2.a
        public final CharSequence i() {
            return "androidx.viewpager.widget.ViewPager";
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/viewpager2/widget/ViewPager2$c.class */
    static abstract class c extends RecyclerView.c {
        private c() {
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
    /* loaded from: classes-dex2jar.jar:androidx/viewpager2/widget/ViewPager2$d.class */
    public final class d extends LinearLayoutManager {
        d(Context context) {
            super(context);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.i
        public final void a(RecyclerView.o oVar, RecyclerView.s sVar, androidx.core.view.a.c cVar) {
            super.a(oVar, sVar, cVar);
            ViewPager2.this.k.a(cVar);
        }

        @Override // androidx.recyclerview.widget.LinearLayoutManager
        public final void a(RecyclerView.s sVar, int[] iArr) {
            int i = ViewPager2.this.j;
            if (i == -1) {
                super.a(sVar, iArr);
                return;
            }
            int b2 = ViewPager2.this.b() * i;
            iArr[0] = b2;
            iArr[1] = b2;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.i
        public final boolean a(RecyclerView.o oVar, RecyclerView.s sVar, int i, Bundle bundle) {
            return ViewPager2.this.k.c(i) ? ViewPager2.this.k.d(i) : super.a(oVar, sVar, i, bundle);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.i
        public final boolean a(RecyclerView recyclerView, View view, Rect rect, boolean z, boolean z2) {
            return false;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/viewpager2/widget/ViewPager2$e.class */
    public static abstract class e {
        public void a(int i) {
        }

        public void a(int i, float f, int i2) {
        }

        public void b(int i) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager2/widget/ViewPager2$f.class */
    public final class f extends a {

        /* renamed from: c  reason: collision with root package name */
        private final androidx.core.view.a.f f5927c = new androidx.core.view.a.f() { // from class: androidx.viewpager2.widget.ViewPager2.f.1
            @Override // androidx.core.view.a.f
            public final boolean a(View view) {
                f.this.e(((ViewPager2) view).f5917c + 1);
                return true;
            }
        };

        /* renamed from: d  reason: collision with root package name */
        private final androidx.core.view.a.f f5928d = new androidx.core.view.a.f() { // from class: androidx.viewpager2.widget.ViewPager2.f.2
            @Override // androidx.core.view.a.f
            public final boolean a(View view) {
                f.this.e(((ViewPager2) view).f5917c - 1);
                return true;
            }
        };
        private RecyclerView.c e;

        f() {
            super();
        }

        @Override // androidx.viewpager2.widget.ViewPager2.a
        public final void a(AccessibilityEvent accessibilityEvent) {
            accessibilityEvent.setSource(ViewPager2.this);
            accessibilityEvent.setClassName("androidx.viewpager.widget.ViewPager");
        }

        @Override // androidx.viewpager2.widget.ViewPager2.a
        public final void a(AccessibilityNodeInfo accessibilityNodeInfo) {
            int i;
            int i2;
            RecyclerView.a adapter;
            int itemCount;
            if (ViewPager2.this.f.getAdapter() == null) {
                i2 = 0;
            } else if (ViewPager2.this.e.getOrientation() == 1) {
                i2 = ViewPager2.this.f.getAdapter().getItemCount();
            } else {
                i = ViewPager2.this.f.getAdapter().getItemCount();
                i2 = 0;
                androidx.core.view.a.c.a(accessibilityNodeInfo).a(c.b.a(i2, i, false, 0));
                if (Build.VERSION.SDK_INT >= 16 && (adapter = ViewPager2.this.f.getAdapter()) != null && (itemCount = adapter.getItemCount()) != 0 && ViewPager2.this.i) {
                    if (ViewPager2.this.f5917c > 0) {
                        accessibilityNodeInfo.addAction(PropertyFlags.UNSIGNED);
                    }
                    if (ViewPager2.this.f5917c < itemCount - 1) {
                        accessibilityNodeInfo.addAction(4096);
                    }
                    accessibilityNodeInfo.setScrollable(true);
                    return;
                }
                return;
            }
            i = 0;
            androidx.core.view.a.c.a(accessibilityNodeInfo).a(c.b.a(i2, i, false, 0));
            if (Build.VERSION.SDK_INT >= 16) {
            }
        }

        @Override // androidx.viewpager2.widget.ViewPager2.a
        public final void a(RecyclerView.a<?> aVar) {
            j();
            if (aVar != null) {
                aVar.registerAdapterDataObserver(this.e);
            }
        }

        @Override // androidx.viewpager2.widget.ViewPager2.a
        public final void a(RecyclerView recyclerView) {
            v.c((View) recyclerView, 2);
            this.e = new c() { // from class: androidx.viewpager2.widget.ViewPager2.f.3
                @Override // androidx.viewpager2.widget.ViewPager2.c, androidx.recyclerview.widget.RecyclerView.c
                public final void onChanged() {
                    f.this.j();
                }
            };
            if (v.e(ViewPager2.this) == 0) {
                v.c((View) ViewPager2.this, 1);
            }
        }

        @Override // androidx.viewpager2.widget.ViewPager2.a
        public final boolean a() {
            return true;
        }

        @Override // androidx.viewpager2.widget.ViewPager2.a
        public final boolean a(int i) {
            return i == 8192 || i == 4096;
        }

        @Override // androidx.viewpager2.widget.ViewPager2.a
        public final String b() {
            return "androidx.viewpager.widget.ViewPager";
        }

        @Override // androidx.viewpager2.widget.ViewPager2.a
        public final void b(RecyclerView.a<?> aVar) {
            if (aVar != null) {
                aVar.unregisterAdapterDataObserver(this.e);
            }
        }

        @Override // androidx.viewpager2.widget.ViewPager2.a
        public final boolean b(int i) {
            if (a(i)) {
                e(i == 8192 ? ViewPager2.this.f5917c - 1 : ViewPager2.this.f5917c + 1);
                return true;
            }
            throw new IllegalStateException();
        }

        @Override // androidx.viewpager2.widget.ViewPager2.a
        public final void c() {
            j();
        }

        @Override // androidx.viewpager2.widget.ViewPager2.a
        public final void d() {
            j();
        }

        @Override // androidx.viewpager2.widget.ViewPager2.a
        public final void e() {
            j();
        }

        final void e(int i) {
            if (ViewPager2.this.i) {
                ViewPager2.this.a(i, true);
            }
        }

        @Override // androidx.viewpager2.widget.ViewPager2.a
        public final void f() {
            j();
            if (Build.VERSION.SDK_INT < 21) {
                ViewPager2.this.sendAccessibilityEvent(2048);
            }
        }

        @Override // androidx.viewpager2.widget.ViewPager2.a
        public final void g() {
            j();
        }

        final void j() {
            int itemCount;
            ViewPager2 viewPager2 = ViewPager2.this;
            int i = 16908360;
            v.d(viewPager2, 16908360);
            v.d(viewPager2, 16908361);
            v.d(viewPager2, 16908358);
            v.d(viewPager2, 16908359);
            if (ViewPager2.this.f.getAdapter() != null && (itemCount = ViewPager2.this.f.getAdapter().getItemCount()) != 0 && ViewPager2.this.i) {
                if (ViewPager2.this.e.getOrientation() == 0) {
                    boolean c2 = ViewPager2.this.c();
                    int i2 = c2 ? 16908360 : 16908361;
                    if (c2) {
                        i = 16908361;
                    }
                    if (ViewPager2.this.f5917c < itemCount - 1) {
                        v.a(viewPager2, new c.a(i2, null), this.f5927c);
                    }
                    if (ViewPager2.this.f5917c > 0) {
                        v.a(viewPager2, new c.a(i, null), this.f5928d);
                        return;
                    }
                    return;
                }
                if (ViewPager2.this.f5917c < itemCount - 1) {
                    v.a(viewPager2, new c.a(16908359, null), this.f5927c);
                }
                if (ViewPager2.this.f5917c > 0) {
                    v.a(viewPager2, new c.a(16908358, null), this.f5928d);
                }
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/viewpager2/widget/ViewPager2$g.class */
    public interface g {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager2/widget/ViewPager2$h.class */
    public final class h extends k {
        h() {
        }

        @Override // androidx.recyclerview.widget.k, androidx.recyclerview.widget.o
        public final View a(RecyclerView.i iVar) {
            if (ViewPager2.this.h.f5939a.f5947d) {
                return null;
            }
            return super.a(iVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager2/widget/ViewPager2$i.class */
    public final class i extends RecyclerView {
        i(Context context) {
            super(context);
        }

        @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, android.view.View
        public final CharSequence getAccessibilityClassName() {
            return ViewPager2.this.k.h() ? ViewPager2.this.k.i() : super.getAccessibilityClassName();
        }

        @Override // android.view.View
        public final void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
            super.onInitializeAccessibilityEvent(accessibilityEvent);
            accessibilityEvent.setFromIndex(ViewPager2.this.f5917c);
            accessibilityEvent.setToIndex(ViewPager2.this.f5917c);
            ViewPager2.this.k.a(accessibilityEvent);
        }

        @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup
        public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
            return ViewPager2.this.i && super.onInterceptTouchEvent(motionEvent);
        }

        @Override // androidx.recyclerview.widget.RecyclerView, android.view.View
        public final boolean onTouchEvent(MotionEvent motionEvent) {
            return ViewPager2.this.i && super.onTouchEvent(motionEvent);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager2/widget/ViewPager2$j.class */
    public static final class j implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private final int f5933a;

        /* renamed from: b  reason: collision with root package name */
        private final RecyclerView f5934b;

        j(int i, RecyclerView recyclerView) {
            this.f5933a = i;
            this.f5934b = recyclerView;
        }

        @Override // java.lang.Runnable
        public final void run() {
            this.f5934b.d(this.f5933a);
        }
    }

    public ViewPager2(Context context) {
        super(context);
        a(context, (AttributeSet) null);
    }

    public ViewPager2(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a(context, attributeSet);
    }

    public ViewPager2(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        a(context, attributeSet);
    }

    public ViewPager2(Context context, AttributeSet attributeSet, int i2, int i3) {
        super(context, attributeSet, i2, i3);
        a(context, attributeSet);
    }

    private void a(Context context, AttributeSet attributeSet) {
        this.k = f5915a ? new f() : new b();
        i iVar = new i(context);
        this.f = iVar;
        iVar.setId(v.a());
        this.f.setDescendantFocusability(131072);
        d dVar = new d(context);
        this.e = dVar;
        this.f.setLayoutManager(dVar);
        this.f.setScrollingTouchSlop(1);
        b(context, attributeSet);
        this.f.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        this.f.a(d());
        androidx.viewpager2.widget.e eVar = new androidx.viewpager2.widget.e(this);
        this.g = eVar;
        this.h = new androidx.viewpager2.widget.c(this, eVar, this.f);
        h hVar = new h();
        this.q = hVar;
        hVar.a(this.f);
        this.f.a(this.g);
        androidx.viewpager2.widget.b bVar = new androidx.viewpager2.widget.b(3);
        this.r = bVar;
        this.g.f5944a = bVar;
        e eVar2 = new e() { // from class: androidx.viewpager2.widget.ViewPager2.2
            @Override // androidx.viewpager2.widget.ViewPager2.e
            public final void a(int i2) {
                if (i2 == 0) {
                    ViewPager2.this.a();
                }
            }

            @Override // androidx.viewpager2.widget.ViewPager2.e
            public final void b(int i2) {
                if (ViewPager2.this.f5917c != i2) {
                    ViewPager2.this.f5917c = i2;
                    ViewPager2.this.k.e();
                }
            }
        };
        e eVar3 = new e() { // from class: androidx.viewpager2.widget.ViewPager2.3
            @Override // androidx.viewpager2.widget.ViewPager2.e
            public final void b(int i2) {
                ViewPager2.this.clearFocus();
                if (ViewPager2.this.hasFocus()) {
                    ViewPager2.this.f.requestFocus(2);
                }
            }
        };
        this.r.a(eVar2);
        this.r.a(eVar3);
        this.k.a(this.f);
        this.r.a(this.f5916b);
        androidx.viewpager2.widget.d dVar2 = new androidx.viewpager2.widget.d(this.e);
        this.s = dVar2;
        this.r.a(dVar2);
        RecyclerView recyclerView = this.f;
        attachViewToParent(recyclerView, 0, recyclerView.getLayoutParams());
    }

    private void b(Context context, AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.C0119a.ViewPager2);
        if (Build.VERSION.SDK_INT >= 29) {
            saveAttributeDataForStyleable(context, a.C0119a.ViewPager2, attributeSet, obtainStyledAttributes, 0, 0);
        }
        try {
            setOrientation(obtainStyledAttributes.getInt(a.C0119a.ViewPager2_android_orientation, 0));
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    private RecyclerView.j d() {
        return new RecyclerView.j() { // from class: androidx.viewpager2.widget.ViewPager2.4
            @Override // androidx.recyclerview.widget.RecyclerView.j
            public final void a(View view) {
                RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
                if (layoutParams.width != -1 || layoutParams.height != -1) {
                    throw new IllegalStateException("Pages must fill the whole ViewPager2 (use match_parent)");
                }
            }

            @Override // androidx.recyclerview.widget.RecyclerView.j
            public final void b(View view) {
            }
        };
    }

    private void e() {
        RecyclerView.a adapter;
        if (this.o != -1 && (adapter = this.f.getAdapter()) != null) {
            Parcelable parcelable = this.p;
            if (parcelable != null) {
                if (adapter instanceof androidx.viewpager2.adapter.c) {
                    ((androidx.viewpager2.adapter.c) adapter).a(parcelable);
                }
                this.p = null;
            }
            int max = Math.max(0, Math.min(this.o, adapter.getItemCount() - 1));
            this.f5917c = max;
            this.o = -1;
            this.f.b(max);
            this.k.c();
        }
    }

    final void a() {
        k kVar = this.q;
        if (kVar != null) {
            View a2 = kVar.a(this.e);
            if (a2 != null) {
                int c2 = LinearLayoutManager.c(a2);
                if (c2 != this.f5917c && this.g.f5945b == 0) {
                    this.r.b(c2);
                }
                this.f5918d = false;
                return;
            }
            return;
        }
        throw new IllegalStateException("Design assumption violated.");
    }

    final void a(int i2, boolean z) {
        RecyclerView.a adapter = this.f.getAdapter();
        if (adapter == null) {
            if (this.o != -1) {
                this.o = Math.max(i2, 0);
            }
        } else if (adapter.getItemCount() > 0) {
            int min = Math.min(Math.max(i2, 0), adapter.getItemCount() - 1);
            if (min != this.f5917c || !this.g.a()) {
                int i3 = this.f5917c;
                if (min != i3 || !z) {
                    double d2 = i3;
                    this.f5917c = min;
                    this.k.e();
                    if (!this.g.a()) {
                        d2 = this.g.b();
                    }
                    this.g.a(min, z);
                    if (!z) {
                        this.f.b(min);
                        return;
                    }
                    double d3 = min;
                    if (Math.abs(d3 - d2) > 3.0d) {
                        this.f.b(d3 > d2 ? min - 3 : min + 3);
                        RecyclerView recyclerView = this.f;
                        recyclerView.post(new j(min, recyclerView));
                        return;
                    }
                    this.f.d(min);
                }
            }
        }
    }

    final int b() {
        int height;
        int paddingBottom;
        RecyclerView recyclerView = this.f;
        if (this.e.getOrientation() == 0) {
            height = recyclerView.getWidth() - recyclerView.getPaddingLeft();
            paddingBottom = recyclerView.getPaddingRight();
        } else {
            height = recyclerView.getHeight() - recyclerView.getPaddingTop();
            paddingBottom = recyclerView.getPaddingBottom();
        }
        return height - paddingBottom;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean c() {
        return this.e.getLayoutDirection() == 1;
    }

    @Override // android.view.View
    public final boolean canScrollHorizontally(int i2) {
        return this.f.canScrollHorizontally(i2);
    }

    @Override // android.view.View
    public final boolean canScrollVertically(int i2) {
        return this.f.canScrollVertically(i2);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected final void dispatchRestoreInstanceState(SparseArray<Parcelable> sparseArray) {
        Parcelable parcelable = sparseArray.get(getId());
        if (parcelable instanceof SavedState) {
            int i2 = ((SavedState) parcelable).mRecyclerViewId;
            sparseArray.put(this.f.getId(), sparseArray.get(i2));
            sparseArray.remove(i2);
        }
        super.dispatchRestoreInstanceState(sparseArray);
        e();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final CharSequence getAccessibilityClassName() {
        return this.k.a() ? this.k.b() : super.getAccessibilityClassName();
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        this.k.a(accessibilityNodeInfo);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected final void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        int measuredWidth = this.f.getMeasuredWidth();
        int measuredHeight = this.f.getMeasuredHeight();
        this.l.left = getPaddingLeft();
        this.l.right = (i4 - i2) - getPaddingRight();
        this.l.top = getPaddingTop();
        this.l.bottom = (i5 - i3) - getPaddingBottom();
        Gravity.apply(8388659, measuredWidth, measuredHeight, this.l, this.m);
        this.f.layout(this.m.left, this.m.top, this.m.right, this.m.bottom);
        if (this.f5918d) {
            a();
        }
    }

    @Override // android.view.View
    protected final void onMeasure(int i2, int i3) {
        measureChild(this.f, i2, i3);
        int measuredWidth = this.f.getMeasuredWidth();
        int measuredHeight = this.f.getMeasuredHeight();
        int measuredState = this.f.getMeasuredState();
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        setMeasuredDimension(resolveSizeAndState(Math.max(measuredWidth + paddingLeft + paddingRight, getSuggestedMinimumWidth()), i2, measuredState), resolveSizeAndState(Math.max(measuredHeight + paddingTop + paddingBottom, getSuggestedMinimumHeight()), i3, measuredState << 16));
    }

    @Override // android.view.View
    protected final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.o = savedState.mCurrentItem;
        this.p = savedState.mAdapterState;
    }

    @Override // android.view.View
    protected final Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.mRecyclerViewId = this.f.getId();
        int i2 = this.o;
        int i3 = i2;
        if (i2 == -1) {
            i3 = this.f5917c;
        }
        savedState.mCurrentItem = i3;
        Parcelable parcelable = this.p;
        if (parcelable != null) {
            savedState.mAdapterState = parcelable;
        } else {
            RecyclerView.a adapter = this.f.getAdapter();
            if (adapter instanceof androidx.viewpager2.adapter.c) {
                savedState.mAdapterState = ((androidx.viewpager2.adapter.c) adapter).c();
            }
        }
        return savedState;
    }

    @Override // android.view.ViewGroup
    public final void onViewAdded(View view) {
        throw new IllegalStateException(getClass().getSimpleName() + " does not support direct child views");
    }

    @Override // android.view.View
    public final boolean performAccessibilityAction(int i2, Bundle bundle) {
        return this.k.a(i2) ? this.k.b(i2) : super.performAccessibilityAction(i2, bundle);
    }

    public final void setAdapter(RecyclerView.a aVar) {
        RecyclerView.a<?> adapter = this.f.getAdapter();
        this.k.b(adapter);
        if (adapter != null) {
            adapter.unregisterAdapterDataObserver(this.n);
        }
        this.f.setAdapter(aVar);
        this.f5917c = 0;
        e();
        this.k.a(aVar);
        if (aVar != null) {
            aVar.registerAdapterDataObserver(this.n);
        }
    }

    public final void setCurrentItem(int i2) {
        setCurrentItem(i2, true);
    }

    public final void setCurrentItem(int i2, boolean z) {
        if (!this.h.f5939a.f5947d) {
            a(i2, z);
            return;
        }
        throw new IllegalStateException("Cannot change current item when ViewPager2 is fake dragging");
    }

    @Override // android.view.View
    public final void setLayoutDirection(int i2) {
        super.setLayoutDirection(i2);
        this.k.g();
    }

    public final void setOffscreenPageLimit(int i2) {
        if (i2 > 0 || i2 == -1) {
            this.j = i2;
            this.f.requestLayout();
            return;
        }
        throw new IllegalArgumentException("Offscreen page limit must be OFFSCREEN_PAGE_LIMIT_DEFAULT or a number > 0");
    }

    public final void setOrientation(int i2) {
        this.e.setOrientation(i2);
        this.k.d();
    }

    public final void setPageTransformer(g gVar) {
        if (gVar != null) {
            if (!this.u) {
                this.t = this.f.getItemAnimator();
                this.u = true;
            }
            this.f.setItemAnimator(null);
        } else if (this.u) {
            this.f.setItemAnimator(this.t);
            this.t = null;
            this.u = false;
        }
        if (gVar != this.s.f5942a) {
            this.s.f5942a = gVar;
            if (this.s.f5942a != null) {
                double b2 = this.g.b();
                int i2 = (int) b2;
                float f2 = (float) (b2 - i2);
                this.s.a(i2, f2, Math.round(b() * f2));
            }
        }
    }

    public final void setUserInputEnabled(boolean z) {
        this.i = z;
        this.k.f();
    }
}
