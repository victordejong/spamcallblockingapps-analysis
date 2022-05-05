package androidx.viewpager2.widget;

import android.annotation.SuppressLint;
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
import androidx.annotation.AbstractC0040Px;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.view.accessibility.AccessibilityViewCommand;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.PagerSnapHelper;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.C0589R;
import androidx.viewpager2.adapter.StatefulAdapter;
import com.google.firebase.crashlytics.internal.proto.CodedOutputStream;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
/* loaded from: classes-dex2jar.jar:androidx/viewpager2/widget/ViewPager2.class */
public final class ViewPager2 extends ViewGroup {

    /* renamed from: z */
    static boolean f5630z = true;

    /* renamed from: i */
    int f5634i;

    /* renamed from: l */
    private LinearLayoutManager f5637l;

    /* renamed from: n */
    private Parcelable f5639n;

    /* renamed from: o */
    RecyclerView f5640o;

    /* renamed from: p */
    private PagerSnapHelper f5641p;

    /* renamed from: q */
    ScrollEventAdapter f5642q;

    /* renamed from: r */
    private CompositeOnPageChangeCallback f5643r;

    /* renamed from: s */
    private FakeDrag f5644s;

    /* renamed from: t */
    private PageTransformerAdapter f5645t;

    /* renamed from: y */
    AccessibilityProvider f5650y;

    /* renamed from: f */
    private final Rect f5631f = new Rect();

    /* renamed from: g */
    private final Rect f5632g = new Rect();

    /* renamed from: h */
    private CompositeOnPageChangeCallback f5633h = new CompositeOnPageChangeCallback(3);

    /* renamed from: j */
    boolean f5635j = false;

    /* renamed from: k */
    private RecyclerView.AdapterDataObserver f5636k = new DataSetChangeObserver() { // from class: androidx.viewpager2.widget.ViewPager2.1
        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        /* renamed from: a */
        public void mo7065a() {
            ViewPager2 viewPager2 = ViewPager2.this;
            viewPager2.f5635j = true;
            viewPager2.f5642q.m16431l();
        }
    };

    /* renamed from: m */
    private int f5638m = -1;

    /* renamed from: u */
    private RecyclerView.ItemAnimator f5646u = null;

    /* renamed from: v */
    private boolean f5647v = false;

    /* renamed from: w */
    private boolean f5648w = true;

    /* renamed from: x */
    private int f5649x = -1;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager2/widget/ViewPager2$AccessibilityProvider.class */
    public abstract class AccessibilityProvider {
        private AccessibilityProvider(ViewPager2 viewPager2) {
        }

        /* renamed from: a */
        boolean mo16400a() {
            return false;
        }

        /* renamed from: b */
        boolean mo16408b(int i) {
            return false;
        }

        /* renamed from: c */
        boolean mo16399c(int i, Bundle bundle) {
            return false;
        }

        /* renamed from: d */
        boolean mo16407d() {
            return false;
        }

        /* renamed from: e */
        void mo16398e(@Nullable RecyclerView.Adapter<?> adapter) {
        }

        /* renamed from: f */
        void mo16397f(@Nullable RecyclerView.Adapter<?> adapter) {
        }

        /* renamed from: g */
        String mo16396g() {
            throw new IllegalStateException("Not implemented.");
        }

        /* renamed from: h */
        void mo16395h(@NonNull CompositeOnPageChangeCallback compositeOnPageChangeCallback, @NonNull RecyclerView recyclerView) {
        }

        /* renamed from: i */
        void mo16394i(AccessibilityNodeInfo accessibilityNodeInfo) {
        }

        /* renamed from: j */
        void mo16406j(@NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        }

        /* renamed from: k */
        boolean mo16405k(int i) {
            throw new IllegalStateException("Not implemented.");
        }

        /* renamed from: l */
        boolean mo16393l(int i, Bundle bundle) {
            throw new IllegalStateException("Not implemented.");
        }

        /* renamed from: m */
        void mo16392m() {
        }

        /* renamed from: n */
        CharSequence mo16404n() {
            throw new IllegalStateException("Not implemented.");
        }

        /* renamed from: o */
        void mo16391o(@NonNull AccessibilityEvent accessibilityEvent) {
        }

        /* renamed from: p */
        void mo16390p() {
        }

        /* renamed from: q */
        void mo16389q() {
        }

        /* renamed from: r */
        void mo16388r() {
        }

        /* renamed from: s */
        void mo16387s() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager2/widget/ViewPager2$BasicAccessibilityProvider.class */
    public class BasicAccessibilityProvider extends AccessibilityProvider {
        BasicAccessibilityProvider() {
            super();
        }

        @Override // androidx.viewpager2.widget.ViewPager2.AccessibilityProvider
        /* renamed from: b */
        public boolean mo16408b(int i) {
            return (i == 8192 || i == 4096) && !ViewPager2.this.m16420e();
        }

        @Override // androidx.viewpager2.widget.ViewPager2.AccessibilityProvider
        /* renamed from: d */
        public boolean mo16407d() {
            return true;
        }

        @Override // androidx.viewpager2.widget.ViewPager2.AccessibilityProvider
        /* renamed from: j */
        public void mo16406j(@NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            if (!ViewPager2.this.m16420e()) {
                accessibilityNodeInfoCompat.m19038T(AccessibilityNodeInfoCompat.AccessibilityActionCompat.f3334i);
                accessibilityNodeInfoCompat.m19038T(AccessibilityNodeInfoCompat.AccessibilityActionCompat.f3333h);
                accessibilityNodeInfoCompat.m18982y0(false);
            }
        }

        @Override // androidx.viewpager2.widget.ViewPager2.AccessibilityProvider
        /* renamed from: k */
        public boolean mo16405k(int i) {
            if (mo16408b(i)) {
                return false;
            }
            throw new IllegalStateException();
        }

        @Override // androidx.viewpager2.widget.ViewPager2.AccessibilityProvider
        /* renamed from: n */
        public CharSequence mo16404n() {
            if (mo16407d()) {
                return "androidx.viewpager.widget.ViewPager";
            }
            throw new IllegalStateException();
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/viewpager2/widget/ViewPager2$DataSetChangeObserver.class */
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

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager2/widget/ViewPager2$LinearLayoutManagerImpl.class */
    public class LinearLayoutManagerImpl extends LinearLayoutManager {
        LinearLayoutManagerImpl(Context context) {
            super(context);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // androidx.recyclerview.widget.LinearLayoutManager
        /* renamed from: N1 */
        public void mo9947N1(@NonNull RecyclerView.State state, @NonNull int[] iArr) {
            int offscreenPageLimit = ViewPager2.this.getOffscreenPageLimit();
            if (offscreenPageLimit == -1) {
                super.mo9947N1(state, iArr);
                return;
            }
            int pageSize = ViewPager2.this.getPageSize() * offscreenPageLimit;
            iArr[0] = pageSize;
            iArr[1] = pageSize;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
        /* renamed from: O0 */
        public void mo16403O0(@NonNull RecyclerView.Recycler recycler, @NonNull RecyclerView.State state, @NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.mo16403O0(recycler, state, accessibilityNodeInfoCompat);
            ViewPager2.this.f5650y.mo16406j(accessibilityNodeInfoCompat);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
        /* renamed from: i1 */
        public boolean mo16402i1(@NonNull RecyclerView.Recycler recycler, @NonNull RecyclerView.State state, int i, @Nullable Bundle bundle) {
            return ViewPager2.this.f5650y.mo16408b(i) ? ViewPager2.this.f5650y.mo16405k(i) : super.mo16402i1(recycler, state, i, bundle);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
        /* renamed from: t1 */
        public boolean mo16401t1(@NonNull RecyclerView recyclerView, @NonNull View view, @NonNull Rect rect, boolean z, boolean z2) {
            return false;
        }
    }

    @IntRange
    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    /* loaded from: classes-dex2jar.jar:androidx/viewpager2/widget/ViewPager2$OffscreenPageLimit.class */
    public @interface OffscreenPageLimit {
    }

    /* loaded from: classes-dex2jar.jar:androidx/viewpager2/widget/ViewPager2$OnPageChangeCallback.class */
    public static abstract class OnPageChangeCallback {
        /* renamed from: a */
        public void mo8895a(int i) {
        }

        /* renamed from: b */
        public void mo8894b(int i, float f, @AbstractC0040Px int i2) {
        }

        /* renamed from: c */
        public void mo8893c(int i) {
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    /* loaded from: classes-dex2jar.jar:androidx/viewpager2/widget/ViewPager2$Orientation.class */
    public @interface Orientation {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider.class */
    public class PageAwareAccessibilityProvider extends AccessibilityProvider {

        /* renamed from: a */
        private final AccessibilityViewCommand f5656a = new AccessibilityViewCommand() { // from class: androidx.viewpager2.widget.ViewPager2.PageAwareAccessibilityProvider.1
            @Override // androidx.core.view.accessibility.AccessibilityViewCommand
            /* renamed from: a */
            public boolean mo10380a(@NonNull View view, @Nullable AccessibilityViewCommand.CommandArguments commandArguments) {
                PageAwareAccessibilityProvider.this.m16384v(((ViewPager2) view).getCurrentItem() + 1);
                return true;
            }
        };

        /* renamed from: b */
        private final AccessibilityViewCommand f5657b = new AccessibilityViewCommand() { // from class: androidx.viewpager2.widget.ViewPager2.PageAwareAccessibilityProvider.2
            @Override // androidx.core.view.accessibility.AccessibilityViewCommand
            /* renamed from: a */
            public boolean mo10380a(@NonNull View view, @Nullable AccessibilityViewCommand.CommandArguments commandArguments) {
                PageAwareAccessibilityProvider.this.m16384v(((ViewPager2) view).getCurrentItem() - 1);
                return true;
            }
        };

        /* renamed from: c */
        private RecyclerView.AdapterDataObserver f5658c;

        PageAwareAccessibilityProvider() {
            super();
        }

        /* renamed from: t */
        private void m16386t(AccessibilityNodeInfo accessibilityNodeInfo) {
            int i;
            int i2;
            if (ViewPager2.this.getAdapter() == null) {
                i2 = 0;
            } else if (ViewPager2.this.getOrientation() == 1) {
                i2 = ViewPager2.this.getAdapter().getItemCount();
            } else {
                i = ViewPager2.this.getAdapter().getItemCount();
                i2 = 0;
                AccessibilityNodeInfoCompat.m19051G0(accessibilityNodeInfo).m19022e0(AccessibilityNodeInfoCompat.CollectionInfoCompat.m18974b(i2, i, false, 0));
            }
            i = 0;
            AccessibilityNodeInfoCompat.m19051G0(accessibilityNodeInfo).m19022e0(AccessibilityNodeInfoCompat.CollectionInfoCompat.m18974b(i2, i, false, 0));
        }

        /* renamed from: u */
        private void m16385u(AccessibilityNodeInfo accessibilityNodeInfo) {
            int itemCount;
            RecyclerView.Adapter adapter = ViewPager2.this.getAdapter();
            if (adapter != null && (itemCount = adapter.getItemCount()) != 0 && ViewPager2.this.m16420e()) {
                if (ViewPager2.this.f5634i > 0) {
                    accessibilityNodeInfo.addAction(8192);
                }
                if (ViewPager2.this.f5634i < itemCount - 1) {
                    accessibilityNodeInfo.addAction(CodedOutputStream.DEFAULT_BUFFER_SIZE);
                }
                accessibilityNodeInfo.setScrollable(true);
            }
        }

        @Override // androidx.viewpager2.widget.ViewPager2.AccessibilityProvider
        /* renamed from: a */
        public boolean mo16400a() {
            return true;
        }

        @Override // androidx.viewpager2.widget.ViewPager2.AccessibilityProvider
        /* renamed from: c */
        public boolean mo16399c(int i, Bundle bundle) {
            return i == 8192 || i == 4096;
        }

        @Override // androidx.viewpager2.widget.ViewPager2.AccessibilityProvider
        /* renamed from: e */
        public void mo16398e(@Nullable RecyclerView.Adapter<?> adapter) {
            m16383w();
            if (adapter != null) {
                adapter.registerAdapterDataObserver(this.f5658c);
            }
        }

        @Override // androidx.viewpager2.widget.ViewPager2.AccessibilityProvider
        /* renamed from: f */
        public void mo16397f(@Nullable RecyclerView.Adapter<?> adapter) {
            if (adapter != null) {
                adapter.unregisterAdapterDataObserver(this.f5658c);
            }
        }

        @Override // androidx.viewpager2.widget.ViewPager2.AccessibilityProvider
        /* renamed from: g */
        public String mo16396g() {
            if (mo16400a()) {
                return "androidx.viewpager.widget.ViewPager";
            }
            throw new IllegalStateException();
        }

        @Override // androidx.viewpager2.widget.ViewPager2.AccessibilityProvider
        /* renamed from: h */
        public void mo16395h(@NonNull CompositeOnPageChangeCallback compositeOnPageChangeCallback, @NonNull RecyclerView recyclerView) {
            ViewCompat.m19163x0(recyclerView, 2);
            this.f5658c = new DataSetChangeObserver() { // from class: androidx.viewpager2.widget.ViewPager2.PageAwareAccessibilityProvider.3
                @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
                /* renamed from: a */
                public void mo7065a() {
                    PageAwareAccessibilityProvider.this.m16383w();
                }
            };
            if (ViewCompat.m19162y(ViewPager2.this) == 0) {
                ViewCompat.m19163x0(ViewPager2.this, 1);
            }
        }

        @Override // androidx.viewpager2.widget.ViewPager2.AccessibilityProvider
        /* renamed from: i */
        public void mo16394i(AccessibilityNodeInfo accessibilityNodeInfo) {
            m16386t(accessibilityNodeInfo);
            if (Build.VERSION.SDK_INT >= 16) {
                m16385u(accessibilityNodeInfo);
            }
        }

        @Override // androidx.viewpager2.widget.ViewPager2.AccessibilityProvider
        /* renamed from: l */
        public boolean mo16393l(int i, Bundle bundle) {
            if (mo16399c(i, bundle)) {
                m16384v(i == 8192 ? ViewPager2.this.getCurrentItem() - 1 : ViewPager2.this.getCurrentItem() + 1);
                return true;
            }
            throw new IllegalStateException();
        }

        @Override // androidx.viewpager2.widget.ViewPager2.AccessibilityProvider
        /* renamed from: m */
        public void mo16392m() {
            m16383w();
        }

        @Override // androidx.viewpager2.widget.ViewPager2.AccessibilityProvider
        /* renamed from: o */
        public void mo16391o(@NonNull AccessibilityEvent accessibilityEvent) {
            accessibilityEvent.setSource(ViewPager2.this);
            accessibilityEvent.setClassName(mo16396g());
        }

        @Override // androidx.viewpager2.widget.ViewPager2.AccessibilityProvider
        /* renamed from: p */
        public void mo16390p() {
            m16383w();
        }

        @Override // androidx.viewpager2.widget.ViewPager2.AccessibilityProvider
        /* renamed from: q */
        public void mo16389q() {
            m16383w();
        }

        @Override // androidx.viewpager2.widget.ViewPager2.AccessibilityProvider
        /* renamed from: r */
        public void mo16388r() {
            m16383w();
        }

        @Override // androidx.viewpager2.widget.ViewPager2.AccessibilityProvider
        /* renamed from: s */
        public void mo16387s() {
            m16383w();
            if (Build.VERSION.SDK_INT < 21) {
                ViewPager2.this.sendAccessibilityEvent(2048);
            }
        }

        /* renamed from: v */
        void m16384v(int i) {
            if (ViewPager2.this.m16420e()) {
                ViewPager2.this.m16415j(i, true);
            }
        }

        /* renamed from: w */
        void m16383w() {
            int itemCount;
            ViewPager2 viewPager2 = ViewPager2.this;
            int i = 16908360;
            ViewCompat.m19195h0(viewPager2, 16908360);
            ViewCompat.m19195h0(viewPager2, 16908361);
            ViewCompat.m19195h0(viewPager2, 16908358);
            ViewCompat.m19195h0(viewPager2, 16908359);
            if (ViewPager2.this.getAdapter() != null && (itemCount = ViewPager2.this.getAdapter().getItemCount()) != 0 && ViewPager2.this.m16420e()) {
                if (ViewPager2.this.getOrientation() == 0) {
                    boolean d = ViewPager2.this.m16421d();
                    int i2 = d ? 16908360 : 16908361;
                    if (d) {
                        i = 16908361;
                    }
                    if (ViewPager2.this.f5634i < itemCount - 1) {
                        ViewCompat.m19191j0(viewPager2, new AccessibilityNodeInfoCompat.AccessibilityActionCompat(i2, null), null, this.f5656a);
                    }
                    if (ViewPager2.this.f5634i > 0) {
                        ViewCompat.m19191j0(viewPager2, new AccessibilityNodeInfoCompat.AccessibilityActionCompat(i, null), null, this.f5657b);
                        return;
                    }
                    return;
                }
                if (ViewPager2.this.f5634i < itemCount - 1) {
                    ViewCompat.m19191j0(viewPager2, new AccessibilityNodeInfoCompat.AccessibilityActionCompat(16908359, null), null, this.f5656a);
                }
                if (ViewPager2.this.f5634i > 0) {
                    ViewCompat.m19191j0(viewPager2, new AccessibilityNodeInfoCompat.AccessibilityActionCompat(16908358, null), null, this.f5657b);
                }
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/viewpager2/widget/ViewPager2$PageTransformer.class */
    public interface PageTransformer {
        /* renamed from: a */
        void mo16382a(@NonNull View view, float f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager2/widget/ViewPager2$PagerSnapHelperImpl.class */
    public class PagerSnapHelperImpl extends PagerSnapHelper {
        PagerSnapHelperImpl() {
        }

        @Override // androidx.recyclerview.widget.PagerSnapHelper, androidx.recyclerview.widget.SnapHelper
        @Nullable
        /* renamed from: h */
        public View mo16381h(RecyclerView.LayoutManager layoutManager) {
            return ViewPager2.this.m16422c() ? null : super.mo16381h(layoutManager);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager2/widget/ViewPager2$RecyclerViewImpl.class */
    public class RecyclerViewImpl extends RecyclerView {
        RecyclerViewImpl(@NonNull Context context) {
            super(context);
        }

        @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, android.view.View
        @RequiresApi
        public CharSequence getAccessibilityClassName() {
            return ViewPager2.this.f5650y.mo16407d() ? ViewPager2.this.f5650y.mo16404n() : super.getAccessibilityClassName();
        }

        @Override // android.view.View
        public void onInitializeAccessibilityEvent(@NonNull AccessibilityEvent accessibilityEvent) {
            super.onInitializeAccessibilityEvent(accessibilityEvent);
            accessibilityEvent.setFromIndex(ViewPager2.this.f5634i);
            accessibilityEvent.setToIndex(ViewPager2.this.f5634i);
            ViewPager2.this.f5650y.mo16391o(accessibilityEvent);
        }

        @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup
        public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
            return ViewPager2.this.m16420e() && super.onInterceptTouchEvent(motionEvent);
        }

        @Override // androidx.recyclerview.widget.RecyclerView, android.view.View
        @SuppressLint({"ClickableViewAccessibility"})
        public boolean onTouchEvent(MotionEvent motionEvent) {
            return ViewPager2.this.m16420e() && super.onTouchEvent(motionEvent);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager2/widget/ViewPager2$SavedState.class */
    public static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.ClassLoaderCreator<SavedState>() { // from class: androidx.viewpager2.widget.ViewPager2.SavedState.1
            /* renamed from: a */
            public SavedState createFromParcel(Parcel parcel) {
                return createFromParcel(parcel, null);
            }

            /* renamed from: b */
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return Build.VERSION.SDK_INT >= 24 ? new SavedState(parcel, classLoader) : new SavedState(parcel);
            }

            /* renamed from: c */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };

        /* renamed from: f */
        int f5665f;

        /* renamed from: g */
        int f5666g;

        /* renamed from: h */
        Parcelable f5667h;

        SavedState(Parcel parcel) {
            super(parcel);
            m16380a(parcel, null);
        }

        @RequiresApi
        SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            m16380a(parcel, classLoader);
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        /* renamed from: a */
        private void m16380a(Parcel parcel, ClassLoader classLoader) {
            this.f5665f = parcel.readInt();
            this.f5666g = parcel.readInt();
            this.f5667h = parcel.readParcelable(classLoader);
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f5665f);
            parcel.writeInt(this.f5666g);
            parcel.writeParcelable(this.f5667h, i);
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    /* loaded from: classes-dex2jar.jar:androidx/viewpager2/widget/ViewPager2$ScrollState.class */
    public @interface ScrollState {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:androidx/viewpager2/widget/ViewPager2$SmoothScrollToPosition.class */
    public static class SmoothScrollToPosition implements Runnable {

        /* renamed from: f */
        private final int f5668f;

        /* renamed from: g */
        private final RecyclerView f5669g;

        SmoothScrollToPosition(int i, RecyclerView recyclerView) {
            this.f5668f = i;
            this.f5669g = recyclerView;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f5669g.smoothScrollToPosition(this.f5668f);
        }
    }

    public ViewPager2(@NonNull Context context) {
        super(context);
        m16423b(context, null);
    }

    public ViewPager2(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        m16423b(context, attributeSet);
    }

    public ViewPager2(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m16423b(context, attributeSet);
    }

    /* renamed from: a */
    private RecyclerView.OnChildAttachStateChangeListener m16424a() {
        return new RecyclerView.OnChildAttachStateChangeListener(this) { // from class: androidx.viewpager2.widget.ViewPager2.4
            @Override // androidx.recyclerview.widget.RecyclerView.OnChildAttachStateChangeListener
            /* renamed from: b */
            public void mo16410b(@NonNull View view) {
            }

            @Override // androidx.recyclerview.widget.RecyclerView.OnChildAttachStateChangeListener
            /* renamed from: d */
            public void mo16409d(@NonNull View view) {
                RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
                if (((ViewGroup.MarginLayoutParams) layoutParams).width != -1 || ((ViewGroup.MarginLayoutParams) layoutParams).height != -1) {
                    throw new IllegalStateException("Pages must fill the whole ViewPager2 (use match_parent)");
                }
            }
        };
    }

    /* renamed from: b */
    private void m16423b(Context context, AttributeSet attributeSet) {
        this.f5650y = f5630z ? new PageAwareAccessibilityProvider() : new BasicAccessibilityProvider();
        RecyclerViewImpl recyclerViewImpl = new RecyclerViewImpl(context);
        this.f5640o = recyclerViewImpl;
        recyclerViewImpl.setId(ViewCompat.m19190k());
        this.f5640o.setDescendantFocusability(131072);
        LinearLayoutManagerImpl linearLayoutManagerImpl = new LinearLayoutManagerImpl(context);
        this.f5637l = linearLayoutManagerImpl;
        this.f5640o.setLayoutManager(linearLayoutManagerImpl);
        this.f5640o.setScrollingTouchSlop(1);
        m16414k(context, attributeSet);
        this.f5640o.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        this.f5640o.addOnChildAttachStateChangeListener(m16424a());
        ScrollEventAdapter scrollEventAdapter = new ScrollEventAdapter(this);
        this.f5642q = scrollEventAdapter;
        this.f5644s = new FakeDrag(this, scrollEventAdapter, this.f5640o);
        PagerSnapHelperImpl pagerSnapHelperImpl = new PagerSnapHelperImpl();
        this.f5641p = pagerSnapHelperImpl;
        pagerSnapHelperImpl.m17228b(this.f5640o);
        this.f5640o.addOnScrollListener(this.f5642q);
        CompositeOnPageChangeCallback compositeOnPageChangeCallback = new CompositeOnPageChangeCallback(3);
        this.f5643r = compositeOnPageChangeCallback;
        this.f5642q.m16428o(compositeOnPageChangeCallback);
        OnPageChangeCallback onPageChangeCallback = new OnPageChangeCallback() { // from class: androidx.viewpager2.widget.ViewPager2.2
            @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
            /* renamed from: a */
            public void mo8895a(int i) {
                if (i == 0) {
                    ViewPager2.this.m16411n();
                }
            }

            @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
            /* renamed from: c */
            public void mo8893c(int i) {
                ViewPager2 viewPager2 = ViewPager2.this;
                if (viewPager2.f5634i != i) {
                    viewPager2.f5634i = i;
                    viewPager2.f5650y.mo16389q();
                }
            }
        };
        OnPageChangeCallback onPageChangeCallback2 = new OnPageChangeCallback() { // from class: androidx.viewpager2.widget.ViewPager2.3
            @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
            /* renamed from: c */
            public void mo8893c(int i) {
                ViewPager2.this.clearFocus();
                if (ViewPager2.this.hasFocus()) {
                    ViewPager2.this.f5640o.requestFocus(2);
                }
            }
        };
        this.f5643r.m16447d(onPageChangeCallback);
        this.f5643r.m16447d(onPageChangeCallback2);
        this.f5650y.mo16395h(this.f5643r, this.f5640o);
        this.f5643r.m16447d(this.f5633h);
        PageTransformerAdapter pageTransformerAdapter = new PageTransformerAdapter(this.f5637l);
        this.f5645t = pageTransformerAdapter;
        this.f5643r.m16447d(pageTransformerAdapter);
        RecyclerView recyclerView = this.f5640o;
        attachViewToParent(recyclerView, 0, recyclerView.getLayoutParams());
    }

    /* renamed from: f */
    private void m16419f(@Nullable RecyclerView.Adapter<?> adapter) {
        if (adapter != null) {
            adapter.registerAdapterDataObserver(this.f5636k);
        }
    }

    /* renamed from: i */
    private void m16416i() {
        RecyclerView.Adapter adapter;
        if (this.f5638m != -1 && (adapter = getAdapter()) != null) {
            Parcelable parcelable = this.f5639n;
            if (parcelable != null) {
                if (adapter instanceof StatefulAdapter) {
                    ((StatefulAdapter) adapter).mo16453b(parcelable);
                }
                this.f5639n = null;
            }
            int max = Math.max(0, Math.min(this.f5638m, adapter.getItemCount() - 1));
            this.f5634i = max;
            this.f5638m = -1;
            this.f5640o.scrollToPosition(max);
            this.f5650y.mo16392m();
        }
    }

    /* renamed from: k */
    private void m16414k(Context context, AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0589R.styleable.ViewPager2);
        if (Build.VERSION.SDK_INT >= 29) {
            saveAttributeDataForStyleable(context, C0589R.styleable.ViewPager2, attributeSet, obtainStyledAttributes, 0, 0);
        }
        try {
            setOrientation(obtainStyledAttributes.getInt(C0589R.styleable.ViewPager2_android_orientation, 0));
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    /* renamed from: l */
    private void m16413l(@Nullable RecyclerView.Adapter<?> adapter) {
        if (adapter != null) {
            adapter.unregisterAdapterDataObserver(this.f5636k);
        }
    }

    /* renamed from: c */
    public boolean m16422c() {
        return this.f5644s.m16444a();
    }

    @Override // android.view.View
    public boolean canScrollHorizontally(int i) {
        return this.f5640o.canScrollHorizontally(i);
    }

    @Override // android.view.View
    public boolean canScrollVertically(int i) {
        return this.f5640o.canScrollVertically(i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public boolean m16421d() {
        boolean z = true;
        if (this.f5637l.m17419a0() != 1) {
            z = false;
        }
        return z;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchRestoreInstanceState(SparseArray<Parcelable> sparseArray) {
        Parcelable parcelable = sparseArray.get(getId());
        if (parcelable instanceof SavedState) {
            int i = ((SavedState) parcelable).f5665f;
            sparseArray.put(this.f5640o.getId(), sparseArray.get(i));
            sparseArray.remove(i);
        }
        super.dispatchRestoreInstanceState(sparseArray);
        m16416i();
    }

    /* renamed from: e */
    public boolean m16420e() {
        return this.f5648w;
    }

    /* renamed from: g */
    public void m16418g(@NonNull OnPageChangeCallback onPageChangeCallback) {
        this.f5633h.m16447d(onPageChangeCallback);
    }

    @Override // android.view.ViewGroup, android.view.View
    @RequiresApi
    public CharSequence getAccessibilityClassName() {
        return this.f5650y.mo16400a() ? this.f5650y.mo16396g() : super.getAccessibilityClassName();
    }

    @Nullable
    public RecyclerView.Adapter getAdapter() {
        return this.f5640o.getAdapter();
    }

    public int getCurrentItem() {
        return this.f5634i;
    }

    public int getItemDecorationCount() {
        return this.f5640o.getItemDecorationCount();
    }

    public int getOffscreenPageLimit() {
        return this.f5649x;
    }

    public int getOrientation() {
        return this.f5637l.m17608r2();
    }

    int getPageSize() {
        int i;
        int i2;
        RecyclerView recyclerView = this.f5640o;
        if (getOrientation() == 0) {
            i2 = recyclerView.getWidth() - recyclerView.getPaddingLeft();
            i = recyclerView.getPaddingRight();
        } else {
            i2 = recyclerView.getHeight() - recyclerView.getPaddingTop();
            i = recyclerView.getPaddingBottom();
        }
        return i2 - i;
    }

    public int getScrollState() {
        return this.f5642q.m16435h();
    }

    /* renamed from: h */
    public void m16417h() {
        if (this.f5645t.m16442d() != null) {
            double g = this.f5642q.m16436g();
            int i = (int) g;
            float f = (float) (g - i);
            this.f5645t.mo8894b(i, f, Math.round(getPageSize() * f));
        }
    }

    /* renamed from: j */
    void m16415j(int i, boolean z) {
        RecyclerView.Adapter adapter = getAdapter();
        if (adapter == null) {
            if (this.f5638m != -1) {
                this.f5638m = Math.max(i, 0);
            }
        } else if (adapter.getItemCount() > 0) {
            int min = Math.min(Math.max(i, 0), adapter.getItemCount() - 1);
            if (min == this.f5634i && this.f5642q.m16433j()) {
                return;
            }
            if (min != this.f5634i || !z) {
                double d = this.f5634i;
                this.f5634i = min;
                this.f5650y.mo16389q();
                if (!this.f5642q.m16433j()) {
                    d = this.f5642q.m16436g();
                }
                this.f5642q.m16430m(min, z);
                if (!z) {
                    this.f5640o.scrollToPosition(min);
                    return;
                }
                double d2 = min;
                if (Math.abs(d2 - d) > 3.0d) {
                    this.f5640o.scrollToPosition(d2 > d ? min - 3 : min + 3);
                    RecyclerView recyclerView = this.f5640o;
                    recyclerView.post(new SmoothScrollToPosition(min, recyclerView));
                    return;
                }
                this.f5640o.smoothScrollToPosition(min);
            }
        }
    }

    /* renamed from: m */
    public void m16412m(@NonNull OnPageChangeCallback onPageChangeCallback) {
        this.f5633h.m16446e(onPageChangeCallback);
    }

    /* renamed from: n */
    void m16411n() {
        PagerSnapHelper pagerSnapHelper = this.f5641p;
        if (pagerSnapHelper != null) {
            View h = pagerSnapHelper.mo16381h(this.f5637l);
            if (h != null) {
                int i0 = this.f5637l.m17400i0(h);
                if (i0 != this.f5634i && getScrollState() == 0) {
                    this.f5643r.mo8893c(i0);
                }
                this.f5635j = false;
                return;
            }
            return;
        }
        throw new IllegalStateException("Design assumption violated.");
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        this.f5650y.mo16394i(accessibilityNodeInfo);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int measuredWidth = this.f5640o.getMeasuredWidth();
        int measuredHeight = this.f5640o.getMeasuredHeight();
        this.f5631f.left = getPaddingLeft();
        this.f5631f.right = (i3 - i) - getPaddingRight();
        this.f5631f.top = getPaddingTop();
        this.f5631f.bottom = (i4 - i2) - getPaddingBottom();
        Gravity.apply(8388659, measuredWidth, measuredHeight, this.f5631f, this.f5632g);
        RecyclerView recyclerView = this.f5640o;
        Rect rect = this.f5632g;
        recyclerView.layout(rect.left, rect.top, rect.right, rect.bottom);
        if (this.f5635j) {
            m16411n();
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        measureChild(this.f5640o, i, i2);
        int measuredWidth = this.f5640o.getMeasuredWidth();
        int measuredHeight = this.f5640o.getMeasuredHeight();
        int measuredState = this.f5640o.getMeasuredState();
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        setMeasuredDimension(ViewGroup.resolveSizeAndState(Math.max(measuredWidth + paddingLeft + paddingRight, getSuggestedMinimumWidth()), i, measuredState), ViewGroup.resolveSizeAndState(Math.max(measuredHeight + paddingTop + paddingBottom, getSuggestedMinimumHeight()), i2, measuredState << 16));
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.f5638m = savedState.f5666g;
        this.f5639n = savedState.f5667h;
    }

    @Override // android.view.View
    @Nullable
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f5665f = this.f5640o.getId();
        int i = this.f5638m;
        int i2 = i;
        if (i == -1) {
            i2 = this.f5634i;
        }
        savedState.f5666g = i2;
        Parcelable parcelable = this.f5639n;
        if (parcelable != null) {
            savedState.f5667h = parcelable;
        } else {
            RecyclerView.Adapter adapter = this.f5640o.getAdapter();
            if (adapter instanceof StatefulAdapter) {
                savedState.f5667h = ((StatefulAdapter) adapter).mo16454a();
            }
        }
        return savedState;
    }

    @Override // android.view.ViewGroup
    public void onViewAdded(View view) {
        throw new IllegalStateException(ViewPager2.class.getSimpleName() + " does not support direct child views");
    }

    @Override // android.view.View
    @RequiresApi
    public boolean performAccessibilityAction(int i, Bundle bundle) {
        return this.f5650y.mo16399c(i, bundle) ? this.f5650y.mo16393l(i, bundle) : super.performAccessibilityAction(i, bundle);
    }

    public void setAdapter(@Nullable RecyclerView.Adapter adapter) {
        RecyclerView.Adapter adapter2 = this.f5640o.getAdapter();
        this.f5650y.mo16397f(adapter2);
        m16413l(adapter2);
        this.f5640o.setAdapter(adapter);
        this.f5634i = 0;
        m16416i();
        this.f5650y.mo16398e(adapter);
        m16419f(adapter);
    }

    public void setCurrentItem(int i) {
        setCurrentItem(i, true);
    }

    public void setCurrentItem(int i, boolean z) {
        if (!m16422c()) {
            m16415j(i, z);
            return;
        }
        throw new IllegalStateException("Cannot change current item when ViewPager2 is fake dragging");
    }

    @Override // android.view.View
    @RequiresApi
    public void setLayoutDirection(int i) {
        super.setLayoutDirection(i);
        this.f5650y.mo16390p();
    }

    public void setOffscreenPageLimit(int i) {
        if (i >= 1 || i == -1) {
            this.f5649x = i;
            this.f5640o.requestLayout();
            return;
        }
        throw new IllegalArgumentException("Offscreen page limit must be OFFSCREEN_PAGE_LIMIT_DEFAULT or a number > 0");
    }

    public void setOrientation(int i) {
        this.f5637l.m17649F2(i);
        this.f5650y.mo16388r();
    }

    public void setPageTransformer(@Nullable PageTransformer pageTransformer) {
        if (pageTransformer != null) {
            if (!this.f5647v) {
                this.f5646u = this.f5640o.getItemAnimator();
                this.f5647v = true;
            }
            this.f5640o.setItemAnimator(null);
        } else if (this.f5647v) {
            this.f5640o.setItemAnimator(this.f5646u);
            this.f5646u = null;
            this.f5647v = false;
        }
        if (pageTransformer != this.f5645t.m16442d()) {
            this.f5645t.m16441e(pageTransformer);
            m16417h();
        }
    }

    public void setUserInputEnabled(boolean z) {
        this.f5648w = z;
        this.f5650y.mo16387s();
    }
}
