package androidx.recyclerview.widget;

import android.animation.LayoutTransition;
import android.content.Context;
import android.content.res.TypedArray;
import android.database.Observable;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.Display;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.animation.Interpolator;
import android.widget.EdgeEffect;
import android.widget.OverScroller;
import androidx.core.view.a.c;
import androidx.customview.view.AbsSavedState;
import androidx.recyclerview.a;
import androidx.recyclerview.widget.b;
import androidx.recyclerview.widget.e;
import androidx.recyclerview.widget.l;
import androidx.recyclerview.widget.p;
import androidx.recyclerview.widget.q;
import com.callapp.contacts.activity.base.BaseViewTypeData;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import io.objectbox.model.PropertyFlags;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.apache.commons.lang3.StringUtils;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView.class */
public class RecyclerView extends ViewGroup implements androidx.core.view.k, androidx.core.view.l {
    static final Interpolator P;
    private static final int[] Q = {16843830};
    private static final boolean R;
    private static final boolean S;
    private static final Class<?>[] T;

    /* renamed from: a  reason: collision with root package name */
    static final boolean f5322a;

    /* renamed from: b  reason: collision with root package name */
    static final boolean f5323b;

    /* renamed from: c  reason: collision with root package name */
    static final boolean f5324c;

    /* renamed from: d  reason: collision with root package name */
    static final boolean f5325d;
    boolean A;
    List<j> B;
    boolean C;
    boolean D;
    f E;
    final u F;
    androidx.recyclerview.widget.e G;
    e.a H;
    final s I;
    boolean J;
    boolean K;
    boolean L;
    androidx.recyclerview.widget.l M;
    final int[] N;
    final List<v> O;
    private final q U;
    private final Rect V;
    private int W;
    private f.a aA;
    private d aB;
    private final int[] aC;
    private androidx.core.view.m aD;
    private final int[] aE;
    private final int[] aF;
    private Runnable aG;
    private boolean aH;
    private int aI;
    private int aJ;
    private final q.b aK;
    private boolean aa;
    private int ab;
    private final AccessibilityManager ac;
    private int ad;
    private int ae;
    private e af;
    private EdgeEffect ag;
    private EdgeEffect ah;
    private EdgeEffect ai;
    private EdgeEffect aj;
    private int ak;
    private int al;
    private VelocityTracker am;
    private int an;
    private int ao;
    private int ap;
    private int aq;
    private int ar;
    private k as;
    private final int at;
    private final int au;
    private float av;
    private float aw;
    private boolean ax;
    private m ay;
    private List<m> az;
    final o e;
    SavedState f;
    androidx.recyclerview.widget.a g;
    androidx.recyclerview.widget.b h;
    final androidx.recyclerview.widget.q i;
    boolean j;
    final Runnable k;
    final Rect l;
    final RectF m;
    a n;
    i o;
    p p;
    final List<p> q;
    final ArrayList<h> r;
    final ArrayList<l> s;
    l t;
    boolean u;
    boolean v;
    boolean w;
    boolean x;
    boolean y;
    boolean z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.recyclerview.widget.RecyclerView$7  reason: invalid class name */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$7.class */
    public static final /* synthetic */ class AnonymousClass7 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f5331a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[a.EnumC0109a.values().length];
            f5331a = iArr;
            try {
                iArr[a.EnumC0109a.PREVENT.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f5331a[a.EnumC0109a.PREVENT_WHEN_EMPTY.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$LayoutParams.class */
    public static class LayoutParams extends ViewGroup.MarginLayoutParams {

        /* renamed from: c  reason: collision with root package name */
        v f5332c;

        /* renamed from: d  reason: collision with root package name */
        final Rect f5333d = new Rect();
        boolean e = true;
        boolean f = false;

        public LayoutParams(int i, int i2) {
            super(i, i2);
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
        }

        public LayoutParams(LayoutParams layoutParams) {
            super((ViewGroup.LayoutParams) layoutParams);
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$SavedState.class */
    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.ClassLoaderCreator<SavedState>() { // from class: androidx.recyclerview.widget.RecyclerView.SavedState.1
            @Override // android.os.Parcelable.Creator
            public final /* synthetic */ Object createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            public final /* synthetic */ SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            public final /* bridge */ /* synthetic */ Object[] newArray(int i) {
                return new SavedState[i];
            }
        };
        Parcelable mLayoutState;

        SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.mLayoutState = parcel.readParcelable(classLoader == null ? i.class.getClassLoader() : classLoader);
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        void copyFrom(SavedState savedState) {
            this.mLayoutState = savedState.mLayoutState;
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeParcelable(this.mLayoutState, 0);
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$a.class */
    public static abstract class a<VH extends v> {

        /* renamed from: a  reason: collision with root package name */
        private final b f5334a = new b();

        /* renamed from: b  reason: collision with root package name */
        private boolean f5335b = false;

        /* renamed from: c  reason: collision with root package name */
        private EnumC0109a f5336c = EnumC0109a.ALLOW;

        /* renamed from: androidx.recyclerview.widget.RecyclerView$a$a  reason: collision with other inner class name */
        /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$a$a.class */
        public enum EnumC0109a {
            ALLOW,
            PREVENT_WHEN_EMPTY,
            PREVENT
        }

        final boolean a() {
            int i = AnonymousClass7.f5331a[this.f5336c.ordinal()];
            if (i != 1) {
                return i != 2 || getItemCount() > 0;
            }
            return false;
        }

        public final void bindViewHolder(VH vh, int i) {
            boolean z = vh.q == null;
            if (z) {
                vh.f5378b = i;
                if (hasStableIds()) {
                    vh.f5380d = getItemId(i);
                }
                vh.setFlags(1, 519);
                androidx.core.os.g.a("RV OnBindView");
            }
            vh.q = this;
            onBindViewHolder(vh, i, vh.getUnmodifiedPayloads());
            if (z) {
                vh.i();
                ViewGroup.LayoutParams layoutParams = vh.itemView.getLayoutParams();
                if (layoutParams instanceof LayoutParams) {
                    ((LayoutParams) layoutParams).e = true;
                }
                androidx.core.os.g.a();
            }
        }

        public final VH createViewHolder(ViewGroup viewGroup, int i) {
            try {
                androidx.core.os.g.a("RV CreateView");
                VH onCreateViewHolder = onCreateViewHolder(viewGroup, i);
                if (onCreateViewHolder.itemView.getParent() == null) {
                    onCreateViewHolder.e = i;
                    androidx.core.os.g.a();
                    return onCreateViewHolder;
                }
                throw new IllegalStateException("ViewHolder views must not be attached when created. Ensure that you are not passing 'true' to the attachToRoot parameter of LayoutInflater.inflate(..., boolean attachToRoot)");
            } catch (Throwable th) {
                androidx.core.os.g.a();
                throw th;
            }
        }

        public int findRelativeAdapterPositionIn(a<? extends v> aVar, v vVar, int i) {
            if (aVar == this) {
                return i;
            }
            return -1;
        }

        public abstract int getItemCount();

        public long getItemId(int i) {
            return -1L;
        }

        public int getItemViewType(int i) {
            return 0;
        }

        public final EnumC0109a getStateRestorationPolicy() {
            return this.f5336c;
        }

        public final boolean hasObservers() {
            return this.f5334a.a();
        }

        public final boolean hasStableIds() {
            return this.f5335b;
        }

        public final void notifyDataSetChanged() {
            this.f5334a.b();
        }

        public final void notifyItemChanged(int i) {
            this.f5334a.a(i, 1);
        }

        public final void notifyItemChanged(int i, Object obj) {
            this.f5334a.a(i, 1, obj);
        }

        public final void notifyItemInserted(int i) {
            this.f5334a.b(i, 1);
        }

        public final void notifyItemMoved(int i, int i2) {
            this.f5334a.d(i, i2);
        }

        public final void notifyItemRangeChanged(int i, int i2) {
            this.f5334a.a(i, i2);
        }

        public final void notifyItemRangeChanged(int i, int i2, Object obj) {
            this.f5334a.a(i, i2, obj);
        }

        public final void notifyItemRangeInserted(int i, int i2) {
            this.f5334a.b(i, i2);
        }

        public final void notifyItemRangeRemoved(int i, int i2) {
            this.f5334a.c(i, i2);
        }

        public final void notifyItemRemoved(int i) {
            this.f5334a.c(i, 1);
        }

        public void onAttachedToRecyclerView(RecyclerView recyclerView) {
        }

        public abstract void onBindViewHolder(VH vh, int i);

        public void onBindViewHolder(VH vh, int i, List<Object> list) {
            onBindViewHolder(vh, i);
        }

        public abstract VH onCreateViewHolder(ViewGroup viewGroup, int i);

        public void onDetachedFromRecyclerView(RecyclerView recyclerView) {
        }

        public boolean onFailedToRecycleView(VH vh) {
            return false;
        }

        public void onViewAttachedToWindow(VH vh) {
        }

        public void onViewDetachedFromWindow(VH vh) {
        }

        public void onViewRecycled(VH vh) {
        }

        public void registerAdapterDataObserver(c cVar) {
            this.f5334a.registerObserver(cVar);
        }

        public void setHasStableIds(boolean z) {
            if (!hasObservers()) {
                this.f5335b = z;
                return;
            }
            throw new IllegalStateException("Cannot change whether this adapter has stable IDs while the adapter has registered observers.");
        }

        public void setStateRestorationPolicy(EnumC0109a aVar) {
            this.f5336c = aVar;
            this.f5334a.c();
        }

        public void unregisterAdapterDataObserver(c cVar) {
            this.f5334a.unregisterObserver(cVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$b.class */
    public static final class b extends Observable<c> {
        b() {
        }

        public final void a(int i, int i2) {
            a(i, i2, null);
        }

        public final void a(int i, int i2, Object obj) {
            for (int size = this.mObservers.size() - 1; size >= 0; size--) {
                ((c) this.mObservers.get(size)).onItemRangeChanged(i, i2, obj);
            }
        }

        public final boolean a() {
            return !this.mObservers.isEmpty();
        }

        public final void b() {
            for (int size = this.mObservers.size() - 1; size >= 0; size--) {
                ((c) this.mObservers.get(size)).onChanged();
            }
        }

        public final void b(int i, int i2) {
            for (int size = this.mObservers.size() - 1; size >= 0; size--) {
                ((c) this.mObservers.get(size)).onItemRangeInserted(i, i2);
            }
        }

        public final void c() {
            for (int size = this.mObservers.size() - 1; size >= 0; size--) {
                ((c) this.mObservers.get(size)).onStateRestorationPolicyChanged();
            }
        }

        public final void c(int i, int i2) {
            for (int size = this.mObservers.size() - 1; size >= 0; size--) {
                ((c) this.mObservers.get(size)).onItemRangeRemoved(i, i2);
            }
        }

        public final void d(int i, int i2) {
            for (int size = this.mObservers.size() - 1; size >= 0; size--) {
                ((c) this.mObservers.get(size)).onItemRangeMoved(i, i2, 1);
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$c.class */
    public static abstract class c {
        public void onChanged() {
        }

        public void onItemRangeChanged(int i, int i2) {
        }

        public void onItemRangeChanged(int i, int i2, Object obj) {
            onItemRangeChanged(i, i2);
        }

        public void onItemRangeInserted(int i, int i2) {
        }

        public void onItemRangeMoved(int i, int i2, int i3) {
        }

        public void onItemRangeRemoved(int i, int i2) {
        }

        public void onStateRestorationPolicyChanged() {
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$d.class */
    public interface d {
        int a();
    }

    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$e.class */
    public static final class e {
        protected static EdgeEffect a(RecyclerView recyclerView) {
            return new EdgeEffect(recyclerView.getContext());
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$f.class */
    public static abstract class f {
        a h = null;

        /* renamed from: a  reason: collision with root package name */
        private ArrayList<Object> f5337a = new ArrayList<>();
        long i = 120;

        /* renamed from: b  reason: collision with root package name */
        private long f5338b = 120;
        long j = 250;
        long k = 250;

        /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$f$a.class */
        interface a {
            void a(v vVar);
        }

        /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$f$b.class */
        public static final class b {

            /* renamed from: a  reason: collision with root package name */
            public int f5339a;

            /* renamed from: b  reason: collision with root package name */
            public int f5340b;

            /* renamed from: c  reason: collision with root package name */
            public int f5341c;

            /* renamed from: d  reason: collision with root package name */
            public int f5342d;

            public final b a(v vVar) {
                View view = vVar.itemView;
                this.f5339a = view.getLeft();
                this.f5340b = view.getTop();
                this.f5341c = view.getRight();
                this.f5342d = view.getBottom();
                return this;
            }
        }

        public static b d(v vVar) {
            return new b().a(vVar);
        }

        static int e(v vVar) {
            int i = vVar.i & 14;
            if (vVar.isInvalid()) {
                return 4;
            }
            int i2 = i;
            if ((i & 4) == 0) {
                int oldPosition = vVar.getOldPosition();
                int absoluteAdapterPosition = vVar.getAbsoluteAdapterPosition();
                i2 = i;
                if (oldPosition != -1) {
                    i2 = i;
                    if (absoluteAdapterPosition != -1) {
                        i2 = i;
                        if (oldPosition != absoluteAdapterPosition) {
                            i2 = i | 2048;
                        }
                    }
                }
            }
            return i2;
        }

        public abstract void a();

        public abstract boolean a(v vVar, b bVar, b bVar2);

        public abstract boolean a(v vVar, v vVar2, b bVar, b bVar2);

        public boolean a(v vVar, List<Object> list) {
            return g(vVar);
        }

        public abstract boolean b();

        public abstract boolean b(v vVar, b bVar, b bVar2);

        public abstract void c(v vVar);

        public abstract boolean c(v vVar, b bVar, b bVar2);

        public abstract void d();

        public final long e() {
            return this.f5338b;
        }

        public final void f() {
            int size = this.f5337a.size();
            for (int i = 0; i < size; i++) {
                this.f5337a.get(i);
            }
            this.f5337a.clear();
        }

        public final void f(v vVar) {
            a aVar = this.h;
            if (aVar != null) {
                aVar.a(vVar);
            }
        }

        public boolean g(v vVar) {
            return true;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$g.class */
    final class g implements f.a {
        g() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.f.a
        public final void a(v vVar) {
            boolean z;
            vVar.setIsRecyclable(true);
            if (vVar.g != null && vVar.h == null) {
                vVar.g = null;
            }
            vVar.h = null;
            if (!((vVar.i & 16) != 0)) {
                RecyclerView recyclerView = RecyclerView.this;
                View view = vVar.itemView;
                recyclerView.d();
                androidx.recyclerview.widget.b bVar = recyclerView.h;
                int a2 = bVar.f5406a.a(view);
                if (a2 == -1) {
                    bVar.b(view);
                    z = true;
                } else if (bVar.f5407b.c(a2)) {
                    bVar.f5407b.d(a2);
                    bVar.b(view);
                    bVar.f5406a.a(a2);
                    z = true;
                } else {
                    z = false;
                }
                if (z) {
                    v c2 = RecyclerView.c(view);
                    recyclerView.e.b(c2);
                    recyclerView.e.a(c2);
                }
                recyclerView.a(!z);
                if (!z && vVar.isTmpDetached()) {
                    RecyclerView.this.removeDetachedView(vVar.itemView, false);
                }
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$h.class */
    public static abstract class h {
        public void a(Canvas canvas, RecyclerView recyclerView, s sVar) {
        }

        public void a(Rect rect, View view, RecyclerView recyclerView, s sVar) {
            ((LayoutParams) view.getLayoutParams()).f5332c.getLayoutPosition();
            rect.set(0, 0, 0, 0);
        }

        public void b(Canvas canvas, RecyclerView recyclerView, s sVar) {
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$i.class */
    public static abstract class i {

        /* renamed from: a  reason: collision with root package name */
        private final p.b f5344a;

        /* renamed from: b  reason: collision with root package name */
        private final p.b f5345b;
        private int e;
        private int f;
        private int g;
        private int h;
        androidx.recyclerview.widget.b p;
        RecyclerView q;
        androidx.recyclerview.widget.p r;
        androidx.recyclerview.widget.p s;
        r t;
        int x;
        boolean y;
        boolean u = false;
        boolean v = false;
        boolean w = false;

        /* renamed from: c  reason: collision with root package name */
        private boolean f5346c = true;

        /* renamed from: d  reason: collision with root package name */
        private boolean f5347d = true;

        /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$i$a.class */
        public interface a {
            void a(int i, int i2);
        }

        /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$i$b.class */
        public static final class b {

            /* renamed from: a  reason: collision with root package name */
            public int f5350a;

            /* renamed from: b  reason: collision with root package name */
            public int f5351b;

            /* renamed from: c  reason: collision with root package name */
            public boolean f5352c;

            /* renamed from: d  reason: collision with root package name */
            public boolean f5353d;
        }

        public i() {
            p.b bVar = new p.b() { // from class: androidx.recyclerview.widget.RecyclerView.i.1
                @Override // androidx.recyclerview.widget.p.b
                public final int a() {
                    return i.this.getPaddingLeft();
                }

                @Override // androidx.recyclerview.widget.p.b
                public final int a(View view) {
                    return i.g(view) - ((LayoutParams) view.getLayoutParams()).leftMargin;
                }

                @Override // androidx.recyclerview.widget.p.b
                public final View a(int i) {
                    return i.this.getChildAt(i);
                }

                @Override // androidx.recyclerview.widget.p.b
                public final int b() {
                    return i.this.getWidth() - i.this.getPaddingRight();
                }

                @Override // androidx.recyclerview.widget.p.b
                public final int b(View view) {
                    return i.i(view) + ((LayoutParams) view.getLayoutParams()).rightMargin;
                }
            };
            this.f5344a = bVar;
            p.b bVar2 = new p.b() { // from class: androidx.recyclerview.widget.RecyclerView.i.2
                @Override // androidx.recyclerview.widget.p.b
                public final int a() {
                    return i.this.getPaddingTop();
                }

                @Override // androidx.recyclerview.widget.p.b
                public final int a(View view) {
                    return i.h(view) - ((LayoutParams) view.getLayoutParams()).topMargin;
                }

                @Override // androidx.recyclerview.widget.p.b
                public final View a(int i) {
                    return i.this.getChildAt(i);
                }

                @Override // androidx.recyclerview.widget.p.b
                public final int b() {
                    return i.this.getHeight() - i.this.getPaddingBottom();
                }

                @Override // androidx.recyclerview.widget.p.b
                public final int b(View view) {
                    return i.j(view) + ((LayoutParams) view.getLayoutParams()).bottomMargin;
                }
            };
            this.f5345b = bVar2;
            this.r = new androidx.recyclerview.widget.p(bVar);
            this.s = new androidx.recyclerview.widget.p(bVar2);
        }

        public static int a(int i, int i2, int i3) {
            int mode = View.MeasureSpec.getMode(i);
            int size = View.MeasureSpec.getSize(i);
            if (mode == Integer.MIN_VALUE) {
                return Math.min(size, Math.max(i2, i3));
            }
            if (mode != 1073741824) {
                size = Math.max(i2, i3);
            }
            return size;
        }

        /* JADX WARN: Code restructure failed: missing block: B:11:0x0026, code lost:
            if (r5 != 1073741824) goto L_0x006f;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static int a(int r4, int r5, int r6, int r7, boolean r8) {
            /*
                r0 = 0
                r1 = r4
                r2 = r6
                int r1 = r1 - r2
                int r0 = java.lang.Math.max(r0, r1)
                r6 = r0
                r0 = r8
                if (r0 == 0) goto L_0x0037
                r0 = r7
                if (r0 < 0) goto L_0x0014
                goto L_0x003b
            L_0x0014:
                r0 = r7
                r1 = -1
                if (r0 != r1) goto L_0x002c
                r0 = r5
                r4 = r0
                r0 = r5
                r1 = -2147483648(0xffffffff80000000, float:-0.0)
                if (r0 == r1) goto L_0x0048
                r0 = r5
                r4 = r0
                r0 = r5
                r1 = 1073741824(0x40000000, float:2.0)
                if (r0 == r1) goto L_0x0048
                goto L_0x006f
            L_0x002c:
                r0 = r7
                r1 = -2
                if (r0 != r1) goto L_0x006f
                r0 = 0
                r7 = r0
                goto L_0x0064
            L_0x0037:
                r0 = r7
                if (r0 < 0) goto L_0x0041
            L_0x003b:
                r0 = 1073741824(0x40000000, float:2.0)
                r4 = r0
                goto L_0x0073
            L_0x0041:
                r0 = r7
                r1 = -1
                if (r0 != r1) goto L_0x004d
                r0 = r5
                r4 = r0
            L_0x0048:
                r0 = r6
                r7 = r0
                goto L_0x0073
            L_0x004d:
                r0 = r7
                r1 = -2
                if (r0 != r1) goto L_0x006f
                r0 = r5
                r1 = -2147483648(0xffffffff80000000, float:-0.0)
                if (r0 == r1) goto L_0x0069
                r0 = r5
                r1 = 1073741824(0x40000000, float:2.0)
                if (r0 != r1) goto L_0x0062
                goto L_0x0069
            L_0x0062:
                r0 = r6
                r7 = r0
            L_0x0064:
                r0 = 0
                r4 = r0
                goto L_0x0073
            L_0x0069:
                r0 = -2147483648(0xffffffff80000000, float:-0.0)
                r4 = r0
                goto L_0x0048
            L_0x006f:
                r0 = 0
                r4 = r0
                r0 = 0
                r7 = r0
            L_0x0073:
                r0 = r7
                r1 = r4
                int r0 = android.view.View.MeasureSpec.makeMeasureSpec(r0, r1)
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.i.a(int, int, int, int, boolean):int");
        }

        public static b a(Context context, AttributeSet attributeSet, int i, int i2) {
            b bVar = new b();
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.c.RecyclerView, i, i2);
            bVar.f5350a = obtainStyledAttributes.getInt(a.c.RecyclerView_android_orientation, 1);
            bVar.f5351b = obtainStyledAttributes.getInt(a.c.RecyclerView_spanCount, 1);
            bVar.f5352c = obtainStyledAttributes.getBoolean(a.c.RecyclerView_reverseLayout, false);
            bVar.f5353d = obtainStyledAttributes.getBoolean(a.c.RecyclerView_stackFromEnd, false);
            obtainStyledAttributes.recycle();
            return bVar;
        }

        private void a(int i) {
            androidx.recyclerview.widget.b bVar;
            int a2;
            View b2;
            if (getChildAt(i) != null && (b2 = bVar.f5406a.b((a2 = (bVar = this.p).a(i)))) != null) {
                if (bVar.f5407b.d(a2)) {
                    bVar.b(b2);
                }
                bVar.f5406a.a(a2);
            }
        }

        public static void a(View view, int i, int i2, int i3, int i4) {
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            Rect rect = layoutParams.f5333d;
            view.layout(i + rect.left + layoutParams.leftMargin, i2 + rect.top + layoutParams.topMargin, (i3 - rect.right) - layoutParams.rightMargin, (i4 - rect.bottom) - layoutParams.bottomMargin);
        }

        private void a(View view, int i, boolean z) {
            v c2 = RecyclerView.c(view);
            if (z || c2.isRemoved()) {
                this.q.i.c(c2);
            } else {
                this.q.i.d(c2);
            }
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            if (c2.e() || c2.isScrap()) {
                if (c2.isScrap()) {
                    c2.d();
                } else {
                    c2.f();
                }
                this.p.a(view, i, view.getLayoutParams(), false);
            } else if (view.getParent() == this.q) {
                int c3 = this.p.c(view);
                int i2 = i;
                if (i == -1) {
                    i2 = this.p.a();
                }
                if (c3 == -1) {
                    throw new IllegalStateException("Added View has RecyclerView as parent but view is not a real child. Unfiltered index:" + this.q.indexOfChild(view) + this.q.a());
                } else if (c3 != i2) {
                    this.q.o.e(c3, i2);
                }
            } else {
                this.p.a(view, i, false);
                layoutParams.e = true;
                r rVar = this.t;
                if (rVar != null && rVar.isRunning()) {
                    this.t.a(view);
                }
            }
            if (layoutParams.f) {
                c2.itemView.invalidate();
                layoutParams.f = false;
            }
        }

        private static boolean b(int i, int i2, int i3) {
            int mode = View.MeasureSpec.getMode(i2);
            int size = View.MeasureSpec.getSize(i2);
            if (i3 > 0 && i != i3) {
                return false;
            }
            if (mode == Integer.MIN_VALUE) {
                return size >= i;
            }
            if (mode != 0) {
                return mode == 1073741824 && size == i;
            }
            return true;
        }

        public static int c(View view) {
            return ((LayoutParams) view.getLayoutParams()).f5332c.getLayoutPosition();
        }

        private void c(int i) {
            getChildAt(i);
            this.p.d(i);
        }

        private void c(View view, int i) {
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            v c2 = RecyclerView.c(view);
            if (c2.isRemoved()) {
                this.q.i.c(c2);
            } else {
                this.q.i.d(c2);
            }
            this.p.a(view, i, layoutParams, c2.isRemoved());
        }

        public static int e(View view) {
            Rect rect = ((LayoutParams) view.getLayoutParams()).f5333d;
            return view.getMeasuredWidth() + rect.left + rect.right;
        }

        private void e(int i, int i2) {
            View childAt = getChildAt(i);
            if (childAt != null) {
                c(i);
                c(childAt, i2);
                return;
            }
            throw new IllegalArgumentException("Cannot move a child from non-existing index:" + i + this.q.toString());
        }

        public static int f(View view) {
            Rect rect = ((LayoutParams) view.getLayoutParams()).f5333d;
            return view.getMeasuredHeight() + rect.top + rect.bottom;
        }

        public static int g(View view) {
            return view.getLeft() - m(view);
        }

        public static int h(View view) {
            return view.getTop() - k(view);
        }

        public static int i(View view) {
            return view.getRight() + n(view);
        }

        public static int j(View view) {
            return view.getBottom() + l(view);
        }

        public static int k(View view) {
            return ((LayoutParams) view.getLayoutParams()).f5333d.top;
        }

        public static int l(View view) {
            return ((LayoutParams) view.getLayoutParams()).f5333d.bottom;
        }

        public static int m(View view) {
            return ((LayoutParams) view.getLayoutParams()).f5333d.left;
        }

        public static int n(View view) {
            return ((LayoutParams) view.getLayoutParams()).f5333d.right;
        }

        private void o(View view) {
            androidx.recyclerview.widget.b bVar = this.p;
            int a2 = bVar.f5406a.a(view);
            if (a2 >= 0) {
                if (bVar.f5407b.d(a2)) {
                    bVar.b(view);
                }
                bVar.f5406a.a(a2);
            }
        }

        public int a(int i, o oVar, s sVar) {
            return 0;
        }

        public int a(o oVar, s sVar) {
            return -1;
        }

        public View a(View view, int i, o oVar, s sVar) {
            return null;
        }

        public LayoutParams a(Context context, AttributeSet attributeSet) {
            return new LayoutParams(context, attributeSet);
        }

        public LayoutParams a(ViewGroup.LayoutParams layoutParams) {
            return layoutParams instanceof LayoutParams ? new LayoutParams((LayoutParams) layoutParams) : layoutParams instanceof ViewGroup.MarginLayoutParams ? new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams) : new LayoutParams(layoutParams);
        }

        public void a() {
        }

        public void a(int i, int i2) {
        }

        public void a(int i, int i2, s sVar, a aVar) {
        }

        public void a(int i, a aVar) {
        }

        public final void a(int i, o oVar) {
            View childAt = getChildAt(i);
            a(i);
            oVar.a(childAt);
        }

        public void a(Rect rect, int i, int i2) {
            int width = rect.width();
            int paddingLeft = getPaddingLeft();
            int paddingRight = getPaddingRight();
            int height = rect.height();
            int paddingTop = getPaddingTop();
            setMeasuredDimension(a(i, width + paddingLeft + paddingRight, getMinimumWidth()), a(i2, height + paddingTop + getPaddingBottom(), getMinimumHeight()));
        }

        public void a(Parcelable parcelable) {
        }

        public final void a(View view) {
            a(view, -1, true);
        }

        public final void a(View view, int i) {
            a(view, 0, true);
        }

        public final void a(View view, Rect rect) {
            Matrix matrix;
            Rect rect2 = ((LayoutParams) view.getLayoutParams()).f5333d;
            rect.set(-rect2.left, -rect2.top, view.getWidth() + rect2.right, view.getHeight() + rect2.bottom);
            if (!(this.q == null || (matrix = view.getMatrix()) == null || matrix.isIdentity())) {
                RectF rectF = this.q.m;
                rectF.set(rect);
                matrix.mapRect(rectF);
                rect.set((int) Math.floor(rectF.left), (int) Math.floor(rectF.top), (int) Math.ceil(rectF.right), (int) Math.ceil(rectF.bottom));
            }
            rect.offset(view.getLeft(), view.getTop());
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final void a(View view, androidx.core.view.a.c cVar) {
            v c2 = RecyclerView.c(view);
            if (c2 != null && !c2.isRemoved() && !this.p.d(c2.itemView)) {
                a(this.q.e, this.q.I, view, cVar);
            }
        }

        public final void a(View view, o oVar) {
            o(view);
            oVar.a(view);
        }

        public void a(AccessibilityEvent accessibilityEvent) {
            RecyclerView recyclerView = this.q;
            if (recyclerView != null && accessibilityEvent != null) {
                boolean z = true;
                if (!recyclerView.canScrollVertically(1)) {
                    z = true;
                    if (!this.q.canScrollVertically(-1)) {
                        z = true;
                        if (!this.q.canScrollHorizontally(-1)) {
                            z = this.q.canScrollHorizontally(1);
                        }
                    }
                }
                accessibilityEvent.setScrollable(z);
                if (this.q.n != null) {
                    accessibilityEvent.setItemCount(this.q.n.getItemCount());
                }
            }
        }

        public final void a(o oVar) {
            for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
                View childAt = getChildAt(childCount);
                v c2 = RecyclerView.c(childAt);
                if (!c2.c()) {
                    if (!c2.isInvalid() || c2.isRemoved() || this.q.n.hasStableIds()) {
                        c(childCount);
                        oVar.c(childAt);
                        this.q.i.d(c2);
                    } else {
                        a(childCount);
                        oVar.a(c2);
                    }
                }
            }
        }

        public void a(o oVar, s sVar, View view, androidx.core.view.a.c cVar) {
        }

        public void a(o oVar, s sVar, androidx.core.view.a.c cVar) {
            if (this.q.canScrollVertically(-1) || this.q.canScrollHorizontally(-1)) {
                cVar.a(PropertyFlags.UNSIGNED);
                cVar.j(true);
            }
            if (this.q.canScrollVertically(1) || this.q.canScrollHorizontally(1)) {
                cVar.a(4096);
                cVar.j(true);
            }
            cVar.a(c.b.a(a(oVar, sVar), b(oVar, sVar), false, 0));
        }

        public final void a(r rVar) {
            r rVar2 = this.t;
            if (!(rVar2 == null || rVar == rVar2 || !rVar2.isRunning())) {
                this.t.b();
            }
            this.t = rVar;
            RecyclerView recyclerView = this.q;
            recyclerView.F.b();
            if (rVar.m) {
                Log.w("RecyclerView", "An instance of " + rVar.getClass().getSimpleName() + " was started more than once. Each instance of" + rVar.getClass().getSimpleName() + " is intended to only be used once. You should create a new instance for each use.");
            }
            rVar.h = recyclerView;
            rVar.i = this;
            if (rVar.g != -1) {
                rVar.h.I.f5370a = rVar.g;
                rVar.k = true;
                rVar.j = true;
                rVar.l = rVar.h.o.b(rVar.getTargetPosition());
                rVar.h.F.a();
                rVar.m = true;
                return;
            }
            throw new IllegalArgumentException("Invalid target position");
        }

        public void a(s sVar) {
        }

        public void a(RecyclerView recyclerView, o oVar) {
        }

        public void a(RecyclerView recyclerView, s sVar, int i) {
            Log.e("RecyclerView", "You must override smoothScrollToPosition to support smooth scrolling");
        }

        public void a(String str) {
            RecyclerView recyclerView = this.q;
            if (recyclerView != null) {
                recyclerView.a(str);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final boolean a(View view, int i, int i2, LayoutParams layoutParams) {
            return !this.f5346c || !b(view.getMeasuredWidth(), i, layoutParams.width) || !b(view.getMeasuredHeight(), i2, layoutParams.height);
        }

        public boolean a(LayoutParams layoutParams) {
            return layoutParams != null;
        }

        public boolean a(o oVar, s sVar, int i, Bundle bundle) {
            int i2;
            int i3;
            RecyclerView recyclerView = this.q;
            if (recyclerView == null) {
                return false;
            }
            if (i == 4096) {
                i2 = recyclerView.canScrollVertically(1) ? (getHeight() - getPaddingTop()) - getPaddingBottom() : 0;
                i2 = i2;
                if (this.q.canScrollHorizontally(1)) {
                    i3 = (getWidth() - getPaddingLeft()) - getPaddingRight();
                }
                i3 = 0;
            } else if (i != 8192) {
                i3 = 0;
                i2 = 0;
            } else {
                i2 = recyclerView.canScrollVertically(-1) ? -((getHeight() - getPaddingTop()) - getPaddingBottom()) : 0;
                i2 = i2;
                if (this.q.canScrollHorizontally(-1)) {
                    i3 = -((getWidth() - getPaddingLeft()) - getPaddingRight());
                }
                i3 = 0;
            }
            if (i2 == 0 && i3 == 0) {
                return false;
            }
            this.q.a(i3, i2, (Interpolator) null, BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW, true);
            return true;
        }

        /* JADX WARN: Removed duplicated region for block: B:34:0x0186 A[ORIG_RETURN, RETURN] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean a(androidx.recyclerview.widget.RecyclerView r6, android.view.View r7, android.graphics.Rect r8, boolean r9, boolean r10) {
            /*
                Method dump skipped, instructions count: 418
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.i.a(androidx.recyclerview.widget.RecyclerView, android.view.View, android.graphics.Rect, boolean, boolean):boolean");
        }

        public final boolean a(Runnable runnable) {
            RecyclerView recyclerView = this.q;
            if (recyclerView != null) {
                return recyclerView.removeCallbacks(runnable);
            }
            return false;
        }

        public int b(int i, o oVar, s sVar) {
            return 0;
        }

        public int b(o oVar, s sVar) {
            return -1;
        }

        public int b(s sVar) {
            return 0;
        }

        public View b(int i) {
            int childCount = getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = getChildAt(i2);
                v c2 = RecyclerView.c(childAt);
                if (c2 != null && c2.getLayoutPosition() == i && !c2.c() && (this.q.I.g || !c2.isRemoved())) {
                    return childAt;
                }
            }
            return null;
        }

        public abstract LayoutParams b();

        public void b(int i, int i2) {
        }

        public final void b(View view) {
            a(view, -1, false);
        }

        public final void b(View view, int i) {
            a(view, 0, false);
        }

        public final void b(View view, Rect rect) {
            RecyclerView recyclerView = this.q;
            if (recyclerView == null) {
                rect.set(0, 0, 0, 0);
            } else {
                rect.set(recyclerView.f(view));
            }
        }

        final void b(o oVar) {
            int size = oVar.f5360a.size();
            for (int i = size - 1; i >= 0; i--) {
                View view = oVar.f5360a.get(i).itemView;
                v c2 = RecyclerView.c(view);
                if (!c2.c()) {
                    c2.setIsRecyclable(false);
                    if (c2.isTmpDetached()) {
                        this.q.removeDetachedView(view, false);
                    }
                    if (this.q.E != null) {
                        this.q.E.c(c2);
                    }
                    c2.setIsRecyclable(true);
                    oVar.b(view);
                }
            }
            oVar.f5360a.clear();
            if (oVar.f5361b != null) {
                oVar.f5361b.clear();
            }
            if (size > 0) {
                this.q.invalidate();
            }
        }

        final void b(RecyclerView recyclerView, o oVar) {
            this.v = false;
            a(recyclerView, oVar);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final boolean b(View view, int i, int i2, LayoutParams layoutParams) {
            return view.isLayoutRequested() || !this.f5346c || !b(view.getWidth(), i, layoutParams.width) || !b(view.getHeight(), i2, layoutParams.height);
        }

        public int c(s sVar) {
            return 0;
        }

        public void c(int i, int i2) {
        }

        public final void c(o oVar) {
            for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
                if (!RecyclerView.c(getChildAt(childCount)).c()) {
                    a(childCount, oVar);
                }
            }
        }

        public void c(o oVar, s sVar) {
            Log.e("RecyclerView", "You must override onLayoutChildren(Recycler recycler, State state) ");
        }

        public boolean c() {
            return false;
        }

        public int d(s sVar) {
            return 0;
        }

        public Parcelable d() {
            return null;
        }

        public final View d(View view) {
            View b2;
            RecyclerView recyclerView = this.q;
            if (recyclerView == null || (b2 = recyclerView.b(view)) == null || this.p.d(b2)) {
                return null;
            }
            return b2;
        }

        public void d(int i) {
        }

        public void d(int i, int i2) {
        }

        public int e(s sVar) {
            return 0;
        }

        public boolean e() {
            return false;
        }

        public int f(s sVar) {
            return 0;
        }

        public void f(int i) {
            RecyclerView recyclerView = this.q;
            if (recyclerView != null) {
                int a2 = recyclerView.h.a();
                for (int i2 = 0; i2 < a2; i2++) {
                    recyclerView.h.b(i2).offsetLeftAndRight(i);
                }
            }
        }

        public final void f(int i, int i2) {
            this.q.d(i, i2);
        }

        public boolean f() {
            return false;
        }

        public int g(s sVar) {
            return 0;
        }

        public void g(int i) {
            RecyclerView recyclerView = this.q;
            if (recyclerView != null) {
                int a2 = recyclerView.h.a();
                for (int i2 = 0; i2 < a2; i2++) {
                    recyclerView.h.b(i2).offsetTopAndBottom(i);
                }
            }
        }

        public int getBaseline() {
            return -1;
        }

        public View getChildAt(int i) {
            androidx.recyclerview.widget.b bVar = this.p;
            if (bVar != null) {
                return bVar.b(i);
            }
            return null;
        }

        public int getChildCount() {
            androidx.recyclerview.widget.b bVar = this.p;
            if (bVar != null) {
                return bVar.a();
            }
            return 0;
        }

        public boolean getClipToPadding() {
            RecyclerView recyclerView = this.q;
            return recyclerView != null && recyclerView.j;
        }

        public View getFocusedChild() {
            View focusedChild;
            RecyclerView recyclerView = this.q;
            if (recyclerView == null || (focusedChild = recyclerView.getFocusedChild()) == null || this.p.d(focusedChild)) {
                return null;
            }
            return focusedChild;
        }

        public int getHeight() {
            return this.h;
        }

        public int getHeightMode() {
            return this.f;
        }

        public int getItemCount() {
            RecyclerView recyclerView = this.q;
            a adapter = recyclerView != null ? recyclerView.getAdapter() : null;
            if (adapter != null) {
                return adapter.getItemCount();
            }
            return 0;
        }

        public int getLayoutDirection() {
            return androidx.core.view.v.f(this.q);
        }

        public int getMinimumHeight() {
            return androidx.core.view.v.l(this.q);
        }

        public int getMinimumWidth() {
            return androidx.core.view.v.k(this.q);
        }

        public int getPaddingBottom() {
            RecyclerView recyclerView = this.q;
            if (recyclerView != null) {
                return recyclerView.getPaddingBottom();
            }
            return 0;
        }

        public int getPaddingLeft() {
            RecyclerView recyclerView = this.q;
            if (recyclerView != null) {
                return recyclerView.getPaddingLeft();
            }
            return 0;
        }

        public int getPaddingRight() {
            RecyclerView recyclerView = this.q;
            if (recyclerView != null) {
                return recyclerView.getPaddingRight();
            }
            return 0;
        }

        public int getPaddingTop() {
            RecyclerView recyclerView = this.q;
            if (recyclerView != null) {
                return recyclerView.getPaddingTop();
            }
            return 0;
        }

        public int getWidth() {
            return this.g;
        }

        public int getWidthMode() {
            return this.e;
        }

        public void h(int i) {
        }

        boolean h() {
            return false;
        }

        public boolean isAttachedToWindow() {
            return this.v;
        }

        public boolean isAutoMeasureEnabled() {
            return this.w;
        }

        public final boolean isItemPrefetchEnabled() {
            return this.f5347d;
        }

        public boolean isSmoothScrolling() {
            r rVar = this.t;
            return rVar != null && rVar.isRunning();
        }

        public final void k() {
            RecyclerView recyclerView = this.q;
            if (recyclerView != null) {
                recyclerView.requestLayout();
            }
        }

        public void l() {
        }

        final void m() {
            r rVar = this.t;
            if (rVar != null) {
                rVar.b();
            }
        }

        void setExactMeasureSpecsFrom(RecyclerView recyclerView) {
            setMeasureSpecs(View.MeasureSpec.makeMeasureSpec(recyclerView.getWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(recyclerView.getHeight(), 1073741824));
        }

        void setMeasureSpecs(int i, int i2) {
            this.g = View.MeasureSpec.getSize(i);
            int mode = View.MeasureSpec.getMode(i);
            this.e = mode;
            if (mode == 0 && !RecyclerView.f5323b) {
                this.g = 0;
            }
            this.h = View.MeasureSpec.getSize(i2);
            int mode2 = View.MeasureSpec.getMode(i2);
            this.f = mode2;
            if (mode2 == 0 && !RecyclerView.f5323b) {
                this.h = 0;
            }
        }

        public void setMeasuredDimension(int i, int i2) {
            this.q.setMeasuredDimension(i, i2);
        }

        void setMeasuredDimensionFromChildren(int i, int i2) {
            int childCount = getChildCount();
            if (childCount == 0) {
                this.q.d(i, i2);
                return;
            }
            int i3 = BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;
            int i4 = BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;
            int i5 = Integer.MAX_VALUE;
            int i6 = Integer.MAX_VALUE;
            for (int i7 = 0; i7 < childCount; i7++) {
                View childAt = getChildAt(i7);
                Rect rect = this.q.l;
                RecyclerView.a(childAt, rect);
                i5 = i5;
                if (rect.left < i5) {
                    i5 = rect.left;
                }
                i3 = i3;
                if (rect.right > i3) {
                    i3 = rect.right;
                }
                i6 = i6;
                if (rect.top < i6) {
                    i6 = rect.top;
                }
                i4 = i4;
                if (rect.bottom > i4) {
                    i4 = rect.bottom;
                }
            }
            this.q.l.set(i5, i6, i3, i4);
            a(this.q.l, i, i2);
        }

        void setRecyclerView(RecyclerView recyclerView) {
            if (recyclerView == null) {
                this.q = null;
                this.p = null;
                this.g = 0;
                this.h = 0;
            } else {
                this.q = recyclerView;
                this.p = recyclerView.h;
                this.g = recyclerView.getWidth();
                this.h = recyclerView.getHeight();
            }
            this.e = 1073741824;
            this.f = 1073741824;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$j.class */
    public interface j {
        void a(View view);

        void b(View view);
    }

    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$k.class */
    public static abstract class k {
        public abstract boolean a(int i, int i2);
    }

    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$l.class */
    public interface l {
        boolean a(MotionEvent motionEvent);

        void b(MotionEvent motionEvent);
    }

    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$m.class */
    public static abstract class m {
        public void a(RecyclerView recyclerView, int i) {
        }

        public void a(RecyclerView recyclerView, int i, int i2) {
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$n.class */
    public static final class n {

        /* renamed from: a  reason: collision with root package name */
        SparseArray<a> f5354a = new SparseArray<>();

        /* renamed from: b  reason: collision with root package name */
        int f5355b = 0;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$n$a.class */
        public static final class a {

            /* renamed from: a  reason: collision with root package name */
            final ArrayList<v> f5356a = new ArrayList<>();

            /* renamed from: b  reason: collision with root package name */
            int f5357b = 5;

            /* renamed from: c  reason: collision with root package name */
            long f5358c = 0;

            /* renamed from: d  reason: collision with root package name */
            long f5359d = 0;

            a() {
            }
        }

        static long a(long j, long j2) {
            return j == 0 ? j2 : ((j / 4) * 3) + (j2 / 4);
        }

        public final v a(int i) {
            a aVar = this.f5354a.get(i);
            if (aVar == null || aVar.f5356a.isEmpty()) {
                return null;
            }
            ArrayList<v> arrayList = aVar.f5356a;
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                if (!arrayList.get(size).isAttachedToTransitionOverlay()) {
                    return arrayList.remove(size);
                }
            }
            return null;
        }

        final void a() {
            this.f5355b++;
        }

        final void a(int i, long j) {
            a b2 = b(i);
            b2.f5358c = a(b2.f5358c, j);
        }

        public final void a(v vVar) {
            int itemViewType = vVar.getItemViewType();
            ArrayList<v> arrayList = b(itemViewType).f5356a;
            if (this.f5354a.get(itemViewType).f5357b > arrayList.size()) {
                vVar.j();
                arrayList.add(vVar);
            }
        }

        final boolean a(int i, long j, long j2) {
            long j3 = b(i).f5358c;
            return j3 == 0 || j + j3 < j2;
        }

        final a b(int i) {
            a aVar = this.f5354a.get(i);
            a aVar2 = aVar;
            if (aVar == null) {
                aVar2 = new a();
                this.f5354a.put(i, aVar2);
            }
            return aVar2;
        }

        final void b() {
            this.f5355b--;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$o.class */
    public final class o {

        /* renamed from: a  reason: collision with root package name */
        final ArrayList<v> f5360a;

        /* renamed from: d  reason: collision with root package name */
        final List<v> f5363d;
        n g;
        t h;

        /* renamed from: b  reason: collision with root package name */
        ArrayList<v> f5361b = null;

        /* renamed from: c  reason: collision with root package name */
        final ArrayList<v> f5362c = new ArrayList<>();
        int e = 2;
        int f = 2;

        public o() {
            ArrayList<v> arrayList = new ArrayList<>();
            this.f5360a = arrayList;
            this.f5363d = Collections.unmodifiableList(arrayList);
        }

        private v a(int i, boolean z) {
            View view;
            int size = this.f5360a.size();
            for (int i2 = 0; i2 < size; i2++) {
                v vVar = this.f5360a.get(i2);
                if (!vVar.e() && vVar.getLayoutPosition() == i && !vVar.isInvalid() && (RecyclerView.this.I.g || !vVar.isRemoved())) {
                    vVar.b(32);
                    return vVar;
                }
            }
            if (!z) {
                androidx.recyclerview.widget.b bVar = RecyclerView.this.h;
                int size2 = bVar.f5408c.size();
                int i3 = 0;
                while (true) {
                    if (i3 >= size2) {
                        view = null;
                        break;
                    }
                    view = bVar.f5408c.get(i3);
                    v b2 = bVar.f5406a.b(view);
                    if (!(b2.getLayoutPosition() != i || b2.isInvalid() || b2.isRemoved())) {
                        break;
                    }
                    i3++;
                }
                if (view != null) {
                    v c2 = RecyclerView.c(view);
                    androidx.recyclerview.widget.b bVar2 = RecyclerView.this.h;
                    int a2 = bVar2.f5406a.a(view);
                    if (a2 < 0) {
                        throw new IllegalArgumentException("view is not a child, cannot hide ".concat(String.valueOf(view)));
                    } else if (bVar2.f5407b.c(a2)) {
                        bVar2.f5407b.b(a2);
                        bVar2.b(view);
                        int c3 = RecyclerView.this.h.c(view);
                        if (c3 != -1) {
                            RecyclerView.this.h.d(c3);
                            c(view);
                            c2.b(8224);
                            return c2;
                        }
                        throw new IllegalStateException("layout index should not be -1 after unhiding a view:" + c2 + RecyclerView.this.a());
                    } else {
                        throw new RuntimeException("trying to unhide a view that was not hidden".concat(String.valueOf(view)));
                    }
                }
            }
            int size3 = this.f5362c.size();
            for (int i4 = 0; i4 < size3; i4++) {
                v vVar2 = this.f5362c.get(i4);
                if (!vVar2.isInvalid() && vVar2.getLayoutPosition() == i && !vVar2.isAttachedToTransitionOverlay()) {
                    if (!z) {
                        this.f5362c.remove(i4);
                    }
                    return vVar2;
                }
            }
            return null;
        }

        private v a(long j, int i, boolean z) {
            for (int size = this.f5360a.size() - 1; size >= 0; size--) {
                v vVar = this.f5360a.get(size);
                if (vVar.getItemId() == j && !vVar.e()) {
                    if (i == vVar.getItemViewType()) {
                        vVar.b(32);
                        if (vVar.isRemoved() && !RecyclerView.this.I.g) {
                            vVar.setFlags(2, 14);
                        }
                        return vVar;
                    } else if (!z) {
                        this.f5360a.remove(size);
                        RecyclerView.this.removeDetachedView(vVar.itemView, false);
                        b(vVar.itemView);
                    }
                }
            }
            for (int size2 = this.f5362c.size() - 1; size2 >= 0; size2--) {
                v vVar2 = this.f5362c.get(size2);
                if (vVar2.getItemId() == j && !vVar2.isAttachedToTransitionOverlay()) {
                    if (i == vVar2.getItemViewType()) {
                        if (!z) {
                            this.f5362c.remove(size2);
                        }
                        return vVar2;
                    } else if (!z) {
                        c(size2);
                        return null;
                    }
                }
            }
            return null;
        }

        private void a(ViewGroup viewGroup, boolean z) {
            for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                View childAt = viewGroup.getChildAt(childCount);
                if (childAt instanceof ViewGroup) {
                    a((ViewGroup) childAt, true);
                }
            }
            if (z) {
                if (viewGroup.getVisibility() == 4) {
                    viewGroup.setVisibility(0);
                    viewGroup.setVisibility(4);
                    return;
                }
                int visibility = viewGroup.getVisibility();
                viewGroup.setVisibility(4);
                viewGroup.setVisibility(visibility);
            }
        }

        private boolean a(v vVar, int i, int i2, long j) {
            vVar.q = null;
            vVar.p = RecyclerView.this;
            int itemViewType = vVar.getItemViewType();
            long nanoTime = RecyclerView.this.getNanoTime();
            if (j != Long.MAX_VALUE) {
                long j2 = this.g.b(itemViewType).f5359d;
                if (!(j2 == 0 || j2 + nanoTime < j)) {
                    return false;
                }
            }
            RecyclerView.this.n.bindViewHolder(vVar, i);
            long nanoTime2 = RecyclerView.this.getNanoTime();
            n.a b2 = this.g.b(vVar.getItemViewType());
            b2.f5359d = n.a(b2.f5359d, nanoTime2 - nanoTime);
            if (RecyclerView.this.isAccessibilityEnabled()) {
                View view = vVar.itemView;
                if (androidx.core.view.v.e(view) == 0) {
                    androidx.core.view.v.c(view, 1);
                }
                if (RecyclerView.this.M != null) {
                    l.a aVar = RecyclerView.this.M.f5487c;
                    if (aVar instanceof l.a) {
                        l.a aVar2 = aVar;
                        androidx.core.view.a b3 = androidx.core.view.v.b(view);
                        if (!(b3 == null || b3 == aVar2)) {
                            aVar2.f5489c.put(view, b3);
                        }
                    }
                    androidx.core.view.v.a(view, aVar);
                }
            }
            if (!RecyclerView.this.I.g) {
                return true;
            }
            vVar.f = i2;
            return true;
        }

        private boolean c(v vVar) {
            if (vVar.isRemoved()) {
                return RecyclerView.this.I.g;
            }
            if (vVar.f5378b < 0 || vVar.f5378b >= RecyclerView.this.n.getItemCount()) {
                throw new IndexOutOfBoundsException("Inconsistency detected. Invalid view holder adapter position" + vVar + RecyclerView.this.a());
            } else if (RecyclerView.this.I.g || RecyclerView.this.n.getItemViewType(vVar.f5378b) == vVar.getItemViewType()) {
                return !RecyclerView.this.n.hasStableIds() || vVar.getItemId() == RecyclerView.this.n.getItemId(vVar.f5378b);
            } else {
                return false;
            }
        }

        private v d(int i) {
            int size;
            int a2;
            ArrayList<v> arrayList = this.f5361b;
            if (arrayList == null || (size = arrayList.size()) == 0) {
                return null;
            }
            for (int i2 = 0; i2 < size; i2++) {
                v vVar = this.f5361b.get(i2);
                if (!vVar.e() && vVar.getLayoutPosition() == i) {
                    vVar.b(32);
                    return vVar;
                }
            }
            if (!RecyclerView.this.n.hasStableIds() || (a2 = RecyclerView.this.g.a(i, 0)) <= 0 || a2 >= RecyclerView.this.n.getItemCount()) {
                return null;
            }
            long itemId = RecyclerView.this.n.getItemId(a2);
            for (int i3 = 0; i3 < size; i3++) {
                v vVar2 = this.f5361b.get(i3);
                if (!vVar2.e() && vVar2.getItemId() == itemId) {
                    vVar2.b(32);
                    return vVar2;
                }
            }
            return null;
        }

        private void d(v vVar) {
            if (vVar.itemView instanceof ViewGroup) {
                a((ViewGroup) vVar.itemView, false);
            }
        }

        private void e(v vVar) {
            if (RecyclerView.this.p != null) {
                RecyclerView.this.p.a(vVar);
            }
            int size = RecyclerView.this.q.size();
            for (int i = 0; i < size; i++) {
                RecyclerView.this.q.get(i).a(vVar);
            }
            if (RecyclerView.this.n != null) {
                RecyclerView.this.n.onViewRecycled(vVar);
            }
            if (RecyclerView.this.I != null) {
                RecyclerView.this.i.e(vVar);
            }
        }

        private void g() {
            for (int size = this.f5362c.size() - 1; size >= 0; size--) {
                c(size);
            }
            this.f5362c.clear();
            if (RecyclerView.f5325d) {
                RecyclerView.this.H.a();
            }
        }

        public final int a(int i) {
            if (i >= 0 && i < RecyclerView.this.I.a()) {
                return !RecyclerView.this.I.g ? i : RecyclerView.this.g.b(i);
            }
            throw new IndexOutOfBoundsException("invalid position " + i + ". State item count is " + RecyclerView.this.I.a() + RecyclerView.this.a());
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* JADX WARN: Removed duplicated region for block: B:105:0x03da  */
        /* JADX WARN: Removed duplicated region for block: B:15:0x0051  */
        /* JADX WARN: Removed duplicated region for block: B:29:0x00c3  */
        /* JADX WARN: Removed duplicated region for block: B:82:0x0308  */
        /* JADX WARN: Removed duplicated region for block: B:98:0x0387  */
        /* JADX WARN: Removed duplicated region for block: B:99:0x03a0  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final androidx.recyclerview.widget.RecyclerView.v a(int r8, boolean r9, long r10) {
            /*
                Method dump skipped, instructions count: 1093
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.o.a(int, boolean, long):androidx.recyclerview.widget.RecyclerView$v");
        }

        public final void a() {
            this.f5360a.clear();
            g();
        }

        public final void a(View view) {
            v c2 = RecyclerView.c(view);
            if (c2.isTmpDetached()) {
                RecyclerView.this.removeDetachedView(view, false);
            }
            if (c2.isScrap()) {
                c2.d();
            } else if (c2.e()) {
                c2.f();
            }
            a(c2);
            if (RecyclerView.this.E != null && !c2.isRecyclable()) {
                RecyclerView.this.E.c(c2);
            }
        }

        final void a(v vVar) {
            boolean z = false;
            boolean z2 = false;
            boolean z3 = true;
            if (vVar.isScrap() || vVar.itemView.getParent() != null) {
                StringBuilder sb = new StringBuilder("Scrapped or attached views may not be recycled. isScrap:");
                sb.append(vVar.isScrap());
                sb.append(" isAttached:");
                if (vVar.itemView.getParent() != null) {
                    z = true;
                }
                sb.append(z);
                sb.append(RecyclerView.this.a());
                throw new IllegalArgumentException(sb.toString());
            } else if (vVar.isTmpDetached()) {
                throw new IllegalArgumentException("Tmp detached view should be removed from RecyclerView before it can be recycled: " + vVar + RecyclerView.this.a());
            } else if (!vVar.c()) {
                boolean k = vVar.k();
                if ((RecyclerView.this.n != null && k && RecyclerView.this.n.onFailedToRecycleView(vVar)) || vVar.isRecyclable()) {
                    if (this.f <= 0 || vVar.a(526)) {
                        z2 = false;
                    } else {
                        int size = this.f5362c.size();
                        int i = size;
                        if (size >= this.f) {
                            i = size;
                            if (size > 0) {
                                c(0);
                                i = size - 1;
                            }
                        }
                        int i2 = i;
                        if (RecyclerView.f5325d) {
                            i2 = i;
                            if (i > 0) {
                                i2 = i;
                                if (!RecyclerView.this.H.a(vVar.f5378b)) {
                                    while (true) {
                                        i--;
                                        if (i < 0) {
                                            break;
                                        }
                                        if (!RecyclerView.this.H.a(this.f5362c.get(i).f5378b)) {
                                            break;
                                        }
                                    }
                                    i2 = i + 1;
                                }
                            }
                        }
                        this.f5362c.add(i2, vVar);
                        z2 = true;
                    }
                    if (!z2) {
                        a(vVar, true);
                        RecyclerView.this.i.e(vVar);
                        if (!z2 && !z3 && k) {
                            vVar.q = null;
                            vVar.p = null;
                            return;
                        }
                        return;
                    }
                }
                z3 = false;
                RecyclerView.this.i.e(vVar);
                if (!z2) {
                }
            } else {
                throw new IllegalArgumentException("Trying to recycle an ignored view holder. You should first call stopIgnoringView(view) before calling recycle." + RecyclerView.this.a());
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final void a(v vVar, boolean z) {
            RecyclerView.c(vVar);
            View view = vVar.itemView;
            if (RecyclerView.this.M != null) {
                l.a aVar = RecyclerView.this.M.f5487c;
                androidx.core.view.v.a(view, aVar instanceof l.a ? aVar.c(view) : null);
            }
            if (z) {
                e(vVar);
            }
            vVar.q = null;
            vVar.p = null;
            c().a(vVar);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final View b(int i) {
            return a(i, false, Long.MAX_VALUE).itemView;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final void b() {
            this.f = this.e + (RecyclerView.this.o != null ? RecyclerView.this.o.x : 0);
            for (int size = this.f5362c.size() - 1; size >= 0 && this.f5362c.size() > this.f; size--) {
                c(size);
            }
        }

        final void b(View view) {
            v c2 = RecyclerView.c(view);
            c2.l = null;
            c2.m = false;
            c2.f();
            a(c2);
        }

        final void b(v vVar) {
            if (vVar.m) {
                this.f5361b.remove(vVar);
            } else {
                this.f5360a.remove(vVar);
            }
            vVar.l = null;
            vVar.m = false;
            vVar.f();
        }

        final n c() {
            if (this.g == null) {
                this.g = new n();
            }
            return this.g;
        }

        final void c(int i) {
            a(this.f5362c.get(i), true);
            this.f5362c.remove(i);
        }

        final void c(View view) {
            v c2 = RecyclerView.c(view);
            if (!c2.a(12) && c2.isUpdated() && !RecyclerView.this.b(c2)) {
                if (this.f5361b == null) {
                    this.f5361b = new ArrayList<>();
                }
                c2.a(this, true);
                this.f5361b.add(c2);
            } else if (!c2.isInvalid() || c2.isRemoved() || RecyclerView.this.n.hasStableIds()) {
                c2.a(this, false);
                this.f5360a.add(c2);
            } else {
                throw new IllegalArgumentException("Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool." + RecyclerView.this.a());
            }
        }

        final void d() {
            int size = this.f5362c.size();
            for (int i = 0; i < size; i++) {
                v vVar = this.f5362c.get(i);
                if (vVar != null) {
                    vVar.b(6);
                    vVar.a((Object) null);
                }
            }
            if (RecyclerView.this.n == null || !RecyclerView.this.n.hasStableIds()) {
                g();
            }
        }

        final void e() {
            int size = this.f5362c.size();
            for (int i = 0; i < size; i++) {
                this.f5362c.get(i).a();
            }
            int size2 = this.f5360a.size();
            for (int i2 = 0; i2 < size2; i2++) {
                this.f5360a.get(i2).a();
            }
            ArrayList<v> arrayList = this.f5361b;
            if (arrayList != null) {
                int size3 = arrayList.size();
                for (int i3 = 0; i3 < size3; i3++) {
                    this.f5361b.get(i3).a();
                }
            }
        }

        final void f() {
            int size = this.f5362c.size();
            for (int i = 0; i < size; i++) {
                LayoutParams layoutParams = (LayoutParams) this.f5362c.get(i).itemView.getLayoutParams();
                if (layoutParams != null) {
                    layoutParams.e = true;
                }
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$p.class */
    public interface p {
        void a(v vVar);
    }

    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$q.class */
    final class q extends c {
        q() {
        }

        private void a() {
            if (!RecyclerView.f5324c || !RecyclerView.this.v || !RecyclerView.this.u) {
                RecyclerView.this.A = true;
                RecyclerView.this.requestLayout();
                return;
            }
            RecyclerView recyclerView = RecyclerView.this;
            androidx.core.view.v.a(recyclerView, recyclerView.k);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.c
        public final void onChanged() {
            RecyclerView.this.a((String) null);
            RecyclerView.this.I.f = true;
            RecyclerView.this.c(true);
            if (!RecyclerView.this.g.d()) {
                RecyclerView.this.requestLayout();
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:10:0x004e  */
        /* JADX WARN: Removed duplicated region for block: B:12:? A[RETURN, SYNTHETIC] */
        @Override // androidx.recyclerview.widget.RecyclerView.c
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void onItemRangeChanged(int r8, int r9, java.lang.Object r10) {
            /*
                r7 = this;
                r0 = r7
                androidx.recyclerview.widget.RecyclerView r0 = androidx.recyclerview.widget.RecyclerView.this
                r1 = 0
                r0.a(r1)
                r0 = r7
                androidx.recyclerview.widget.RecyclerView r0 = androidx.recyclerview.widget.RecyclerView.this
                androidx.recyclerview.widget.a r0 = r0.g
                r11 = r0
                r0 = 1
                r12 = r0
                r0 = r9
                if (r0 <= 0) goto L_0x0048
                r0 = r11
                java.util.ArrayList<androidx.recyclerview.widget.a$b> r0 = r0.f5398a
                r1 = r11
                r2 = 4
                r3 = r8
                r4 = r9
                r5 = r10
                androidx.recyclerview.widget.a$b r1 = r1.a(r2, r3, r4, r5)
                boolean r0 = r0.add(r1)
                r0 = r11
                r1 = r11
                int r1 = r1.g
                r2 = 4
                r1 = r1 | r2
                r0.g = r1
                r0 = r11
                java.util.ArrayList<androidx.recyclerview.widget.a$b> r0 = r0.f5398a
                int r0 = r0.size()
                r1 = 1
                if (r0 != r1) goto L_0x0048
                r0 = r12
                r8 = r0
                goto L_0x004a
            L_0x0048:
                r0 = 0
                r8 = r0
            L_0x004a:
                r0 = r8
                if (r0 == 0) goto L_0x0052
                r0 = r7
                r0.a()
            L_0x0052:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.q.onItemRangeChanged(int, int, java.lang.Object):void");
        }

        /* JADX WARN: Removed duplicated region for block: B:10:0x0048  */
        /* JADX WARN: Removed duplicated region for block: B:12:? A[RETURN, SYNTHETIC] */
        @Override // androidx.recyclerview.widget.RecyclerView.c
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void onItemRangeInserted(int r8, int r9) {
            /*
                r7 = this;
                r0 = r7
                androidx.recyclerview.widget.RecyclerView r0 = androidx.recyclerview.widget.RecyclerView.this
                r1 = 0
                r0.a(r1)
                r0 = r7
                androidx.recyclerview.widget.RecyclerView r0 = androidx.recyclerview.widget.RecyclerView.this
                androidx.recyclerview.widget.a r0 = r0.g
                r10 = r0
                r0 = 1
                r11 = r0
                r0 = r9
                if (r0 <= 0) goto L_0x0042
                r0 = r10
                java.util.ArrayList<androidx.recyclerview.widget.a$b> r0 = r0.f5398a
                r1 = r10
                r2 = 1
                r3 = r8
                r4 = r9
                r5 = 0
                androidx.recyclerview.widget.a$b r1 = r1.a(r2, r3, r4, r5)
                boolean r0 = r0.add(r1)
                r0 = r10
                r1 = r10
                int r1 = r1.g
                r2 = 1
                r1 = r1 | r2
                r0.g = r1
                r0 = r10
                java.util.ArrayList<androidx.recyclerview.widget.a$b> r0 = r0.f5398a
                int r0 = r0.size()
                r1 = 1
                if (r0 != r1) goto L_0x0042
                r0 = r11
                r8 = r0
                goto L_0x0044
            L_0x0042:
                r0 = 0
                r8 = r0
            L_0x0044:
                r0 = r8
                if (r0 == 0) goto L_0x004c
                r0 = r7
                r0.a()
            L_0x004c:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.q.onItemRangeInserted(int, int):void");
        }

        /* JADX WARN: Removed duplicated region for block: B:14:0x0060  */
        /* JADX WARN: Removed duplicated region for block: B:16:? A[RETURN, SYNTHETIC] */
        @Override // androidx.recyclerview.widget.RecyclerView.c
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void onItemRangeMoved(int r8, int r9, int r10) {
            /*
                r7 = this;
                r0 = r7
                androidx.recyclerview.widget.RecyclerView r0 = androidx.recyclerview.widget.RecyclerView.this
                r1 = 0
                r0.a(r1)
                r0 = r7
                androidx.recyclerview.widget.RecyclerView r0 = androidx.recyclerview.widget.RecyclerView.this
                androidx.recyclerview.widget.a r0 = r0.g
                r11 = r0
                r0 = 1
                r12 = r0
                r0 = r8
                r1 = r9
                if (r0 == r1) goto L_0x005a
                r0 = r10
                r1 = 1
                if (r0 != r1) goto L_0x0050
                r0 = r11
                java.util.ArrayList<androidx.recyclerview.widget.a$b> r0 = r0.f5398a
                r1 = r11
                r2 = 8
                r3 = r8
                r4 = r9
                r5 = 0
                androidx.recyclerview.widget.a$b r1 = r1.a(r2, r3, r4, r5)
                boolean r0 = r0.add(r1)
                r0 = r11
                r1 = r11
                int r1 = r1.g
                r2 = 8
                r1 = r1 | r2
                r0.g = r1
                r0 = r11
                java.util.ArrayList<androidx.recyclerview.widget.a$b> r0 = r0.f5398a
                int r0 = r0.size()
                r1 = 1
                if (r0 != r1) goto L_0x005a
                r0 = r12
                r8 = r0
                goto L_0x005c
            L_0x0050:
                java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
                r1 = r0
                java.lang.String r2 = "Moving more than 1 item is not supported yet"
                r1.<init>(r2)
                throw r0
            L_0x005a:
                r0 = 0
                r8 = r0
            L_0x005c:
                r0 = r8
                if (r0 == 0) goto L_0x0064
                r0 = r7
                r0.a()
            L_0x0064:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.q.onItemRangeMoved(int, int, int):void");
        }

        /* JADX WARN: Removed duplicated region for block: B:10:0x0048  */
        /* JADX WARN: Removed duplicated region for block: B:12:? A[RETURN, SYNTHETIC] */
        @Override // androidx.recyclerview.widget.RecyclerView.c
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void onItemRangeRemoved(int r8, int r9) {
            /*
                r7 = this;
                r0 = r7
                androidx.recyclerview.widget.RecyclerView r0 = androidx.recyclerview.widget.RecyclerView.this
                r1 = 0
                r0.a(r1)
                r0 = r7
                androidx.recyclerview.widget.RecyclerView r0 = androidx.recyclerview.widget.RecyclerView.this
                androidx.recyclerview.widget.a r0 = r0.g
                r10 = r0
                r0 = 1
                r11 = r0
                r0 = r9
                if (r0 <= 0) goto L_0x0042
                r0 = r10
                java.util.ArrayList<androidx.recyclerview.widget.a$b> r0 = r0.f5398a
                r1 = r10
                r2 = 2
                r3 = r8
                r4 = r9
                r5 = 0
                androidx.recyclerview.widget.a$b r1 = r1.a(r2, r3, r4, r5)
                boolean r0 = r0.add(r1)
                r0 = r10
                r1 = r10
                int r1 = r1.g
                r2 = 2
                r1 = r1 | r2
                r0.g = r1
                r0 = r10
                java.util.ArrayList<androidx.recyclerview.widget.a$b> r0 = r0.f5398a
                int r0 = r0.size()
                r1 = 1
                if (r0 != r1) goto L_0x0042
                r0 = r11
                r8 = r0
                goto L_0x0044
            L_0x0042:
                r0 = 0
                r8 = r0
            L_0x0044:
                r0 = r8
                if (r0 == 0) goto L_0x004c
                r0 = r7
                r0.a()
            L_0x004c:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.q.onItemRangeRemoved(int, int):void");
        }

        @Override // androidx.recyclerview.widget.RecyclerView.c
        public final void onStateRestorationPolicyChanged() {
            a aVar;
            if (RecyclerView.this.f != null && (aVar = RecyclerView.this.n) != null && aVar.a()) {
                RecyclerView.this.requestLayout();
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$r.class */
    public static abstract class r {
        RecyclerView h;
        i i;
        boolean j;
        boolean k;
        View l;
        boolean m;
        int g = -1;

        /* renamed from: a  reason: collision with root package name */
        private final a f5365a = new a(0, 0);

        /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$r$a.class */
        public static final class a {

            /* renamed from: a  reason: collision with root package name */
            int f5366a;

            /* renamed from: b  reason: collision with root package name */
            private int f5367b;

            /* renamed from: c  reason: collision with root package name */
            private int f5368c;

            /* renamed from: d  reason: collision with root package name */
            private int f5369d;
            private Interpolator e;
            private boolean f;
            private int g;

            public a(int i, int i2) {
                this(i, i2, BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW, null);
            }

            public a(int i, int i2, int i3) {
                this(i, i2, i3, null);
            }

            public a(int i, int i2, int i3, Interpolator interpolator) {
                this.f5366a = -1;
                this.f = false;
                this.g = 0;
                this.f5367b = i;
                this.f5368c = i2;
                this.f5369d = i3;
                this.e = interpolator;
            }

            private void a() {
                if (this.e != null && this.f5369d <= 0) {
                    throw new IllegalStateException("If you provide an interpolator, you must set a positive duration");
                } else if (this.f5369d <= 0) {
                    throw new IllegalStateException("Scroll duration must be a positive number");
                }
            }

            public final void a(int i, int i2, int i3, Interpolator interpolator) {
                this.f5367b = i;
                this.f5368c = i2;
                this.f5369d = i3;
                this.e = interpolator;
                this.f = true;
            }

            final void a(RecyclerView recyclerView) {
                int i = this.f5366a;
                if (i >= 0) {
                    this.f5366a = -1;
                    recyclerView.c(i);
                    this.f = false;
                } else if (this.f) {
                    a();
                    recyclerView.F.a(this.f5367b, this.f5368c, this.f5369d, this.e);
                    int i2 = this.g + 1;
                    this.g = i2;
                    if (i2 > 10) {
                        Log.e("RecyclerView", "Smooth Scroll action is being updated too frequently. Make sure you are not changing it unless necessary");
                    }
                    this.f = false;
                } else {
                    this.g = 0;
                }
            }
        }

        /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$r$b.class */
        public interface b {
            PointF c(int i);
        }

        protected abstract void a();

        final void a(int i, int i2) {
            PointF c2;
            RecyclerView recyclerView = this.h;
            if (this.g == -1 || recyclerView == null) {
                b();
            }
            if (!(!this.j || this.l != null || this.i == null || (c2 = c(this.g)) == null || (c2.x == BitmapDescriptorFactory.HUE_RED && c2.y == BitmapDescriptorFactory.HUE_RED))) {
                recyclerView.a((int) Math.signum(c2.x), (int) Math.signum(c2.y), (int[]) null);
            }
            boolean z = false;
            this.j = false;
            View view = this.l;
            if (view != null) {
                if (RecyclerView.e(view) == this.g) {
                    a(this.l, recyclerView.I, this.f5365a);
                    this.f5365a.a(recyclerView);
                    b();
                } else {
                    Log.e("RecyclerView", "Passed over target position while smooth scrolling.");
                    this.l = null;
                }
            }
            if (this.k) {
                a(i, i2, this.f5365a);
                if (this.f5365a.f5366a >= 0) {
                    z = true;
                }
                this.f5365a.a(recyclerView);
                if (z && this.k) {
                    this.j = true;
                    recyclerView.F.a();
                }
            }
        }

        protected abstract void a(int i, int i2, a aVar);

        protected final void a(View view) {
            if (RecyclerView.e(view) == getTargetPosition()) {
                this.l = view;
            }
        }

        protected abstract void a(View view, s sVar, a aVar);

        /* JADX INFO: Access modifiers changed from: protected */
        public final void b() {
            if (this.k) {
                this.k = false;
                a();
                this.h.I.f5370a = -1;
                this.l = null;
                this.g = -1;
                this.j = false;
                i iVar = this.i;
                if (iVar.t == this) {
                    iVar.t = null;
                }
                this.i = null;
                this.h = null;
            }
        }

        public PointF c(int i) {
            i layoutManager = getLayoutManager();
            if (layoutManager instanceof b) {
                return ((b) layoutManager).c(i);
            }
            Log.w("RecyclerView", "You should override computeScrollVectorForPosition when the LayoutManager does not implement " + b.class.getCanonicalName());
            return null;
        }

        public int getChildCount() {
            return this.h.o.getChildCount();
        }

        public i getLayoutManager() {
            return this.i;
        }

        public int getTargetPosition() {
            return this.g;
        }

        public boolean isPendingInitialRun() {
            return this.j;
        }

        public boolean isRunning() {
            return this.k;
        }

        public void setTargetPosition(int i) {
            this.g = i;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$s.class */
    public static final class s {

        /* renamed from: a  reason: collision with root package name */
        int f5370a = -1;

        /* renamed from: b  reason: collision with root package name */
        int f5371b = 0;

        /* renamed from: c  reason: collision with root package name */
        int f5372c = 0;

        /* renamed from: d  reason: collision with root package name */
        int f5373d = 1;
        int e = 0;
        boolean f = false;
        boolean g = false;
        boolean h = false;
        boolean i = false;
        boolean j = false;
        boolean k = false;
        int l;
        long m;
        int n;
        int o;
        int p;
        private SparseArray<Object> q;

        public final int a() {
            return this.g ? this.f5371b - this.f5372c : this.e;
        }

        final void a(int i) {
            if ((this.f5373d & i) == 0) {
                throw new IllegalStateException("Layout state should be one of " + Integer.toBinaryString(i) + " but it is " + Integer.toBinaryString(this.f5373d));
            }
        }

        public final String toString() {
            return "State{mTargetPosition=" + this.f5370a + ", mData=" + this.q + ", mItemCount=" + this.e + ", mIsMeasuring=" + this.i + ", mPreviousLayoutItemCount=" + this.f5371b + ", mDeletedInvisibleItemCountSincePreviousLayout=" + this.f5372c + ", mStructureChanged=" + this.f + ", mInPreLayout=" + this.g + ", mRunSimpleAnimations=" + this.j + ", mRunPredictiveAnimations=" + this.k + '}';
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$t.class */
    public static abstract class t {
        public abstract View a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$u.class */
    public final class u implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        int f5374a;

        /* renamed from: b  reason: collision with root package name */
        int f5375b;

        /* renamed from: c  reason: collision with root package name */
        OverScroller f5376c;

        /* renamed from: d  reason: collision with root package name */
        Interpolator f5377d = RecyclerView.P;
        private boolean f = false;
        private boolean g = false;

        u() {
            this.f5376c = new OverScroller(RecyclerView.this.getContext(), RecyclerView.P);
        }

        private int a(int i, int i2) {
            int abs = Math.abs(i);
            int abs2 = Math.abs(i2);
            boolean z = abs > abs2;
            RecyclerView recyclerView = RecyclerView.this;
            return Math.min((int) ((((z ? abs : abs2) / (z ? recyclerView.getWidth() : recyclerView.getHeight())) + 1.0f) * 300.0f), 2000);
        }

        private void c() {
            RecyclerView.this.removeCallbacks(this);
            androidx.core.view.v.a(RecyclerView.this, this);
        }

        final void a() {
            if (this.f) {
                this.g = true;
            } else {
                c();
            }
        }

        public final void a(int i, int i2, int i3, Interpolator interpolator) {
            int i4 = i3;
            if (i3 == Integer.MIN_VALUE) {
                i4 = a(i, i2);
            }
            Interpolator interpolator2 = interpolator;
            if (interpolator == null) {
                interpolator2 = RecyclerView.P;
            }
            if (this.f5377d != interpolator2) {
                this.f5377d = interpolator2;
                this.f5376c = new OverScroller(RecyclerView.this.getContext(), interpolator2);
            }
            this.f5375b = 0;
            this.f5374a = 0;
            RecyclerView.this.setScrollState(2);
            this.f5376c.startScroll(0, 0, i, i2, i4);
            if (Build.VERSION.SDK_INT < 23) {
                this.f5376c.computeScrollOffset();
            }
            a();
        }

        public final void b() {
            RecyclerView.this.removeCallbacks(this);
            this.f5376c.abortAnimation();
        }

        @Override // java.lang.Runnable
        public final void run() {
            int i;
            int i2;
            int i3;
            int i4;
            if (RecyclerView.this.o == null) {
                b();
                return;
            }
            this.g = false;
            this.f = true;
            RecyclerView.this.c();
            OverScroller overScroller = this.f5376c;
            if (overScroller.computeScrollOffset()) {
                int currX = overScroller.getCurrX();
                int currY = overScroller.getCurrY();
                int i5 = currX - this.f5374a;
                int i6 = currY - this.f5375b;
                this.f5374a = currX;
                this.f5375b = currY;
                RecyclerView.this.N[0] = 0;
                RecyclerView.this.N[1] = 0;
                RecyclerView recyclerView = RecyclerView.this;
                int i7 = i5;
                int i8 = i6;
                if (recyclerView.a(i5, i6, recyclerView.N, (int[]) null, 1)) {
                    i7 = i5 - RecyclerView.this.N[0];
                    i8 = i6 - RecyclerView.this.N[1];
                }
                if (RecyclerView.this.getOverScrollMode() != 2) {
                    RecyclerView.this.b(i7, i8);
                }
                if (RecyclerView.this.n != null) {
                    RecyclerView.this.N[0] = 0;
                    RecyclerView.this.N[1] = 0;
                    RecyclerView recyclerView2 = RecyclerView.this;
                    recyclerView2.a(i7, i8, recyclerView2.N);
                    int i9 = RecyclerView.this.N[0];
                    int i10 = RecyclerView.this.N[1];
                    int i11 = i7 - i9;
                    int i12 = i8 - i10;
                    r rVar = RecyclerView.this.o.t;
                    i4 = i9;
                    i2 = i11;
                    i3 = i10;
                    i = i12;
                    if (rVar != null) {
                        i4 = i9;
                        i2 = i11;
                        i3 = i10;
                        i = i12;
                        if (!rVar.isPendingInitialRun()) {
                            i4 = i9;
                            i2 = i11;
                            i3 = i10;
                            i = i12;
                            if (rVar.isRunning()) {
                                int a2 = RecyclerView.this.I.a();
                                if (a2 == 0) {
                                    rVar.b();
                                    i4 = i9;
                                    i2 = i11;
                                    i3 = i10;
                                    i = i12;
                                } else {
                                    if (rVar.getTargetPosition() >= a2) {
                                        rVar.setTargetPosition(a2 - 1);
                                    }
                                    rVar.a(i9, i10);
                                    i4 = i9;
                                    i2 = i11;
                                    i3 = i10;
                                    i = i12;
                                }
                            }
                        }
                    }
                } else {
                    i4 = 0;
                    i3 = 0;
                    i = i8;
                    i2 = i7;
                }
                if (!RecyclerView.this.r.isEmpty()) {
                    RecyclerView.this.invalidate();
                }
                RecyclerView.this.N[0] = 0;
                RecyclerView.this.N[1] = 0;
                RecyclerView recyclerView3 = RecyclerView.this;
                recyclerView3.a(i4, i3, i2, i, null, 1, recyclerView3.N);
                int i13 = i2 - RecyclerView.this.N[0];
                int i14 = i - RecyclerView.this.N[1];
                if (!(i4 == 0 && i3 == 0)) {
                    RecyclerView.this.e(i4, i3);
                }
                if (!RecyclerView.this.awakenScrollBars()) {
                    RecyclerView.this.invalidate();
                }
                boolean z = overScroller.isFinished() || (((overScroller.getCurrX() == overScroller.getFinalX()) || i13 != 0) && ((overScroller.getCurrY() == overScroller.getFinalY()) || i14 != 0));
                r rVar2 = RecyclerView.this.o.t;
                if ((rVar2 != null && rVar2.isPendingInitialRun()) || !z) {
                    a();
                    if (RecyclerView.this.G != null) {
                        RecyclerView.this.G.a(RecyclerView.this, i4, i3);
                    }
                } else {
                    if (RecyclerView.this.getOverScrollMode() != 2) {
                        int currVelocity = (int) overScroller.getCurrVelocity();
                        int i15 = i13 < 0 ? -currVelocity : i13 > 0 ? currVelocity : 0;
                        if (i14 < 0) {
                            currVelocity = -currVelocity;
                        } else if (i14 <= 0) {
                            currVelocity = 0;
                        }
                        RecyclerView.this.c(i15, currVelocity);
                    }
                    if (RecyclerView.f5325d) {
                        RecyclerView.this.H.a();
                    }
                }
            }
            r rVar3 = RecyclerView.this.o.t;
            if (rVar3 != null && rVar3.isPendingInitialRun()) {
                rVar3.a(0, 0);
            }
            this.f = false;
            if (this.g) {
                c();
                return;
            }
            RecyclerView.this.setScrollState(0);
            RecyclerView.this.a(1);
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$v.class */
    public static abstract class v {
        private static final List<Object> r = Collections.emptyList();
        WeakReference<RecyclerView> c_;
        int i;
        public final View itemView;
        RecyclerView p;
        a<? extends v> q;

        /* renamed from: b  reason: collision with root package name */
        int f5378b = -1;

        /* renamed from: c  reason: collision with root package name */
        int f5379c = -1;

        /* renamed from: d  reason: collision with root package name */
        long f5380d = -1;
        int e = -1;
        int f = -1;
        v g = null;
        v h = null;
        List<Object> j = null;
        List<Object> k = null;
        private int s = 0;
        o l = null;
        boolean m = false;
        int n = 0;
        int o = -1;

        public v(View view) {
            if (view != null) {
                this.itemView = view;
                return;
            }
            throw new IllegalArgumentException("itemView may not be null");
        }

        private void l() {
            if (this.j == null) {
                ArrayList arrayList = new ArrayList();
                this.j = arrayList;
                this.k = Collections.unmodifiableList(arrayList);
            }
        }

        final void a() {
            this.f5379c = -1;
            this.f = -1;
        }

        final void a(int i, boolean z) {
            if (this.f5379c == -1) {
                this.f5379c = this.f5378b;
            }
            if (this.f == -1) {
                this.f = this.f5378b;
            }
            if (z) {
                this.f += i;
            }
            this.f5378b += i;
            if (this.itemView.getLayoutParams() != null) {
                ((LayoutParams) this.itemView.getLayoutParams()).e = true;
            }
        }

        final void a(o oVar, boolean z) {
            this.l = oVar;
            this.m = z;
        }

        final void a(Object obj) {
            if (obj == null) {
                b(1024);
            } else if ((1024 & this.i) == 0) {
                l();
                this.j.add(obj);
            }
        }

        final boolean a(int i) {
            return (i & this.i) != 0;
        }

        final void b() {
            if (this.f5379c == -1) {
                this.f5379c = this.f5378b;
            }
        }

        final void b(int i) {
            this.i = i | this.i;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final boolean c() {
            return (this.i & 128) != 0;
        }

        final void d() {
            this.l.b(this);
        }

        final boolean e() {
            return (this.i & 32) != 0;
        }

        final void f() {
            this.i &= -33;
        }

        final void g() {
            this.i &= -257;
        }

        public final int getAbsoluteAdapterPosition() {
            RecyclerView recyclerView = this.p;
            if (recyclerView == null) {
                return -1;
            }
            return recyclerView.d(this);
        }

        @Deprecated
        public final int getAdapterPosition() {
            return getBindingAdapterPosition();
        }

        public final a<? extends v> getBindingAdapter() {
            return this.q;
        }

        public final int getBindingAdapterPosition() {
            RecyclerView recyclerView;
            a adapter;
            int d2;
            if (this.q == null || (recyclerView = this.p) == null || (adapter = recyclerView.getAdapter()) == null || (d2 = this.p.d(this)) == -1) {
                return -1;
            }
            return adapter.findRelativeAdapterPositionIn(this.q, this, d2);
        }

        public final long getItemId() {
            return this.f5380d;
        }

        public final int getItemViewType() {
            return this.e;
        }

        public final int getLayoutPosition() {
            int i = this.f;
            int i2 = i;
            if (i == -1) {
                i2 = this.f5378b;
            }
            return i2;
        }

        public final int getOldPosition() {
            return this.f5379c;
        }

        @Deprecated
        public final int getPosition() {
            int i = this.f;
            int i2 = i;
            if (i == -1) {
                i2 = this.f5378b;
            }
            return i2;
        }

        List<Object> getUnmodifiedPayloads() {
            if ((this.i & 1024) != 0) {
                return r;
            }
            List<Object> list = this.j;
            return (list == null || list.size() == 0) ? r : this.k;
        }

        final boolean h() {
            return (this.i & 2) != 0;
        }

        final void i() {
            List<Object> list = this.j;
            if (list != null) {
                list.clear();
            }
            this.i &= -1025;
        }

        boolean isAdapterPositionUnknown() {
            return (this.i & 512) != 0 || isInvalid();
        }

        boolean isAttachedToTransitionOverlay() {
            return (this.itemView.getParent() == null || this.itemView.getParent() == this.p) ? false : true;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public boolean isBound() {
            return (this.i & 1) != 0;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public boolean isInvalid() {
            return (this.i & 4) != 0;
        }

        public final boolean isRecyclable() {
            return (this.i & 16) == 0 && !androidx.core.view.v.c(this.itemView);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public boolean isRemoved() {
            return (this.i & 8) != 0;
        }

        boolean isScrap() {
            return this.l != null;
        }

        boolean isTmpDetached() {
            return (this.i & PropertyFlags.INDEX_PARTIAL_SKIP_NULL) != 0;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public boolean isUpdated() {
            return (this.i & 2) != 0;
        }

        final void j() {
            this.i = 0;
            this.f5378b = -1;
            this.f5379c = -1;
            this.f5380d = -1L;
            this.f = -1;
            this.s = 0;
            this.g = null;
            this.h = null;
            i();
            this.n = 0;
            this.o = -1;
            RecyclerView.c(this);
        }

        final boolean k() {
            return (this.i & 16) == 0 && androidx.core.view.v.c(this.itemView);
        }

        void setFlags(int i, int i2) {
            this.i = (i & i2) | (this.i & (i2 ^ (-1)));
        }

        public final void setIsRecyclable(boolean z) {
            int i = this.s;
            int i2 = z ? i - 1 : i + 1;
            this.s = i2;
            if (i2 < 0) {
                this.s = 0;
                Log.e("View", "isRecyclable decremented below 0: unmatched pair of setIsRecyable() calls for ".concat(String.valueOf(this)));
            } else if (!z && i2 == 1) {
                this.i |= 16;
            } else if (z && i2 == 0) {
                this.i &= -17;
            }
        }

        public String toString() {
            String simpleName = getClass().isAnonymousClass() ? "ViewHolder" : getClass().getSimpleName();
            StringBuilder sb = new StringBuilder(simpleName + "{" + Integer.toHexString(hashCode()) + " position=" + this.f5378b + " id=" + this.f5380d + ", oldPos=" + this.f5379c + ", pLpos:" + this.f);
            if (isScrap()) {
                sb.append(" scrap ");
                sb.append(this.m ? "[changeScrap]" : "[attachedScrap]");
            }
            if (isInvalid()) {
                sb.append(" invalid");
            }
            if (!isBound()) {
                sb.append(" unbound");
            }
            if (h()) {
                sb.append(" update");
            }
            if (isRemoved()) {
                sb.append(" removed");
            }
            if (c()) {
                sb.append(" ignored");
            }
            if (isTmpDetached()) {
                sb.append(" tmpDetached");
            }
            if (!isRecyclable()) {
                sb.append(" not recyclable(" + this.s + ")");
            }
            if (isAdapterPositionUnknown()) {
                sb.append(" undefined adapter position");
            }
            if (this.itemView.getParent() == null) {
                sb.append(" no parent");
            }
            sb.append("}");
            return sb.toString();
        }
    }

    static {
        f5322a = Build.VERSION.SDK_INT == 18 || Build.VERSION.SDK_INT == 19 || Build.VERSION.SDK_INT == 20;
        f5323b = Build.VERSION.SDK_INT >= 23;
        f5324c = Build.VERSION.SDK_INT >= 16;
        f5325d = Build.VERSION.SDK_INT >= 21;
        R = Build.VERSION.SDK_INT <= 15;
        S = Build.VERSION.SDK_INT <= 15;
        T = new Class[]{Context.class, AttributeSet.class, Integer.TYPE, Integer.TYPE};
        P = new Interpolator() { // from class: androidx.recyclerview.widget.RecyclerView.3
            @Override // android.animation.TimeInterpolator
            public final float getInterpolation(float f2) {
                float f3 = f2 - 1.0f;
                return (f3 * f3 * f3 * f3 * f3) + 1.0f;
            }
        };
    }

    public RecyclerView(Context context) {
        this(context, null);
    }

    public RecyclerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, a.C0108a.recyclerViewStyle);
    }

    /* JADX WARN: Removed duplicated region for block: B:77:0x0561  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x058d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public RecyclerView(android.content.Context r13, android.util.AttributeSet r14, int r15) {
        /*
            Method dump skipped, instructions count: 1431
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.<init>(android.content.Context, android.util.AttributeSet, int):void");
    }

    private void A() {
        this.I.a(4);
        d();
        f();
        this.I.f5373d = 1;
        if (this.I.j) {
            for (int a2 = this.h.a() - 1; a2 >= 0; a2--) {
                v c2 = c(this.h.b(a2));
                if (!c2.c()) {
                    long e2 = e(c2);
                    f.b a3 = new f.b().a(c2);
                    v a4 = this.i.a(e2);
                    if (a4 != null && !a4.c()) {
                        boolean a5 = this.i.a(a4);
                        boolean a6 = this.i.a(c2);
                        if (!a5 || a4 != c2) {
                            f.b a7 = this.i.a(a4, 4);
                            this.i.c(c2, a3);
                            f.b a8 = this.i.a(c2, 8);
                            if (a7 == null) {
                                a(e2, c2, a4);
                            } else {
                                a(a4, c2, a7, a8, a5, a6);
                            }
                        }
                    }
                    this.i.c(c2, a3);
                }
            }
            this.i.a(this.aK);
        }
        this.o.b(this.e);
        s sVar = this.I;
        sVar.f5371b = sVar.e;
        this.C = false;
        this.D = false;
        this.I.j = false;
        this.I.k = false;
        this.o.u = false;
        if (this.e.f5361b != null) {
            this.e.f5361b.clear();
        }
        if (this.o.y) {
            this.o.x = 0;
            this.o.y = false;
            this.e.b();
        }
        this.o.a(this.I);
        b(true);
        a(false);
        this.i.a();
        int[] iArr = this.aC;
        if (f(iArr[0], iArr[1])) {
            e(0, 0);
        }
        x();
        w();
    }

    private void B() {
        int b2 = this.h.b();
        for (int i2 = 0; i2 < b2; i2++) {
            ((LayoutParams) this.h.c(i2).getLayoutParams()).e = true;
        }
        this.e.f();
    }

    private void C() {
        int b2 = this.h.b();
        for (int i2 = 0; i2 < b2; i2++) {
            v c2 = c(this.h.c(i2));
            if (!c2.c()) {
                c2.b();
            }
        }
    }

    private void D() {
        int b2 = this.h.b();
        for (int i2 = 0; i2 < b2; i2++) {
            v c2 = c(this.h.c(i2));
            if (!c2.c()) {
                c2.a();
            }
        }
        this.e.e();
    }

    private void E() {
        int b2 = this.h.b();
        for (int i2 = 0; i2 < b2; i2++) {
            v c2 = c(this.h.c(i2));
            if (c2 != null && !c2.c()) {
                c2.b(6);
            }
        }
        B();
        this.e.d();
    }

    private void F() {
        int i2;
        for (int size = this.O.size() - 1; size >= 0; size--) {
            v vVar = this.O.get(size);
            if (vVar.itemView.getParent() == this && !vVar.c() && (i2 = vVar.o) != -1) {
                androidx.core.view.v.c(vVar.itemView, i2);
                vVar.o = -1;
            }
        }
        this.O.clear();
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0079  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void a(float r7, float r8, float r9, float r10) {
        /*
            Method dump skipped, instructions count: 186
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.a(float, float, float, float):void");
    }

    private void a(long j2, v vVar, v vVar2) {
        int a2 = this.h.a();
        for (int i2 = 0; i2 < a2; i2++) {
            v c2 = c(this.h.b(i2));
            if (c2 != vVar && e(c2) == j2) {
                a aVar = this.n;
                if (aVar == null || !aVar.hasStableIds()) {
                    throw new IllegalStateException("Two different ViewHolders have the same change ID. This might happen due to inconsistent Adapter update events or if the LayoutManager lays out the same View multiple times.\n ViewHolder 1:" + c2 + " \n View Holder 2:" + vVar + a());
                }
                throw new IllegalStateException("Two different ViewHolders have the same stable ID. Stable IDs in your adapter MUST BE unique and SHOULD NOT change.\n ViewHolder 1:" + c2 + " \n View Holder 2:" + vVar + a());
            }
        }
        Log.e("RecyclerView", "Problem while matching changed view holders with the newones. The pre-layout information for the change holder " + vVar2 + " cannot be found but it is necessary for " + vVar + a());
    }

    static void a(View view, Rect rect) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        Rect rect2 = layoutParams.f5333d;
        rect.set((view.getLeft() - rect2.left) - layoutParams.leftMargin, (view.getTop() - rect2.top) - layoutParams.topMargin, view.getRight() + rect2.right + layoutParams.rightMargin, view.getBottom() + rect2.bottom + layoutParams.bottomMargin);
    }

    private void a(View view, View view2) {
        View view3 = view2 != null ? view2 : view;
        this.l.set(0, 0, view3.getWidth(), view3.getHeight());
        ViewGroup.LayoutParams layoutParams = view3.getLayoutParams();
        if (layoutParams instanceof LayoutParams) {
            LayoutParams layoutParams2 = (LayoutParams) layoutParams;
            if (!layoutParams2.e) {
                Rect rect = layoutParams2.f5333d;
                this.l.left -= rect.left;
                this.l.right += rect.right;
                this.l.top -= rect.top;
                this.l.bottom += rect.bottom;
            }
        }
        if (view2 != null) {
            offsetDescendantRectToMyCoords(view2, this.l);
            offsetRectIntoDescendantCoords(view, this.l);
        }
        this.o.a(this, view, this.l, !this.x, view2 == null);
    }

    private void a(s sVar) {
        if (getScrollState() == 2) {
            OverScroller overScroller = this.F.f5376c;
            sVar.o = overScroller.getFinalX() - overScroller.getCurrX();
            sVar.p = overScroller.getFinalY() - overScroller.getCurrY();
            return;
        }
        sVar.o = 0;
        sVar.p = 0;
    }

    private void a(v vVar, v vVar2, f.b bVar, f.b bVar2, boolean z, boolean z2) {
        vVar.setIsRecyclable(false);
        if (z) {
            a(vVar);
        }
        if (vVar != vVar2) {
            if (z2) {
                a(vVar2);
            }
            vVar.g = vVar2;
            a(vVar);
            this.e.b(vVar);
            vVar2.setIsRecyclable(false);
            vVar2.h = vVar;
        }
        if (this.E.a(vVar, vVar2, bVar, bVar2)) {
            g();
        }
    }

    private void a(int[] iArr) {
        int a2 = this.h.a();
        if (a2 == 0) {
            iArr[0] = -1;
            iArr[1] = -1;
            return;
        }
        int i2 = Integer.MAX_VALUE;
        int i3 = BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;
        for (int i4 = 0; i4 < a2; i4++) {
            v c2 = c(this.h.b(i4));
            i2 = i2;
            i3 = i3;
            if (!c2.c()) {
                int layoutPosition = c2.getLayoutPosition();
                int i5 = i2;
                if (layoutPosition < i2) {
                    i5 = layoutPosition;
                }
                i2 = i5;
                i3 = i3;
                if (layoutPosition > i3) {
                    i3 = layoutPosition;
                    i2 = i5;
                }
            }
        }
        iArr[0] = i2;
        iArr[1] = i3;
    }

    private boolean a(int i2, int i3, MotionEvent motionEvent, int i4) {
        int i5;
        int i6;
        int i7;
        int i8;
        c();
        if (this.n != null) {
            int[] iArr = this.N;
            iArr[0] = 0;
            iArr[1] = 0;
            a(i2, i3, iArr);
            int[] iArr2 = this.N;
            int i9 = iArr2[0];
            int i10 = iArr2[1];
            i6 = i10;
            i5 = i9;
            i8 = i2 - i9;
            i7 = i3 - i10;
        } else {
            i6 = 0;
            i5 = 0;
            i8 = 0;
            i7 = 0;
        }
        if (!this.r.isEmpty()) {
            invalidate();
        }
        int[] iArr3 = this.N;
        iArr3[0] = 0;
        iArr3[1] = 0;
        a(i5, i6, i8, i7, this.aE, i4, iArr3);
        int[] iArr4 = this.N;
        int i11 = iArr4[0];
        int i12 = iArr4[1];
        boolean z = (iArr4[0] == 0 && iArr4[1] == 0) ? false : true;
        int i13 = this.ap;
        int[] iArr5 = this.aE;
        this.ap = i13 - iArr5[0];
        this.aq -= iArr5[1];
        int[] iArr6 = this.aF;
        iArr6[0] = iArr6[0] + iArr5[0];
        iArr6[1] = iArr6[1] + iArr5[1];
        if (getOverScrollMode() != 2) {
            if (motionEvent != null && !androidx.core.view.i.b(motionEvent)) {
                a(motionEvent.getX(), i8 - i11, motionEvent.getY(), i7 - i12);
            }
            b(i2, i3);
        }
        if (!(i5 == 0 && i6 == 0)) {
            e(i5, i6);
        }
        if (!awakenScrollBars()) {
            invalidate();
        }
        return (!z && i5 == 0 && i6 == 0) ? false : true;
    }

    private boolean a(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        int size = this.s.size();
        for (int i2 = 0; i2 < size; i2++) {
            l lVar = this.s.get(i2);
            if (lVar.a(motionEvent) && action != 3) {
                this.t = lVar;
                return true;
            }
        }
        return false;
    }

    private void b(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.al) {
            int i2 = actionIndex == 0 ? 1 : 0;
            this.al = motionEvent.getPointerId(i2);
            int x = (int) (motionEvent.getX(i2) + 0.5f);
            this.ap = x;
            this.an = x;
            int y = (int) (motionEvent.getY(i2) + 0.5f);
            this.aq = y;
            this.ao = y;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static v c(View view) {
        if (view == null) {
            return null;
        }
        return ((LayoutParams) view.getLayoutParams()).f5332c;
    }

    static void c(v vVar) {
        if (vVar.c_ != null) {
            RecyclerView recyclerView = vVar.c_.get();
            while (recyclerView != null) {
                if (recyclerView != vVar.itemView) {
                    ViewParent parent = recyclerView.getParent();
                    recyclerView = parent instanceof View ? (View) parent : null;
                } else {
                    return;
                }
            }
            vVar.c_ = null;
        }
    }

    public static int d(View view) {
        v c2 = c(view);
        if (c2 != null) {
            return c2.getAbsoluteAdapterPosition();
        }
        return -1;
    }

    public static int e(View view) {
        v c2 = c(view);
        if (c2 != null) {
            return c2.getLayoutPosition();
        }
        return -1;
    }

    private long e(v vVar) {
        return this.n.hasStableIds() ? vVar.getItemId() : vVar.f5378b;
    }

    private boolean f(int i2, int i3) {
        a(this.aC);
        int[] iArr = this.aC;
        return (iArr[0] == i2 && iArr[1] == i3) ? false : true;
    }

    static RecyclerView g(View view) {
        if (!(view instanceof ViewGroup)) {
            return null;
        }
        if (view instanceof RecyclerView) {
            return (RecyclerView) view;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            RecyclerView g2 = g(viewGroup.getChildAt(i2));
            if (g2 != null) {
                return g2;
            }
        }
        return null;
    }

    private boolean g(int i2, int i3) {
        return getScrollingChildHelper().a(i2, i3);
    }

    private androidx.core.view.m getScrollingChildHelper() {
        if (this.aD == null) {
            this.aD = new androidx.core.view.m(this);
        }
        return this.aD;
    }

    private void i() {
        this.F.b();
        i iVar = this.o;
        if (iVar != null) {
            iVar.m();
        }
    }

    private void j() {
        boolean z;
        EdgeEffect edgeEffect = this.ag;
        if (edgeEffect != null) {
            edgeEffect.onRelease();
            z = this.ag.isFinished();
        } else {
            z = false;
        }
        EdgeEffect edgeEffect2 = this.ah;
        boolean z2 = z;
        if (edgeEffect2 != null) {
            edgeEffect2.onRelease();
            z2 = z | this.ah.isFinished();
        }
        EdgeEffect edgeEffect3 = this.ai;
        boolean z3 = z2;
        if (edgeEffect3 != null) {
            edgeEffect3.onRelease();
            z3 = z2 | this.ai.isFinished();
        }
        EdgeEffect edgeEffect4 = this.aj;
        boolean z4 = z3;
        if (edgeEffect4 != null) {
            edgeEffect4.onRelease();
            z4 = z3 | this.aj.isFinished();
        }
        if (z4) {
            androidx.core.view.v.d(this);
        }
    }

    private void k() {
        if (this.ag == null) {
            EdgeEffect a2 = e.a(this);
            this.ag = a2;
            if (this.j) {
                a2.setSize((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight());
            } else {
                a2.setSize(getMeasuredHeight(), getMeasuredWidth());
            }
        }
    }

    private void l() {
        if (this.ai == null) {
            EdgeEffect a2 = e.a(this);
            this.ai = a2;
            if (this.j) {
                a2.setSize((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight());
            } else {
                a2.setSize(getMeasuredHeight(), getMeasuredWidth());
            }
        }
    }

    private void m() {
        if (this.ah == null) {
            EdgeEffect a2 = e.a(this);
            this.ah = a2;
            if (this.j) {
                a2.setSize((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom());
            } else {
                a2.setSize(getMeasuredWidth(), getMeasuredHeight());
            }
        }
    }

    private void n() {
        if (this.aj == null) {
            EdgeEffect a2 = e.a(this);
            this.aj = a2;
            if (this.j) {
                a2.setSize((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom());
            } else {
                a2.setSize(getMeasuredWidth(), getMeasuredHeight());
            }
        }
    }

    private void o() {
        this.aj = null;
        this.ah = null;
        this.ai = null;
        this.ag = null;
    }

    private void p() {
        VelocityTracker velocityTracker = this.am;
        if (velocityTracker != null) {
            velocityTracker.clear();
        }
        a(0);
        j();
    }

    private void q() {
        p();
        setScrollState(0);
    }

    private void r() {
        int i2 = this.ab;
        this.ab = 0;
        if (i2 != 0 && isAccessibilityEnabled()) {
            AccessibilityEvent obtain = AccessibilityEvent.obtain();
            obtain.setEventType(2048);
            androidx.core.view.a.b.a(obtain, i2);
            sendAccessibilityEventUnchecked(obtain);
        }
    }

    private boolean s() {
        return this.E != null && this.o.c();
    }

    private void t() {
        if (this.C) {
            this.g.a();
            if (this.D) {
                this.o.a();
            }
        }
        if (s()) {
            this.g.b();
        } else {
            this.g.e();
        }
        boolean z = this.J || this.K;
        this.I.j = this.x && this.E != null && (this.C || z || this.o.u) && (!this.C || this.n.hasStableIds());
        s sVar = this.I;
        boolean z2 = false;
        if (sVar.j) {
            z2 = false;
            if (z) {
                z2 = false;
                if (!this.C) {
                    z2 = false;
                    if (s()) {
                        z2 = true;
                    }
                }
            }
        }
        sVar.k = z2;
    }

    private void u() {
        if (this.n == null) {
            Log.w("RecyclerView", "No adapter attached; skipping layout");
        } else if (this.o == null) {
            Log.e("RecyclerView", "No layout manager attached; skipping layout");
        } else {
            this.I.i = false;
            boolean z = this.aH && !(this.aI == getWidth() && this.aJ == getHeight());
            this.aI = 0;
            this.aJ = 0;
            this.aH = false;
            if (this.I.f5373d == 1) {
                y();
                this.o.setExactMeasureSpecsFrom(this);
                z();
            } else if (this.g.f() || z || this.o.getWidth() != getWidth() || this.o.getHeight() != getHeight()) {
                this.o.setExactMeasureSpecsFrom(this);
                z();
            } else {
                this.o.setExactMeasureSpecsFrom(this);
            }
            A();
        }
    }

    private void v() {
        v vVar;
        View focusedChild = (!this.ax || !hasFocus() || this.n == null) ? null : getFocusedChild();
        if (focusedChild == null) {
            vVar = null;
        } else {
            View b2 = b(focusedChild);
            vVar = b2 == null ? null : a(b2);
        }
        if (vVar == null) {
            w();
            return;
        }
        this.I.m = this.n.hasStableIds() ? vVar.getItemId() : -1L;
        this.I.l = this.C ? -1 : vVar.isRemoved() ? vVar.f5379c : vVar.getAbsoluteAdapterPosition();
        s sVar = this.I;
        View view = vVar.itemView;
        int id = view.getId();
        while (!view.isFocused() && (view instanceof ViewGroup) && view.hasFocus()) {
            View focusedChild2 = ((ViewGroup) view).getFocusedChild();
            view = focusedChild2;
            if (focusedChild2.getId() != -1) {
                id = focusedChild2.getId();
                view = focusedChild2;
            }
        }
        sVar.n = id;
    }

    private void w() {
        this.I.m = -1L;
        this.I.l = -1;
        this.I.n = -1;
    }

    /* JADX WARN: Removed duplicated region for block: B:108:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:60:0x014d  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x01dd  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void x() {
        /*
            Method dump skipped, instructions count: 538
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.x():void");
    }

    private void y() {
        this.I.a(1);
        a(this.I);
        this.I.i = false;
        d();
        this.i.a();
        f();
        t();
        v();
        s sVar = this.I;
        sVar.h = sVar.j && this.K;
        this.K = false;
        this.J = false;
        s sVar2 = this.I;
        sVar2.g = sVar2.k;
        this.I.e = this.n.getItemCount();
        a(this.aC);
        if (this.I.j) {
            int a2 = this.h.a();
            for (int i2 = 0; i2 < a2; i2++) {
                v c2 = c(this.h.b(i2));
                if (!c2.c() && (!c2.isInvalid() || this.n.hasStableIds())) {
                    f.e(c2);
                    c2.getUnmodifiedPayloads();
                    this.i.a(c2, new f.b().a(c2));
                    if (this.I.h && c2.isUpdated() && !c2.isRemoved() && !c2.c() && !c2.isInvalid()) {
                        this.i.a(e(c2), c2);
                    }
                }
            }
        }
        if (this.I.k) {
            C();
            boolean z = this.I.f;
            this.I.f = false;
            this.o.c(this.e, this.I);
            this.I.f = z;
            for (int i3 = 0; i3 < this.h.a(); i3++) {
                v c3 = c(this.h.b(i3));
                if (!c3.c() && !this.i.b(c3)) {
                    f.e(c3);
                    boolean a3 = c3.a(PropertyFlags.UNSIGNED);
                    c3.getUnmodifiedPayloads();
                    f.b a4 = new f.b().a(c3);
                    if (a3) {
                        a(c3, a4);
                    } else {
                        this.i.b(c3, a4);
                    }
                }
            }
            D();
        } else {
            D();
        }
        b(true);
        a(false);
        this.I.f5373d = 2;
    }

    private void z() {
        d();
        f();
        this.I.a(6);
        this.g.e();
        this.I.e = this.n.getItemCount();
        this.I.f5372c = 0;
        if (this.f != null && this.n.a()) {
            if (this.f.mLayoutState != null) {
                this.o.a(this.f.mLayoutState);
            }
            this.f = null;
        }
        this.I.g = false;
        this.o.c(this.e, this.I);
        this.I.f = false;
        s sVar = this.I;
        sVar.j = sVar.j && this.E != null;
        this.I.f5373d = 4;
        b(true);
        a(false);
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0067  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x006e A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final androidx.recyclerview.widget.RecyclerView.v a(int r4, boolean r5) {
        /*
            r3 = this;
            r0 = r3
            androidx.recyclerview.widget.b r0 = r0.h
            int r0 = r0.b()
            r6 = r0
            r0 = 0
            r7 = r0
            r0 = 0
            r8 = r0
        L_0x000e:
            r0 = r8
            r1 = r6
            if (r0 >= r1) goto L_0x007b
            r0 = r3
            androidx.recyclerview.widget.b r0 = r0.h
            r1 = r8
            android.view.View r0 = r0.c(r1)
            androidx.recyclerview.widget.RecyclerView$v r0 = c(r0)
            r9 = r0
            r0 = r7
            r10 = r0
            r0 = r9
            if (r0 == 0) goto L_0x0071
            r0 = r7
            r10 = r0
            r0 = r9
            boolean r0 = r0.isRemoved()
            if (r0 != 0) goto L_0x0071
            r0 = r5
            if (r0 == 0) goto L_0x004b
            r0 = r9
            int r0 = r0.f5378b
            r1 = r4
            if (r0 == r1) goto L_0x0058
            r0 = r7
            r10 = r0
            goto L_0x0071
        L_0x004b:
            r0 = r7
            r10 = r0
            r0 = r9
            int r0 = r0.getLayoutPosition()
            r1 = r4
            if (r0 != r1) goto L_0x0071
        L_0x0058:
            r0 = r3
            androidx.recyclerview.widget.b r0 = r0.h
            r1 = r9
            android.view.View r1 = r1.itemView
            boolean r0 = r0.d(r1)
            if (r0 == 0) goto L_0x006e
            r0 = r9
            r10 = r0
            goto L_0x0071
        L_0x006e:
            r0 = r9
            return r0
        L_0x0071:
            int r8 = r8 + 1
            r0 = r10
            r7 = r0
            goto L_0x000e
        L_0x007b:
            r0 = r7
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.a(int, boolean):androidx.recyclerview.widget.RecyclerView$v");
    }

    public final v a(View view) {
        ViewParent parent = view.getParent();
        if (parent == null || parent == this) {
            return c(view);
        }
        throw new IllegalArgumentException("View " + view + " is not a direct child of " + this);
    }

    final String a() {
        return StringUtils.SPACE + super.toString() + ", adapter:" + this.n + ", layout:" + this.o + ", context:" + getContext();
    }

    @Override // androidx.core.view.k
    public final void a(int i2) {
        getScrollingChildHelper().b(i2);
    }

    public final void a(int i2, int i3, int i4, int i5, int[] iArr, int i6, int[] iArr2) {
        getScrollingChildHelper().a(i2, i3, i4, i5, iArr, i6, iArr2);
    }

    final void a(int i2, int i3, Interpolator interpolator, int i4, boolean z) {
        i iVar = this.o;
        if (iVar == null) {
            Log.e("RecyclerView", "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
        } else if (!this.z) {
            int i5 = 0;
            int i6 = i2;
            if (!iVar.e()) {
                i6 = 0;
            }
            if (!this.o.f()) {
                i3 = 0;
            }
            if (i6 != 0 || i3 != 0) {
                if (z) {
                    if (i6 != 0) {
                        i5 = 1;
                    }
                    int i7 = i5;
                    if (i3 != 0) {
                        i7 = i5 | 2;
                    }
                    g(i7, 1);
                }
                this.F.a(i6, i3, BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW, null);
            }
        }
    }

    final void a(int i2, int i3, boolean z) {
        int i4 = i2 + i3;
        int b2 = this.h.b();
        for (int i5 = 0; i5 < b2; i5++) {
            v c2 = c(this.h.c(i5));
            if (c2 != null && !c2.c()) {
                if (c2.f5378b >= i4) {
                    c2.a(-i3, z);
                    this.I.f = true;
                } else if (c2.f5378b >= i2) {
                    c2.b(8);
                    c2.a(-i3, z);
                    c2.f5378b = i2 - 1;
                    this.I.f = true;
                }
            }
        }
        o oVar = this.e;
        for (int size = oVar.f5362c.size() - 1; size >= 0; size--) {
            v vVar = oVar.f5362c.get(size);
            if (vVar != null) {
                if (vVar.f5378b >= i4) {
                    vVar.a(-i3, z);
                } else if (vVar.f5378b >= i2) {
                    vVar.b(8);
                    oVar.c(size);
                }
            }
        }
        requestLayout();
    }

    final void a(int i2, int i3, int[] iArr) {
        d();
        f();
        androidx.core.os.g.a("RV Scroll");
        a(this.I);
        int a2 = i2 != 0 ? this.o.a(i2, this.e, this.I) : 0;
        int b2 = i3 != 0 ? this.o.b(i3, this.e, this.I) : 0;
        androidx.core.os.g.a();
        int a3 = this.h.a();
        for (int i4 = 0; i4 < a3; i4++) {
            View b3 = this.h.b(i4);
            v a4 = a(b3);
            if (!(a4 == null || a4.h == null)) {
                View view = a4.h.itemView;
                int left = b3.getLeft();
                int top = b3.getTop();
                if (left != view.getLeft() || top != view.getTop()) {
                    view.layout(left, top, view.getWidth() + left, view.getHeight() + top);
                }
            }
        }
        b(true);
        a(false);
        if (iArr != null) {
            iArr[0] = a2;
            iArr[1] = b2;
        }
    }

    public final void a(h hVar) {
        a(hVar, -1);
    }

    public final void a(h hVar, int i2) {
        i iVar = this.o;
        if (iVar != null) {
            iVar.a("Cannot add item decoration during a scroll  or layout");
        }
        if (this.r.isEmpty()) {
            setWillNotDraw(false);
        }
        if (i2 < 0) {
            this.r.add(hVar);
        } else {
            this.r.add(i2, hVar);
        }
        B();
        requestLayout();
    }

    public final void a(j jVar) {
        if (this.B == null) {
            this.B = new ArrayList();
        }
        this.B.add(jVar);
    }

    public final void a(m mVar) {
        if (this.az == null) {
            this.az = new ArrayList();
        }
        this.az.add(mVar);
    }

    void a(v vVar) {
        View view = vVar.itemView;
        boolean z = view.getParent() == this;
        this.e.b(a(view));
        if (vVar.isTmpDetached()) {
            this.h.a(view, -1, view.getLayoutParams(), true);
        } else if (!z) {
            this.h.a(view, -1, true);
        } else {
            androidx.recyclerview.widget.b bVar = this.h;
            int a2 = bVar.f5406a.a(view);
            if (a2 >= 0) {
                bVar.f5407b.a(a2);
                bVar.a(view);
                return;
            }
            throw new IllegalArgumentException("view is not a child, cannot hide ".concat(String.valueOf(view)));
        }
    }

    final void a(v vVar, f.b bVar) {
        vVar.setFlags(0, PropertyFlags.UNSIGNED);
        if (this.I.h && vVar.isUpdated() && !vVar.isRemoved() && !vVar.c()) {
            this.i.a(e(vVar), vVar);
        }
        this.i.a(vVar, bVar);
    }

    final void a(String str) {
        if (isComputingLayout()) {
            if (str == null) {
                throw new IllegalStateException("Cannot call this method while RecyclerView is computing a layout or scrolling" + a());
            }
            throw new IllegalStateException(str);
        } else if (this.ae > 0) {
            Log.w("RecyclerView", "Cannot call this method in a scroll callback. Scroll callbacks mightbe run during a measure & layout pass where you cannot change theRecyclerView data. Any method call that might change the structureof the RecyclerView or the adapter contents should be postponed tothe next frame.", new IllegalStateException(a()));
        }
    }

    void a(boolean z) {
        if (this.W <= 0) {
            this.W = 1;
        }
        if (!z && !this.z) {
            this.y = false;
        }
        if (this.W == 1) {
            if (z && this.y && !this.z && this.o != null && this.n != null) {
                u();
            }
            if (!this.z) {
                this.y = false;
            }
        }
        this.W--;
    }

    public final boolean a(int i2, int i3, int[] iArr, int[] iArr2, int i4) {
        return getScrollingChildHelper().a(i2, i3, iArr, iArr2, i4);
    }

    final boolean a(v vVar, int i2) {
        if (isComputingLayout()) {
            vVar.o = i2;
            this.O.add(vVar);
            return false;
        }
        androidx.core.view.v.c(vVar.itemView, i2);
        return true;
    }

    public void a_(int i2, int i3) {
        a(i2, i3, (Interpolator) null, BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW, false);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void addFocusables(ArrayList<View> arrayList, int i2, int i3) {
        super.addFocusables(arrayList, i2, i3);
    }

    public final View b(View view) {
        ViewParent parent = view.getParent();
        View view2 = view;
        while (parent != null && parent != this && (parent instanceof View)) {
            view2 = (View) parent;
            parent = view2.getParent();
        }
        if (parent == this) {
            return view2;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b() {
        f fVar = this.E;
        if (fVar != null) {
            fVar.d();
        }
        i iVar = this.o;
        if (iVar != null) {
            iVar.c(this.e);
            this.o.b(this.e);
        }
        this.e.a();
    }

    public final void b(int i2) {
        if (!this.z) {
            e();
            i iVar = this.o;
            if (iVar == null) {
                Log.e("RecyclerView", "Cannot scroll to position a LayoutManager set. Call setLayoutManager with a non-null argument.");
                return;
            }
            iVar.d(i2);
            awakenScrollBars();
        }
    }

    final void b(int i2, int i3) {
        boolean z;
        EdgeEffect edgeEffect = this.ag;
        if (edgeEffect == null || edgeEffect.isFinished() || i2 <= 0) {
            z = false;
        } else {
            this.ag.onRelease();
            z = this.ag.isFinished();
        }
        EdgeEffect edgeEffect2 = this.ai;
        boolean z2 = z;
        if (edgeEffect2 != null) {
            z2 = z;
            if (!edgeEffect2.isFinished()) {
                z2 = z;
                if (i2 < 0) {
                    this.ai.onRelease();
                    z2 = z | this.ai.isFinished();
                }
            }
        }
        EdgeEffect edgeEffect3 = this.ah;
        boolean z3 = z2;
        if (edgeEffect3 != null) {
            z3 = z2;
            if (!edgeEffect3.isFinished()) {
                z3 = z2;
                if (i3 > 0) {
                    this.ah.onRelease();
                    z3 = z2 | this.ah.isFinished();
                }
            }
        }
        EdgeEffect edgeEffect4 = this.aj;
        boolean z4 = z3;
        if (edgeEffect4 != null) {
            z4 = z3;
            if (!edgeEffect4.isFinished()) {
                z4 = z3;
                if (i3 < 0) {
                    this.aj.onRelease();
                    z4 = z3 | this.aj.isFinished();
                }
            }
        }
        if (z4) {
            androidx.core.view.v.d(this);
        }
    }

    public final void b(h hVar) {
        i iVar = this.o;
        if (iVar != null) {
            iVar.a("Cannot remove item decoration during a scroll  or layout");
        }
        this.r.remove(hVar);
        if (this.r.isEmpty()) {
            setWillNotDraw(getOverScrollMode() == 2);
        }
        B();
        requestLayout();
    }

    public final void b(m mVar) {
        List<m> list = this.az;
        if (list != null) {
            list.remove(mVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b(boolean z) {
        int i2 = this.ad - 1;
        this.ad = i2;
        if (i2 <= 0) {
            this.ad = 0;
            if (z) {
                r();
                F();
            }
        }
    }

    final boolean b(v vVar) {
        f fVar = this.E;
        return fVar == null || fVar.a(vVar, vVar.getUnmodifiedPayloads());
    }

    final void c() {
        if (!this.x || this.C) {
            androidx.core.os.g.a("RV FullInvalidate");
            u();
            androidx.core.os.g.a();
        } else if (this.g.d()) {
            if (this.g.a(4) && !this.g.a(11)) {
                androidx.core.os.g.a("RV PartialInvalidate");
                d();
                f();
                this.g.b();
                if (!this.y) {
                    int a2 = this.h.a();
                    boolean z = false;
                    int i2 = 0;
                    while (true) {
                        if (i2 < a2) {
                            v c2 = c(this.h.b(i2));
                            if (c2 != null && !c2.c() && c2.isUpdated()) {
                                z = true;
                                break;
                            }
                            i2++;
                        } else {
                            break;
                        }
                    }
                    if (z) {
                        u();
                    } else {
                        this.g.c();
                    }
                }
                a(true);
                b(true);
                androidx.core.os.g.a();
            } else if (this.g.d()) {
                androidx.core.os.g.a("RV FullInvalidate");
                u();
                androidx.core.os.g.a();
            }
        }
    }

    final void c(int i2) {
        if (this.o != null) {
            setScrollState(2);
            this.o.d(i2);
            awakenScrollBars();
        }
    }

    final void c(int i2, int i3) {
        if (i2 < 0) {
            k();
            if (this.ag.isFinished()) {
                this.ag.onAbsorb(-i2);
            }
        } else if (i2 > 0) {
            l();
            if (this.ai.isFinished()) {
                this.ai.onAbsorb(i2);
            }
        }
        if (i3 < 0) {
            m();
            if (this.ah.isFinished()) {
                this.ah.onAbsorb(-i3);
            }
        } else if (i3 > 0) {
            n();
            if (this.aj.isFinished()) {
                this.aj.onAbsorb(i3);
            }
        }
        if (i2 != 0 || i3 != 0) {
            androidx.core.view.v.d(this);
        }
    }

    final void c(boolean z) {
        this.D = z | this.D;
        this.C = true;
        E();
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof LayoutParams) && this.o.a((LayoutParams) layoutParams);
    }

    @Override // android.view.View
    public int computeHorizontalScrollExtent() {
        i iVar = this.o;
        if (iVar != null && iVar.e()) {
            return this.o.f(this.I);
        }
        return 0;
    }

    @Override // android.view.View
    public int computeHorizontalScrollOffset() {
        i iVar = this.o;
        if (iVar != null && iVar.e()) {
            return this.o.d(this.I);
        }
        return 0;
    }

    @Override // android.view.View
    public int computeHorizontalScrollRange() {
        i iVar = this.o;
        if (iVar != null && iVar.e()) {
            return this.o.b(this.I);
        }
        return 0;
    }

    @Override // android.view.View
    public int computeVerticalScrollExtent() {
        i iVar = this.o;
        if (iVar != null && iVar.f()) {
            return this.o.g(this.I);
        }
        return 0;
    }

    @Override // android.view.View
    public int computeVerticalScrollOffset() {
        i iVar = this.o;
        if (iVar != null && iVar.f()) {
            return this.o.e(this.I);
        }
        return 0;
    }

    @Override // android.view.View
    public int computeVerticalScrollRange() {
        i iVar = this.o;
        if (iVar != null && iVar.f()) {
            return this.o.c(this.I);
        }
        return 0;
    }

    final int d(v vVar) {
        if (vVar.a(524) || !vVar.isBound()) {
            return -1;
        }
        return this.g.c(vVar.f5378b);
    }

    void d() {
        int i2 = this.W + 1;
        this.W = i2;
        if (i2 == 1 && !this.z) {
            this.y = false;
        }
    }

    public final void d(int i2) {
        if (!this.z) {
            i iVar = this.o;
            if (iVar == null) {
                Log.e("RecyclerView", "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
            } else {
                iVar.a(this, this.I, i2);
            }
        }
    }

    final void d(int i2, int i3) {
        setMeasuredDimension(i.a(i2, getPaddingLeft() + getPaddingRight(), androidx.core.view.v.k(this)), i.a(i3, getPaddingTop() + getPaddingBottom(), androidx.core.view.v.l(this)));
    }

    @Override // android.view.View
    public boolean dispatchNestedFling(float f2, float f3, boolean z) {
        return getScrollingChildHelper().a(f2, f3, z);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreFling(float f2, float f3) {
        return getScrollingChildHelper().a(f2, f3);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreScroll(int i2, int i3, int[] iArr, int[] iArr2) {
        return getScrollingChildHelper().a(i2, i3, iArr, iArr2);
    }

    @Override // android.view.View
    public boolean dispatchNestedScroll(int i2, int i3, int i4, int i5, int[] iArr) {
        return getScrollingChildHelper().a(i2, i3, i4, i5, iArr);
    }

    @Override // android.view.View
    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        onPopulateAccessibilityEvent(accessibilityEvent);
        return true;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchRestoreInstanceState(SparseArray<Parcelable> sparseArray) {
        dispatchThawSelfOnly(sparseArray);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchSaveInstanceState(SparseArray<Parcelable> sparseArray) {
        dispatchFreezeSelfOnly(sparseArray);
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        boolean z;
        super.draw(canvas);
        int size = this.r.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.r.get(i2).a(canvas, this, this.I);
        }
        EdgeEffect edgeEffect = this.ag;
        boolean z2 = true;
        if (edgeEffect == null || edgeEffect.isFinished()) {
            z = false;
        } else {
            int save = canvas.save();
            int paddingBottom = this.j ? getPaddingBottom() : 0;
            canvas.rotate(270.0f);
            canvas.translate((-getHeight()) + paddingBottom, BitmapDescriptorFactory.HUE_RED);
            EdgeEffect edgeEffect2 = this.ag;
            z = edgeEffect2 != null && edgeEffect2.draw(canvas);
            canvas.restoreToCount(save);
        }
        EdgeEffect edgeEffect3 = this.ah;
        boolean z3 = z;
        if (edgeEffect3 != null) {
            z3 = z;
            if (!edgeEffect3.isFinished()) {
                int save2 = canvas.save();
                if (this.j) {
                    canvas.translate(getPaddingLeft(), getPaddingTop());
                }
                EdgeEffect edgeEffect4 = this.ah;
                z3 = z | (edgeEffect4 != null && edgeEffect4.draw(canvas));
                canvas.restoreToCount(save2);
            }
        }
        EdgeEffect edgeEffect5 = this.ai;
        boolean z4 = z3;
        if (edgeEffect5 != null) {
            z4 = z3;
            if (!edgeEffect5.isFinished()) {
                int save3 = canvas.save();
                int width = getWidth();
                int paddingTop = this.j ? getPaddingTop() : 0;
                canvas.rotate(90.0f);
                canvas.translate(paddingTop, -width);
                EdgeEffect edgeEffect6 = this.ai;
                z4 = z3 | (edgeEffect6 != null && edgeEffect6.draw(canvas));
                canvas.restoreToCount(save3);
            }
        }
        EdgeEffect edgeEffect7 = this.aj;
        z2 = z4;
        if (edgeEffect7 != null) {
            z2 = z4;
            if (!edgeEffect7.isFinished()) {
                int save4 = canvas.save();
                canvas.rotate(180.0f);
                if (this.j) {
                    canvas.translate((-getWidth()) + getPaddingRight(), (-getHeight()) + getPaddingBottom());
                } else {
                    canvas.translate(-getWidth(), -getHeight());
                }
                EdgeEffect edgeEffect8 = this.aj;
                boolean z5 = false;
                if (edgeEffect8 != null) {
                    z5 = false;
                    if (edgeEffect8.draw(canvas)) {
                        z5 = true;
                    }
                }
                z2 = z4 | z5;
                canvas.restoreToCount(save4);
            }
        }
        if (z2 || this.E == null || this.r.size() <= 0 || this.E.b()) {
        }
        if (z2) {
            androidx.core.view.v.d(this);
        }
    }

    @Override // android.view.ViewGroup
    public boolean drawChild(Canvas canvas, View view, long j2) {
        return super.drawChild(canvas, view, j2);
    }

    public final v e(int i2) {
        v vVar = null;
        if (this.C) {
            return null;
        }
        int b2 = this.h.b();
        for (int i3 = 0; i3 < b2; i3++) {
            v c2 = c(this.h.c(i3));
            vVar = vVar;
            if (c2 != null) {
                vVar = vVar;
                if (!c2.isRemoved()) {
                    vVar = vVar;
                    if (d(c2) != i2) {
                        continue;
                    } else if (!this.h.d(c2.itemView)) {
                        return c2;
                    } else {
                        vVar = c2;
                    }
                } else {
                    continue;
                }
            }
        }
        return vVar;
    }

    public final void e() {
        setScrollState(0);
        i();
    }

    final void e(int i2, int i3) {
        this.ae++;
        int scrollX = getScrollX();
        int scrollY = getScrollY();
        onScrollChanged(scrollX, scrollY, scrollX - i2, scrollY - i3);
        m mVar = this.ay;
        if (mVar != null) {
            mVar.a(this, i2, i3);
        }
        List<m> list = this.az;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.az.get(size).a(this, i2, i3);
            }
        }
        this.ae--;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Rect f(View view) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        if (!layoutParams.e) {
            return layoutParams.f5333d;
        }
        if (this.I.g && (layoutParams.f5332c.isUpdated() || layoutParams.f5332c.isInvalid())) {
            return layoutParams.f5333d;
        }
        Rect rect = layoutParams.f5333d;
        rect.set(0, 0, 0, 0);
        int size = this.r.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.l.set(0, 0, 0, 0);
            this.r.get(i2).a(this.l, view, this, this.I);
            rect.left += this.l.left;
            rect.top += this.l.top;
            rect.right += this.l.right;
            rect.bottom += this.l.bottom;
        }
        layoutParams.e = false;
        return rect;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void f() {
        this.ad++;
    }

    /* JADX WARN: Removed duplicated region for block: B:171:0x03c3  */
    /* JADX WARN: Removed duplicated region for block: B:173:0x03c5  */
    @Override // android.view.ViewGroup, android.view.ViewParent
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.view.View focusSearch(android.view.View r7, int r8) {
        /*
            Method dump skipped, instructions count: 973
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.focusSearch(android.view.View, int):android.view.View");
    }

    final void g() {
        if (!this.L && this.u) {
            androidx.core.view.v.a(this, this.aG);
            this.L = true;
        }
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
        i iVar = this.o;
        if (iVar != null) {
            return iVar.b();
        }
        throw new IllegalStateException("RecyclerView has no LayoutManager" + a());
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        i iVar = this.o;
        if (iVar != null) {
            return iVar.a(getContext(), attributeSet);
        }
        throw new IllegalStateException("RecyclerView has no LayoutManager" + a());
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        i iVar = this.o;
        if (iVar != null) {
            return iVar.a(layoutParams);
        }
        throw new IllegalStateException("RecyclerView has no LayoutManager" + a());
    }

    @Override // android.view.ViewGroup, android.view.View
    public CharSequence getAccessibilityClassName() {
        return "androidx.recyclerview.widget.RecyclerView";
    }

    public a getAdapter() {
        return this.n;
    }

    @Override // android.view.View
    public int getBaseline() {
        i iVar = this.o;
        return iVar != null ? iVar.getBaseline() : super.getBaseline();
    }

    @Override // android.view.ViewGroup
    protected int getChildDrawingOrder(int i2, int i3) {
        d dVar = this.aB;
        return dVar == null ? super.getChildDrawingOrder(i2, i3) : dVar.a();
    }

    @Override // android.view.ViewGroup
    public boolean getClipToPadding() {
        return this.j;
    }

    public f getItemAnimator() {
        return this.E;
    }

    public h getItemDecorationAt(int i2) {
        int itemDecorationCount = getItemDecorationCount();
        if (i2 >= 0 && i2 < itemDecorationCount) {
            return this.r.get(i2);
        }
        throw new IndexOutOfBoundsException(i2 + " is an invalid index for size " + itemDecorationCount);
    }

    public int getItemDecorationCount() {
        return this.r.size();
    }

    public i getLayoutManager() {
        return this.o;
    }

    public int getMinFlingVelocity() {
        return this.at;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long getNanoTime() {
        if (f5325d) {
            return System.nanoTime();
        }
        return 0L;
    }

    public k getOnFlingListener() {
        return this.as;
    }

    public int getScrollState() {
        return this.ak;
    }

    final void h(View view) {
        v c2 = c(view);
        a aVar = this.n;
        if (!(aVar == null || c2 == null)) {
            aVar.onViewDetachedFromWindow(c2);
        }
        List<j> list = this.B;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.B.get(size).b(view);
            }
        }
    }

    public final boolean h() {
        return !this.x || this.C || this.g.d();
    }

    @Override // android.view.View
    public boolean hasNestedScrollingParent() {
        return getScrollingChildHelper().a(0);
    }

    boolean isAccessibilityEnabled() {
        AccessibilityManager accessibilityManager = this.ac;
        return accessibilityManager != null && accessibilityManager.isEnabled();
    }

    @Override // android.view.View
    public boolean isAttachedToWindow() {
        return this.u;
    }

    public boolean isComputingLayout() {
        return this.ad > 0;
    }

    @Override // android.view.ViewGroup
    public final boolean isLayoutSuppressed() {
        return this.z;
    }

    @Override // android.view.View, androidx.core.view.j
    public boolean isNestedScrollingEnabled() {
        return getScrollingChildHelper().f2004a;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.ad = 0;
        this.u = true;
        this.x = this.x && !isLayoutRequested();
        i iVar = this.o;
        if (iVar != null) {
            iVar.v = true;
        }
        this.L = false;
        if (f5325d) {
            androidx.recyclerview.widget.e eVar = androidx.recyclerview.widget.e.f5458a.get();
            this.G = eVar;
            if (eVar == null) {
                this.G = new androidx.recyclerview.widget.e();
                Display G = androidx.core.view.v.G(this);
                float f2 = 60.0f;
                if (!isInEditMode()) {
                    f2 = 60.0f;
                    if (G != null) {
                        float refreshRate = G.getRefreshRate();
                        f2 = 60.0f;
                        if (refreshRate >= 30.0f) {
                            f2 = refreshRate;
                        }
                    }
                }
                this.G.f5461d = 1.0E9f / f2;
                androidx.recyclerview.widget.e.f5458a.set(this.G);
            }
            this.G.f5459b.add(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        androidx.recyclerview.widget.e eVar;
        super.onDetachedFromWindow();
        f fVar = this.E;
        if (fVar != null) {
            fVar.d();
        }
        e();
        this.u = false;
        i iVar = this.o;
        if (iVar != null) {
            iVar.b(this, this.e);
        }
        this.O.clear();
        removeCallbacks(this.aG);
        q.a.b();
        if (f5325d && (eVar = this.G) != null) {
            eVar.f5459b.remove(this);
            this.G = null;
        }
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int size = this.r.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.r.get(i2).b(canvas, this, this.I);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x0092  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00b5  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00c2  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onGenericMotionEvent(android.view.MotionEvent r8) {
        /*
            Method dump skipped, instructions count: 417
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.onGenericMotionEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        boolean z;
        if (this.z) {
            return false;
        }
        this.t = null;
        if (a(motionEvent)) {
            q();
            return true;
        }
        i iVar = this.o;
        if (iVar == null) {
            return false;
        }
        boolean e2 = iVar.e();
        boolean f2 = this.o.f();
        if (this.am == null) {
            this.am = VelocityTracker.obtain();
        }
        this.am.addMovement(motionEvent);
        int actionMasked = motionEvent.getActionMasked();
        int actionIndex = motionEvent.getActionIndex();
        if (actionMasked == 0) {
            if (this.aa) {
                this.aa = false;
            }
            this.al = motionEvent.getPointerId(0);
            int x = (int) (motionEvent.getX() + 0.5f);
            this.ap = x;
            this.an = x;
            int y = (int) (motionEvent.getY() + 0.5f);
            this.aq = y;
            this.ao = y;
            if (this.ak == 2) {
                getParent().requestDisallowInterceptTouchEvent(true);
                setScrollState(1);
                a(1);
            }
            int[] iArr = this.aF;
            iArr[1] = 0;
            iArr[0] = 0;
            int i2 = e2;
            if (f2) {
                i2 = e2 | 2;
            }
            g(i2, 0);
        } else if (actionMasked == 1) {
            this.am.clear();
            a(0);
        } else if (actionMasked == 2) {
            int findPointerIndex = motionEvent.findPointerIndex(this.al);
            if (findPointerIndex < 0) {
                Log.e("RecyclerView", "Error processing scroll; pointer index for id " + this.al + " not found. Did any MotionEvents get skipped?");
                return false;
            }
            int x2 = (int) (motionEvent.getX(findPointerIndex) + 0.5f);
            int y2 = (int) (motionEvent.getY(findPointerIndex) + 0.5f);
            if (this.ak != 1) {
                int i3 = this.an;
                int i4 = this.ao;
                if (!e2 || Math.abs(x2 - i3) <= this.ar) {
                    z = false;
                } else {
                    this.ap = x2;
                    z = true;
                }
                boolean z2 = z;
                if (f2) {
                    z2 = z;
                    if (Math.abs(y2 - i4) > this.ar) {
                        this.aq = y2;
                        z2 = true;
                    }
                }
                if (z2) {
                    setScrollState(1);
                }
            }
        } else if (actionMasked == 3) {
            q();
        } else if (actionMasked == 5) {
            this.al = motionEvent.getPointerId(actionIndex);
            int x3 = (int) (motionEvent.getX(actionIndex) + 0.5f);
            this.ap = x3;
            this.an = x3;
            int y3 = (int) (motionEvent.getY(actionIndex) + 0.5f);
            this.aq = y3;
            this.ao = y3;
        } else if (actionMasked == 6) {
            b(motionEvent);
        }
        return this.ak == 1;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        androidx.core.os.g.a("RV OnLayout");
        u();
        androidx.core.os.g.a();
        this.x = true;
    }

    @Override // android.view.View
    protected void onMeasure(int i2, int i3) {
        i iVar = this.o;
        if (iVar == null) {
            d(i2, i3);
        } else if (iVar.isAutoMeasureEnabled()) {
            int mode = View.MeasureSpec.getMode(i2);
            int mode2 = View.MeasureSpec.getMode(i3);
            this.o.f(i2, i3);
            boolean z = false;
            if (mode == 1073741824) {
                z = false;
                if (mode2 == 1073741824) {
                    z = true;
                }
            }
            this.aH = z;
            if (!z && this.n != null) {
                if (this.I.f5373d == 1) {
                    y();
                }
                this.o.setMeasureSpecs(i2, i3);
                this.I.i = true;
                z();
                this.o.setMeasuredDimensionFromChildren(i2, i3);
                if (this.o.h()) {
                    this.o.setMeasureSpecs(View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 1073741824));
                    this.I.i = true;
                    z();
                    this.o.setMeasuredDimensionFromChildren(i2, i3);
                }
                this.aI = getMeasuredWidth();
                this.aJ = getMeasuredHeight();
            }
        } else if (this.v) {
            this.o.f(i2, i3);
        } else {
            if (this.A) {
                d();
                f();
                t();
                b(true);
                if (this.I.k) {
                    this.I.g = true;
                } else {
                    this.g.e();
                    this.I.g = false;
                }
                this.A = false;
                a(false);
            } else if (this.I.k) {
                setMeasuredDimension(getMeasuredWidth(), getMeasuredHeight());
                return;
            }
            a aVar = this.n;
            if (aVar != null) {
                this.I.e = aVar.getItemCount();
            } else {
                this.I.e = 0;
            }
            d();
            this.o.f(i2, i3);
            a(false);
            this.I.g = false;
        }
    }

    @Override // android.view.ViewGroup
    protected boolean onRequestFocusInDescendants(int i2, Rect rect) {
        if (isComputingLayout()) {
            return false;
        }
        return super.onRequestFocusInDescendants(i2, rect);
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        this.f = savedState;
        super.onRestoreInstanceState(savedState.getSuperState());
        requestLayout();
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        SavedState savedState2 = this.f;
        if (savedState2 != null) {
            savedState.copyFrom(savedState2);
        } else {
            i iVar = this.o;
            if (iVar != null) {
                savedState.mLayoutState = iVar.d();
            } else {
                savedState.mLayoutState = null;
            }
        }
        return savedState;
    }

    @Override // android.view.View
    protected void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        if (i2 != i4 || i3 != i5) {
            o();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:104:0x0360, code lost:
        if (r15 != 0) goto L_0x0363;
     */
    /* JADX WARN: Code restructure failed: missing block: B:126:0x0411, code lost:
        if (java.lang.Math.abs(r0) < r10.at) goto L_0x0414;
     */
    /* JADX WARN: Code restructure failed: missing block: B:131:0x0429, code lost:
        if (java.lang.Math.abs(r0) < r10.at) goto L_0x042c;
     */
    /* JADX WARN: Code restructure failed: missing block: B:161:0x053b, code lost:
        if (r15 != false) goto L_0x0543;
     */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0208  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x024b  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r11) {
        /*
            Method dump skipped, instructions count: 1460
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.onTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.view.ViewGroup
    protected void removeDetachedView(View view, boolean z) {
        v c2 = c(view);
        if (c2 != null) {
            if (c2.isTmpDetached()) {
                c2.g();
            } else if (!c2.c()) {
                throw new IllegalArgumentException("Called removeDetachedView with a view which is not flagged as tmp detached." + c2 + a());
            }
        }
        view.clearAnimation();
        h(view);
        super.removeDetachedView(view, z);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestChildFocus(View view, View view2) {
        if (!(this.o.isSmoothScrolling() || isComputingLayout()) && view2 != null) {
            a(view, view2);
        }
        super.requestChildFocus(view, view2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z) {
        return this.o.a(this, view, rect, z, false);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z) {
        int size = this.s.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.s.get(i2);
        }
        super.requestDisallowInterceptTouchEvent(z);
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        if (this.W != 0 || this.z) {
            this.y = true;
        } else {
            super.requestLayout();
        }
    }

    @Override // android.view.View
    public void scrollBy(int i2, int i3) {
        i iVar = this.o;
        if (iVar == null) {
            Log.e("RecyclerView", "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
        } else if (!this.z) {
            boolean e2 = iVar.e();
            boolean f2 = this.o.f();
            if (e2 || f2) {
                if (!e2) {
                    i2 = 0;
                }
                if (!f2) {
                    i3 = 0;
                }
                a(i2, i3, (MotionEvent) null, 0);
            }
        }
    }

    @Override // android.view.View
    public void scrollTo(int i2, int i3) {
        Log.w("RecyclerView", "RecyclerView does not support scrolling to an absolute position. Use scrollToPosition instead");
    }

    @Override // android.view.View, android.view.accessibility.AccessibilityEventSource
    public void sendAccessibilityEventUnchecked(AccessibilityEvent accessibilityEvent) {
        boolean z = false;
        int contentChangeTypes = 0;
        if (isComputingLayout()) {
            contentChangeTypes = (accessibilityEvent == null || Build.VERSION.SDK_INT < 19) ? 0 : accessibilityEvent.getContentChangeTypes();
            if (contentChangeTypes == 0) {
            }
            this.ab |= contentChangeTypes;
            z = true;
        }
        if (!z) {
            super.sendAccessibilityEventUnchecked(accessibilityEvent);
        }
    }

    public void setAccessibilityDelegateCompat(androidx.recyclerview.widget.l lVar) {
        this.M = lVar;
        androidx.core.view.v.a(this, lVar);
    }

    public void setAdapter(a aVar) {
        setLayoutFrozen(false);
        a aVar2 = this.n;
        if (aVar2 != null) {
            aVar2.unregisterAdapterDataObserver(this.U);
            this.n.onDetachedFromRecyclerView(this);
        }
        b();
        this.g.a();
        a aVar3 = this.n;
        this.n = aVar;
        if (aVar != null) {
            aVar.registerAdapterDataObserver(this.U);
            aVar.onAttachedToRecyclerView(this);
        }
        i iVar = this.o;
        if (iVar != null) {
            iVar.l();
        }
        o oVar = this.e;
        a aVar4 = this.n;
        oVar.a();
        n c2 = oVar.c();
        if (aVar3 != null) {
            c2.b();
        }
        if (c2.f5355b == 0) {
            for (int i2 = 0; i2 < c2.f5354a.size(); i2++) {
                c2.f5354a.valueAt(i2).f5356a.clear();
            }
        }
        if (aVar4 != null) {
            c2.a();
        }
        this.I.f = true;
        c(false);
        requestLayout();
    }

    public void setChildDrawingOrderCallback(d dVar) {
        if (dVar != this.aB) {
            this.aB = dVar;
            setChildrenDrawingOrderEnabled(dVar != null);
        }
    }

    @Override // android.view.ViewGroup
    public void setClipToPadding(boolean z) {
        if (z != this.j) {
            o();
        }
        this.j = z;
        super.setClipToPadding(z);
        if (this.x) {
            requestLayout();
        }
    }

    public void setEdgeEffectFactory(e eVar) {
        androidx.core.e.d.a(eVar);
        this.af = eVar;
        o();
    }

    public void setHasFixedSize(boolean z) {
        this.v = z;
    }

    public void setItemAnimator(f fVar) {
        f fVar2 = this.E;
        if (fVar2 != null) {
            fVar2.d();
            this.E.h = null;
        }
        this.E = fVar;
        if (fVar != null) {
            fVar.h = this.aA;
        }
    }

    public void setItemViewCacheSize(int i2) {
        o oVar = this.e;
        oVar.e = i2;
        oVar.b();
    }

    @Deprecated
    public void setLayoutFrozen(boolean z) {
        suppressLayout(z);
    }

    public void setLayoutManager(i iVar) {
        if (iVar != this.o) {
            e();
            if (this.o != null) {
                f fVar = this.E;
                if (fVar != null) {
                    fVar.d();
                }
                this.o.c(this.e);
                this.o.b(this.e);
                this.e.a();
                if (this.u) {
                    this.o.b(this, this.e);
                }
                this.o.setRecyclerView(null);
                this.o = null;
            } else {
                this.e.a();
            }
            androidx.recyclerview.widget.b bVar = this.h;
            b.a aVar = bVar.f5407b;
            while (true) {
                aVar.f5409a = 0L;
                if (aVar.f5410b == null) {
                    break;
                }
                aVar = aVar.f5410b;
            }
            for (int size = bVar.f5408c.size() - 1; size >= 0; size--) {
                bVar.f5406a.d(bVar.f5408c.get(size));
                bVar.f5408c.remove(size);
            }
            bVar.f5406a.b();
            this.o = iVar;
            if (iVar != null) {
                if (iVar.q == null) {
                    this.o.setRecyclerView(this);
                    if (this.u) {
                        this.o.v = true;
                    }
                } else {
                    throw new IllegalArgumentException("LayoutManager " + iVar + " is already attached to a RecyclerView:" + iVar.q.a());
                }
            }
            this.e.b();
            requestLayout();
        }
    }

    @Override // android.view.ViewGroup
    @Deprecated
    public void setLayoutTransition(LayoutTransition layoutTransition) {
        if (Build.VERSION.SDK_INT < 18) {
            if (layoutTransition == null) {
                suppressLayout(false);
                return;
            } else if (layoutTransition.getAnimator(0) == null && layoutTransition.getAnimator(1) == null && layoutTransition.getAnimator(2) == null && layoutTransition.getAnimator(3) == null && layoutTransition.getAnimator(4) == null) {
                suppressLayout(true);
                return;
            }
        }
        if (layoutTransition == null) {
            super.setLayoutTransition(null);
            return;
        }
        throw new IllegalArgumentException("Providing a LayoutTransition into RecyclerView is not supported. Please use setItemAnimator() instead for animating changes to the items in this RecyclerView");
    }

    @Override // android.view.View
    public void setNestedScrollingEnabled(boolean z) {
        getScrollingChildHelper().a(z);
    }

    public void setOnFlingListener(k kVar) {
        this.as = kVar;
    }

    @Deprecated
    public void setOnScrollListener(m mVar) {
        this.ay = mVar;
    }

    public void setPreserveFocusAfterLayout(boolean z) {
        this.ax = z;
    }

    public void setRecycledViewPool(n nVar) {
        o oVar = this.e;
        if (oVar.g != null) {
            oVar.g.b();
        }
        oVar.g = nVar;
        if (oVar.g != null && RecyclerView.this.getAdapter() != null) {
            oVar.g.a();
        }
    }

    @Deprecated
    public void setRecyclerListener(p pVar) {
        this.p = pVar;
    }

    void setScrollState(int i2) {
        if (i2 != this.ak) {
            this.ak = i2;
            if (i2 != 2) {
                i();
            }
            i iVar = this.o;
            if (iVar != null) {
                iVar.h(i2);
            }
            m mVar = this.ay;
            if (mVar != null) {
                mVar.a(this, i2);
            }
            List<m> list = this.az;
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    this.az.get(size).a(this, i2);
                }
            }
        }
    }

    public void setScrollingTouchSlop(int i2) {
        ViewConfiguration viewConfiguration = ViewConfiguration.get(getContext());
        if (i2 != 0) {
            if (i2 != 1) {
                Log.w("RecyclerView", "setScrollingTouchSlop(): bad argument constant " + i2 + "; using default value");
            } else {
                this.ar = viewConfiguration.getScaledPagingTouchSlop();
                return;
            }
        }
        this.ar = viewConfiguration.getScaledTouchSlop();
    }

    public void setViewCacheExtension(t tVar) {
        this.e.h = tVar;
    }

    @Override // android.view.View
    public boolean startNestedScroll(int i2) {
        return getScrollingChildHelper().a(i2, 0);
    }

    @Override // android.view.View, androidx.core.view.j
    public void stopNestedScroll() {
        getScrollingChildHelper().b(0);
    }

    @Override // android.view.ViewGroup
    public final void suppressLayout(boolean z) {
        if (z != this.z) {
            a("Do not suppressLayout in layout or scroll");
            if (!z) {
                this.z = false;
                if (!(!this.y || this.o == null || this.n == null)) {
                    requestLayout();
                }
                this.y = false;
                return;
            }
            long uptimeMillis = SystemClock.uptimeMillis();
            onTouchEvent(MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 0));
            this.z = true;
            this.aa = true;
            e();
        }
    }
}
