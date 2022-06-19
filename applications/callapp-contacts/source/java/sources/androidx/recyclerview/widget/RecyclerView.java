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
import androidx.core.p036e.C0833d;
import androidx.core.p037os.C0863g;
import androidx.core.view.AbstractC0915k;
import androidx.core.view.AbstractC0916l;
import androidx.core.view.C0865a;
import androidx.core.view.C0913i;
import androidx.core.view.C0917m;
import androidx.core.view.C0926v;
import androidx.core.view.p038a.C0868b;
import androidx.core.view.p038a.C0869c;
import androidx.customview.view.AbsSavedState;
import androidx.recyclerview.C2608a;
import androidx.recyclerview.widget.C2666b;
import androidx.recyclerview.widget.C2699l;
import androidx.recyclerview.widget.C2706p;
import androidx.recyclerview.widget.C2709q;
import androidx.recyclerview.widget.RunnableC2685e;
import com.callapp.contacts.activity.base.BaseViewTypeData;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import io.objectbox.model.PropertyFlags;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.apache.commons.lang3.StringUtils;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView.class */
public class RecyclerView extends ViewGroup implements AbstractC0915k, AbstractC0916l {

    /* renamed from: P */
    static final Interpolator f9908P;

    /* renamed from: Q */
    private static final int[] f9909Q = {16843830};

    /* renamed from: R */
    private static final boolean f9910R;

    /* renamed from: S */
    private static final boolean f9911S;

    /* renamed from: T */
    private static final Class<?>[] f9912T;

    /* renamed from: a */
    static final boolean f9913a;

    /* renamed from: b */
    static final boolean f9914b;

    /* renamed from: c */
    static final boolean f9915c;

    /* renamed from: d */
    static final boolean f9916d;

    /* renamed from: A */
    boolean f9917A;

    /* renamed from: B */
    List<AbstractC2642j> f9918B;

    /* renamed from: C */
    boolean f9919C;

    /* renamed from: D */
    boolean f9920D;

    /* renamed from: E */
    AbstractC2632f f9921E;

    /* renamed from: F */
    final RunnableC2656u f9922F;

    /* renamed from: G */
    RunnableC2685e f9923G;

    /* renamed from: H */
    RunnableC2685e.C2687a f9924H;

    /* renamed from: I */
    final C2654s f9925I;

    /* renamed from: J */
    boolean f9926J;

    /* renamed from: K */
    boolean f9927K;

    /* renamed from: L */
    boolean f9928L;

    /* renamed from: M */
    C2699l f9929M;

    /* renamed from: N */
    final int[] f9930N;

    /* renamed from: O */
    final List<AbstractC2657v> f9931O;

    /* renamed from: U */
    private final C2650q f9932U;

    /* renamed from: V */
    private final Rect f9933V;

    /* renamed from: W */
    private int f9934W;

    /* renamed from: aA */
    private AbstractC2632f.AbstractC2633a f9935aA;

    /* renamed from: aB */
    private AbstractC2630d f9936aB;

    /* renamed from: aC */
    private final int[] f9937aC;

    /* renamed from: aD */
    private C0917m f9938aD;

    /* renamed from: aE */
    private final int[] f9939aE;

    /* renamed from: aF */
    private final int[] f9940aF;

    /* renamed from: aG */
    private Runnable f9941aG;

    /* renamed from: aH */
    private boolean f9942aH;

    /* renamed from: aI */
    private int f9943aI;

    /* renamed from: aJ */
    private int f9944aJ;

    /* renamed from: aK */
    private final C2709q.AbstractC2711b f9945aK;

    /* renamed from: aa */
    private boolean f9946aa;

    /* renamed from: ab */
    private int f9947ab;

    /* renamed from: ac */
    private final AccessibilityManager f9948ac;

    /* renamed from: ad */
    private int f9949ad;

    /* renamed from: ae */
    private int f9950ae;

    /* renamed from: af */
    private C2631e f9951af;

    /* renamed from: ag */
    private EdgeEffect f9952ag;

    /* renamed from: ah */
    private EdgeEffect f9953ah;

    /* renamed from: ai */
    private EdgeEffect f9954ai;

    /* renamed from: aj */
    private EdgeEffect f9955aj;

    /* renamed from: ak */
    private int f9956ak;

    /* renamed from: al */
    private int f9957al;

    /* renamed from: am */
    private VelocityTracker f9958am;

    /* renamed from: an */
    private int f9959an;

    /* renamed from: ao */
    private int f9960ao;

    /* renamed from: ap */
    private int f9961ap;

    /* renamed from: aq */
    private int f9962aq;

    /* renamed from: ar */
    private int f9963ar;

    /* renamed from: as */
    private AbstractC2643k f9964as;

    /* renamed from: at */
    private final int f9965at;

    /* renamed from: au */
    private final int f9966au;

    /* renamed from: av */
    private float f9967av;

    /* renamed from: aw */
    private float f9968aw;

    /* renamed from: ax */
    private boolean f9969ax;

    /* renamed from: ay */
    private AbstractC2645m f9970ay;

    /* renamed from: az */
    private List<AbstractC2645m> f9971az;

    /* renamed from: e */
    final C2648o f9972e;

    /* renamed from: f */
    SavedState f9973f;

    /* renamed from: g */
    C2663a f9974g;

    /* renamed from: h */
    C2666b f9975h;

    /* renamed from: i */
    final C2709q f9976i;

    /* renamed from: j */
    boolean f9977j;

    /* renamed from: k */
    final Runnable f9978k;

    /* renamed from: l */
    final Rect f9979l;

    /* renamed from: m */
    final RectF f9980m;

    /* renamed from: n */
    AbstractC2626a f9981n;

    /* renamed from: o */
    AbstractC2637i f9982o;

    /* renamed from: p */
    AbstractC2649p f9983p;

    /* renamed from: q */
    final List<AbstractC2649p> f9984q;

    /* renamed from: r */
    final ArrayList<AbstractC2636h> f9985r;

    /* renamed from: s */
    final ArrayList<AbstractC2644l> f9986s;

    /* renamed from: t */
    AbstractC2644l f9987t;

    /* renamed from: u */
    boolean f9988u;

    /* renamed from: v */
    boolean f9989v;

    /* renamed from: w */
    boolean f9990w;

    /* renamed from: x */
    boolean f9991x;

    /* renamed from: y */
    boolean f9992y;

    /* renamed from: z */
    boolean f9993z;

    /* renamed from: androidx.recyclerview.widget.RecyclerView$7 */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$7.class */
    public static final /* synthetic */ class C26247 {

        /* renamed from: a */
        static final /* synthetic */ int[] f9999a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[AbstractC2626a.EnumC2627a.values().length];
            f9999a = iArr;
            try {
                iArr[AbstractC2626a.EnumC2627a.PREVENT.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f9999a[AbstractC2626a.EnumC2627a.PREVENT_WHEN_EMPTY.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$LayoutParams.class */
    public static class LayoutParams extends ViewGroup.MarginLayoutParams {

        /* renamed from: c */
        AbstractC2657v f10000c;

        /* renamed from: d */
        final Rect f10001d = new Rect();

        /* renamed from: e */
        boolean f10002e = true;

        /* renamed from: f */
        boolean f10003f = false;

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
            this.mLayoutState = parcel.readParcelable(classLoader == null ? AbstractC2637i.class.getClassLoader() : classLoader);
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

    /* renamed from: androidx.recyclerview.widget.RecyclerView$a */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$a.class */
    public static abstract class AbstractC2626a<VH extends AbstractC2657v> {

        /* renamed from: a */
        private final C2628b f10004a = new C2628b();

        /* renamed from: b */
        private boolean f10005b = false;

        /* renamed from: c */
        private EnumC2627a f10006c = EnumC2627a.ALLOW;

        /* renamed from: androidx.recyclerview.widget.RecyclerView$a$a */
        /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$a$a.class */
        public enum EnumC2627a {
            ALLOW,
            PREVENT_WHEN_EMPTY,
            PREVENT
        }

        /* renamed from: a */
        final boolean m40413a() {
            int i = C26247.f9999a[this.f10006c.ordinal()];
            if (i != 1) {
                return i != 2 || getItemCount() > 0;
            }
            return false;
        }

        public final void bindViewHolder(VH vh, int i) {
            boolean z = vh.f10114q == null;
            if (z) {
                vh.f10098b = i;
                if (hasStableIds()) {
                    vh.f10101d = getItemId(i);
                }
                vh.setFlags(1, 519);
                C0863g.m44289a("RV OnBindView");
            }
            vh.f10114q = this;
            onBindViewHolder(vh, i, vh.getUnmodifiedPayloads());
            if (z) {
                vh.m40285i();
                ViewGroup.LayoutParams layoutParams = vh.itemView.getLayoutParams();
                if (layoutParams instanceof LayoutParams) {
                    ((LayoutParams) layoutParams).f10002e = true;
                }
                C0863g.m44290a();
            }
        }

        public final VH createViewHolder(ViewGroup viewGroup, int i) {
            try {
                C0863g.m44289a("RV CreateView");
                VH onCreateViewHolder = onCreateViewHolder(viewGroup, i);
                if (onCreateViewHolder.itemView.getParent() != null) {
                    throw new IllegalStateException("ViewHolder views must not be attached when created. Ensure that you are not passing 'true' to the attachToRoot parameter of LayoutInflater.inflate(..., boolean attachToRoot)");
                }
                onCreateViewHolder.f10102e = i;
                C0863g.m44290a();
                return onCreateViewHolder;
            } catch (Throwable th) {
                C0863g.m44290a();
                throw th;
            }
        }

        public int findRelativeAdapterPositionIn(AbstractC2626a<? extends AbstractC2657v> abstractC2626a, AbstractC2657v abstractC2657v, int i) {
            if (abstractC2626a == this) {
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

        public final EnumC2627a getStateRestorationPolicy() {
            return this.f10006c;
        }

        public final boolean hasObservers() {
            return this.f10004a.m40412a();
        }

        public final boolean hasStableIds() {
            return this.f10005b;
        }

        public final void notifyDataSetChanged() {
            this.f10004a.m40409b();
        }

        public final void notifyItemChanged(int i) {
            this.f10004a.m40411a(i, 1);
        }

        public final void notifyItemChanged(int i, Object obj) {
            this.f10004a.m40410a(i, 1, obj);
        }

        public final void notifyItemInserted(int i) {
            this.f10004a.m40408b(i, 1);
        }

        public final void notifyItemMoved(int i, int i2) {
            this.f10004a.m40405d(i, i2);
        }

        public final void notifyItemRangeChanged(int i, int i2) {
            this.f10004a.m40411a(i, i2);
        }

        public final void notifyItemRangeChanged(int i, int i2, Object obj) {
            this.f10004a.m40410a(i, i2, obj);
        }

        public final void notifyItemRangeInserted(int i, int i2) {
            this.f10004a.m40408b(i, i2);
        }

        public final void notifyItemRangeRemoved(int i, int i2) {
            this.f10004a.m40406c(i, i2);
        }

        public final void notifyItemRemoved(int i) {
            this.f10004a.m40406c(i, 1);
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

        public void registerAdapterDataObserver(AbstractC2629c abstractC2629c) {
            this.f10004a.registerObserver(abstractC2629c);
        }

        public void setHasStableIds(boolean z) {
            if (!hasObservers()) {
                this.f10005b = z;
                return;
            }
            throw new IllegalStateException("Cannot change whether this adapter has stable IDs while the adapter has registered observers.");
        }

        public void setStateRestorationPolicy(EnumC2627a enumC2627a) {
            this.f10006c = enumC2627a;
            this.f10004a.m40407c();
        }

        public void unregisterAdapterDataObserver(AbstractC2629c abstractC2629c) {
            this.f10004a.unregisterObserver(abstractC2629c);
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$b */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$b.class */
    public static final class C2628b extends Observable<AbstractC2629c> {
        C2628b() {
        }

        /* renamed from: a */
        public final void m40411a(int i, int i2) {
            m40410a(i, i2, null);
        }

        /* renamed from: a */
        public final void m40410a(int i, int i2, Object obj) {
            for (int size = this.mObservers.size() - 1; size >= 0; size--) {
                ((AbstractC2629c) this.mObservers.get(size)).onItemRangeChanged(i, i2, obj);
            }
        }

        /* renamed from: a */
        public final boolean m40412a() {
            return !this.mObservers.isEmpty();
        }

        /* renamed from: b */
        public final void m40409b() {
            for (int size = this.mObservers.size() - 1; size >= 0; size--) {
                ((AbstractC2629c) this.mObservers.get(size)).onChanged();
            }
        }

        /* renamed from: b */
        public final void m40408b(int i, int i2) {
            for (int size = this.mObservers.size() - 1; size >= 0; size--) {
                ((AbstractC2629c) this.mObservers.get(size)).onItemRangeInserted(i, i2);
            }
        }

        /* renamed from: c */
        public final void m40407c() {
            for (int size = this.mObservers.size() - 1; size >= 0; size--) {
                ((AbstractC2629c) this.mObservers.get(size)).onStateRestorationPolicyChanged();
            }
        }

        /* renamed from: c */
        public final void m40406c(int i, int i2) {
            for (int size = this.mObservers.size() - 1; size >= 0; size--) {
                ((AbstractC2629c) this.mObservers.get(size)).onItemRangeRemoved(i, i2);
            }
        }

        /* renamed from: d */
        public final void m40405d(int i, int i2) {
            for (int size = this.mObservers.size() - 1; size >= 0; size--) {
                ((AbstractC2629c) this.mObservers.get(size)).onItemRangeMoved(i, i2, 1);
            }
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$c */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$c.class */
    public static abstract class AbstractC2629c {
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

    /* renamed from: androidx.recyclerview.widget.RecyclerView$d */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$d.class */
    public interface AbstractC2630d {
        /* renamed from: a */
        int m40404a();
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$e */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$e.class */
    public static final class C2631e {
        /* renamed from: a */
        protected static EdgeEffect m40403a(RecyclerView recyclerView) {
            return new EdgeEffect(recyclerView.getContext());
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$f */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$f.class */
    public static abstract class AbstractC2632f {

        /* renamed from: h */
        AbstractC2633a f10009h = null;

        /* renamed from: a */
        private ArrayList<Object> f10007a = new ArrayList<>();

        /* renamed from: i */
        long f10010i = 120;

        /* renamed from: b */
        private long f10008b = 120;

        /* renamed from: j */
        long f10011j = 250;

        /* renamed from: k */
        long f10012k = 250;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: androidx.recyclerview.widget.RecyclerView$f$a */
        /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$f$a.class */
        public interface AbstractC2633a {
            /* renamed from: a */
            void mo40396a(AbstractC2657v abstractC2657v);
        }

        /* renamed from: androidx.recyclerview.widget.RecyclerView$f$b */
        /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$f$b.class */
        public static final class C2634b {

            /* renamed from: a */
            public int f10013a;

            /* renamed from: b */
            public int f10014b;

            /* renamed from: c */
            public int f10015c;

            /* renamed from: d */
            public int f10016d;

            /* renamed from: a */
            public final C2634b m40397a(AbstractC2657v abstractC2657v) {
                View view = abstractC2657v.itemView;
                this.f10013a = view.getLeft();
                this.f10014b = view.getTop();
                this.f10015c = view.getRight();
                this.f10016d = view.getBottom();
                return this;
            }
        }

        /* renamed from: d */
        public static C2634b m40402d(AbstractC2657v abstractC2657v) {
            return new C2634b().m40397a(abstractC2657v);
        }

        /* renamed from: e */
        static int m40400e(AbstractC2657v abstractC2657v) {
            int i = abstractC2657v.f10106i & 14;
            if (abstractC2657v.isInvalid()) {
                return 4;
            }
            int i2 = i;
            if ((i & 4) == 0) {
                int oldPosition = abstractC2657v.getOldPosition();
                int absoluteAdapterPosition = abstractC2657v.getAbsoluteAdapterPosition();
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

        /* renamed from: a */
        public abstract void mo40117a();

        /* renamed from: a */
        public abstract boolean mo40043a(AbstractC2657v abstractC2657v, C2634b c2634b, C2634b c2634b2);

        /* renamed from: a */
        public abstract boolean mo40041a(AbstractC2657v abstractC2657v, AbstractC2657v abstractC2657v2, C2634b c2634b, C2634b c2634b2);

        /* renamed from: a */
        public boolean mo40116a(AbstractC2657v abstractC2657v, List<Object> list) {
            return mo40037g(abstractC2657v);
        }

        /* renamed from: b */
        public abstract boolean mo40111b();

        /* renamed from: b */
        public abstract boolean mo40039b(AbstractC2657v abstractC2657v, C2634b c2634b, C2634b c2634b2);

        /* renamed from: c */
        public abstract void mo40109c(AbstractC2657v abstractC2657v);

        /* renamed from: c */
        public abstract boolean mo40038c(AbstractC2657v abstractC2657v, C2634b c2634b, C2634b c2634b2);

        /* renamed from: d */
        public abstract void mo40108d();

        /* renamed from: e */
        public final long m40401e() {
            return this.f10008b;
        }

        /* renamed from: f */
        public final void m40399f() {
            int size = this.f10007a.size();
            for (int i = 0; i < size; i++) {
                this.f10007a.get(i);
            }
            this.f10007a.clear();
        }

        /* renamed from: f */
        public final void m40398f(AbstractC2657v abstractC2657v) {
            AbstractC2633a abstractC2633a = this.f10009h;
            if (abstractC2633a != null) {
                abstractC2633a.mo40396a(abstractC2657v);
            }
        }

        /* renamed from: g */
        public boolean mo40037g(AbstractC2657v abstractC2657v) {
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.recyclerview.widget.RecyclerView$g */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$g.class */
    public final class C2635g implements AbstractC2632f.AbstractC2633a {
        C2635g() {
            RecyclerView.this = r4;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2632f.AbstractC2633a
        /* renamed from: a */
        public final void mo40396a(AbstractC2657v abstractC2657v) {
            boolean z;
            abstractC2657v.setIsRecyclable(true);
            if (abstractC2657v.f10104g != null && abstractC2657v.f10105h == null) {
                abstractC2657v.f10104g = null;
            }
            abstractC2657v.f10105h = null;
            if (!((abstractC2657v.f10106i & 16) != 0)) {
                RecyclerView recyclerView = RecyclerView.this;
                View view = abstractC2657v.itemView;
                recyclerView.m40450d();
                C2666b c2666b = recyclerView.f9975h;
                int mo40126a = c2666b.f10170a.mo40126a(view);
                if (mo40126a == -1) {
                    c2666b.m40140b(view);
                    z = true;
                } else if (c2666b.f10171b.m40131c(mo40126a)) {
                    c2666b.f10171b.m40130d(mo40126a);
                    c2666b.m40140b(view);
                    c2666b.f10170a.mo40127a(mo40126a);
                    z = true;
                } else {
                    z = false;
                }
                if (z) {
                    AbstractC2657v m40453c = RecyclerView.m40453c(view);
                    recyclerView.f9972e.m40325b(m40453c);
                    recyclerView.f9972e.m40331a(m40453c);
                }
                recyclerView.m40467a(!z);
                if (z || !abstractC2657v.isTmpDetached()) {
                    return;
                }
                RecyclerView.this.removeDetachedView(abstractC2657v.itemView, false);
            }
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$h */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$h.class */
    public static abstract class AbstractC2636h {
        /* renamed from: a */
        public void mo30290a(Canvas canvas, RecyclerView recyclerView, C2654s c2654s) {
        }

        /* renamed from: a */
        public void mo29937a(Rect rect, View view, RecyclerView recyclerView, C2654s c2654s) {
            ((LayoutParams) view.getLayoutParams()).f10000c.getLayoutPosition();
            rect.set(0, 0, 0, 0);
        }

        /* renamed from: b */
        public void mo10834b(Canvas canvas, RecyclerView recyclerView, C2654s c2654s) {
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$i */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$i.class */
    public static abstract class AbstractC2637i {

        /* renamed from: a */
        private final C2706p.AbstractC2708b f10018a;

        /* renamed from: b */
        private final C2706p.AbstractC2708b f10019b;

        /* renamed from: e */
        private int f10022e;

        /* renamed from: f */
        private int f10023f;

        /* renamed from: g */
        private int f10024g;

        /* renamed from: h */
        private int f10025h;

        /* renamed from: p */
        C2666b f10026p;

        /* renamed from: q */
        RecyclerView f10027q;

        /* renamed from: r */
        C2706p f10028r;

        /* renamed from: s */
        C2706p f10029s;

        /* renamed from: t */
        AbstractC2651r f10030t;

        /* renamed from: x */
        int f10034x;

        /* renamed from: y */
        boolean f10035y;

        /* renamed from: u */
        boolean f10031u = false;

        /* renamed from: v */
        boolean f10032v = false;

        /* renamed from: w */
        boolean f10033w = false;

        /* renamed from: c */
        private boolean f10020c = true;

        /* renamed from: d */
        private boolean f10021d = true;

        /* renamed from: androidx.recyclerview.widget.RecyclerView$i$a */
        /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$i$a.class */
        public interface AbstractC2640a {
            /* renamed from: a */
            void mo40092a(int i, int i2);
        }

        /* renamed from: androidx.recyclerview.widget.RecyclerView$i$b */
        /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$i$b.class */
        public static final class C2641b {

            /* renamed from: a */
            public int f10038a;

            /* renamed from: b */
            public int f10039b;

            /* renamed from: c */
            public boolean f10040c;

            /* renamed from: d */
            public boolean f10041d;
        }

        public AbstractC2637i() {
            C2706p.AbstractC2708b abstractC2708b = new C2706p.AbstractC2708b() { // from class: androidx.recyclerview.widget.RecyclerView.i.1
                @Override // androidx.recyclerview.widget.C2706p.AbstractC2708b
                /* renamed from: a */
                public final int mo40028a() {
                    return AbstractC2637i.this.getPaddingLeft();
                }

                @Override // androidx.recyclerview.widget.C2706p.AbstractC2708b
                /* renamed from: a */
                public final int mo40026a(View view) {
                    return AbstractC2637i.m40358g(view) - ((LayoutParams) view.getLayoutParams()).leftMargin;
                }

                @Override // androidx.recyclerview.widget.C2706p.AbstractC2708b
                /* renamed from: a */
                public final View mo40027a(int i) {
                    return AbstractC2637i.this.getChildAt(i);
                }

                @Override // androidx.recyclerview.widget.C2706p.AbstractC2708b
                /* renamed from: b */
                public final int mo40025b() {
                    return AbstractC2637i.this.getWidth() - AbstractC2637i.this.getPaddingRight();
                }

                @Override // androidx.recyclerview.widget.C2706p.AbstractC2708b
                /* renamed from: b */
                public final int mo40024b(View view) {
                    return AbstractC2637i.m40355i(view) + ((LayoutParams) view.getLayoutParams()).rightMargin;
                }
            };
            this.f10018a = abstractC2708b;
            C2706p.AbstractC2708b abstractC2708b2 = new C2706p.AbstractC2708b() { // from class: androidx.recyclerview.widget.RecyclerView.i.2
                @Override // androidx.recyclerview.widget.C2706p.AbstractC2708b
                /* renamed from: a */
                public final int mo40028a() {
                    return AbstractC2637i.this.getPaddingTop();
                }

                @Override // androidx.recyclerview.widget.C2706p.AbstractC2708b
                /* renamed from: a */
                public final int mo40026a(View view) {
                    return AbstractC2637i.m40356h(view) - ((LayoutParams) view.getLayoutParams()).topMargin;
                }

                @Override // androidx.recyclerview.widget.C2706p.AbstractC2708b
                /* renamed from: a */
                public final View mo40027a(int i) {
                    return AbstractC2637i.this.getChildAt(i);
                }

                @Override // androidx.recyclerview.widget.C2706p.AbstractC2708b
                /* renamed from: b */
                public final int mo40025b() {
                    return AbstractC2637i.this.getHeight() - AbstractC2637i.this.getPaddingBottom();
                }

                @Override // androidx.recyclerview.widget.C2706p.AbstractC2708b
                /* renamed from: b */
                public final int mo40024b(View view) {
                    return AbstractC2637i.m40354j(view) + ((LayoutParams) view.getLayoutParams()).bottomMargin;
                }
            };
            this.f10019b = abstractC2708b2;
            this.f10028r = new C2706p(abstractC2708b);
            this.f10029s = new C2706p(abstractC2708b2);
        }

        /* renamed from: a */
        public static int m40394a(int i, int i2, int i3) {
            int mode = View.MeasureSpec.getMode(i);
            int size = View.MeasureSpec.getSize(i);
            if (mode != Integer.MIN_VALUE) {
                if (mode != 1073741824) {
                    size = Math.max(i2, i3);
                }
                return size;
            }
            return Math.min(size, Math.max(i2, i3));
        }

        /* JADX WARN: Code restructure failed: missing block: B:11:0x0026, code lost:
            if (r5 != 1073741824) goto L31;
         */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static int m40393a(int r4, int r5, int r6, int r7, boolean r8) {
            /*
                r0 = 0
                r1 = r4
                r2 = r6
                int r1 = r1 - r2
                int r0 = java.lang.Math.max(r0, r1)
                r6 = r0
                r0 = r8
                if (r0 == 0) goto L37
                r0 = r7
                if (r0 < 0) goto L14
                goto L3b
            L14:
                r0 = r7
                r1 = -1
                if (r0 != r1) goto L2c
                r0 = r5
                r4 = r0
                r0 = r5
                r1 = -2147483648(0xffffffff80000000, float:-0.0)
                if (r0 == r1) goto L48
                r0 = r5
                r4 = r0
                r0 = r5
                r1 = 1073741824(0x40000000, float:2.0)
                if (r0 == r1) goto L48
                goto L6f
            L2c:
                r0 = r7
                r1 = -2
                if (r0 != r1) goto L6f
                r0 = 0
                r7 = r0
                goto L64
            L37:
                r0 = r7
                if (r0 < 0) goto L41
            L3b:
                r0 = 1073741824(0x40000000, float:2.0)
                r4 = r0
                goto L73
            L41:
                r0 = r7
                r1 = -1
                if (r0 != r1) goto L4d
                r0 = r5
                r4 = r0
            L48:
                r0 = r6
                r7 = r0
                goto L73
            L4d:
                r0 = r7
                r1 = -2
                if (r0 != r1) goto L6f
                r0 = r5
                r1 = -2147483648(0xffffffff80000000, float:-0.0)
                if (r0 == r1) goto L69
                r0 = r5
                r1 = 1073741824(0x40000000, float:2.0)
                if (r0 != r1) goto L62
                goto L69
            L62:
                r0 = r6
                r7 = r0
            L64:
                r0 = 0
                r4 = r0
                goto L73
            L69:
                r0 = -2147483648(0xffffffff80000000, float:-0.0)
                r4 = r0
                goto L48
            L6f:
                r0 = 0
                r4 = r0
                r0 = 0
                r7 = r0
            L73:
                r0 = r7
                r1 = r4
                int r0 = android.view.View.MeasureSpec.makeMeasureSpec(r0, r1)
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.AbstractC2637i.m40393a(int, int, int, int, boolean):int");
        }

        /* renamed from: a */
        public static C2641b m40390a(Context context, AttributeSet attributeSet, int i, int i2) {
            C2641b c2641b = new C2641b();
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C2608a.C2611c.RecyclerView, i, i2);
            c2641b.f10038a = obtainStyledAttributes.getInt(C2608a.C2611c.RecyclerView_android_orientation, 1);
            c2641b.f10039b = obtainStyledAttributes.getInt(C2608a.C2611c.RecyclerView_spanCount, 1);
            c2641b.f10040c = obtainStyledAttributes.getBoolean(C2608a.C2611c.RecyclerView_reverseLayout, false);
            c2641b.f10041d = obtainStyledAttributes.getBoolean(C2608a.C2611c.RecyclerView_stackFromEnd, false);
            obtainStyledAttributes.recycle();
            return c2641b;
        }

        /* renamed from: a */
        private void m40395a(int i) {
            C2666b c2666b;
            int m40146a;
            View mo40122b;
            if (getChildAt(i) == null || (mo40122b = c2666b.f10170a.mo40122b((m40146a = (c2666b = this.f10026p).m40146a(i)))) == null) {
                return;
            }
            if (c2666b.f10171b.m40130d(m40146a)) {
                c2666b.m40140b(mo40122b);
            }
            c2666b.f10170a.mo40127a(m40146a);
        }

        /* renamed from: a */
        public static void m40387a(View view, int i, int i2, int i3, int i4) {
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            Rect rect = layoutParams.f10001d;
            view.layout(i + rect.left + layoutParams.leftMargin, i2 + rect.top + layoutParams.topMargin, (i3 - rect.right) - layoutParams.rightMargin, (i4 - rect.bottom) - layoutParams.bottomMargin);
        }

        /* renamed from: a */
        private void m40385a(View view, int i, boolean z) {
            AbstractC2657v m40453c = RecyclerView.m40453c(view);
            if (z || m40453c.isRemoved()) {
                this.f10027q.f9976i.m40014c(m40453c);
            } else {
                this.f10027q.f9976i.m40012d(m40453c);
            }
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            if (m40453c.m40289e() || m40453c.isScrap()) {
                if (m40453c.isScrap()) {
                    m40453c.m40290d();
                } else {
                    m40453c.m40288f();
                }
                this.f10026p.m40144a(view, i, view.getLayoutParams(), false);
            } else if (view.getParent() == this.f10027q) {
                int m40138c = this.f10026p.m40138c(view);
                int i2 = i;
                if (i == -1) {
                    i2 = this.f10026p.m40147a();
                }
                if (m40138c == -1) {
                    throw new IllegalStateException("Added View has RecyclerView as parent but view is not a real child. Unfiltered index:" + this.f10027q.indexOfChild(view) + this.f10027q.m40496a());
                } else if (m40138c != i2) {
                    this.f10027q.f9982o.m40362e(m40138c, i2);
                }
            } else {
                this.f10026p.m40143a(view, i, false);
                layoutParams.f10002e = true;
                AbstractC2651r abstractC2651r = this.f10030t;
                if (abstractC2651r != null && abstractC2651r.isRunning()) {
                    this.f10030t.m40311a(view);
                }
            }
            if (layoutParams.f10003f) {
                m40453c.itemView.invalidate();
                layoutParams.f10003f = false;
            }
        }

        /* renamed from: b */
        private static boolean m40375b(int i, int i2, int i3) {
            int mode = View.MeasureSpec.getMode(i2);
            int size = View.MeasureSpec.getSize(i2);
            if (i3 <= 0 || i == i3) {
                if (mode == Integer.MIN_VALUE) {
                    return size >= i;
                } else if (mode == 0) {
                    return true;
                } else {
                    return mode == 1073741824 && size == i;
                }
            }
            return false;
        }

        /* renamed from: c */
        public static int m40366c(View view) {
            return ((LayoutParams) view.getLayoutParams()).f10000c.getLayoutPosition();
        }

        /* renamed from: c */
        private void m40367c(int i) {
            getChildAt(i);
            this.f10026p.m40137d(i);
        }

        /* renamed from: c */
        private void m40365c(View view, int i) {
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            AbstractC2657v m40453c = RecyclerView.m40453c(view);
            if (m40453c.isRemoved()) {
                this.f10027q.f9976i.m40014c(m40453c);
            } else {
                this.f10027q.f9976i.m40012d(m40453c);
            }
            this.f10026p.m40144a(view, i, layoutParams, m40453c.isRemoved());
        }

        /* renamed from: e */
        public static int m40361e(View view) {
            Rect rect = ((LayoutParams) view.getLayoutParams()).f10001d;
            return view.getMeasuredWidth() + rect.left + rect.right;
        }

        /* renamed from: e */
        private void m40362e(int i, int i2) {
            View childAt = getChildAt(i);
            if (childAt != null) {
                m40367c(i);
                m40365c(childAt, i2);
                return;
            }
            throw new IllegalArgumentException("Cannot move a child from non-existing index:" + i + this.f10027q.toString());
        }

        /* renamed from: f */
        public static int m40359f(View view) {
            Rect rect = ((LayoutParams) view.getLayoutParams()).f10001d;
            return view.getMeasuredHeight() + rect.top + rect.bottom;
        }

        /* renamed from: g */
        public static int m40358g(View view) {
            return view.getLeft() - m40349m(view);
        }

        /* renamed from: h */
        public static int m40356h(View view) {
            return view.getTop() - m40352k(view);
        }

        /* renamed from: i */
        public static int m40355i(View view) {
            return view.getRight() + m40348n(view);
        }

        /* renamed from: j */
        public static int m40354j(View view) {
            return view.getBottom() + m40351l(view);
        }

        /* renamed from: k */
        public static int m40352k(View view) {
            return ((LayoutParams) view.getLayoutParams()).f10001d.top;
        }

        /* renamed from: l */
        public static int m40351l(View view) {
            return ((LayoutParams) view.getLayoutParams()).f10001d.bottom;
        }

        /* renamed from: m */
        public static int m40349m(View view) {
            return ((LayoutParams) view.getLayoutParams()).f10001d.left;
        }

        /* renamed from: n */
        public static int m40348n(View view) {
            return ((LayoutParams) view.getLayoutParams()).f10001d.right;
        }

        /* renamed from: o */
        private void m40347o(View view) {
            C2666b c2666b = this.f10026p;
            int mo40126a = c2666b.f10170a.mo40126a(view);
            if (mo40126a >= 0) {
                if (c2666b.f10171b.m40130d(mo40126a)) {
                    c2666b.m40140b(view);
                }
                c2666b.f10170a.mo40127a(mo40126a);
            }
        }

        /* renamed from: a */
        public int mo40277a(int i, C2648o c2648o, C2654s c2654s) {
            return 0;
        }

        /* renamed from: a */
        public int mo40380a(C2648o c2648o, C2654s c2654s) {
            return -1;
        }

        /* renamed from: a */
        public View mo40272a(View view, int i, C2648o c2648o, C2654s c2654s) {
            return null;
        }

        /* renamed from: a */
        public LayoutParams mo31649a(Context context, AttributeSet attributeSet) {
            return new LayoutParams(context, attributeSet);
        }

        /* renamed from: a */
        public LayoutParams mo31648a(ViewGroup.LayoutParams layoutParams) {
            return layoutParams instanceof LayoutParams ? new LayoutParams((LayoutParams) layoutParams) : layoutParams instanceof ViewGroup.MarginLayoutParams ? new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams) : new LayoutParams(layoutParams);
        }

        /* renamed from: a */
        public void mo40281a() {
        }

        /* renamed from: a */
        public void mo40279a(int i, int i2) {
        }

        /* renamed from: a */
        public void mo40278a(int i, int i2, C2654s c2654s, AbstractC2640a abstractC2640a) {
        }

        /* renamed from: a */
        public void mo40392a(int i, AbstractC2640a abstractC2640a) {
        }

        /* renamed from: a */
        public final void m40391a(int i, C2648o c2648o) {
            View childAt = getChildAt(i);
            m40395a(i);
            c2648o.m40333a(childAt);
        }

        /* renamed from: a */
        public void mo40275a(Rect rect, int i, int i2) {
            int width = rect.width();
            int paddingLeft = getPaddingLeft();
            int paddingRight = getPaddingRight();
            int height = rect.height();
            int paddingTop = getPaddingTop();
            setMeasuredDimension(m40394a(i, width + paddingLeft + paddingRight, getMinimumWidth()), m40394a(i2, height + paddingTop + getPaddingBottom(), getMinimumHeight()));
        }

        /* renamed from: a */
        public void mo40274a(Parcelable parcelable) {
        }

        /* renamed from: a */
        public final void m40389a(View view) {
            m40385a(view, -1, true);
        }

        /* renamed from: a */
        public final void m40388a(View view, int i) {
            m40385a(view, 0, true);
        }

        /* renamed from: a */
        public final void m40384a(View view, Rect rect) {
            Matrix matrix;
            Rect rect2 = ((LayoutParams) view.getLayoutParams()).f10001d;
            rect.set(-rect2.left, -rect2.top, view.getWidth() + rect2.right, view.getHeight() + rect2.bottom);
            if (this.f10027q != null && (matrix = view.getMatrix()) != null && !matrix.isIdentity()) {
                RectF rectF = this.f10027q.f9980m;
                rectF.set(rect);
                matrix.mapRect(rectF);
                rect.set((int) Math.floor(rectF.left), (int) Math.floor(rectF.top), (int) Math.ceil(rectF.right), (int) Math.ceil(rectF.bottom));
            }
            rect.offset(view.getLeft(), view.getTop());
        }

        /* renamed from: a */
        public final void m40383a(View view, C0869c c0869c) {
            AbstractC2657v m40453c = RecyclerView.m40453c(view);
            if (m40453c == null || m40453c.isRemoved() || this.f10026p.m40136d(m40453c.itemView)) {
                return;
            }
            mo40379a(this.f10027q.f9972e, this.f10027q.f9925I, view, c0869c);
        }

        /* renamed from: a */
        public final void m40382a(View view, C2648o c2648o) {
            m40347o(view);
            c2648o.m40333a(view);
        }

        /* renamed from: a */
        public void mo40269a(AccessibilityEvent accessibilityEvent) {
            RecyclerView recyclerView = this.f10027q;
            if (recyclerView == null || accessibilityEvent == null) {
                return;
            }
            boolean z = true;
            if (!recyclerView.canScrollVertically(1)) {
                z = true;
                if (!this.f10027q.canScrollVertically(-1)) {
                    z = true;
                    if (!this.f10027q.canScrollHorizontally(-1)) {
                        z = this.f10027q.canScrollHorizontally(1);
                    }
                }
            }
            accessibilityEvent.setScrollable(z);
            if (this.f10027q.f9981n == null) {
                return;
            }
            accessibilityEvent.setItemCount(this.f10027q.f9981n.getItemCount());
        }

        /* renamed from: a */
        public final void m40381a(C2648o c2648o) {
            for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
                View childAt = getChildAt(childCount);
                AbstractC2657v m40453c = RecyclerView.m40453c(childAt);
                if (!m40453c.m40291c()) {
                    if (!m40453c.isInvalid() || m40453c.isRemoved() || this.f10027q.f9981n.hasStableIds()) {
                        m40367c(childCount);
                        c2648o.m40322c(childAt);
                        this.f10027q.f9976i.m40012d(m40453c);
                    } else {
                        m40395a(childCount);
                        c2648o.m40331a(m40453c);
                    }
                }
            }
        }

        /* renamed from: a */
        public void mo40379a(C2648o c2648o, C2654s c2654s, View view, C0869c c0869c) {
        }

        /* renamed from: a */
        public void mo39556a(C2648o c2648o, C2654s c2654s, C0869c c0869c) {
            if (this.f10027q.canScrollVertically(-1) || this.f10027q.canScrollHorizontally(-1)) {
                c0869c.m44284a(PropertyFlags.UNSIGNED);
                c0869c.m44240j(true);
            }
            if (this.f10027q.canScrollVertically(1) || this.f10027q.canScrollHorizontally(1)) {
                c0869c.m44284a(4096);
                c0869c.m44240j(true);
            }
            c0869c.m44274a(C0869c.C0871b.m44235a(mo40380a(c2648o, c2654s), mo40369b(c2648o, c2654s), false, 0));
        }

        /* renamed from: a */
        public final void m40378a(AbstractC2651r abstractC2651r) {
            AbstractC2651r abstractC2651r2 = this.f10030t;
            if (abstractC2651r2 != null && abstractC2651r != abstractC2651r2 && abstractC2651r2.isRunning()) {
                this.f10030t.m40310b();
            }
            this.f10030t = abstractC2651r;
            RecyclerView recyclerView = this.f10027q;
            recyclerView.f9922F.m40300b();
            if (abstractC2651r.f10065m) {
                Log.w("RecyclerView", "An instance of " + abstractC2651r.getClass().getSimpleName() + " was started more than once. Each instance of" + abstractC2651r.getClass().getSimpleName() + " is intended to only be used once. You should create a new instance for each use.");
            }
            abstractC2651r.f10060h = recyclerView;
            abstractC2651r.f10061i = this;
            if (abstractC2651r.f10059g != -1) {
                abstractC2651r.f10060h.f9925I.f10073a = abstractC2651r.f10059g;
                abstractC2651r.f10063k = true;
                abstractC2651r.f10062j = true;
                abstractC2651r.f10064l = abstractC2651r.f10060h.f9982o.mo40376b(abstractC2651r.getTargetPosition());
                abstractC2651r.f10060h.f9922F.m40303a();
                abstractC2651r.f10065m = true;
                return;
            }
            throw new IllegalArgumentException("Invalid target position");
        }

        /* renamed from: a */
        public void mo40264a(C2654s c2654s) {
        }

        /* renamed from: a */
        public void mo40263a(RecyclerView recyclerView, C2648o c2648o) {
        }

        /* renamed from: a */
        public void mo10800a(RecyclerView recyclerView, C2654s c2654s, int i) {
            Log.e("RecyclerView", "You must override smoothScrollToPosition to support smooth scrolling");
        }

        /* renamed from: a */
        public void mo40259a(String str) {
            RecyclerView recyclerView = this.f10027q;
            if (recyclerView != null) {
                recyclerView.m40468a(str);
            }
        }

        /* renamed from: a */
        public final boolean m40386a(View view, int i, int i2, LayoutParams layoutParams) {
            return !this.f10020c || !m40375b(view.getMeasuredWidth(), i, layoutParams.width) || !m40375b(view.getMeasuredHeight(), i2, layoutParams.height);
        }

        /* renamed from: a */
        public boolean mo31647a(LayoutParams layoutParams) {
            return layoutParams != null;
        }

        /* renamed from: a */
        public boolean mo39557a(C2648o c2648o, C2654s c2654s, int i, Bundle bundle) {
            int i2;
            int i3;
            int i4;
            int i5;
            RecyclerView recyclerView = this.f10027q;
            if (recyclerView == null) {
                return false;
            }
            if (i == 4096) {
                i5 = recyclerView.canScrollVertically(1) ? (getHeight() - getPaddingTop()) - getPaddingBottom() : 0;
                i2 = i5;
                if (this.f10027q.canScrollHorizontally(1)) {
                    i4 = (getWidth() - getPaddingLeft()) - getPaddingRight();
                    int i6 = i5;
                    i3 = i4;
                    i2 = i6;
                }
                i3 = 0;
            } else if (i != 8192) {
                i3 = 0;
                i2 = 0;
            } else {
                i5 = recyclerView.canScrollVertically(-1) ? -((getHeight() - getPaddingTop()) - getPaddingBottom()) : 0;
                i2 = i5;
                if (this.f10027q.canScrollHorizontally(-1)) {
                    i4 = -((getWidth() - getPaddingLeft()) - getPaddingRight());
                    int i62 = i5;
                    i3 = i4;
                    i2 = i62;
                }
                i3 = 0;
            }
            if (i2 == 0 && i3 == 0) {
                return false;
            }
            this.f10027q.m40491a(i3, i2, (Interpolator) null, BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW, true);
            return true;
        }

        /* JADX WARN: Removed duplicated region for block: B:34:0x0186 A[ORIG_RETURN, RETURN] */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean mo39555a(androidx.recyclerview.widget.RecyclerView r6, android.view.View r7, android.graphics.Rect r8, boolean r9, boolean r10) {
            /*
                Method dump skipped, instructions count: 418
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.AbstractC2637i.mo39555a(androidx.recyclerview.widget.RecyclerView, android.view.View, android.graphics.Rect, boolean, boolean):boolean");
        }

        /* renamed from: a */
        public final boolean m40377a(Runnable runnable) {
            RecyclerView recyclerView = this.f10027q;
            if (recyclerView != null) {
                return recyclerView.removeCallbacks(runnable);
            }
            return false;
        }

        /* renamed from: b */
        public int mo40255b(int i, C2648o c2648o, C2654s c2654s) {
            return 0;
        }

        /* renamed from: b */
        public int mo40369b(C2648o c2648o, C2654s c2654s) {
            return -1;
        }

        /* renamed from: b */
        public int mo40251b(C2654s c2654s) {
            return 0;
        }

        /* renamed from: b */
        public View mo40376b(int i) {
            int childCount = getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = getChildAt(i2);
                AbstractC2657v m40453c = RecyclerView.m40453c(childAt);
                if (m40453c != null && m40453c.getLayoutPosition() == i && !m40453c.m40291c() && (this.f10027q.f9925I.f10079g || !m40453c.isRemoved())) {
                    return childAt;
                }
            }
            return null;
        }

        /* renamed from: b */
        public abstract LayoutParams mo31646b();

        /* renamed from: b */
        public void mo40257b(int i, int i2) {
        }

        /* renamed from: b */
        public final void m40374b(View view) {
            m40385a(view, -1, false);
        }

        /* renamed from: b */
        public final void m40373b(View view, int i) {
            m40385a(view, 0, false);
        }

        /* renamed from: b */
        public final void m40371b(View view, Rect rect) {
            RecyclerView recyclerView = this.f10027q;
            if (recyclerView == null) {
                rect.set(0, 0, 0, 0);
            } else {
                rect.set(recyclerView.m40438f(view));
            }
        }

        /* renamed from: b */
        final void m40370b(C2648o c2648o) {
            int size = c2648o.f10048a.size();
            for (int i = size - 1; i >= 0; i--) {
                View view = c2648o.f10048a.get(i).itemView;
                AbstractC2657v m40453c = RecyclerView.m40453c(view);
                if (!m40453c.m40291c()) {
                    m40453c.setIsRecyclable(false);
                    if (m40453c.isTmpDetached()) {
                        this.f10027q.removeDetachedView(view, false);
                    }
                    if (this.f10027q.f9921E != null) {
                        this.f10027q.f9921E.mo40109c(m40453c);
                    }
                    m40453c.setIsRecyclable(true);
                    c2648o.m40326b(view);
                }
            }
            c2648o.f10048a.clear();
            if (c2648o.f10049b != null) {
                c2648o.f10049b.clear();
            }
            if (size > 0) {
                this.f10027q.invalidate();
            }
        }

        /* renamed from: b */
        final void m40368b(RecyclerView recyclerView, C2648o c2648o) {
            this.f10032v = false;
            mo40263a(recyclerView, c2648o);
        }

        /* renamed from: b */
        public final boolean m40372b(View view, int i, int i2, LayoutParams layoutParams) {
            return view.isLayoutRequested() || !this.f10020c || !m40375b(view.getWidth(), i, layoutParams.width) || !m40375b(view.getHeight(), i2, layoutParams.height);
        }

        /* renamed from: c */
        public int mo40243c(C2654s c2654s) {
            return 0;
        }

        /* renamed from: c */
        public void mo40247c(int i, int i2) {
        }

        /* renamed from: c */
        public final void m40364c(C2648o c2648o) {
            for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
                if (!RecyclerView.m40453c(getChildAt(childCount)).m40291c()) {
                    m40391a(childCount, c2648o);
                }
            }
        }

        /* renamed from: c */
        public void mo40244c(C2648o c2648o, C2654s c2654s) {
            Log.e("RecyclerView", "You must override onLayoutChildren(Recycler recycler, State state) ");
        }

        /* renamed from: c */
        public boolean mo40249c() {
            return false;
        }

        /* renamed from: d */
        public int mo40238d(C2654s c2654s) {
            return 0;
        }

        /* renamed from: d */
        public Parcelable mo40241d() {
            return null;
        }

        /* renamed from: d */
        public final View m40363d(View view) {
            View m40461b;
            RecyclerView recyclerView = this.f10027q;
            if (recyclerView == null || (m40461b = recyclerView.m40461b(view)) == null || this.f10026p.m40136d(m40461b)) {
                return null;
            }
            return m40461b;
        }

        /* renamed from: d */
        public void mo40240d(int i) {
        }

        /* renamed from: d */
        public void mo40239d(int i, int i2) {
        }

        /* renamed from: e */
        public int mo40235e(C2654s c2654s) {
            return 0;
        }

        /* renamed from: e */
        public boolean mo31644e() {
            return false;
        }

        /* renamed from: f */
        public int mo40233f(C2654s c2654s) {
            return 0;
        }

        /* renamed from: f */
        public void mo40234f(int i) {
            RecyclerView recyclerView = this.f10027q;
            if (recyclerView != null) {
                int m40147a = recyclerView.f9975h.m40147a();
                for (int i2 = 0; i2 < m40147a; i2++) {
                    recyclerView.f9975h.m40141b(i2).offsetLeftAndRight(i);
                }
            }
        }

        /* renamed from: f */
        public final void m40360f(int i, int i2) {
            this.f10027q.m40448d(i, i2);
        }

        /* renamed from: f */
        public boolean mo31643f() {
            return false;
        }

        /* renamed from: g */
        public int mo40230g(C2654s c2654s) {
            return 0;
        }

        /* renamed from: g */
        public void mo40231g(int i) {
            RecyclerView recyclerView = this.f10027q;
            if (recyclerView != null) {
                int m40147a = recyclerView.f9975h.m40147a();
                for (int i2 = 0; i2 < m40147a; i2++) {
                    recyclerView.f9975h.m40141b(i2).offsetTopAndBottom(i);
                }
            }
        }

        public int getBaseline() {
            return -1;
        }

        public View getChildAt(int i) {
            C2666b c2666b = this.f10026p;
            if (c2666b != null) {
                return c2666b.m40141b(i);
            }
            return null;
        }

        public int getChildCount() {
            C2666b c2666b = this.f10026p;
            if (c2666b != null) {
                return c2666b.m40147a();
            }
            return 0;
        }

        public boolean getClipToPadding() {
            RecyclerView recyclerView = this.f10027q;
            return recyclerView != null && recyclerView.f9977j;
        }

        public View getFocusedChild() {
            View focusedChild;
            RecyclerView recyclerView = this.f10027q;
            if (recyclerView == null || (focusedChild = recyclerView.getFocusedChild()) == null || this.f10026p.m40136d(focusedChild)) {
                return null;
            }
            return focusedChild;
        }

        public int getHeight() {
            return this.f10025h;
        }

        public int getHeightMode() {
            return this.f10023f;
        }

        public int getItemCount() {
            RecyclerView recyclerView = this.f10027q;
            AbstractC2626a adapter = recyclerView != null ? recyclerView.getAdapter() : null;
            if (adapter != null) {
                return adapter.getItemCount();
            }
            return 0;
        }

        public int getLayoutDirection() {
            return C0926v.m44097f(this.f10027q);
        }

        public int getMinimumHeight() {
            return C0926v.m44087l(this.f10027q);
        }

        public int getMinimumWidth() {
            return C0926v.m44088k(this.f10027q);
        }

        public int getPaddingBottom() {
            RecyclerView recyclerView = this.f10027q;
            if (recyclerView != null) {
                return recyclerView.getPaddingBottom();
            }
            return 0;
        }

        public int getPaddingLeft() {
            RecyclerView recyclerView = this.f10027q;
            if (recyclerView != null) {
                return recyclerView.getPaddingLeft();
            }
            return 0;
        }

        public int getPaddingRight() {
            RecyclerView recyclerView = this.f10027q;
            if (recyclerView != null) {
                return recyclerView.getPaddingRight();
            }
            return 0;
        }

        public int getPaddingTop() {
            RecyclerView recyclerView = this.f10027q;
            if (recyclerView != null) {
                return recyclerView.getPaddingTop();
            }
            return 0;
        }

        public int getWidth() {
            return this.f10024g;
        }

        public int getWidthMode() {
            return this.f10022e;
        }

        /* renamed from: h */
        public void mo40229h(int i) {
        }

        /* renamed from: h */
        boolean mo40357h() {
            return false;
        }

        public boolean isAttachedToWindow() {
            return this.f10032v;
        }

        public boolean isAutoMeasureEnabled() {
            return this.f10033w;
        }

        public final boolean isItemPrefetchEnabled() {
            return this.f10021d;
        }

        public boolean isSmoothScrolling() {
            AbstractC2651r abstractC2651r = this.f10030t;
            return abstractC2651r != null && abstractC2651r.isRunning();
        }

        /* renamed from: k */
        public final void m40353k() {
            RecyclerView recyclerView = this.f10027q;
            if (recyclerView != null) {
                recyclerView.requestLayout();
            }
        }

        /* renamed from: l */
        public void mo40220l() {
        }

        /* renamed from: m */
        final void m40350m() {
            AbstractC2651r abstractC2651r = this.f10030t;
            if (abstractC2651r != null) {
                abstractC2651r.m40310b();
            }
        }

        void setExactMeasureSpecsFrom(RecyclerView recyclerView) {
            setMeasureSpecs(View.MeasureSpec.makeMeasureSpec(recyclerView.getWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(recyclerView.getHeight(), 1073741824));
        }

        void setMeasureSpecs(int i, int i2) {
            this.f10024g = View.MeasureSpec.getSize(i);
            int mode = View.MeasureSpec.getMode(i);
            this.f10022e = mode;
            if (mode == 0 && !RecyclerView.f9914b) {
                this.f10024g = 0;
            }
            this.f10025h = View.MeasureSpec.getSize(i2);
            int mode2 = View.MeasureSpec.getMode(i2);
            this.f10023f = mode2;
            if (mode2 != 0 || RecyclerView.f9914b) {
                return;
            }
            this.f10025h = 0;
        }

        public void setMeasuredDimension(int i, int i2) {
            this.f10027q.setMeasuredDimension(i, i2);
        }

        void setMeasuredDimensionFromChildren(int i, int i2) {
            int childCount = getChildCount();
            if (childCount == 0) {
                this.f10027q.m40448d(i, i2);
                return;
            }
            int i3 = 0;
            int i4 = Integer.MIN_VALUE;
            int i5 = Integer.MIN_VALUE;
            int i6 = Integer.MAX_VALUE;
            int i7 = Integer.MAX_VALUE;
            while (true) {
                int i8 = i7;
                if (i3 >= childCount) {
                    this.f10027q.f9979l.set(i6, i8, i4, i5);
                    mo40275a(this.f10027q.f9979l, i, i2);
                    return;
                }
                View childAt = getChildAt(i3);
                Rect rect = this.f10027q.f9979l;
                RecyclerView.m40483a(childAt, rect);
                int i9 = i6;
                if (rect.left < i6) {
                    i9 = rect.left;
                }
                int i10 = i4;
                if (rect.right > i4) {
                    i10 = rect.right;
                }
                int i11 = i8;
                if (rect.top < i8) {
                    i11 = rect.top;
                }
                int i12 = i5;
                if (rect.bottom > i5) {
                    i12 = rect.bottom;
                }
                i3++;
                i4 = i10;
                i5 = i12;
                i6 = i9;
                i7 = i11;
            }
        }

        void setRecyclerView(RecyclerView recyclerView) {
            if (recyclerView == null) {
                this.f10027q = null;
                this.f10026p = null;
                this.f10024g = 0;
                this.f10025h = 0;
            } else {
                this.f10027q = recyclerView;
                this.f10026p = recyclerView.f9975h;
                this.f10024g = recyclerView.getWidth();
                this.f10025h = recyclerView.getHeight();
            }
            this.f10022e = 1073741824;
            this.f10023f = 1073741824;
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$j */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$j.class */
    public interface AbstractC2642j {
        /* renamed from: a */
        void mo29864a(View view);

        /* renamed from: b */
        void mo29863b(View view);
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$k */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$k.class */
    public static abstract class AbstractC2643k {
        /* renamed from: a */
        public abstract boolean mo40035a(int i, int i2);
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$l */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$l.class */
    public interface AbstractC2644l {
        /* renamed from: a */
        boolean mo40102a(MotionEvent motionEvent);

        /* renamed from: b */
        void mo40098b(MotionEvent motionEvent);
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$m */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$m.class */
    public static abstract class AbstractC2645m {
        /* renamed from: a */
        public void mo10833a(RecyclerView recyclerView, int i) {
        }

        /* renamed from: a */
        public void mo10832a(RecyclerView recyclerView, int i, int i2) {
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$n */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$n.class */
    public static final class C2646n {

        /* renamed from: a */
        SparseArray<C2647a> f10042a = new SparseArray<>();

        /* renamed from: b */
        int f10043b = 0;

        /* renamed from: androidx.recyclerview.widget.RecyclerView$n$a */
        /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$n$a.class */
        public static final class C2647a {

            /* renamed from: a */
            final ArrayList<AbstractC2657v> f10044a = new ArrayList<>();

            /* renamed from: b */
            int f10045b = 5;

            /* renamed from: c */
            long f10046c = 0;

            /* renamed from: d */
            long f10047d = 0;

            C2647a() {
            }
        }

        /* renamed from: a */
        static long m40342a(long j, long j2) {
            return j == 0 ? j2 : ((j / 4) * 3) + (j2 / 4);
        }

        /* renamed from: a */
        public final AbstractC2657v m40345a(int i) {
            C2647a c2647a = this.f10042a.get(i);
            if (c2647a == null || c2647a.f10044a.isEmpty()) {
                return null;
            }
            ArrayList<AbstractC2657v> arrayList = c2647a.f10044a;
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                if (!arrayList.get(size).isAttachedToTransitionOverlay()) {
                    return arrayList.remove(size);
                }
            }
            return null;
        }

        /* renamed from: a */
        final void m40346a() {
            this.f10043b++;
        }

        /* renamed from: a */
        final void m40344a(int i, long j) {
            C2647a m40339b = m40339b(i);
            m40339b.f10046c = m40342a(m40339b.f10046c, j);
        }

        /* renamed from: a */
        public final void m40341a(AbstractC2657v abstractC2657v) {
            int itemViewType = abstractC2657v.getItemViewType();
            ArrayList<AbstractC2657v> arrayList = m40339b(itemViewType).f10044a;
            if (this.f10042a.get(itemViewType).f10045b <= arrayList.size()) {
                return;
            }
            abstractC2657v.m40284j();
            arrayList.add(abstractC2657v);
        }

        /* renamed from: a */
        final boolean m40343a(int i, long j, long j2) {
            long j3 = m40339b(i).f10046c;
            return j3 == 0 || j + j3 < j2;
        }

        /* renamed from: b */
        final C2647a m40339b(int i) {
            C2647a c2647a = this.f10042a.get(i);
            C2647a c2647a2 = c2647a;
            if (c2647a == null) {
                c2647a2 = new C2647a();
                this.f10042a.put(i, c2647a2);
            }
            return c2647a2;
        }

        /* renamed from: b */
        final void m40340b() {
            this.f10043b--;
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$o */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$o.class */
    public final class C2648o {

        /* renamed from: a */
        final ArrayList<AbstractC2657v> f10048a;

        /* renamed from: d */
        final List<AbstractC2657v> f10051d;

        /* renamed from: g */
        C2646n f10054g;

        /* renamed from: h */
        AbstractC2655t f10055h;

        /* renamed from: b */
        ArrayList<AbstractC2657v> f10049b = null;

        /* renamed from: c */
        final ArrayList<AbstractC2657v> f10050c = new ArrayList<>();

        /* renamed from: e */
        int f10052e = 2;

        /* renamed from: f */
        int f10053f = 2;

        public C2648o() {
            RecyclerView.this = r5;
            ArrayList<AbstractC2657v> arrayList = new ArrayList<>();
            this.f10048a = arrayList;
            this.f10051d = Collections.unmodifiableList(arrayList);
        }

        /* renamed from: a */
        private AbstractC2657v m40336a(int i, boolean z) {
            View view;
            int size = this.f10048a.size();
            for (int i2 = 0; i2 < size; i2++) {
                AbstractC2657v abstractC2657v = this.f10048a.get(i2);
                if (!abstractC2657v.m40289e() && abstractC2657v.getLayoutPosition() == i && !abstractC2657v.isInvalid() && (RecyclerView.this.f9925I.f10079g || !abstractC2657v.isRemoved())) {
                    abstractC2657v.m40292b(32);
                    return abstractC2657v;
                }
            }
            if (!z) {
                C2666b c2666b = RecyclerView.this.f9975h;
                int size2 = c2666b.f10172c.size();
                int i3 = 0;
                while (true) {
                    if (i3 >= size2) {
                        view = null;
                        break;
                    }
                    view = c2666b.f10172c.get(i3);
                    AbstractC2657v mo40121b = c2666b.f10170a.mo40121b(view);
                    if (mo40121b.getLayoutPosition() == i && !mo40121b.isInvalid() && !mo40121b.isRemoved()) {
                        break;
                    }
                    i3++;
                }
                if (view != null) {
                    AbstractC2657v m40453c = RecyclerView.m40453c(view);
                    C2666b c2666b2 = RecyclerView.this.f9975h;
                    int mo40126a = c2666b2.f10170a.mo40126a(view);
                    if (mo40126a < 0) {
                        throw new IllegalArgumentException("view is not a child, cannot hide ".concat(String.valueOf(view)));
                    }
                    if (!c2666b2.f10171b.m40131c(mo40126a)) {
                        throw new RuntimeException("trying to unhide a view that was not hidden".concat(String.valueOf(view)));
                    }
                    c2666b2.f10171b.m40132b(mo40126a);
                    c2666b2.m40140b(view);
                    int m40138c = RecyclerView.this.f9975h.m40138c(view);
                    if (m40138c != -1) {
                        RecyclerView.this.f9975h.m40137d(m40138c);
                        m40322c(view);
                        m40453c.m40292b(8224);
                        return m40453c;
                    }
                    throw new IllegalStateException("layout index should not be -1 after unhiding a view:" + m40453c + RecyclerView.this.m40496a());
                }
            }
            int size3 = this.f10050c.size();
            for (int i4 = 0; i4 < size3; i4++) {
                AbstractC2657v abstractC2657v2 = this.f10050c.get(i4);
                if (!abstractC2657v2.isInvalid() && abstractC2657v2.getLayoutPosition() == i && !abstractC2657v2.isAttachedToTransitionOverlay()) {
                    if (!z) {
                        this.f10050c.remove(i4);
                    }
                    return abstractC2657v2;
                }
            }
            return null;
        }

        /* renamed from: a */
        private AbstractC2657v m40334a(long j, int i, boolean z) {
            for (int size = this.f10048a.size() - 1; size >= 0; size--) {
                AbstractC2657v abstractC2657v = this.f10048a.get(size);
                if (abstractC2657v.getItemId() == j && !abstractC2657v.m40289e()) {
                    if (i == abstractC2657v.getItemViewType()) {
                        abstractC2657v.m40292b(32);
                        if (abstractC2657v.isRemoved() && !RecyclerView.this.f9925I.f10079g) {
                            abstractC2657v.setFlags(2, 14);
                        }
                        return abstractC2657v;
                    } else if (!z) {
                        this.f10048a.remove(size);
                        RecyclerView.this.removeDetachedView(abstractC2657v.itemView, false);
                        m40326b(abstractC2657v.itemView);
                    }
                }
            }
            for (int size2 = this.f10050c.size() - 1; size2 >= 0; size2--) {
                AbstractC2657v abstractC2657v2 = this.f10050c.get(size2);
                if (abstractC2657v2.getItemId() == j && !abstractC2657v2.isAttachedToTransitionOverlay()) {
                    if (i == abstractC2657v2.getItemViewType()) {
                        if (!z) {
                            this.f10050c.remove(size2);
                        }
                        return abstractC2657v2;
                    } else if (!z) {
                        m40323c(size2);
                        return null;
                    }
                }
            }
            return null;
        }

        /* renamed from: a */
        private void m40332a(ViewGroup viewGroup, boolean z) {
            for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                View childAt = viewGroup.getChildAt(childCount);
                if (childAt instanceof ViewGroup) {
                    m40332a((ViewGroup) childAt, true);
                }
            }
            if (!z) {
                return;
            }
            if (viewGroup.getVisibility() == 4) {
                viewGroup.setVisibility(0);
                viewGroup.setVisibility(4);
                return;
            }
            int visibility = viewGroup.getVisibility();
            viewGroup.setVisibility(4);
            viewGroup.setVisibility(visibility);
        }

        /* renamed from: a */
        private boolean m40330a(AbstractC2657v abstractC2657v, int i, int i2, long j) {
            abstractC2657v.f10114q = null;
            abstractC2657v.f10113p = RecyclerView.this;
            int itemViewType = abstractC2657v.getItemViewType();
            long nanoTime = RecyclerView.this.getNanoTime();
            if (j != Long.MAX_VALUE) {
                long j2 = this.f10054g.m40339b(itemViewType).f10047d;
                if (!(j2 == 0 || j2 + nanoTime < j)) {
                    return false;
                }
            }
            RecyclerView.this.f9981n.bindViewHolder(abstractC2657v, i);
            long nanoTime2 = RecyclerView.this.getNanoTime();
            C2646n.C2647a m40339b = this.f10054g.m40339b(abstractC2657v.getItemViewType());
            m40339b.f10047d = C2646n.m40342a(m40339b.f10047d, nanoTime2 - nanoTime);
            if (RecyclerView.this.isAccessibilityEnabled()) {
                View view = abstractC2657v.itemView;
                if (C0926v.m44099e(view) == 0) {
                    C0926v.m44102c(view, 1);
                }
                if (RecyclerView.this.f9929M != null) {
                    C2699l.C2700a c2700a = RecyclerView.this.f9929M.f10304c;
                    if (c2700a instanceof C2699l.C2700a) {
                        C2699l.C2700a c2700a2 = c2700a;
                        C0865a m44112b = C0926v.m44112b(view);
                        if (m44112b != null && m44112b != c2700a2) {
                            c2700a2.f10306c.put(view, m44112b);
                        }
                    }
                    C0926v.m44123a(view, c2700a);
                }
            }
            if (RecyclerView.this.f9925I.f10079g) {
                abstractC2657v.f10103f = i2;
                return true;
            }
            return true;
        }

        /* renamed from: c */
        private boolean m40321c(AbstractC2657v abstractC2657v) {
            if (abstractC2657v.isRemoved()) {
                return RecyclerView.this.f9925I.f10079g;
            }
            if (abstractC2657v.f10098b < 0 || abstractC2657v.f10098b >= RecyclerView.this.f9981n.getItemCount()) {
                throw new IndexOutOfBoundsException("Inconsistency detected. Invalid view holder adapter position" + abstractC2657v + RecyclerView.this.m40496a());
            } else if (!RecyclerView.this.f9925I.f10079g && RecyclerView.this.f9981n.getItemViewType(abstractC2657v.f10098b) != abstractC2657v.getItemViewType()) {
                return false;
            } else {
                return !RecyclerView.this.f9981n.hasStableIds() || abstractC2657v.getItemId() == RecyclerView.this.f9981n.getItemId(abstractC2657v.f10098b);
            }
        }

        /* renamed from: d */
        private AbstractC2657v m40319d(int i) {
            int size;
            int m40169a;
            ArrayList<AbstractC2657v> arrayList = this.f10049b;
            if (arrayList == null || (size = arrayList.size()) == 0) {
                return null;
            }
            for (int i2 = 0; i2 < size; i2++) {
                AbstractC2657v abstractC2657v = this.f10049b.get(i2);
                if (!abstractC2657v.m40289e() && abstractC2657v.getLayoutPosition() == i) {
                    abstractC2657v.m40292b(32);
                    return abstractC2657v;
                }
            }
            if (!RecyclerView.this.f9981n.hasStableIds() || (m40169a = RecyclerView.this.f9974g.m40169a(i, 0)) <= 0 || m40169a >= RecyclerView.this.f9981n.getItemCount()) {
                return null;
            }
            long itemId = RecyclerView.this.f9981n.getItemId(m40169a);
            for (int i3 = 0; i3 < size; i3++) {
                AbstractC2657v abstractC2657v2 = this.f10049b.get(i3);
                if (!abstractC2657v2.m40289e() && abstractC2657v2.getItemId() == itemId) {
                    abstractC2657v2.m40292b(32);
                    return abstractC2657v2;
                }
            }
            return null;
        }

        /* renamed from: d */
        private void m40318d(AbstractC2657v abstractC2657v) {
            if (abstractC2657v.itemView instanceof ViewGroup) {
                m40332a((ViewGroup) abstractC2657v.itemView, false);
            }
        }

        /* renamed from: e */
        private void m40316e(AbstractC2657v abstractC2657v) {
            if (RecyclerView.this.f9983p != null) {
                RecyclerView.this.f9983p.mo4431a(abstractC2657v);
            }
            int size = RecyclerView.this.f9984q.size();
            for (int i = 0; i < size; i++) {
                RecyclerView.this.f9984q.get(i).mo4431a(abstractC2657v);
            }
            if (RecyclerView.this.f9981n != null) {
                RecyclerView.this.f9981n.onViewRecycled(abstractC2657v);
            }
            if (RecyclerView.this.f9925I != null) {
                RecyclerView.this.f9976i.m40011e(abstractC2657v);
            }
        }

        /* renamed from: g */
        private void m40314g() {
            for (int size = this.f10050c.size() - 1; size >= 0; size--) {
                m40323c(size);
            }
            this.f10050c.clear();
            if (RecyclerView.f9916d) {
                RecyclerView.this.f9924H.m40094a();
            }
        }

        /* renamed from: a */
        public final int m40337a(int i) {
            if (i >= 0 && i < RecyclerView.this.f9925I.m40306a()) {
                return !RecyclerView.this.f9925I.f10079g ? i : RecyclerView.this.f9974g.m40165b(i);
            }
            throw new IndexOutOfBoundsException("invalid position " + i + ". State item count is " + RecyclerView.this.f9925I.m40306a() + RecyclerView.this.m40496a());
        }

        /* JADX WARN: Removed duplicated region for block: B:105:0x03da  */
        /* JADX WARN: Removed duplicated region for block: B:15:0x0051  */
        /* JADX WARN: Removed duplicated region for block: B:29:0x00c3  */
        /* JADX WARN: Removed duplicated region for block: B:82:0x0308  */
        /* JADX WARN: Removed duplicated region for block: B:98:0x0387  */
        /* JADX WARN: Removed duplicated region for block: B:99:0x03a0  */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final androidx.recyclerview.widget.RecyclerView.AbstractC2657v m40335a(int r8, boolean r9, long r10) {
            /*
                Method dump skipped, instructions count: 1093
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.C2648o.m40335a(int, boolean, long):androidx.recyclerview.widget.RecyclerView$v");
        }

        /* renamed from: a */
        public final void m40338a() {
            this.f10048a.clear();
            m40314g();
        }

        /* renamed from: a */
        public final void m40333a(View view) {
            AbstractC2657v m40453c = RecyclerView.m40453c(view);
            if (m40453c.isTmpDetached()) {
                RecyclerView.this.removeDetachedView(view, false);
            }
            if (m40453c.isScrap()) {
                m40453c.m40290d();
            } else if (m40453c.m40289e()) {
                m40453c.m40288f();
            }
            m40331a(m40453c);
            if (RecyclerView.this.f9921E == null || m40453c.isRecyclable()) {
                return;
            }
            RecyclerView.this.f9921E.mo40109c(m40453c);
        }

        /* JADX WARN: Code restructure failed: missing block: B:21:0x0063, code lost:
            if (r5.isRecyclable() != false) goto L23;
         */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        final void m40331a(androidx.recyclerview.widget.RecyclerView.AbstractC2657v r5) {
            /*
                Method dump skipped, instructions count: 494
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.C2648o.m40331a(androidx.recyclerview.widget.RecyclerView$v):void");
        }

        /* renamed from: a */
        public final void m40329a(AbstractC2657v abstractC2657v, boolean z) {
            RecyclerView.m40452c(abstractC2657v);
            View view = abstractC2657v.itemView;
            if (RecyclerView.this.f9929M != null) {
                C2699l.C2700a c2700a = RecyclerView.this.f9929M.f10304c;
                C0926v.m44123a(view, c2700a instanceof C2699l.C2700a ? c2700a.m40049c(view) : null);
            }
            if (z) {
                m40316e(abstractC2657v);
            }
            abstractC2657v.f10114q = null;
            abstractC2657v.f10113p = null;
            m40324c().m40341a(abstractC2657v);
        }

        /* renamed from: b */
        public final View m40327b(int i) {
            return m40335a(i, false, Long.MAX_VALUE).itemView;
        }

        /* renamed from: b */
        public final void m40328b() {
            this.f10053f = this.f10052e + (RecyclerView.this.f9982o != null ? RecyclerView.this.f9982o.f10034x : 0);
            for (int size = this.f10050c.size() - 1; size >= 0 && this.f10050c.size() > this.f10053f; size--) {
                m40323c(size);
            }
        }

        /* renamed from: b */
        final void m40326b(View view) {
            AbstractC2657v m40453c = RecyclerView.m40453c(view);
            m40453c.f10109l = null;
            m40453c.f10110m = false;
            m40453c.m40288f();
            m40331a(m40453c);
        }

        /* renamed from: b */
        final void m40325b(AbstractC2657v abstractC2657v) {
            if (abstractC2657v.f10110m) {
                this.f10049b.remove(abstractC2657v);
            } else {
                this.f10048a.remove(abstractC2657v);
            }
            abstractC2657v.f10109l = null;
            abstractC2657v.f10110m = false;
            abstractC2657v.m40288f();
        }

        /* renamed from: c */
        final C2646n m40324c() {
            if (this.f10054g == null) {
                this.f10054g = new C2646n();
            }
            return this.f10054g;
        }

        /* renamed from: c */
        final void m40323c(int i) {
            m40329a(this.f10050c.get(i), true);
            this.f10050c.remove(i);
        }

        /* renamed from: c */
        final void m40322c(View view) {
            AbstractC2657v m40453c = RecyclerView.m40453c(view);
            if (!m40453c.m40297a(12) && m40453c.isUpdated() && !RecyclerView.this.m40458b(m40453c)) {
                if (this.f10049b == null) {
                    this.f10049b = new ArrayList<>();
                }
                m40453c.m40295a(this, true);
                this.f10049b.add(m40453c);
            } else if (!m40453c.isInvalid() || m40453c.isRemoved() || RecyclerView.this.f9981n.hasStableIds()) {
                m40453c.m40295a(this, false);
                this.f10048a.add(m40453c);
            } else {
                throw new IllegalArgumentException("Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool." + RecyclerView.this.m40496a());
            }
        }

        /* renamed from: d */
        final void m40320d() {
            int size = this.f10050c.size();
            for (int i = 0; i < size; i++) {
                AbstractC2657v abstractC2657v = this.f10050c.get(i);
                if (abstractC2657v != null) {
                    abstractC2657v.m40292b(6);
                    abstractC2657v.m40294a((Object) null);
                }
            }
            if (RecyclerView.this.f9981n == null || !RecyclerView.this.f9981n.hasStableIds()) {
                m40314g();
            }
        }

        /* renamed from: e */
        final void m40317e() {
            int size = this.f10050c.size();
            for (int i = 0; i < size; i++) {
                this.f10050c.get(i).m40298a();
            }
            int size2 = this.f10048a.size();
            for (int i2 = 0; i2 < size2; i2++) {
                this.f10048a.get(i2).m40298a();
            }
            ArrayList<AbstractC2657v> arrayList = this.f10049b;
            if (arrayList != null) {
                int size3 = arrayList.size();
                for (int i3 = 0; i3 < size3; i3++) {
                    this.f10049b.get(i3).m40298a();
                }
            }
        }

        /* renamed from: f */
        final void m40315f() {
            int size = this.f10050c.size();
            for (int i = 0; i < size; i++) {
                LayoutParams layoutParams = (LayoutParams) this.f10050c.get(i).itemView.getLayoutParams();
                if (layoutParams != null) {
                    layoutParams.f10002e = true;
                }
            }
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$p */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$p.class */
    public interface AbstractC2649p {
        /* renamed from: a */
        void mo4431a(AbstractC2657v abstractC2657v);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.recyclerview.widget.RecyclerView$q */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$q.class */
    public final class C2650q extends AbstractC2629c {
        C2650q() {
            RecyclerView.this = r4;
        }

        /* renamed from: a */
        private void m40313a() {
            if (!RecyclerView.f9915c || !RecyclerView.this.f9989v || !RecyclerView.this.f9988u) {
                RecyclerView.this.f9917A = true;
                RecyclerView.this.requestLayout();
                return;
            }
            RecyclerView recyclerView = RecyclerView.this;
            C0926v.m44117a(recyclerView, recyclerView.f9978k);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2629c
        public final void onChanged() {
            RecyclerView.this.m40468a((String) null);
            RecyclerView.this.f9925I.f10078f = true;
            RecyclerView.this.m40451c(true);
            if (!RecyclerView.this.f9974g.m40159d()) {
                RecyclerView.this.requestLayout();
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:10:0x004e  */
        /* JADX WARN: Removed duplicated region for block: B:12:? A[RETURN, SYNTHETIC] */
        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2629c
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
                r0.m40468a(r1)
                r0 = r7
                androidx.recyclerview.widget.RecyclerView r0 = androidx.recyclerview.widget.RecyclerView.this
                androidx.recyclerview.widget.a r0 = r0.f9974g
                r11 = r0
                r0 = 1
                r12 = r0
                r0 = r9
                if (r0 <= 0) goto L48
                r0 = r11
                java.util.ArrayList<androidx.recyclerview.widget.a$b> r0 = r0.f10158a
                r1 = r11
                r2 = 4
                r3 = r8
                r4 = r9
                r5 = r10
                androidx.recyclerview.widget.a$b r1 = r1.mo40078a(r2, r3, r4, r5)
                boolean r0 = r0.add(r1)
                r0 = r11
                r1 = r11
                int r1 = r1.f10164g
                r2 = 4
                r1 = r1 | r2
                r0.f10164g = r1
                r0 = r11
                java.util.ArrayList<androidx.recyclerview.widget.a$b> r0 = r0.f10158a
                int r0 = r0.size()
                r1 = 1
                if (r0 != r1) goto L48
                r0 = r12
                r8 = r0
                goto L4a
            L48:
                r0 = 0
                r8 = r0
            L4a:
                r0 = r8
                if (r0 == 0) goto L52
                r0 = r7
                r0.m40313a()
            L52:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.C2650q.onItemRangeChanged(int, int, java.lang.Object):void");
        }

        /* JADX WARN: Removed duplicated region for block: B:10:0x0048  */
        /* JADX WARN: Removed duplicated region for block: B:12:? A[RETURN, SYNTHETIC] */
        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2629c
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
                r0.m40468a(r1)
                r0 = r7
                androidx.recyclerview.widget.RecyclerView r0 = androidx.recyclerview.widget.RecyclerView.this
                androidx.recyclerview.widget.a r0 = r0.f9974g
                r10 = r0
                r0 = 1
                r11 = r0
                r0 = r9
                if (r0 <= 0) goto L42
                r0 = r10
                java.util.ArrayList<androidx.recyclerview.widget.a$b> r0 = r0.f10158a
                r1 = r10
                r2 = 1
                r3 = r8
                r4 = r9
                r5 = 0
                androidx.recyclerview.widget.a$b r1 = r1.mo40078a(r2, r3, r4, r5)
                boolean r0 = r0.add(r1)
                r0 = r10
                r1 = r10
                int r1 = r1.f10164g
                r2 = 1
                r1 = r1 | r2
                r0.f10164g = r1
                r0 = r10
                java.util.ArrayList<androidx.recyclerview.widget.a$b> r0 = r0.f10158a
                int r0 = r0.size()
                r1 = 1
                if (r0 != r1) goto L42
                r0 = r11
                r8 = r0
                goto L44
            L42:
                r0 = 0
                r8 = r0
            L44:
                r0 = r8
                if (r0 == 0) goto L4c
                r0 = r7
                r0.m40313a()
            L4c:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.C2650q.onItemRangeInserted(int, int):void");
        }

        /* JADX WARN: Removed duplicated region for block: B:14:0x0060  */
        /* JADX WARN: Removed duplicated region for block: B:16:? A[RETURN, SYNTHETIC] */
        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2629c
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
                r0.m40468a(r1)
                r0 = r7
                androidx.recyclerview.widget.RecyclerView r0 = androidx.recyclerview.widget.RecyclerView.this
                androidx.recyclerview.widget.a r0 = r0.f9974g
                r11 = r0
                r0 = 1
                r12 = r0
                r0 = r8
                r1 = r9
                if (r0 == r1) goto L5a
                r0 = r10
                r1 = 1
                if (r0 != r1) goto L50
                r0 = r11
                java.util.ArrayList<androidx.recyclerview.widget.a$b> r0 = r0.f10158a
                r1 = r11
                r2 = 8
                r3 = r8
                r4 = r9
                r5 = 0
                androidx.recyclerview.widget.a$b r1 = r1.mo40078a(r2, r3, r4, r5)
                boolean r0 = r0.add(r1)
                r0 = r11
                r1 = r11
                int r1 = r1.f10164g
                r2 = 8
                r1 = r1 | r2
                r0.f10164g = r1
                r0 = r11
                java.util.ArrayList<androidx.recyclerview.widget.a$b> r0 = r0.f10158a
                int r0 = r0.size()
                r1 = 1
                if (r0 != r1) goto L5a
                r0 = r12
                r8 = r0
                goto L5c
            L50:
                java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
                r1 = r0
                java.lang.String r2 = "Moving more than 1 item is not supported yet"
                r1.<init>(r2)
                throw r0
            L5a:
                r0 = 0
                r8 = r0
            L5c:
                r0 = r8
                if (r0 == 0) goto L64
                r0 = r7
                r0.m40313a()
            L64:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.C2650q.onItemRangeMoved(int, int, int):void");
        }

        /* JADX WARN: Removed duplicated region for block: B:10:0x0048  */
        /* JADX WARN: Removed duplicated region for block: B:12:? A[RETURN, SYNTHETIC] */
        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2629c
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
                r0.m40468a(r1)
                r0 = r7
                androidx.recyclerview.widget.RecyclerView r0 = androidx.recyclerview.widget.RecyclerView.this
                androidx.recyclerview.widget.a r0 = r0.f9974g
                r10 = r0
                r0 = 1
                r11 = r0
                r0 = r9
                if (r0 <= 0) goto L42
                r0 = r10
                java.util.ArrayList<androidx.recyclerview.widget.a$b> r0 = r0.f10158a
                r1 = r10
                r2 = 2
                r3 = r8
                r4 = r9
                r5 = 0
                androidx.recyclerview.widget.a$b r1 = r1.mo40078a(r2, r3, r4, r5)
                boolean r0 = r0.add(r1)
                r0 = r10
                r1 = r10
                int r1 = r1.f10164g
                r2 = 2
                r1 = r1 | r2
                r0.f10164g = r1
                r0 = r10
                java.util.ArrayList<androidx.recyclerview.widget.a$b> r0 = r0.f10158a
                int r0 = r0.size()
                r1 = 1
                if (r0 != r1) goto L42
                r0 = r11
                r8 = r0
                goto L44
            L42:
                r0 = 0
                r8 = r0
            L44:
                r0 = r8
                if (r0 == 0) goto L4c
                r0 = r7
                r0.m40313a()
            L4c:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.C2650q.onItemRangeRemoved(int, int):void");
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2629c
        public final void onStateRestorationPolicyChanged() {
            AbstractC2626a abstractC2626a;
            if (RecyclerView.this.f9973f == null || (abstractC2626a = RecyclerView.this.f9981n) == null || !abstractC2626a.m40413a()) {
                return;
            }
            RecyclerView.this.requestLayout();
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$r */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$r.class */
    public static abstract class AbstractC2651r {

        /* renamed from: h */
        RecyclerView f10060h;

        /* renamed from: i */
        AbstractC2637i f10061i;

        /* renamed from: j */
        boolean f10062j;

        /* renamed from: k */
        boolean f10063k;

        /* renamed from: l */
        View f10064l;

        /* renamed from: m */
        boolean f10065m;

        /* renamed from: g */
        int f10059g = -1;

        /* renamed from: a */
        private final C2652a f10058a = new C2652a(0, 0);

        /* renamed from: androidx.recyclerview.widget.RecyclerView$r$a */
        /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$r$a.class */
        public static final class C2652a {

            /* renamed from: a */
            int f10066a;

            /* renamed from: b */
            private int f10067b;

            /* renamed from: c */
            private int f10068c;

            /* renamed from: d */
            private int f10069d;

            /* renamed from: e */
            private Interpolator f10070e;

            /* renamed from: f */
            private boolean f10071f;

            /* renamed from: g */
            private int f10072g;

            public C2652a(int i, int i2) {
                this(i, i2, BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW, null);
            }

            public C2652a(int i, int i2, int i3) {
                this(i, i2, i3, null);
            }

            public C2652a(int i, int i2, int i3, Interpolator interpolator) {
                this.f10066a = -1;
                this.f10071f = false;
                this.f10072g = 0;
                this.f10067b = i;
                this.f10068c = i2;
                this.f10069d = i3;
                this.f10070e = interpolator;
            }

            /* renamed from: a */
            private void m40309a() {
                if (this.f10070e == null || this.f10069d > 0) {
                    if (this.f10069d <= 0) {
                        throw new IllegalStateException("Scroll duration must be a positive number");
                    }
                    return;
                }
                throw new IllegalStateException("If you provide an interpolator, you must set a positive duration");
            }

            /* renamed from: a */
            public final void m40308a(int i, int i2, int i3, Interpolator interpolator) {
                this.f10067b = i;
                this.f10068c = i2;
                this.f10069d = i3;
                this.f10070e = interpolator;
                this.f10071f = true;
            }

            /* renamed from: a */
            final void m40307a(RecyclerView recyclerView) {
                int i = this.f10066a;
                if (i >= 0) {
                    this.f10066a = -1;
                    recyclerView.m40455c(i);
                    this.f10071f = false;
                } else if (!this.f10071f) {
                    this.f10072g = 0;
                } else {
                    m40309a();
                    recyclerView.f9922F.m40301a(this.f10067b, this.f10068c, this.f10069d, this.f10070e);
                    int i2 = this.f10072g + 1;
                    this.f10072g = i2;
                    if (i2 > 10) {
                        Log.e("RecyclerView", "Smooth Scroll action is being updated too frequently. Make sure you are not changing it unless necessary");
                    }
                    this.f10071f = false;
                }
            }
        }

        /* renamed from: androidx.recyclerview.widget.RecyclerView$r$b */
        /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$r$b.class */
        public interface AbstractC2653b {
            /* renamed from: c */
            PointF mo40248c(int i);
        }

        /* renamed from: a */
        protected abstract void mo31236a();

        /* renamed from: a */
        final void m40312a(int i, int i2) {
            PointF mo27811c;
            RecyclerView recyclerView = this.f10060h;
            if (this.f10059g == -1 || recyclerView == null) {
                m40310b();
            }
            if (this.f10062j && this.f10064l == null && this.f10061i != null && (mo27811c = mo27811c(this.f10059g)) != null && (mo27811c.x != BitmapDescriptorFactory.HUE_RED || mo27811c.y != BitmapDescriptorFactory.HUE_RED)) {
                recyclerView.m40489a((int) Math.signum(mo27811c.x), (int) Math.signum(mo27811c.y), (int[]) null);
            }
            this.f10062j = false;
            View view = this.f10064l;
            if (view != null) {
                if (RecyclerView.m40442e(view) == this.f10059g) {
                    mo29887a(this.f10064l, recyclerView.f9925I, this.f10058a);
                    this.f10058a.m40307a(recyclerView);
                    m40310b();
                } else {
                    Log.e("RecyclerView", "Passed over target position while smooth scrolling.");
                    this.f10064l = null;
                }
            }
            if (this.f10063k) {
                mo40086a(i, i2, this.f10058a);
                boolean z = false;
                if (this.f10058a.f10066a >= 0) {
                    z = true;
                }
                this.f10058a.m40307a(recyclerView);
                if (!z || !this.f10063k) {
                    return;
                }
                this.f10062j = true;
                recyclerView.f9922F.m40303a();
            }
        }

        /* renamed from: a */
        protected abstract void mo40086a(int i, int i2, C2652a c2652a);

        /* renamed from: a */
        protected final void m40311a(View view) {
            if (RecyclerView.m40442e(view) == getTargetPosition()) {
                this.f10064l = view;
            }
        }

        /* renamed from: a */
        protected abstract void mo29887a(View view, C2654s c2654s, C2652a c2652a);

        /* renamed from: b */
        public final void m40310b() {
            if (!this.f10063k) {
                return;
            }
            this.f10063k = false;
            mo31236a();
            this.f10060h.f9925I.f10073a = -1;
            this.f10064l = null;
            this.f10059g = -1;
            this.f10062j = false;
            AbstractC2637i abstractC2637i = this.f10061i;
            if (abstractC2637i.f10030t == this) {
                abstractC2637i.f10030t = null;
            }
            this.f10061i = null;
            this.f10060h = null;
        }

        /* renamed from: c */
        public PointF mo27811c(int i) {
            AbstractC2637i layoutManager = getLayoutManager();
            if (layoutManager instanceof AbstractC2653b) {
                return ((AbstractC2653b) layoutManager).mo40248c(i);
            }
            Log.w("RecyclerView", "You should override computeScrollVectorForPosition when the LayoutManager does not implement " + AbstractC2653b.class.getCanonicalName());
            return null;
        }

        public int getChildCount() {
            return this.f10060h.f9982o.getChildCount();
        }

        public AbstractC2637i getLayoutManager() {
            return this.f10061i;
        }

        public int getTargetPosition() {
            return this.f10059g;
        }

        public boolean isPendingInitialRun() {
            return this.f10062j;
        }

        public boolean isRunning() {
            return this.f10063k;
        }

        public void setTargetPosition(int i) {
            this.f10059g = i;
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$s */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$s.class */
    public static final class C2654s {

        /* renamed from: a */
        int f10073a = -1;

        /* renamed from: b */
        int f10074b = 0;

        /* renamed from: c */
        int f10075c = 0;

        /* renamed from: d */
        int f10076d = 1;

        /* renamed from: e */
        int f10077e = 0;

        /* renamed from: f */
        boolean f10078f = false;

        /* renamed from: g */
        boolean f10079g = false;

        /* renamed from: h */
        boolean f10080h = false;

        /* renamed from: i */
        boolean f10081i = false;

        /* renamed from: j */
        boolean f10082j = false;

        /* renamed from: k */
        boolean f10083k = false;

        /* renamed from: l */
        int f10084l;

        /* renamed from: m */
        long f10085m;

        /* renamed from: n */
        int f10086n;

        /* renamed from: o */
        int f10087o;

        /* renamed from: p */
        int f10088p;

        /* renamed from: q */
        private SparseArray<Object> f10089q;

        /* renamed from: a */
        public final int m40306a() {
            return this.f10079g ? this.f10074b - this.f10075c : this.f10077e;
        }

        /* renamed from: a */
        final void m40305a(int i) {
            if ((this.f10076d & i) != 0) {
                return;
            }
            throw new IllegalStateException("Layout state should be one of " + Integer.toBinaryString(i) + " but it is " + Integer.toBinaryString(this.f10076d));
        }

        public final String toString() {
            return "State{mTargetPosition=" + this.f10073a + ", mData=" + this.f10089q + ", mItemCount=" + this.f10077e + ", mIsMeasuring=" + this.f10081i + ", mPreviousLayoutItemCount=" + this.f10074b + ", mDeletedInvisibleItemCountSincePreviousLayout=" + this.f10075c + ", mStructureChanged=" + this.f10078f + ", mInPreLayout=" + this.f10079g + ", mRunSimpleAnimations=" + this.f10082j + ", mRunPredictiveAnimations=" + this.f10083k + '}';
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$t */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$t.class */
    public static abstract class AbstractC2655t {
        /* renamed from: a */
        public abstract View m40304a();
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$u */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$u.class */
    public final class RunnableC2656u implements Runnable {

        /* renamed from: a */
        int f10090a;

        /* renamed from: b */
        int f10091b;

        /* renamed from: c */
        OverScroller f10092c;

        /* renamed from: d */
        Interpolator f10093d = RecyclerView.f9908P;

        /* renamed from: f */
        private boolean f10095f = false;

        /* renamed from: g */
        private boolean f10096g = false;

        RunnableC2656u() {
            RecyclerView.this = r7;
            this.f10092c = new OverScroller(r7.getContext(), RecyclerView.f9908P);
        }

        /* renamed from: a */
        private int m40302a(int i, int i2) {
            int abs = Math.abs(i);
            int abs2 = Math.abs(i2);
            boolean z = abs > abs2;
            RecyclerView recyclerView = RecyclerView.this;
            return Math.min((int) ((((z ? abs : abs2) / (z ? recyclerView.getWidth() : recyclerView.getHeight())) + 1.0f) * 300.0f), 2000);
        }

        /* renamed from: c */
        private void m40299c() {
            RecyclerView.this.removeCallbacks(this);
            C0926v.m44117a(RecyclerView.this, this);
        }

        /* renamed from: a */
        final void m40303a() {
            if (this.f10095f) {
                this.f10096g = true;
            } else {
                m40299c();
            }
        }

        /* renamed from: a */
        public final void m40301a(int i, int i2, int i3, Interpolator interpolator) {
            int i4 = i3;
            if (i3 == Integer.MIN_VALUE) {
                i4 = m40302a(i, i2);
            }
            Interpolator interpolator2 = interpolator;
            if (interpolator == null) {
                interpolator2 = RecyclerView.f9908P;
            }
            if (this.f10093d != interpolator2) {
                this.f10093d = interpolator2;
                this.f10092c = new OverScroller(RecyclerView.this.getContext(), interpolator2);
            }
            this.f10091b = 0;
            this.f10090a = 0;
            RecyclerView.this.setScrollState(2);
            this.f10092c.startScroll(0, 0, i, i2, i4);
            if (Build.VERSION.SDK_INT < 23) {
                this.f10092c.computeScrollOffset();
            }
            m40303a();
        }

        /* renamed from: b */
        public final void m40300b() {
            RecyclerView.this.removeCallbacks(this);
            this.f10092c.abortAnimation();
        }

        @Override // java.lang.Runnable
        public final void run() {
            int i;
            int i2;
            int i3;
            int i4;
            if (RecyclerView.this.f9982o == null) {
                m40300b();
                return;
            }
            this.f10096g = false;
            this.f10095f = true;
            RecyclerView.this.m40456c();
            OverScroller overScroller = this.f10092c;
            if (overScroller.computeScrollOffset()) {
                int currX = overScroller.getCurrX();
                int currY = overScroller.getCurrY();
                int i5 = currX - this.f10090a;
                int i6 = currY - this.f10091b;
                this.f10090a = currX;
                this.f10091b = currY;
                RecyclerView.this.f9930N[0] = 0;
                RecyclerView.this.f9930N[1] = 0;
                RecyclerView recyclerView = RecyclerView.this;
                int i7 = i5;
                int i8 = i6;
                if (recyclerView.m40488a(i5, i6, recyclerView.f9930N, (int[]) null, 1)) {
                    i7 = i5 - RecyclerView.this.f9930N[0];
                    i8 = i6 - RecyclerView.this.f9930N[1];
                }
                if (RecyclerView.this.getOverScrollMode() != 2) {
                    RecyclerView.this.m40463b(i7, i8);
                }
                if (RecyclerView.this.f9981n != null) {
                    RecyclerView.this.f9930N[0] = 0;
                    RecyclerView.this.f9930N[1] = 0;
                    RecyclerView recyclerView2 = RecyclerView.this;
                    recyclerView2.m40489a(i7, i8, recyclerView2.f9930N);
                    int i9 = RecyclerView.this.f9930N[0];
                    int i10 = RecyclerView.this.f9930N[1];
                    int i11 = i7 - i9;
                    int i12 = i8 - i10;
                    AbstractC2651r abstractC2651r = RecyclerView.this.f9982o.f10030t;
                    i4 = i9;
                    i2 = i11;
                    i3 = i10;
                    i = i12;
                    if (abstractC2651r != null) {
                        i4 = i9;
                        i2 = i11;
                        i3 = i10;
                        i = i12;
                        if (!abstractC2651r.isPendingInitialRun()) {
                            i4 = i9;
                            i2 = i11;
                            i3 = i10;
                            i = i12;
                            if (abstractC2651r.isRunning()) {
                                int m40306a = RecyclerView.this.f9925I.m40306a();
                                if (m40306a == 0) {
                                    abstractC2651r.m40310b();
                                    i4 = i9;
                                    i2 = i11;
                                    i3 = i10;
                                    i = i12;
                                } else {
                                    if (abstractC2651r.getTargetPosition() >= m40306a) {
                                        abstractC2651r.setTargetPosition(m40306a - 1);
                                    }
                                    abstractC2651r.m40312a(i9, i10);
                                    i4 = i9;
                                    i2 = i11;
                                    i3 = i10;
                                    i = i12;
                                }
                            }
                        }
                    }
                } else {
                    i = i8;
                    i3 = 0;
                    i2 = i7;
                    i4 = 0;
                }
                if (!RecyclerView.this.f9985r.isEmpty()) {
                    RecyclerView.this.invalidate();
                }
                RecyclerView.this.f9930N[0] = 0;
                RecyclerView.this.f9930N[1] = 0;
                RecyclerView recyclerView3 = RecyclerView.this;
                recyclerView3.m40493a(i4, i3, i2, i, null, 1, recyclerView3.f9930N);
                int i13 = i2 - RecyclerView.this.f9930N[0];
                int i14 = i - RecyclerView.this.f9930N[1];
                if (i4 != 0 || i3 != 0) {
                    RecyclerView.this.m40443e(i4, i3);
                }
                if (!RecyclerView.this.awakenScrollBars()) {
                    RecyclerView.this.invalidate();
                }
                boolean z = overScroller.isFinished() || (((overScroller.getCurrX() == overScroller.getFinalX()) || i13 != 0) && ((overScroller.getCurrY() == overScroller.getFinalY()) || i14 != 0));
                AbstractC2651r abstractC2651r2 = RecyclerView.this.f9982o.f10030t;
                if ((abstractC2651r2 != null && abstractC2651r2.isPendingInitialRun()) || !z) {
                    m40303a();
                    if (RecyclerView.this.f9923G != null) {
                        RecyclerView.this.f9923G.m40096a(RecyclerView.this, i4, i3);
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
                        RecyclerView.this.m40454c(i15, currVelocity);
                    }
                    if (RecyclerView.f9916d) {
                        RecyclerView.this.f9924H.m40094a();
                    }
                }
            }
            AbstractC2651r abstractC2651r3 = RecyclerView.this.f9982o.f10030t;
            if (abstractC2651r3 != null && abstractC2651r3.isPendingInitialRun()) {
                abstractC2651r3.m40312a(0, 0);
            }
            this.f10095f = false;
            if (this.f10096g) {
                m40299c();
                return;
            }
            RecyclerView.this.setScrollState(0);
            RecyclerView.this.mo40494a(1);
        }
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$v */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$v.class */
    public static abstract class AbstractC2657v {

        /* renamed from: r */
        private static final List<Object> f10097r = Collections.emptyList();

        /* renamed from: c_ */
        WeakReference<RecyclerView> f10100c_;

        /* renamed from: i */
        int f10106i;
        public final View itemView;

        /* renamed from: p */
        RecyclerView f10113p;

        /* renamed from: q */
        AbstractC2626a<? extends AbstractC2657v> f10114q;

        /* renamed from: b */
        int f10098b = -1;

        /* renamed from: c */
        int f10099c = -1;

        /* renamed from: d */
        long f10101d = -1;

        /* renamed from: e */
        int f10102e = -1;

        /* renamed from: f */
        int f10103f = -1;

        /* renamed from: g */
        AbstractC2657v f10104g = null;

        /* renamed from: h */
        AbstractC2657v f10105h = null;

        /* renamed from: j */
        List<Object> f10107j = null;

        /* renamed from: k */
        List<Object> f10108k = null;

        /* renamed from: s */
        private int f10115s = 0;

        /* renamed from: l */
        C2648o f10109l = null;

        /* renamed from: m */
        boolean f10110m = false;

        /* renamed from: n */
        int f10111n = 0;

        /* renamed from: o */
        int f10112o = -1;

        public AbstractC2657v(View view) {
            if (view != null) {
                this.itemView = view;
                return;
            }
            throw new IllegalArgumentException("itemView may not be null");
        }

        /* renamed from: l */
        private void m40282l() {
            if (this.f10107j == null) {
                ArrayList arrayList = new ArrayList();
                this.f10107j = arrayList;
                this.f10108k = Collections.unmodifiableList(arrayList);
            }
        }

        /* renamed from: a */
        final void m40298a() {
            this.f10099c = -1;
            this.f10103f = -1;
        }

        /* renamed from: a */
        final void m40296a(int i, boolean z) {
            if (this.f10099c == -1) {
                this.f10099c = this.f10098b;
            }
            if (this.f10103f == -1) {
                this.f10103f = this.f10098b;
            }
            if (z) {
                this.f10103f += i;
            }
            this.f10098b += i;
            if (this.itemView.getLayoutParams() != null) {
                ((LayoutParams) this.itemView.getLayoutParams()).f10002e = true;
            }
        }

        /* renamed from: a */
        final void m40295a(C2648o c2648o, boolean z) {
            this.f10109l = c2648o;
            this.f10110m = z;
        }

        /* renamed from: a */
        final void m40294a(Object obj) {
            if (obj == null) {
                m40292b(1024);
            } else if ((1024 & this.f10106i) != 0) {
            } else {
                m40282l();
                this.f10107j.add(obj);
            }
        }

        /* renamed from: a */
        final boolean m40297a(int i) {
            return (i & this.f10106i) != 0;
        }

        /* renamed from: b */
        final void m40293b() {
            if (this.f10099c == -1) {
                this.f10099c = this.f10098b;
            }
        }

        /* renamed from: b */
        final void m40292b(int i) {
            this.f10106i = i | this.f10106i;
        }

        /* renamed from: c */
        public final boolean m40291c() {
            return (this.f10106i & 128) != 0;
        }

        /* renamed from: d */
        final void m40290d() {
            this.f10109l.m40325b(this);
        }

        /* renamed from: e */
        final boolean m40289e() {
            return (this.f10106i & 32) != 0;
        }

        /* renamed from: f */
        final void m40288f() {
            this.f10106i &= -33;
        }

        /* renamed from: g */
        final void m40287g() {
            this.f10106i &= -257;
        }

        public final int getAbsoluteAdapterPosition() {
            RecyclerView recyclerView = this.f10113p;
            if (recyclerView == null) {
                return -1;
            }
            return recyclerView.m40446d(this);
        }

        @Deprecated
        public final int getAdapterPosition() {
            return getBindingAdapterPosition();
        }

        public final AbstractC2626a<? extends AbstractC2657v> getBindingAdapter() {
            return this.f10114q;
        }

        public final int getBindingAdapterPosition() {
            RecyclerView recyclerView;
            AbstractC2626a adapter;
            int m40446d;
            if (this.f10114q == null || (recyclerView = this.f10113p) == null || (adapter = recyclerView.getAdapter()) == null || (m40446d = this.f10113p.m40446d(this)) == -1) {
                return -1;
            }
            return adapter.findRelativeAdapterPositionIn(this.f10114q, this, m40446d);
        }

        public final long getItemId() {
            return this.f10101d;
        }

        public final int getItemViewType() {
            return this.f10102e;
        }

        public final int getLayoutPosition() {
            int i = this.f10103f;
            int i2 = i;
            if (i == -1) {
                i2 = this.f10098b;
            }
            return i2;
        }

        public final int getOldPosition() {
            return this.f10099c;
        }

        @Deprecated
        public final int getPosition() {
            int i = this.f10103f;
            int i2 = i;
            if (i == -1) {
                i2 = this.f10098b;
            }
            return i2;
        }

        List<Object> getUnmodifiedPayloads() {
            if ((this.f10106i & 1024) == 0) {
                List<Object> list = this.f10107j;
                return (list == null || list.size() == 0) ? f10097r : this.f10108k;
            }
            return f10097r;
        }

        /* renamed from: h */
        final boolean m40286h() {
            return (this.f10106i & 2) != 0;
        }

        /* renamed from: i */
        final void m40285i() {
            List<Object> list = this.f10107j;
            if (list != null) {
                list.clear();
            }
            this.f10106i &= -1025;
        }

        boolean isAdapterPositionUnknown() {
            return (this.f10106i & 512) != 0 || isInvalid();
        }

        boolean isAttachedToTransitionOverlay() {
            return (this.itemView.getParent() == null || this.itemView.getParent() == this.f10113p) ? false : true;
        }

        public boolean isBound() {
            return (this.f10106i & 1) != 0;
        }

        public boolean isInvalid() {
            return (this.f10106i & 4) != 0;
        }

        public final boolean isRecyclable() {
            return (this.f10106i & 16) == 0 && !C0926v.m44104c(this.itemView);
        }

        public boolean isRemoved() {
            return (this.f10106i & 8) != 0;
        }

        boolean isScrap() {
            return this.f10109l != null;
        }

        boolean isTmpDetached() {
            return (this.f10106i & PropertyFlags.INDEX_PARTIAL_SKIP_NULL) != 0;
        }

        public boolean isUpdated() {
            return (this.f10106i & 2) != 0;
        }

        /* renamed from: j */
        final void m40284j() {
            this.f10106i = 0;
            this.f10098b = -1;
            this.f10099c = -1;
            this.f10101d = -1L;
            this.f10103f = -1;
            this.f10115s = 0;
            this.f10104g = null;
            this.f10105h = null;
            m40285i();
            this.f10111n = 0;
            this.f10112o = -1;
            RecyclerView.m40452c(this);
        }

        /* renamed from: k */
        final boolean m40283k() {
            return (this.f10106i & 16) == 0 && C0926v.m44104c(this.itemView);
        }

        void setFlags(int i, int i2) {
            this.f10106i = (i & i2) | (this.f10106i & (i2 ^ (-1)));
        }

        public final void setIsRecyclable(boolean z) {
            int i = this.f10115s;
            int i2 = z ? i - 1 : i + 1;
            this.f10115s = i2;
            if (i2 < 0) {
                this.f10115s = 0;
                Log.e("View", "isRecyclable decremented below 0: unmatched pair of setIsRecyable() calls for ".concat(String.valueOf(this)));
            } else if (!z && i2 == 1) {
                this.f10106i |= 16;
            } else if (!z || i2 != 0) {
            } else {
                this.f10106i &= -17;
            }
        }

        public String toString() {
            String simpleName = getClass().isAnonymousClass() ? "ViewHolder" : getClass().getSimpleName();
            StringBuilder sb = new StringBuilder(simpleName + "{" + Integer.toHexString(hashCode()) + " position=" + this.f10098b + " id=" + this.f10101d + ", oldPos=" + this.f10099c + ", pLpos:" + this.f10103f);
            if (isScrap()) {
                sb.append(" scrap ");
                sb.append(this.f10110m ? "[changeScrap]" : "[attachedScrap]");
            }
            if (isInvalid()) {
                sb.append(" invalid");
            }
            if (!isBound()) {
                sb.append(" unbound");
            }
            if (m40286h()) {
                sb.append(" update");
            }
            if (isRemoved()) {
                sb.append(" removed");
            }
            if (m40291c()) {
                sb.append(" ignored");
            }
            if (isTmpDetached()) {
                sb.append(" tmpDetached");
            }
            if (!isRecyclable()) {
                sb.append(" not recyclable(" + this.f10115s + ")");
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
        f9913a = Build.VERSION.SDK_INT == 18 || Build.VERSION.SDK_INT == 19 || Build.VERSION.SDK_INT == 20;
        f9914b = Build.VERSION.SDK_INT >= 23;
        f9915c = Build.VERSION.SDK_INT >= 16;
        f9916d = Build.VERSION.SDK_INT >= 21;
        f9910R = Build.VERSION.SDK_INT <= 15;
        f9911S = Build.VERSION.SDK_INT <= 15;
        f9912T = new Class[]{Context.class, AttributeSet.class, Integer.TYPE, Integer.TYPE};
        f9908P = new Interpolator() { // from class: androidx.recyclerview.widget.RecyclerView.3
            @Override // android.animation.TimeInterpolator
            public final float getInterpolation(float f) {
                float f2 = f - 1.0f;
                return (f2 * f2 * f2 * f2 * f2) + 1.0f;
            }
        };
    }

    public RecyclerView(Context context) {
        this(context, null);
    }

    public RecyclerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C2608a.C2609a.recyclerViewStyle);
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

    /* renamed from: A */
    private void m40502A() {
        this.f9925I.m40305a(4);
        m40450d();
        m40440f();
        this.f9925I.f10076d = 1;
        if (this.f9925I.f10082j) {
            for (int m40147a = this.f9975h.m40147a() - 1; m40147a >= 0; m40147a--) {
                AbstractC2657v m40453c = m40453c(this.f9975h.m40141b(m40147a));
                if (!m40453c.m40291c()) {
                    long m40441e = m40441e(m40453c);
                    AbstractC2632f.C2634b m40397a = new AbstractC2632f.C2634b().m40397a(m40453c);
                    AbstractC2657v m40022a = this.f9976i.m40022a(m40441e);
                    if (m40022a != null && !m40022a.m40291c()) {
                        boolean m40020a = this.f9976i.m40020a(m40022a);
                        boolean m40020a2 = this.f9976i.m40020a(m40453c);
                        if (!m40020a || m40022a != m40453c) {
                            AbstractC2632f.C2634b m40019a = this.f9976i.m40019a(m40022a, 4);
                            this.f9976i.m40013c(m40453c, m40397a);
                            AbstractC2632f.C2634b m40019a2 = this.f9976i.m40019a(m40453c, 8);
                            if (m40019a == null) {
                                m40486a(m40441e, m40453c, m40022a);
                            } else {
                                m40473a(m40022a, m40453c, m40019a, m40019a2, m40020a, m40020a2);
                            }
                        }
                    }
                    this.f9976i.m40013c(m40453c, m40397a);
                }
            }
            this.f9976i.m40017a(this.f9945aK);
        }
        this.f9982o.m40370b(this.f9972e);
        C2654s c2654s = this.f9925I;
        c2654s.f10074b = c2654s.f10077e;
        this.f9919C = false;
        this.f9920D = false;
        this.f9925I.f10082j = false;
        this.f9925I.f10083k = false;
        this.f9982o.f10031u = false;
        if (this.f9972e.f10049b != null) {
            this.f9972e.f10049b.clear();
        }
        if (this.f9982o.f10035y) {
            this.f9982o.f10034x = 0;
            this.f9982o.f10035y = false;
            this.f9972e.m40328b();
        }
        this.f9982o.mo40264a(this.f9925I);
        m40457b(true);
        m40467a(false);
        this.f9976i.m40023a();
        int[] iArr = this.f9937aC;
        if (m40439f(iArr[0], iArr[1])) {
            m40443e(0, 0);
        }
        m40417x();
        m40418w();
    }

    /* renamed from: B */
    private void m40501B() {
        int m40142b = this.f9975h.m40142b();
        for (int i = 0; i < m40142b; i++) {
            ((LayoutParams) this.f9975h.m40139c(i).getLayoutParams()).f10002e = true;
        }
        this.f9972e.m40315f();
    }

    /* renamed from: C */
    private void m40500C() {
        int m40142b = this.f9975h.m40142b();
        for (int i = 0; i < m40142b; i++) {
            AbstractC2657v m40453c = m40453c(this.f9975h.m40139c(i));
            if (!m40453c.m40291c()) {
                m40453c.m40293b();
            }
        }
    }

    /* renamed from: D */
    private void m40499D() {
        int m40142b = this.f9975h.m40142b();
        for (int i = 0; i < m40142b; i++) {
            AbstractC2657v m40453c = m40453c(this.f9975h.m40139c(i));
            if (!m40453c.m40291c()) {
                m40453c.m40298a();
            }
        }
        this.f9972e.m40317e();
    }

    /* renamed from: E */
    private void m40498E() {
        int m40142b = this.f9975h.m40142b();
        for (int i = 0; i < m40142b; i++) {
            AbstractC2657v m40453c = m40453c(this.f9975h.m40139c(i));
            if (m40453c != null && !m40453c.m40291c()) {
                m40453c.m40292b(6);
            }
        }
        m40501B();
        this.f9972e.m40320d();
    }

    /* renamed from: F */
    private void m40497F() {
        int i;
        for (int size = this.f9931O.size() - 1; size >= 0; size--) {
            AbstractC2657v abstractC2657v = this.f9931O.get(size);
            if (abstractC2657v.itemView.getParent() == this && !abstractC2657v.m40291c() && (i = abstractC2657v.f10112o) != -1) {
                C0926v.m44102c(abstractC2657v.itemView, i);
                abstractC2657v.f10112o = -1;
            }
        }
        this.f9931O.clear();
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0079  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m40495a(float r7, float r8, float r9, float r10) {
        /*
            Method dump skipped, instructions count: 186
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.m40495a(float, float, float, float):void");
    }

    /* renamed from: a */
    private void m40486a(long j, AbstractC2657v abstractC2657v, AbstractC2657v abstractC2657v2) {
        int m40147a = this.f9975h.m40147a();
        for (int i = 0; i < m40147a; i++) {
            AbstractC2657v m40453c = m40453c(this.f9975h.m40141b(i));
            if (m40453c != abstractC2657v && m40441e(m40453c) == j) {
                AbstractC2626a abstractC2626a = this.f9981n;
                if (abstractC2626a == null || !abstractC2626a.hasStableIds()) {
                    throw new IllegalStateException("Two different ViewHolders have the same change ID. This might happen due to inconsistent Adapter update events or if the LayoutManager lays out the same View multiple times.\n ViewHolder 1:" + m40453c + " \n View Holder 2:" + abstractC2657v + m40496a());
                }
                throw new IllegalStateException("Two different ViewHolders have the same stable ID. Stable IDs in your adapter MUST BE unique and SHOULD NOT change.\n ViewHolder 1:" + m40453c + " \n View Holder 2:" + abstractC2657v + m40496a());
            }
        }
        Log.e("RecyclerView", "Problem while matching changed view holders with the newones. The pre-layout information for the change holder " + abstractC2657v2 + " cannot be found but it is necessary for " + abstractC2657v + m40496a());
    }

    /* renamed from: a */
    static void m40483a(View view, Rect rect) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        Rect rect2 = layoutParams.f10001d;
        rect.set((view.getLeft() - rect2.left) - layoutParams.leftMargin, (view.getTop() - rect2.top) - layoutParams.topMargin, view.getRight() + rect2.right + layoutParams.rightMargin, view.getBottom() + rect2.bottom + layoutParams.bottomMargin);
    }

    /* renamed from: a */
    private void m40482a(View view, View view2) {
        View view3 = view2 != null ? view2 : view;
        this.f9979l.set(0, 0, view3.getWidth(), view3.getHeight());
        ViewGroup.LayoutParams layoutParams = view3.getLayoutParams();
        if (layoutParams instanceof LayoutParams) {
            LayoutParams layoutParams2 = (LayoutParams) layoutParams;
            if (!layoutParams2.f10002e) {
                Rect rect = layoutParams2.f10001d;
                this.f9979l.left -= rect.left;
                this.f9979l.right += rect.right;
                this.f9979l.top -= rect.top;
                this.f9979l.bottom += rect.bottom;
            }
        }
        if (view2 != null) {
            offsetDescendantRectToMyCoords(view2, this.f9979l);
            offsetRectIntoDescendantCoords(view, this.f9979l);
        }
        this.f9982o.mo39555a(this, view, this.f9979l, !this.f9991x, view2 == null);
    }

    /* renamed from: a */
    private void m40477a(C2654s c2654s) {
        if (getScrollState() != 2) {
            c2654s.f10087o = 0;
            c2654s.f10088p = 0;
            return;
        }
        OverScroller overScroller = this.f9922F.f10092c;
        c2654s.f10087o = overScroller.getFinalX() - overScroller.getCurrX();
        c2654s.f10088p = overScroller.getFinalY() - overScroller.getCurrY();
    }

    /* renamed from: a */
    private void m40473a(AbstractC2657v abstractC2657v, AbstractC2657v abstractC2657v2, AbstractC2632f.C2634b c2634b, AbstractC2632f.C2634b c2634b2, boolean z, boolean z2) {
        abstractC2657v.setIsRecyclable(false);
        if (z) {
            m40476a(abstractC2657v);
        }
        if (abstractC2657v != abstractC2657v2) {
            if (z2) {
                m40476a(abstractC2657v2);
            }
            abstractC2657v.f10104g = abstractC2657v2;
            m40476a(abstractC2657v);
            this.f9972e.m40325b(abstractC2657v);
            abstractC2657v2.setIsRecyclable(false);
            abstractC2657v2.f10105h = abstractC2657v;
        }
        if (this.f9921E.mo40041a(abstractC2657v, abstractC2657v2, c2634b, c2634b2)) {
            m40437g();
        }
    }

    /* renamed from: a */
    private void m40466a(int[] iArr) {
        int m40147a = this.f9975h.m40147a();
        if (m40147a == 0) {
            iArr[0] = -1;
            iArr[1] = -1;
            return;
        }
        int i = Integer.MAX_VALUE;
        int i2 = Integer.MIN_VALUE;
        int i3 = 0;
        while (i3 < m40147a) {
            AbstractC2657v m40453c = m40453c(this.f9975h.m40141b(i3));
            int i4 = i;
            int i5 = i2;
            if (!m40453c.m40291c()) {
                int layoutPosition = m40453c.getLayoutPosition();
                int i6 = i;
                if (layoutPosition < i) {
                    i6 = layoutPosition;
                }
                i4 = i6;
                i5 = i2;
                if (layoutPosition > i2) {
                    i5 = layoutPosition;
                    i4 = i6;
                }
            }
            i3++;
            i = i4;
            i2 = i5;
        }
        iArr[0] = i;
        iArr[1] = i2;
    }

    /* renamed from: a */
    private boolean m40492a(int i, int i2, MotionEvent motionEvent, int i3) {
        int i4;
        int i5;
        int i6;
        int i7;
        m40456c();
        if (this.f9981n != null) {
            int[] iArr = this.f9930N;
            iArr[0] = 0;
            iArr[1] = 0;
            m40489a(i, i2, iArr);
            int[] iArr2 = this.f9930N;
            int i8 = iArr2[0];
            int i9 = iArr2[1];
            i5 = i9;
            i4 = i8;
            i7 = i - i8;
            i6 = i2 - i9;
        } else {
            i5 = 0;
            i4 = 0;
            i7 = 0;
            i6 = 0;
        }
        if (!this.f9985r.isEmpty()) {
            invalidate();
        }
        int[] iArr3 = this.f9930N;
        iArr3[0] = 0;
        iArr3[1] = 0;
        m40493a(i4, i5, i7, i6, this.f9939aE, i3, iArr3);
        int[] iArr4 = this.f9930N;
        int i10 = iArr4[0];
        int i11 = iArr4[1];
        boolean z = (iArr4[0] == 0 && iArr4[1] == 0) ? false : true;
        int i12 = this.f9961ap;
        int[] iArr5 = this.f9939aE;
        this.f9961ap = i12 - iArr5[0];
        this.f9962aq -= iArr5[1];
        int[] iArr6 = this.f9940aF;
        iArr6[0] = iArr6[0] + iArr5[0];
        iArr6[1] = iArr6[1] + iArr5[1];
        if (getOverScrollMode() != 2) {
            if (motionEvent != null && !C0913i.m44181b(motionEvent)) {
                m40495a(motionEvent.getX(), i7 - i10, motionEvent.getY(), i6 - i11);
            }
            m40463b(i, i2);
        }
        if (i4 != 0 || i5 != 0) {
            m40443e(i4, i5);
        }
        if (!awakenScrollBars()) {
            invalidate();
        }
        return (!z && i4 == 0 && i5 == 0) ? false : true;
    }

    /* renamed from: a */
    private boolean m40485a(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        int size = this.f9986s.size();
        for (int i = 0; i < size; i++) {
            AbstractC2644l abstractC2644l = this.f9986s.get(i);
            if (abstractC2644l.mo40102a(motionEvent) && action != 3) {
                this.f9987t = abstractC2644l;
                return true;
            }
        }
        return false;
    }

    /* renamed from: b */
    private void m40462b(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.f9957al) {
            int i = actionIndex == 0 ? 1 : 0;
            this.f9957al = motionEvent.getPointerId(i);
            int x = (int) (motionEvent.getX(i) + 0.5f);
            this.f9961ap = x;
            this.f9959an = x;
            int y = (int) (motionEvent.getY(i) + 0.5f);
            this.f9962aq = y;
            this.f9960ao = y;
        }
    }

    /* renamed from: c */
    public static AbstractC2657v m40453c(View view) {
        if (view == null) {
            return null;
        }
        return ((LayoutParams) view.getLayoutParams()).f10000c;
    }

    /* renamed from: c */
    static void m40452c(AbstractC2657v abstractC2657v) {
        if (abstractC2657v.f10100c_ != null) {
            RecyclerView recyclerView = abstractC2657v.f10100c_.get();
            while (true) {
                View view = recyclerView;
                if (view == null) {
                    abstractC2657v.f10100c_ = null;
                    return;
                } else if (view == abstractC2657v.itemView) {
                    return;
                } else {
                    ViewParent parent = view.getParent();
                    recyclerView = parent instanceof View ? (View) parent : null;
                }
            }
        }
    }

    /* renamed from: d */
    public static int m40447d(View view) {
        AbstractC2657v m40453c = m40453c(view);
        if (m40453c != null) {
            return m40453c.getAbsoluteAdapterPosition();
        }
        return -1;
    }

    /* renamed from: e */
    public static int m40442e(View view) {
        AbstractC2657v m40453c = m40453c(view);
        if (m40453c != null) {
            return m40453c.getLayoutPosition();
        }
        return -1;
    }

    /* renamed from: e */
    private long m40441e(AbstractC2657v abstractC2657v) {
        return this.f9981n.hasStableIds() ? abstractC2657v.getItemId() : abstractC2657v.f10098b;
    }

    /* renamed from: f */
    private boolean m40439f(int i, int i2) {
        m40466a(this.f9937aC);
        int[] iArr = this.f9937aC;
        return (iArr[0] == i && iArr[1] == i2) ? false : true;
    }

    /* renamed from: g */
    static RecyclerView m40435g(View view) {
        if (!(view instanceof ViewGroup)) {
            return null;
        }
        if (view instanceof RecyclerView) {
            return (RecyclerView) view;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            RecyclerView m40435g = m40435g(viewGroup.getChildAt(i));
            if (m40435g != null) {
                return m40435g;
            }
        }
        return null;
    }

    /* renamed from: g */
    private boolean m40436g(int i, int i2) {
        return getScrollingChildHelper().m44174a(i, i2);
    }

    private C0917m getScrollingChildHelper() {
        if (this.f9938aD == null) {
            this.f9938aD = new C0917m(this);
        }
        return this.f9938aD;
    }

    /* renamed from: i */
    private void m40432i() {
        this.f9922F.m40300b();
        AbstractC2637i abstractC2637i = this.f9982o;
        if (abstractC2637i != null) {
            abstractC2637i.m40350m();
        }
    }

    /* renamed from: j */
    private void m40431j() {
        boolean z;
        EdgeEffect edgeEffect = this.f9952ag;
        if (edgeEffect != null) {
            edgeEffect.onRelease();
            z = this.f9952ag.isFinished();
        } else {
            z = false;
        }
        EdgeEffect edgeEffect2 = this.f9953ah;
        boolean z2 = z;
        if (edgeEffect2 != null) {
            edgeEffect2.onRelease();
            z2 = z | this.f9953ah.isFinished();
        }
        EdgeEffect edgeEffect3 = this.f9954ai;
        boolean z3 = z2;
        if (edgeEffect3 != null) {
            edgeEffect3.onRelease();
            z3 = z2 | this.f9954ai.isFinished();
        }
        EdgeEffect edgeEffect4 = this.f9955aj;
        boolean z4 = z3;
        if (edgeEffect4 != null) {
            edgeEffect4.onRelease();
            z4 = z3 | this.f9955aj.isFinished();
        }
        if (z4) {
            C0926v.m44101d(this);
        }
    }

    /* renamed from: k */
    private void m40430k() {
        if (this.f9952ag != null) {
            return;
        }
        EdgeEffect m40403a = C2631e.m40403a(this);
        this.f9952ag = m40403a;
        if (this.f9977j) {
            m40403a.setSize((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight());
        } else {
            m40403a.setSize(getMeasuredHeight(), getMeasuredWidth());
        }
    }

    /* renamed from: l */
    private void m40429l() {
        if (this.f9954ai != null) {
            return;
        }
        EdgeEffect m40403a = C2631e.m40403a(this);
        this.f9954ai = m40403a;
        if (this.f9977j) {
            m40403a.setSize((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight());
        } else {
            m40403a.setSize(getMeasuredHeight(), getMeasuredWidth());
        }
    }

    /* renamed from: m */
    private void m40428m() {
        if (this.f9953ah != null) {
            return;
        }
        EdgeEffect m40403a = C2631e.m40403a(this);
        this.f9953ah = m40403a;
        if (this.f9977j) {
            m40403a.setSize((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom());
        } else {
            m40403a.setSize(getMeasuredWidth(), getMeasuredHeight());
        }
    }

    /* renamed from: n */
    private void m40427n() {
        if (this.f9955aj != null) {
            return;
        }
        EdgeEffect m40403a = C2631e.m40403a(this);
        this.f9955aj = m40403a;
        if (this.f9977j) {
            m40403a.setSize((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom());
        } else {
            m40403a.setSize(getMeasuredWidth(), getMeasuredHeight());
        }
    }

    /* renamed from: o */
    private void m40426o() {
        this.f9955aj = null;
        this.f9953ah = null;
        this.f9954ai = null;
        this.f9952ag = null;
    }

    /* renamed from: p */
    private void m40425p() {
        VelocityTracker velocityTracker = this.f9958am;
        if (velocityTracker != null) {
            velocityTracker.clear();
        }
        mo40494a(0);
        m40431j();
    }

    /* renamed from: q */
    private void m40424q() {
        m40425p();
        setScrollState(0);
    }

    /* renamed from: r */
    private void m40423r() {
        int i = this.f9947ab;
        this.f9947ab = 0;
        if (i == 0 || !isAccessibilityEnabled()) {
            return;
        }
        AccessibilityEvent obtain = AccessibilityEvent.obtain();
        obtain.setEventType(2048);
        C0868b.m44286a(obtain, i);
        sendAccessibilityEventUnchecked(obtain);
    }

    /* renamed from: s */
    private boolean m40422s() {
        return this.f9921E != null && this.f9982o.mo40249c();
    }

    /* renamed from: t */
    private void m40421t() {
        if (this.f9919C) {
            this.f9974g.m40171a();
            if (this.f9920D) {
                this.f9982o.mo40281a();
            }
        }
        if (m40422s()) {
            this.f9974g.m40166b();
        } else {
            this.f9974g.m40157e();
        }
        boolean z = this.f9926J || this.f9927K;
        this.f9925I.f10082j = this.f9991x && this.f9921E != null && (this.f9919C || z || this.f9982o.f10031u) && (!this.f9919C || this.f9981n.hasStableIds());
        C2654s c2654s = this.f9925I;
        boolean z2 = false;
        if (c2654s.f10082j) {
            z2 = false;
            if (z) {
                z2 = false;
                if (!this.f9919C) {
                    z2 = false;
                    if (m40422s()) {
                        z2 = true;
                    }
                }
            }
        }
        c2654s.f10083k = z2;
    }

    /* renamed from: u */
    private void m40420u() {
        if (this.f9981n == null) {
            Log.w("RecyclerView", "No adapter attached; skipping layout");
        } else if (this.f9982o == null) {
            Log.e("RecyclerView", "No layout manager attached; skipping layout");
        } else {
            this.f9925I.f10081i = false;
            boolean z = this.f9942aH && !(this.f9943aI == getWidth() && this.f9944aJ == getHeight());
            this.f9943aI = 0;
            this.f9944aJ = 0;
            this.f9942aH = false;
            if (this.f9925I.f10076d == 1) {
                m40416y();
                this.f9982o.setExactMeasureSpecsFrom(this);
                m40415z();
            } else if (this.f9974g.m40156f() || z || this.f9982o.getWidth() != getWidth() || this.f9982o.getHeight() != getHeight()) {
                this.f9982o.setExactMeasureSpecsFrom(this);
                m40415z();
            } else {
                this.f9982o.setExactMeasureSpecsFrom(this);
            }
            m40502A();
        }
    }

    /* JADX WARN: Type inference failed for: r0v48, types: [long] */
    /* renamed from: v */
    private void m40419v() {
        AbstractC2657v abstractC2657v;
        View focusedChild = (!this.f9969ax || !hasFocus() || this.f9981n == null) ? null : getFocusedChild();
        if (focusedChild == null) {
            abstractC2657v = null;
        } else {
            View m40461b = m40461b(focusedChild);
            abstractC2657v = m40461b == null ? null : m40484a(m40461b);
        }
        if (abstractC2657v == null) {
            m40418w();
            return;
        }
        this.f9925I.f10085m = this.f9981n.hasStableIds() ? abstractC2657v.getItemId() : (char) 65535;
        this.f9925I.f10084l = this.f9919C ? -1 : abstractC2657v.isRemoved() ? abstractC2657v.f10099c : abstractC2657v.getAbsoluteAdapterPosition();
        C2654s c2654s = this.f9925I;
        View view = abstractC2657v.itemView;
        int id = view.getId();
        while (!view.isFocused() && (view instanceof ViewGroup) && view.hasFocus()) {
            View focusedChild2 = ((ViewGroup) view).getFocusedChild();
            view = focusedChild2;
            if (focusedChild2.getId() != -1) {
                id = focusedChild2.getId();
                view = focusedChild2;
            }
        }
        c2654s.f10086n = id;
    }

    /* renamed from: w */
    private void m40418w() {
        this.f9925I.f10085m = -1L;
        this.f9925I.f10084l = -1;
        this.f9925I.f10086n = -1;
    }

    /* JADX WARN: Removed duplicated region for block: B:108:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:60:0x014d  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x01dd  */
    /* renamed from: x */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m40417x() {
        /*
            Method dump skipped, instructions count: 538
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.m40417x():void");
    }

    /* renamed from: y */
    private void m40416y() {
        this.f9925I.m40305a(1);
        m40477a(this.f9925I);
        this.f9925I.f10081i = false;
        m40450d();
        this.f9976i.m40023a();
        m40440f();
        m40421t();
        m40419v();
        C2654s c2654s = this.f9925I;
        c2654s.f10080h = c2654s.f10082j && this.f9927K;
        this.f9927K = false;
        this.f9926J = false;
        C2654s c2654s2 = this.f9925I;
        c2654s2.f10079g = c2654s2.f10083k;
        this.f9925I.f10077e = this.f9981n.getItemCount();
        m40466a(this.f9937aC);
        if (this.f9925I.f10082j) {
            int m40147a = this.f9975h.m40147a();
            for (int i = 0; i < m40147a; i++) {
                AbstractC2657v m40453c = m40453c(this.f9975h.m40141b(i));
                if (!m40453c.m40291c() && (!m40453c.isInvalid() || this.f9981n.hasStableIds())) {
                    AbstractC2632f.m40400e(m40453c);
                    m40453c.getUnmodifiedPayloads();
                    this.f9976i.m40018a(m40453c, new AbstractC2632f.C2634b().m40397a(m40453c));
                    if (this.f9925I.f10080h && m40453c.isUpdated() && !m40453c.isRemoved() && !m40453c.m40291c() && !m40453c.isInvalid()) {
                        this.f9976i.m40021a(m40441e(m40453c), m40453c);
                    }
                }
            }
        }
        if (this.f9925I.f10083k) {
            m40500C();
            boolean z = this.f9925I.f10078f;
            this.f9925I.f10078f = false;
            this.f9982o.mo40244c(this.f9972e, this.f9925I);
            this.f9925I.f10078f = z;
            for (int i2 = 0; i2 < this.f9975h.m40147a(); i2++) {
                AbstractC2657v m40453c2 = m40453c(this.f9975h.m40141b(i2));
                if (!m40453c2.m40291c() && !this.f9976i.m40016b(m40453c2)) {
                    AbstractC2632f.m40400e(m40453c2);
                    boolean m40297a = m40453c2.m40297a(PropertyFlags.UNSIGNED);
                    m40453c2.getUnmodifiedPayloads();
                    AbstractC2632f.C2634b m40397a = new AbstractC2632f.C2634b().m40397a(m40453c2);
                    if (m40297a) {
                        m40474a(m40453c2, m40397a);
                    } else {
                        this.f9976i.m40015b(m40453c2, m40397a);
                    }
                }
            }
            m40499D();
        } else {
            m40499D();
        }
        m40457b(true);
        m40467a(false);
        this.f9925I.f10076d = 2;
    }

    /* renamed from: z */
    private void m40415z() {
        m40450d();
        m40440f();
        this.f9925I.m40305a(6);
        this.f9974g.m40157e();
        this.f9925I.f10077e = this.f9981n.getItemCount();
        this.f9925I.f10075c = 0;
        if (this.f9973f != null && this.f9981n.m40413a()) {
            if (this.f9973f.mLayoutState != null) {
                this.f9982o.mo40274a(this.f9973f.mLayoutState);
            }
            this.f9973f = null;
        }
        this.f9925I.f10079g = false;
        this.f9982o.mo40244c(this.f9972e, this.f9925I);
        this.f9925I.f10078f = false;
        C2654s c2654s = this.f9925I;
        c2654s.f10082j = c2654s.f10082j && this.f9921E != null;
        this.f9925I.f10076d = 4;
        m40457b(true);
        m40467a(false);
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0067  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x006e A[SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final androidx.recyclerview.widget.RecyclerView.AbstractC2657v m40487a(int r4, boolean r5) {
        /*
            r3 = this;
            r0 = r3
            androidx.recyclerview.widget.b r0 = r0.f9975h
            int r0 = r0.m40142b()
            r6 = r0
            r0 = 0
            r7 = r0
            r0 = 0
            r8 = r0
        Le:
            r0 = r8
            r1 = r6
            if (r0 >= r1) goto L7b
            r0 = r3
            androidx.recyclerview.widget.b r0 = r0.f9975h
            r1 = r8
            android.view.View r0 = r0.m40139c(r1)
            androidx.recyclerview.widget.RecyclerView$v r0 = m40453c(r0)
            r9 = r0
            r0 = r7
            r10 = r0
            r0 = r9
            if (r0 == 0) goto L71
            r0 = r7
            r10 = r0
            r0 = r9
            boolean r0 = r0.isRemoved()
            if (r0 != 0) goto L71
            r0 = r5
            if (r0 == 0) goto L4b
            r0 = r9
            int r0 = r0.f10098b
            r1 = r4
            if (r0 == r1) goto L58
            r0 = r7
            r10 = r0
            goto L71
        L4b:
            r0 = r7
            r10 = r0
            r0 = r9
            int r0 = r0.getLayoutPosition()
            r1 = r4
            if (r0 != r1) goto L71
        L58:
            r0 = r3
            androidx.recyclerview.widget.b r0 = r0.f9975h
            r1 = r9
            android.view.View r1 = r1.itemView
            boolean r0 = r0.m40136d(r1)
            if (r0 == 0) goto L6e
            r0 = r9
            r10 = r0
            goto L71
        L6e:
            r0 = r9
            return r0
        L71:
            int r8 = r8 + 1
            r0 = r10
            r7 = r0
            goto Le
        L7b:
            r0 = r7
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.m40487a(int, boolean):androidx.recyclerview.widget.RecyclerView$v");
    }

    /* renamed from: a */
    public final AbstractC2657v m40484a(View view) {
        ViewParent parent = view.getParent();
        if (parent == null || parent == this) {
            return m40453c(view);
        }
        throw new IllegalArgumentException("View " + view + " is not a direct child of " + this);
    }

    /* renamed from: a */
    final String m40496a() {
        return StringUtils.SPACE + super.toString() + ", adapter:" + this.f9981n + ", layout:" + this.f9982o + ", context:" + getContext();
    }

    @Override // androidx.core.view.AbstractC0915k
    /* renamed from: a */
    public final void mo40494a(int i) {
        getScrollingChildHelper().m44167b(i);
    }

    /* renamed from: a */
    public final void m40493a(int i, int i2, int i3, int i4, int[] iArr, int i5, int[] iArr2) {
        getScrollingChildHelper().m44172a(i, i2, i3, i4, iArr, i5, iArr2);
    }

    /* renamed from: a */
    final void m40491a(int i, int i2, Interpolator interpolator, int i3, boolean z) {
        AbstractC2637i abstractC2637i = this.f9982o;
        if (abstractC2637i == null) {
            Log.e("RecyclerView", "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
        } else if (this.f9993z) {
        } else {
            int i4 = i;
            if (!abstractC2637i.mo31644e()) {
                i4 = 0;
            }
            if (!this.f9982o.mo31643f()) {
                i2 = 0;
            }
            if (i4 == 0 && i2 == 0) {
                return;
            }
            if (z) {
                int i5 = 0;
                if (i4 != 0) {
                    i5 = 1;
                }
                int i6 = i5;
                if (i2 != 0) {
                    i6 = i5 | 2;
                }
                m40436g(i6, 1);
            }
            this.f9922F.m40301a(i4, i2, BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW, null);
        }
    }

    /* renamed from: a */
    final void m40490a(int i, int i2, boolean z) {
        int i3 = i + i2;
        int m40142b = this.f9975h.m40142b();
        for (int i4 = 0; i4 < m40142b; i4++) {
            AbstractC2657v m40453c = m40453c(this.f9975h.m40139c(i4));
            if (m40453c != null && !m40453c.m40291c()) {
                if (m40453c.f10098b >= i3) {
                    m40453c.m40296a(-i2, z);
                    this.f9925I.f10078f = true;
                } else if (m40453c.f10098b >= i) {
                    m40453c.m40292b(8);
                    m40453c.m40296a(-i2, z);
                    m40453c.f10098b = i - 1;
                    this.f9925I.f10078f = true;
                }
            }
        }
        C2648o c2648o = this.f9972e;
        for (int size = c2648o.f10050c.size() - 1; size >= 0; size--) {
            AbstractC2657v abstractC2657v = c2648o.f10050c.get(size);
            if (abstractC2657v != null) {
                if (abstractC2657v.f10098b >= i3) {
                    abstractC2657v.m40296a(-i2, z);
                } else if (abstractC2657v.f10098b >= i) {
                    abstractC2657v.m40292b(8);
                    c2648o.m40323c(size);
                }
            }
        }
        requestLayout();
    }

    /* renamed from: a */
    final void m40489a(int i, int i2, int[] iArr) {
        m40450d();
        m40440f();
        C0863g.m44289a("RV Scroll");
        m40477a(this.f9925I);
        int mo40277a = i != 0 ? this.f9982o.mo40277a(i, this.f9972e, this.f9925I) : 0;
        int mo40255b = i2 != 0 ? this.f9982o.mo40255b(i2, this.f9972e, this.f9925I) : 0;
        C0863g.m44290a();
        int m40147a = this.f9975h.m40147a();
        for (int i3 = 0; i3 < m40147a; i3++) {
            View m40141b = this.f9975h.m40141b(i3);
            AbstractC2657v m40484a = m40484a(m40141b);
            if (m40484a != null && m40484a.f10105h != null) {
                View view = m40484a.f10105h.itemView;
                int left = m40141b.getLeft();
                int top = m40141b.getTop();
                if (left != view.getLeft() || top != view.getTop()) {
                    view.layout(left, top, view.getWidth() + left, view.getHeight() + top);
                }
            }
        }
        m40457b(true);
        m40467a(false);
        if (iArr != null) {
            iArr[0] = mo40277a;
            iArr[1] = mo40255b;
        }
    }

    /* renamed from: a */
    public final void m40481a(AbstractC2636h abstractC2636h) {
        m40480a(abstractC2636h, -1);
    }

    /* renamed from: a */
    public final void m40480a(AbstractC2636h abstractC2636h, int i) {
        AbstractC2637i abstractC2637i = this.f9982o;
        if (abstractC2637i != null) {
            abstractC2637i.mo40259a("Cannot add item decoration during a scroll  or layout");
        }
        if (this.f9985r.isEmpty()) {
            setWillNotDraw(false);
        }
        if (i < 0) {
            this.f9985r.add(abstractC2636h);
        } else {
            this.f9985r.add(i, abstractC2636h);
        }
        m40501B();
        requestLayout();
    }

    /* renamed from: a */
    public final void m40479a(AbstractC2642j abstractC2642j) {
        if (this.f9918B == null) {
            this.f9918B = new ArrayList();
        }
        this.f9918B.add(abstractC2642j);
    }

    /* renamed from: a */
    public final void m40478a(AbstractC2645m abstractC2645m) {
        if (this.f9971az == null) {
            this.f9971az = new ArrayList();
        }
        this.f9971az.add(abstractC2645m);
    }

    /* renamed from: a */
    void m40476a(AbstractC2657v abstractC2657v) {
        View view = abstractC2657v.itemView;
        boolean z = view.getParent() == this;
        this.f9972e.m40325b(m40484a(view));
        if (abstractC2657v.isTmpDetached()) {
            this.f9975h.m40144a(view, -1, view.getLayoutParams(), true);
        } else if (!z) {
            this.f9975h.m40143a(view, -1, true);
        } else {
            C2666b c2666b = this.f9975h;
            int mo40126a = c2666b.f10170a.mo40126a(view);
            if (mo40126a < 0) {
                throw new IllegalArgumentException("view is not a child, cannot hide ".concat(String.valueOf(view)));
            }
            c2666b.f10171b.m40134a(mo40126a);
            c2666b.m40145a(view);
        }
    }

    /* renamed from: a */
    final void m40474a(AbstractC2657v abstractC2657v, AbstractC2632f.C2634b c2634b) {
        abstractC2657v.setFlags(0, PropertyFlags.UNSIGNED);
        if (this.f9925I.f10080h && abstractC2657v.isUpdated() && !abstractC2657v.isRemoved() && !abstractC2657v.m40291c()) {
            this.f9976i.m40021a(m40441e(abstractC2657v), abstractC2657v);
        }
        this.f9976i.m40018a(abstractC2657v, c2634b);
    }

    /* renamed from: a */
    final void m40468a(String str) {
        if (isComputingLayout()) {
            if (str != null) {
                throw new IllegalStateException(str);
            }
            throw new IllegalStateException("Cannot call this method while RecyclerView is computing a layout or scrolling" + m40496a());
        } else if (this.f9950ae <= 0) {
        } else {
            Log.w("RecyclerView", "Cannot call this method in a scroll callback. Scroll callbacks mightbe run during a measure & layout pass where you cannot change theRecyclerView data. Any method call that might change the structureof the RecyclerView or the adapter contents should be postponed tothe next frame.", new IllegalStateException(m40496a()));
        }
    }

    /* renamed from: a */
    void m40467a(boolean z) {
        if (this.f9934W <= 0) {
            this.f9934W = 1;
        }
        if (!z && !this.f9993z) {
            this.f9992y = false;
        }
        if (this.f9934W == 1) {
            if (z && this.f9992y && !this.f9993z && this.f9982o != null && this.f9981n != null) {
                m40420u();
            }
            if (!this.f9993z) {
                this.f9992y = false;
            }
        }
        this.f9934W--;
    }

    /* renamed from: a */
    public final boolean m40488a(int i, int i2, int[] iArr, int[] iArr2, int i3) {
        return getScrollingChildHelper().m44170a(i, i2, iArr, iArr2, i3);
    }

    /* renamed from: a */
    final boolean m40475a(AbstractC2657v abstractC2657v, int i) {
        if (!isComputingLayout()) {
            C0926v.m44102c(abstractC2657v.itemView, i);
            return true;
        }
        abstractC2657v.f10112o = i;
        this.f9931O.add(abstractC2657v);
        return false;
    }

    /* renamed from: a_ */
    public void mo26354a_(int i, int i2) {
        m40491a(i, i2, (Interpolator) null, BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW, false);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void addFocusables(ArrayList<View> arrayList, int i, int i2) {
        super.addFocusables(arrayList, i, i2);
    }

    /* renamed from: b */
    public final View m40461b(View view) {
        ViewParent viewParent;
        View view2 = view;
        ViewParent parent = view.getParent();
        while (true) {
            viewParent = parent;
            if (viewParent == null || viewParent == this || !(viewParent instanceof View)) {
                break;
            }
            view2 = (View) viewParent;
            parent = view2.getParent();
        }
        if (viewParent == this) {
            return view2;
        }
        return null;
    }

    /* renamed from: b */
    public final void m40465b() {
        AbstractC2632f abstractC2632f = this.f9921E;
        if (abstractC2632f != null) {
            abstractC2632f.mo40108d();
        }
        AbstractC2637i abstractC2637i = this.f9982o;
        if (abstractC2637i != null) {
            abstractC2637i.m40364c(this.f9972e);
            this.f9982o.m40370b(this.f9972e);
        }
        this.f9972e.m40338a();
    }

    /* renamed from: b */
    public final void m40464b(int i) {
        if (this.f9993z) {
            return;
        }
        m40445e();
        AbstractC2637i abstractC2637i = this.f9982o;
        if (abstractC2637i == null) {
            Log.e("RecyclerView", "Cannot scroll to position a LayoutManager set. Call setLayoutManager with a non-null argument.");
            return;
        }
        abstractC2637i.mo40240d(i);
        awakenScrollBars();
    }

    /* renamed from: b */
    final void m40463b(int i, int i2) {
        boolean z;
        EdgeEffect edgeEffect = this.f9952ag;
        if (edgeEffect == null || edgeEffect.isFinished() || i <= 0) {
            z = false;
        } else {
            this.f9952ag.onRelease();
            z = this.f9952ag.isFinished();
        }
        EdgeEffect edgeEffect2 = this.f9954ai;
        boolean z2 = z;
        if (edgeEffect2 != null) {
            z2 = z;
            if (!edgeEffect2.isFinished()) {
                z2 = z;
                if (i < 0) {
                    this.f9954ai.onRelease();
                    z2 = z | this.f9954ai.isFinished();
                }
            }
        }
        EdgeEffect edgeEffect3 = this.f9953ah;
        boolean z3 = z2;
        if (edgeEffect3 != null) {
            z3 = z2;
            if (!edgeEffect3.isFinished()) {
                z3 = z2;
                if (i2 > 0) {
                    this.f9953ah.onRelease();
                    z3 = z2 | this.f9953ah.isFinished();
                }
            }
        }
        EdgeEffect edgeEffect4 = this.f9955aj;
        boolean z4 = z3;
        if (edgeEffect4 != null) {
            z4 = z3;
            if (!edgeEffect4.isFinished()) {
                z4 = z3;
                if (i2 < 0) {
                    this.f9955aj.onRelease();
                    z4 = z3 | this.f9955aj.isFinished();
                }
            }
        }
        if (z4) {
            C0926v.m44101d(this);
        }
    }

    /* renamed from: b */
    public final void m40460b(AbstractC2636h abstractC2636h) {
        AbstractC2637i abstractC2637i = this.f9982o;
        if (abstractC2637i != null) {
            abstractC2637i.mo40259a("Cannot remove item decoration during a scroll  or layout");
        }
        this.f9985r.remove(abstractC2636h);
        if (this.f9985r.isEmpty()) {
            setWillNotDraw(getOverScrollMode() == 2);
        }
        m40501B();
        requestLayout();
    }

    /* renamed from: b */
    public final void m40459b(AbstractC2645m abstractC2645m) {
        List<AbstractC2645m> list = this.f9971az;
        if (list != null) {
            list.remove(abstractC2645m);
        }
    }

    /* renamed from: b */
    public final void m40457b(boolean z) {
        int i = this.f9949ad - 1;
        this.f9949ad = i;
        if (i <= 0) {
            this.f9949ad = 0;
            if (!z) {
                return;
            }
            m40423r();
            m40497F();
        }
    }

    /* renamed from: b */
    final boolean m40458b(AbstractC2657v abstractC2657v) {
        AbstractC2632f abstractC2632f = this.f9921E;
        return abstractC2632f == null || abstractC2632f.mo40116a(abstractC2657v, abstractC2657v.getUnmodifiedPayloads());
    }

    /* renamed from: c */
    final void m40456c() {
        boolean z;
        if (!this.f9991x || this.f9919C) {
            C0863g.m44289a("RV FullInvalidate");
            m40420u();
            C0863g.m44290a();
        } else if (!this.f9974g.m40159d()) {
        } else {
            if (!this.f9974g.m40170a(4) || this.f9974g.m40170a(11)) {
                if (!this.f9974g.m40159d()) {
                    return;
                }
                C0863g.m44289a("RV FullInvalidate");
                m40420u();
                C0863g.m44290a();
                return;
            }
            C0863g.m44289a("RV PartialInvalidate");
            m40450d();
            m40440f();
            this.f9974g.m40166b();
            if (!this.f9992y) {
                int m40147a = this.f9975h.m40147a();
                int i = 0;
                while (true) {
                    z = false;
                    if (i < m40147a) {
                        AbstractC2657v m40453c = m40453c(this.f9975h.m40141b(i));
                        if (m40453c != null && !m40453c.m40291c() && m40453c.isUpdated()) {
                            z = true;
                            break;
                        }
                        i++;
                    } else {
                        break;
                    }
                }
                if (z) {
                    m40420u();
                } else {
                    this.f9974g.m40162c();
                }
            }
            m40467a(true);
            m40457b(true);
            C0863g.m44290a();
        }
    }

    /* renamed from: c */
    final void m40455c(int i) {
        if (this.f9982o == null) {
            return;
        }
        setScrollState(2);
        this.f9982o.mo40240d(i);
        awakenScrollBars();
    }

    /* renamed from: c */
    final void m40454c(int i, int i2) {
        if (i < 0) {
            m40430k();
            if (this.f9952ag.isFinished()) {
                this.f9952ag.onAbsorb(-i);
            }
        } else if (i > 0) {
            m40429l();
            if (this.f9954ai.isFinished()) {
                this.f9954ai.onAbsorb(i);
            }
        }
        if (i2 < 0) {
            m40428m();
            if (this.f9953ah.isFinished()) {
                this.f9953ah.onAbsorb(-i2);
            }
        } else if (i2 > 0) {
            m40427n();
            if (this.f9955aj.isFinished()) {
                this.f9955aj.onAbsorb(i2);
            }
        }
        if (i == 0 && i2 == 0) {
            return;
        }
        C0926v.m44101d(this);
    }

    /* renamed from: c */
    final void m40451c(boolean z) {
        this.f9920D = z | this.f9920D;
        this.f9919C = true;
        m40498E();
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof LayoutParams) && this.f9982o.mo31647a((LayoutParams) layoutParams);
    }

    @Override // android.view.View
    public int computeHorizontalScrollExtent() {
        AbstractC2637i abstractC2637i = this.f9982o;
        if (abstractC2637i != null && abstractC2637i.mo31644e()) {
            return this.f9982o.mo40233f(this.f9925I);
        }
        return 0;
    }

    @Override // android.view.View
    public int computeHorizontalScrollOffset() {
        AbstractC2637i abstractC2637i = this.f9982o;
        if (abstractC2637i != null && abstractC2637i.mo31644e()) {
            return this.f9982o.mo40238d(this.f9925I);
        }
        return 0;
    }

    @Override // android.view.View
    public int computeHorizontalScrollRange() {
        AbstractC2637i abstractC2637i = this.f9982o;
        if (abstractC2637i != null && abstractC2637i.mo31644e()) {
            return this.f9982o.mo40251b(this.f9925I);
        }
        return 0;
    }

    @Override // android.view.View
    public int computeVerticalScrollExtent() {
        AbstractC2637i abstractC2637i = this.f9982o;
        if (abstractC2637i != null && abstractC2637i.mo31643f()) {
            return this.f9982o.mo40230g(this.f9925I);
        }
        return 0;
    }

    @Override // android.view.View
    public int computeVerticalScrollOffset() {
        AbstractC2637i abstractC2637i = this.f9982o;
        if (abstractC2637i != null && abstractC2637i.mo31643f()) {
            return this.f9982o.mo40235e(this.f9925I);
        }
        return 0;
    }

    @Override // android.view.View
    public int computeVerticalScrollRange() {
        AbstractC2637i abstractC2637i = this.f9982o;
        if (abstractC2637i != null && abstractC2637i.mo31643f()) {
            return this.f9982o.mo40243c(this.f9925I);
        }
        return 0;
    }

    /* renamed from: d */
    final int m40446d(AbstractC2657v abstractC2657v) {
        if (abstractC2657v.m40297a(524) || !abstractC2657v.isBound()) {
            return -1;
        }
        return this.f9974g.m40161c(abstractC2657v.f10098b);
    }

    /* renamed from: d */
    void m40450d() {
        int i = this.f9934W + 1;
        this.f9934W = i;
        if (i != 1 || this.f9993z) {
            return;
        }
        this.f9992y = false;
    }

    /* renamed from: d */
    public final void m40449d(int i) {
        if (this.f9993z) {
            return;
        }
        AbstractC2637i abstractC2637i = this.f9982o;
        if (abstractC2637i == null) {
            Log.e("RecyclerView", "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
        } else {
            abstractC2637i.mo10800a(this, this.f9925I, i);
        }
    }

    /* renamed from: d */
    final void m40448d(int i, int i2) {
        setMeasuredDimension(AbstractC2637i.m40394a(i, getPaddingLeft() + getPaddingRight(), C0926v.m44088k(this)), AbstractC2637i.m40394a(i2, getPaddingTop() + getPaddingBottom(), C0926v.m44087l(this)));
    }

    @Override // android.view.View
    public boolean dispatchNestedFling(float f, float f2, boolean z) {
        return getScrollingChildHelper().m44176a(f, f2, z);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreFling(float f, float f2) {
        return getScrollingChildHelper().m44177a(f, f2);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreScroll(int i, int i2, int[] iArr, int[] iArr2) {
        return getScrollingChildHelper().m44171a(i, i2, iArr, iArr2);
    }

    @Override // android.view.View
    public boolean dispatchNestedScroll(int i, int i2, int i3, int i4, int[] iArr) {
        return getScrollingChildHelper().m44173a(i, i2, i3, i4, iArr);
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
        int size = this.f9985r.size();
        for (int i = 0; i < size; i++) {
            this.f9985r.get(i).mo30290a(canvas, this, this.f9925I);
        }
        EdgeEffect edgeEffect = this.f9952ag;
        if (edgeEffect == null || edgeEffect.isFinished()) {
            z = false;
        } else {
            int save = canvas.save();
            int paddingBottom = this.f9977j ? getPaddingBottom() : 0;
            canvas.rotate(270.0f);
            canvas.translate((-getHeight()) + paddingBottom, BitmapDescriptorFactory.HUE_RED);
            EdgeEffect edgeEffect2 = this.f9952ag;
            z = edgeEffect2 != null && edgeEffect2.draw(canvas);
            canvas.restoreToCount(save);
        }
        EdgeEffect edgeEffect3 = this.f9953ah;
        boolean z2 = z;
        if (edgeEffect3 != null) {
            z2 = z;
            if (!edgeEffect3.isFinished()) {
                int save2 = canvas.save();
                if (this.f9977j) {
                    canvas.translate(getPaddingLeft(), getPaddingTop());
                }
                EdgeEffect edgeEffect4 = this.f9953ah;
                z2 = z | (edgeEffect4 != null && edgeEffect4.draw(canvas));
                canvas.restoreToCount(save2);
            }
        }
        EdgeEffect edgeEffect5 = this.f9954ai;
        boolean z3 = z2;
        if (edgeEffect5 != null) {
            z3 = z2;
            if (!edgeEffect5.isFinished()) {
                int save3 = canvas.save();
                int width = getWidth();
                int paddingTop = this.f9977j ? getPaddingTop() : 0;
                canvas.rotate(90.0f);
                canvas.translate(paddingTop, -width);
                EdgeEffect edgeEffect6 = this.f9954ai;
                z3 = z2 | (edgeEffect6 != null && edgeEffect6.draw(canvas));
                canvas.restoreToCount(save3);
            }
        }
        EdgeEffect edgeEffect7 = this.f9955aj;
        boolean z4 = z3;
        if (edgeEffect7 != null) {
            z4 = z3;
            if (!edgeEffect7.isFinished()) {
                int save4 = canvas.save();
                canvas.rotate(180.0f);
                if (this.f9977j) {
                    canvas.translate((-getWidth()) + getPaddingRight(), (-getHeight()) + getPaddingBottom());
                } else {
                    canvas.translate(-getWidth(), -getHeight());
                }
                EdgeEffect edgeEffect8 = this.f9955aj;
                boolean z5 = false;
                if (edgeEffect8 != null) {
                    z5 = false;
                    if (edgeEffect8.draw(canvas)) {
                        z5 = true;
                    }
                }
                z4 = z3 | z5;
                canvas.restoreToCount(save4);
            }
        }
        if (!z4 && this.f9921E != null && this.f9985r.size() > 0 && this.f9921E.mo40111b()) {
            z4 = true;
        }
        if (z4) {
            C0926v.m44101d(this);
        }
    }

    @Override // android.view.ViewGroup
    public boolean drawChild(Canvas canvas, View view, long j) {
        return super.drawChild(canvas, view, j);
    }

    /* renamed from: e */
    public final AbstractC2657v m40444e(int i) {
        AbstractC2657v abstractC2657v = null;
        if (this.f9919C) {
            return null;
        }
        int m40142b = this.f9975h.m40142b();
        int i2 = 0;
        while (i2 < m40142b) {
            AbstractC2657v m40453c = m40453c(this.f9975h.m40139c(i2));
            AbstractC2657v abstractC2657v2 = abstractC2657v;
            if (m40453c != null) {
                abstractC2657v2 = abstractC2657v;
                if (!m40453c.isRemoved()) {
                    abstractC2657v2 = abstractC2657v;
                    if (m40446d(m40453c) != i) {
                        continue;
                    } else if (!this.f9975h.m40136d(m40453c.itemView)) {
                        return m40453c;
                    } else {
                        abstractC2657v2 = m40453c;
                    }
                } else {
                    continue;
                }
            }
            i2++;
            abstractC2657v = abstractC2657v2;
        }
        return abstractC2657v;
    }

    /* renamed from: e */
    public final void m40445e() {
        setScrollState(0);
        m40432i();
    }

    /* renamed from: e */
    final void m40443e(int i, int i2) {
        this.f9950ae++;
        int scrollX = getScrollX();
        int scrollY = getScrollY();
        onScrollChanged(scrollX, scrollY, scrollX - i, scrollY - i2);
        AbstractC2645m abstractC2645m = this.f9970ay;
        if (abstractC2645m != null) {
            abstractC2645m.mo10832a(this, i, i2);
        }
        List<AbstractC2645m> list = this.f9971az;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.f9971az.get(size).mo10832a(this, i, i2);
            }
        }
        this.f9950ae--;
    }

    /* renamed from: f */
    public final Rect m40438f(View view) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        if (!layoutParams.f10002e) {
            return layoutParams.f10001d;
        }
        if (this.f9925I.f10079g && (layoutParams.f10000c.isUpdated() || layoutParams.f10000c.isInvalid())) {
            return layoutParams.f10001d;
        }
        Rect rect = layoutParams.f10001d;
        rect.set(0, 0, 0, 0);
        int size = this.f9985r.size();
        for (int i = 0; i < size; i++) {
            this.f9979l.set(0, 0, 0, 0);
            this.f9985r.get(i).mo29937a(this.f9979l, view, this, this.f9925I);
            rect.left += this.f9979l.left;
            rect.top += this.f9979l.top;
            rect.right += this.f9979l.right;
            rect.bottom += this.f9979l.bottom;
        }
        layoutParams.f10002e = false;
        return rect;
    }

    /* renamed from: f */
    public final void m40440f() {
        this.f9949ad++;
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

    /* renamed from: g */
    final void m40437g() {
        if (this.f9928L || !this.f9988u) {
            return;
        }
        C0926v.m44117a(this, this.f9941aG);
        this.f9928L = true;
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
        AbstractC2637i abstractC2637i = this.f9982o;
        if (abstractC2637i != null) {
            return abstractC2637i.mo31646b();
        }
        throw new IllegalStateException("RecyclerView has no LayoutManager" + m40496a());
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        AbstractC2637i abstractC2637i = this.f9982o;
        if (abstractC2637i != null) {
            return abstractC2637i.mo31649a(getContext(), attributeSet);
        }
        throw new IllegalStateException("RecyclerView has no LayoutManager" + m40496a());
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        AbstractC2637i abstractC2637i = this.f9982o;
        if (abstractC2637i != null) {
            return abstractC2637i.mo31648a(layoutParams);
        }
        throw new IllegalStateException("RecyclerView has no LayoutManager" + m40496a());
    }

    @Override // android.view.ViewGroup, android.view.View
    public CharSequence getAccessibilityClassName() {
        return "androidx.recyclerview.widget.RecyclerView";
    }

    public AbstractC2626a getAdapter() {
        return this.f9981n;
    }

    @Override // android.view.View
    public int getBaseline() {
        AbstractC2637i abstractC2637i = this.f9982o;
        return abstractC2637i != null ? abstractC2637i.getBaseline() : super.getBaseline();
    }

    @Override // android.view.ViewGroup
    protected int getChildDrawingOrder(int i, int i2) {
        AbstractC2630d abstractC2630d = this.f9936aB;
        return abstractC2630d == null ? super.getChildDrawingOrder(i, i2) : abstractC2630d.m40404a();
    }

    @Override // android.view.ViewGroup
    public boolean getClipToPadding() {
        return this.f9977j;
    }

    public AbstractC2632f getItemAnimator() {
        return this.f9921E;
    }

    public AbstractC2636h getItemDecorationAt(int i) {
        int itemDecorationCount = getItemDecorationCount();
        if (i < 0 || i >= itemDecorationCount) {
            throw new IndexOutOfBoundsException(i + " is an invalid index for size " + itemDecorationCount);
        }
        return this.f9985r.get(i);
    }

    public int getItemDecorationCount() {
        return this.f9985r.size();
    }

    public AbstractC2637i getLayoutManager() {
        return this.f9982o;
    }

    public int getMinFlingVelocity() {
        return this.f9965at;
    }

    public long getNanoTime() {
        if (f9916d) {
            return System.nanoTime();
        }
        return 0L;
    }

    public AbstractC2643k getOnFlingListener() {
        return this.f9964as;
    }

    public int getScrollState() {
        return this.f9956ak;
    }

    /* renamed from: h */
    final void m40433h(View view) {
        AbstractC2657v m40453c = m40453c(view);
        AbstractC2626a abstractC2626a = this.f9981n;
        if (abstractC2626a != null && m40453c != null) {
            abstractC2626a.onViewDetachedFromWindow(m40453c);
        }
        List<AbstractC2642j> list = this.f9918B;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.f9918B.get(size).mo29863b(view);
            }
        }
    }

    /* renamed from: h */
    public final boolean m40434h() {
        return !this.f9991x || this.f9919C || this.f9974g.m40159d();
    }

    @Override // android.view.View
    public boolean hasNestedScrollingParent() {
        return getScrollingChildHelper().m44175a(0);
    }

    boolean isAccessibilityEnabled() {
        AccessibilityManager accessibilityManager = this.f9948ac;
        return accessibilityManager != null && accessibilityManager.isEnabled();
    }

    @Override // android.view.View
    public boolean isAttachedToWindow() {
        return this.f9988u;
    }

    public boolean isComputingLayout() {
        return this.f9949ad > 0;
    }

    @Override // android.view.ViewGroup
    public final boolean isLayoutSuppressed() {
        return this.f9993z;
    }

    @Override // android.view.View, androidx.core.view.AbstractC0914j
    public boolean isNestedScrollingEnabled() {
        return getScrollingChildHelper().f3749a;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f9949ad = 0;
        this.f9988u = true;
        this.f9991x = this.f9991x && !isLayoutRequested();
        AbstractC2637i abstractC2637i = this.f9982o;
        if (abstractC2637i != null) {
            abstractC2637i.f10032v = true;
        }
        this.f9928L = false;
        if (f9916d) {
            RunnableC2685e runnableC2685e = RunnableC2685e.f10262a.get();
            this.f9923G = runnableC2685e;
            if (runnableC2685e == null) {
                this.f9923G = new RunnableC2685e();
                Display m44152G = C0926v.m44152G(this);
                float f = 60.0f;
                if (!isInEditMode()) {
                    f = 60.0f;
                    if (m44152G != null) {
                        float refreshRate = m44152G.getRefreshRate();
                        f = 60.0f;
                        if (refreshRate >= 30.0f) {
                            f = refreshRate;
                        }
                    }
                }
                this.f9923G.f10266d = 1.0E9f / f;
                RunnableC2685e.f10262a.set(this.f9923G);
            }
            this.f9923G.f10264b.add(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        RunnableC2685e runnableC2685e;
        super.onDetachedFromWindow();
        AbstractC2632f abstractC2632f = this.f9921E;
        if (abstractC2632f != null) {
            abstractC2632f.mo40108d();
        }
        m40445e();
        this.f9988u = false;
        AbstractC2637i abstractC2637i = this.f9982o;
        if (abstractC2637i != null) {
            abstractC2637i.m40368b(this, this.f9972e);
        }
        this.f9931O.clear();
        removeCallbacks(this.f9941aG);
        C2709q.C2710a.m40008b();
        if (!f9916d || (runnableC2685e = this.f9923G) == null) {
            return;
        }
        runnableC2685e.f10264b.remove(this);
        this.f9923G = null;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int size = this.f9985r.size();
        for (int i = 0; i < size; i++) {
            this.f9985r.get(i).mo10834b(canvas, this, this.f9925I);
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
        if (this.f9993z) {
            return false;
        }
        this.f9987t = null;
        if (m40485a(motionEvent)) {
            m40424q();
            return true;
        }
        AbstractC2637i abstractC2637i = this.f9982o;
        if (abstractC2637i == null) {
            return false;
        }
        boolean mo31644e = abstractC2637i.mo31644e();
        boolean mo31643f = this.f9982o.mo31643f();
        if (this.f9958am == null) {
            this.f9958am = VelocityTracker.obtain();
        }
        this.f9958am.addMovement(motionEvent);
        int actionMasked = motionEvent.getActionMasked();
        int actionIndex = motionEvent.getActionIndex();
        if (actionMasked == 0) {
            if (this.f9946aa) {
                this.f9946aa = false;
            }
            this.f9957al = motionEvent.getPointerId(0);
            int x = (int) (motionEvent.getX() + 0.5f);
            this.f9961ap = x;
            this.f9959an = x;
            int y = (int) (motionEvent.getY() + 0.5f);
            this.f9962aq = y;
            this.f9960ao = y;
            if (this.f9956ak == 2) {
                getParent().requestDisallowInterceptTouchEvent(true);
                setScrollState(1);
                mo40494a(1);
            }
            int[] iArr = this.f9940aF;
            iArr[1] = 0;
            iArr[0] = 0;
            boolean z2 = mo31644e;
            if (mo31643f) {
                z2 = mo31644e | 2;
            }
            m40436g(z2, 0);
        } else if (actionMasked == 1) {
            this.f9958am.clear();
            mo40494a(0);
        } else if (actionMasked == 2) {
            int findPointerIndex = motionEvent.findPointerIndex(this.f9957al);
            if (findPointerIndex < 0) {
                Log.e("RecyclerView", "Error processing scroll; pointer index for id " + this.f9957al + " not found. Did any MotionEvents get skipped?");
                return false;
            }
            int x2 = (int) (motionEvent.getX(findPointerIndex) + 0.5f);
            int y2 = (int) (motionEvent.getY(findPointerIndex) + 0.5f);
            if (this.f9956ak != 1) {
                int i = this.f9959an;
                int i2 = this.f9960ao;
                if (!mo31644e || Math.abs(x2 - i) <= this.f9963ar) {
                    z = false;
                } else {
                    this.f9961ap = x2;
                    z = true;
                }
                boolean z3 = z;
                if (mo31643f) {
                    z3 = z;
                    if (Math.abs(y2 - i2) > this.f9963ar) {
                        this.f9962aq = y2;
                        z3 = true;
                    }
                }
                if (z3) {
                    setScrollState(1);
                }
            }
        } else if (actionMasked == 3) {
            m40424q();
        } else if (actionMasked == 5) {
            this.f9957al = motionEvent.getPointerId(actionIndex);
            int x3 = (int) (motionEvent.getX(actionIndex) + 0.5f);
            this.f9961ap = x3;
            this.f9959an = x3;
            int y3 = (int) (motionEvent.getY(actionIndex) + 0.5f);
            this.f9962aq = y3;
            this.f9960ao = y3;
        } else if (actionMasked == 6) {
            m40462b(motionEvent);
        }
        return this.f9956ak == 1;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        C0863g.m44289a("RV OnLayout");
        m40420u();
        C0863g.m44290a();
        this.f9991x = true;
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        AbstractC2637i abstractC2637i = this.f9982o;
        if (abstractC2637i == null) {
            m40448d(i, i2);
        } else if (abstractC2637i.isAutoMeasureEnabled()) {
            int mode = View.MeasureSpec.getMode(i);
            int mode2 = View.MeasureSpec.getMode(i2);
            this.f9982o.m40360f(i, i2);
            boolean z = false;
            if (mode == 1073741824) {
                z = false;
                if (mode2 == 1073741824) {
                    z = true;
                }
            }
            this.f9942aH = z;
            if (z || this.f9981n == null) {
                return;
            }
            if (this.f9925I.f10076d == 1) {
                m40416y();
            }
            this.f9982o.setMeasureSpecs(i, i2);
            this.f9925I.f10081i = true;
            m40415z();
            this.f9982o.setMeasuredDimensionFromChildren(i, i2);
            if (this.f9982o.mo40357h()) {
                this.f9982o.setMeasureSpecs(View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 1073741824));
                this.f9925I.f10081i = true;
                m40415z();
                this.f9982o.setMeasuredDimensionFromChildren(i, i2);
            }
            this.f9943aI = getMeasuredWidth();
            this.f9944aJ = getMeasuredHeight();
        } else if (this.f9989v) {
            this.f9982o.m40360f(i, i2);
        } else {
            if (this.f9917A) {
                m40450d();
                m40440f();
                m40421t();
                m40457b(true);
                if (this.f9925I.f10083k) {
                    this.f9925I.f10079g = true;
                } else {
                    this.f9974g.m40157e();
                    this.f9925I.f10079g = false;
                }
                this.f9917A = false;
                m40467a(false);
            } else if (this.f9925I.f10083k) {
                setMeasuredDimension(getMeasuredWidth(), getMeasuredHeight());
                return;
            }
            AbstractC2626a abstractC2626a = this.f9981n;
            if (abstractC2626a != null) {
                this.f9925I.f10077e = abstractC2626a.getItemCount();
            } else {
                this.f9925I.f10077e = 0;
            }
            m40450d();
            this.f9982o.m40360f(i, i2);
            m40467a(false);
            this.f9925I.f10079g = false;
        }
    }

    @Override // android.view.ViewGroup
    protected boolean onRequestFocusInDescendants(int i, Rect rect) {
        if (isComputingLayout()) {
            return false;
        }
        return super.onRequestFocusInDescendants(i, rect);
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        this.f9973f = savedState;
        super.onRestoreInstanceState(savedState.getSuperState());
        requestLayout();
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        SavedState savedState2 = this.f9973f;
        if (savedState2 != null) {
            savedState.copyFrom(savedState2);
        } else {
            AbstractC2637i abstractC2637i = this.f9982o;
            if (abstractC2637i != null) {
                savedState.mLayoutState = abstractC2637i.mo40241d();
            } else {
                savedState.mLayoutState = null;
            }
        }
        return savedState;
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (i == i3 && i2 == i4) {
            return;
        }
        m40426o();
    }

    /* JADX WARN: Code restructure failed: missing block: B:104:0x0360, code lost:
        if (r15 != 0) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:126:0x0411, code lost:
        if (java.lang.Math.abs(r0) < r10.f9965at) goto L127;
     */
    /* JADX WARN: Code restructure failed: missing block: B:131:0x0429, code lost:
        if (java.lang.Math.abs(r0) < r10.f9965at) goto L132;
     */
    /* JADX WARN: Code restructure failed: missing block: B:161:0x053b, code lost:
        if (r15 != false) goto L163;
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
        AbstractC2657v m40453c = m40453c(view);
        if (m40453c != null) {
            if (m40453c.isTmpDetached()) {
                m40453c.m40287g();
            } else if (!m40453c.m40291c()) {
                throw new IllegalArgumentException("Called removeDetachedView with a view which is not flagged as tmp detached." + m40453c + m40496a());
            }
        }
        view.clearAnimation();
        m40433h(view);
        super.removeDetachedView(view, z);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestChildFocus(View view, View view2) {
        if (!(this.f9982o.isSmoothScrolling() || isComputingLayout()) && view2 != null) {
            m40482a(view, view2);
        }
        super.requestChildFocus(view, view2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z) {
        return this.f9982o.mo39555a(this, view, rect, z, false);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z) {
        int size = this.f9986s.size();
        for (int i = 0; i < size; i++) {
            this.f9986s.get(i);
        }
        super.requestDisallowInterceptTouchEvent(z);
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        if (this.f9934W != 0 || this.f9993z) {
            this.f9992y = true;
        } else {
            super.requestLayout();
        }
    }

    @Override // android.view.View
    public void scrollBy(int i, int i2) {
        AbstractC2637i abstractC2637i = this.f9982o;
        if (abstractC2637i == null) {
            Log.e("RecyclerView", "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
        } else if (this.f9993z) {
        } else {
            boolean mo31644e = abstractC2637i.mo31644e();
            boolean mo31643f = this.f9982o.mo31643f();
            if (!mo31644e && !mo31643f) {
                return;
            }
            if (!mo31644e) {
                i = 0;
            }
            if (!mo31643f) {
                i2 = 0;
            }
            m40492a(i, i2, (MotionEvent) null, 0);
        }
    }

    @Override // android.view.View
    public void scrollTo(int i, int i2) {
        Log.w("RecyclerView", "RecyclerView does not support scrolling to an absolute position. Use scrollToPosition instead");
    }

    @Override // android.view.View, android.view.accessibility.AccessibilityEventSource
    public void sendAccessibilityEventUnchecked(AccessibilityEvent accessibilityEvent) {
        boolean z = false;
        if (isComputingLayout()) {
            int contentChangeTypes = (accessibilityEvent == null || Build.VERSION.SDK_INT < 19) ? 0 : accessibilityEvent.getContentChangeTypes();
            if (contentChangeTypes == 0) {
                contentChangeTypes = 0;
            }
            this.f9947ab |= contentChangeTypes;
            z = true;
        }
        if (z) {
            return;
        }
        super.sendAccessibilityEventUnchecked(accessibilityEvent);
    }

    public void setAccessibilityDelegateCompat(C2699l c2699l) {
        this.f9929M = c2699l;
        C0926v.m44123a(this, c2699l);
    }

    public void setAdapter(AbstractC2626a abstractC2626a) {
        setLayoutFrozen(false);
        AbstractC2626a abstractC2626a2 = this.f9981n;
        if (abstractC2626a2 != null) {
            abstractC2626a2.unregisterAdapterDataObserver(this.f9932U);
            this.f9981n.onDetachedFromRecyclerView(this);
        }
        m40465b();
        this.f9974g.m40171a();
        AbstractC2626a abstractC2626a3 = this.f9981n;
        this.f9981n = abstractC2626a;
        if (abstractC2626a != null) {
            abstractC2626a.registerAdapterDataObserver(this.f9932U);
            abstractC2626a.onAttachedToRecyclerView(this);
        }
        AbstractC2637i abstractC2637i = this.f9982o;
        if (abstractC2637i != null) {
            abstractC2637i.mo40220l();
        }
        C2648o c2648o = this.f9972e;
        AbstractC2626a abstractC2626a4 = this.f9981n;
        c2648o.m40338a();
        C2646n m40324c = c2648o.m40324c();
        if (abstractC2626a3 != null) {
            m40324c.m40340b();
        }
        if (m40324c.f10043b == 0) {
            for (int i = 0; i < m40324c.f10042a.size(); i++) {
                m40324c.f10042a.valueAt(i).f10044a.clear();
            }
        }
        if (abstractC2626a4 != null) {
            m40324c.m40346a();
        }
        this.f9925I.f10078f = true;
        m40451c(false);
        requestLayout();
    }

    public void setChildDrawingOrderCallback(AbstractC2630d abstractC2630d) {
        if (abstractC2630d == this.f9936aB) {
            return;
        }
        this.f9936aB = abstractC2630d;
        setChildrenDrawingOrderEnabled(abstractC2630d != null);
    }

    @Override // android.view.ViewGroup
    public void setClipToPadding(boolean z) {
        if (z != this.f9977j) {
            m40426o();
        }
        this.f9977j = z;
        super.setClipToPadding(z);
        if (this.f9991x) {
            requestLayout();
        }
    }

    public void setEdgeEffectFactory(C2631e c2631e) {
        C0833d.m44410a(c2631e);
        this.f9951af = c2631e;
        m40426o();
    }

    public void setHasFixedSize(boolean z) {
        this.f9989v = z;
    }

    public void setItemAnimator(AbstractC2632f abstractC2632f) {
        AbstractC2632f abstractC2632f2 = this.f9921E;
        if (abstractC2632f2 != null) {
            abstractC2632f2.mo40108d();
            this.f9921E.f10009h = null;
        }
        this.f9921E = abstractC2632f;
        if (abstractC2632f != null) {
            abstractC2632f.f10009h = this.f9935aA;
        }
    }

    public void setItemViewCacheSize(int i) {
        C2648o c2648o = this.f9972e;
        c2648o.f10052e = i;
        c2648o.m40328b();
    }

    @Deprecated
    public void setLayoutFrozen(boolean z) {
        suppressLayout(z);
    }

    public void setLayoutManager(AbstractC2637i abstractC2637i) {
        if (abstractC2637i == this.f9982o) {
            return;
        }
        m40445e();
        if (this.f9982o != null) {
            AbstractC2632f abstractC2632f = this.f9921E;
            if (abstractC2632f != null) {
                abstractC2632f.mo40108d();
            }
            this.f9982o.m40364c(this.f9972e);
            this.f9982o.m40370b(this.f9972e);
            this.f9972e.m40338a();
            if (this.f9988u) {
                this.f9982o.m40368b(this, this.f9972e);
            }
            this.f9982o.setRecyclerView(null);
            this.f9982o = null;
        } else {
            this.f9972e.m40338a();
        }
        C2666b c2666b = this.f9975h;
        C2666b.C2667a c2667a = c2666b.f10171b;
        while (true) {
            C2666b.C2667a c2667a2 = c2667a;
            c2667a2.f10173a = 0L;
            if (c2667a2.f10174b == null) {
                break;
            }
            c2667a = c2667a2.f10174b;
        }
        for (int size = c2666b.f10172c.size() - 1; size >= 0; size--) {
            c2666b.f10170a.mo40118d(c2666b.f10172c.get(size));
            c2666b.f10172c.remove(size);
        }
        c2666b.f10170a.mo40123b();
        this.f9982o = abstractC2637i;
        if (abstractC2637i != null) {
            if (abstractC2637i.f10027q != null) {
                throw new IllegalArgumentException("LayoutManager " + abstractC2637i + " is already attached to a RecyclerView:" + abstractC2637i.f10027q.m40496a());
            }
            this.f9982o.setRecyclerView(this);
            if (this.f9988u) {
                this.f9982o.f10032v = true;
            }
        }
        this.f9972e.m40328b();
        requestLayout();
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
        getScrollingChildHelper().m44168a(z);
    }

    public void setOnFlingListener(AbstractC2643k abstractC2643k) {
        this.f9964as = abstractC2643k;
    }

    @Deprecated
    public void setOnScrollListener(AbstractC2645m abstractC2645m) {
        this.f9970ay = abstractC2645m;
    }

    public void setPreserveFocusAfterLayout(boolean z) {
        this.f9969ax = z;
    }

    public void setRecycledViewPool(C2646n c2646n) {
        C2648o c2648o = this.f9972e;
        if (c2648o.f10054g != null) {
            c2648o.f10054g.m40340b();
        }
        c2648o.f10054g = c2646n;
        if (c2648o.f10054g == null || RecyclerView.this.getAdapter() == null) {
            return;
        }
        c2648o.f10054g.m40346a();
    }

    @Deprecated
    public void setRecyclerListener(AbstractC2649p abstractC2649p) {
        this.f9983p = abstractC2649p;
    }

    void setScrollState(int i) {
        if (i == this.f9956ak) {
            return;
        }
        this.f9956ak = i;
        if (i != 2) {
            m40432i();
        }
        AbstractC2637i abstractC2637i = this.f9982o;
        if (abstractC2637i != null) {
            abstractC2637i.mo40229h(i);
        }
        AbstractC2645m abstractC2645m = this.f9970ay;
        if (abstractC2645m != null) {
            abstractC2645m.mo10833a(this, i);
        }
        List<AbstractC2645m> list = this.f9971az;
        if (list == null) {
            return;
        }
        for (int size = list.size() - 1; size >= 0; size--) {
            this.f9971az.get(size).mo10833a(this, i);
        }
    }

    public void setScrollingTouchSlop(int i) {
        ViewConfiguration viewConfiguration = ViewConfiguration.get(getContext());
        if (i != 0) {
            if (i == 1) {
                this.f9963ar = viewConfiguration.getScaledPagingTouchSlop();
                return;
            }
            Log.w("RecyclerView", "setScrollingTouchSlop(): bad argument constant " + i + "; using default value");
        }
        this.f9963ar = viewConfiguration.getScaledTouchSlop();
    }

    public void setViewCacheExtension(AbstractC2655t abstractC2655t) {
        this.f9972e.f10055h = abstractC2655t;
    }

    @Override // android.view.View
    public boolean startNestedScroll(int i) {
        return getScrollingChildHelper().m44174a(i, 0);
    }

    @Override // android.view.View, androidx.core.view.AbstractC0914j
    public void stopNestedScroll() {
        getScrollingChildHelper().m44167b(0);
    }

    @Override // android.view.ViewGroup
    public final void suppressLayout(boolean z) {
        if (z != this.f9993z) {
            m40468a("Do not suppressLayout in layout or scroll");
            if (z) {
                long uptimeMillis = SystemClock.uptimeMillis();
                onTouchEvent(MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 0));
                this.f9993z = true;
                this.f9946aa = true;
                m40445e();
                return;
            }
            this.f9993z = false;
            if (this.f9992y && this.f9982o != null && this.f9981n != null) {
                requestLayout();
            }
            this.f9992y = false;
        }
    }
}
