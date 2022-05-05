package gogolook.callgogolook2.view.widget;

import android.content.Context;
import android.database.DataSetObserver;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.Scroller;
import java.util.LinkedList;
import java.util.Queue;
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/view/widget/HorizontalListView.class */
public class HorizontalListView extends AdapterView<ListAdapter> {

    /* renamed from: a */
    public ListAdapter f13256a;

    /* renamed from: d */
    public int f13259d;

    /* renamed from: e */
    public int f13260e;

    /* renamed from: h */
    public Scroller f13263h;

    /* renamed from: i */
    public GestureDetector f13264i;

    /* renamed from: k */
    public AdapterView.OnItemSelectedListener f13266k;

    /* renamed from: l */
    public AdapterView.OnItemClickListener f13267l;

    /* renamed from: m */
    public AdapterView.OnItemLongClickListener f13268m;

    /* renamed from: b */
    public int f13257b = -1;

    /* renamed from: c */
    public int f13258c = 0;

    /* renamed from: f */
    public int f13261f = Integer.MAX_VALUE;

    /* renamed from: g */
    public int f13262g = 0;

    /* renamed from: j */
    public Queue<View> f13265j = new LinkedList();

    /* renamed from: n */
    public boolean f13269n = false;

    /* renamed from: o */
    public DataSetObserver f13270o = new C5315a();

    /* renamed from: p */
    public GestureDetector.OnGestureListener f13271p = new C5317c();

    /* renamed from: gogolook.callgogolook2.view.widget.HorizontalListView$a */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/view/widget/HorizontalListView$a.class */
    public class C5315a extends DataSetObserver {
        public C5315a() {
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            synchronized (HorizontalListView.this) {
                HorizontalListView.this.f13269n = true;
            }
            HorizontalListView horizontalListView = HorizontalListView.this;
            horizontalListView.setEmptyView(horizontalListView.getEmptyView());
            HorizontalListView.this.invalidate();
            HorizontalListView.this.requestLayout();
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
            HorizontalListView.this.m25712b();
            HorizontalListView.this.invalidate();
            HorizontalListView.this.requestLayout();
        }
    }

    /* renamed from: gogolook.callgogolook2.view.widget.HorizontalListView$b */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/view/widget/HorizontalListView$b.class */
    public class RunnableC5316b implements Runnable {
        public RunnableC5316b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            HorizontalListView.this.requestLayout();
        }
    }

    /* renamed from: gogolook.callgogolook2.view.widget.HorizontalListView$c */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/view/widget/HorizontalListView$c.class */
    public class C5317c extends GestureDetector.SimpleOnGestureListener {
        public C5317c() {
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onDown(MotionEvent motionEvent) {
            return HorizontalListView.this.m25718a(motionEvent);
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
            return HorizontalListView.this.m25717a(motionEvent, motionEvent2, f, f2);
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public void onLongPress(MotionEvent motionEvent) {
            Rect rect = new Rect();
            int childCount = HorizontalListView.this.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = HorizontalListView.this.getChildAt(i);
                rect.set(childAt.getLeft(), childAt.getTop(), childAt.getRight(), childAt.getBottom());
                if (rect.contains((int) motionEvent.getX(), (int) motionEvent.getY())) {
                    if (HorizontalListView.this.f13268m != null) {
                        AdapterView.OnItemLongClickListener onItemLongClickListener = HorizontalListView.this.f13268m;
                        HorizontalListView horizontalListView = HorizontalListView.this;
                        int i2 = horizontalListView.f13257b;
                        HorizontalListView horizontalListView2 = HorizontalListView.this;
                        onItemLongClickListener.onItemLongClick(horizontalListView, childAt, i2 + 1 + i, horizontalListView2.f13256a.getItemId(horizontalListView2.f13257b + 1 + i));
                        return;
                    } else {
                        return;
                    }
                }
            }
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
            HorizontalListView.this.getParent().requestDisallowInterceptTouchEvent(true);
            synchronized (HorizontalListView.this) {
                HorizontalListView.this.f13260e += (int) f;
            }
            HorizontalListView.this.requestLayout();
            return true;
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
        public boolean onSingleTapConfirmed(MotionEvent motionEvent) {
            Rect rect = new Rect();
            for (int i = 0; i < HorizontalListView.this.getChildCount(); i++) {
                View childAt = HorizontalListView.this.getChildAt(i);
                rect.set(childAt.getLeft(), childAt.getTop(), childAt.getRight(), childAt.getBottom());
                if (rect.contains((int) motionEvent.getX(), (int) motionEvent.getY())) {
                    if (HorizontalListView.this.f13267l != null) {
                        AdapterView.OnItemClickListener onItemClickListener = HorizontalListView.this.f13267l;
                        HorizontalListView horizontalListView = HorizontalListView.this;
                        int i2 = horizontalListView.f13257b;
                        HorizontalListView horizontalListView2 = HorizontalListView.this;
                        onItemClickListener.onItemClick(horizontalListView, childAt, i2 + 1 + i, horizontalListView2.f13256a.getItemId(horizontalListView2.f13257b + 1 + i));
                    }
                    if (HorizontalListView.this.f13266k == null) {
                        return true;
                    }
                    AdapterView.OnItemSelectedListener onItemSelectedListener = HorizontalListView.this.f13266k;
                    HorizontalListView horizontalListView3 = HorizontalListView.this;
                    int i3 = horizontalListView3.f13257b;
                    HorizontalListView horizontalListView4 = HorizontalListView.this;
                    onItemSelectedListener.onItemSelected(horizontalListView3, childAt, i3 + 1 + i, horizontalListView4.f13256a.getItemId(horizontalListView4.f13257b + 1 + i));
                    return true;
                }
            }
            return true;
        }
    }

    public HorizontalListView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m25721a();
    }

    /* renamed from: a */
    public final void m25721a() {
        synchronized (this) {
            this.f13257b = -1;
            this.f13258c = 0;
            this.f13262g = 0;
            this.f13259d = 0;
            this.f13260e = 0;
            this.f13261f = Integer.MAX_VALUE;
            this.f13263h = new Scroller(getContext());
            this.f13264i = new GestureDetector(getContext(), this.f13271p);
        }
    }

    /* renamed from: a */
    public final void m25720a(int i) {
        View childAt = getChildAt(getChildCount() - 1);
        int i2 = 0;
        m25710b(childAt != null ? childAt.getRight() : 0, i);
        View childAt2 = getChildAt(0);
        if (childAt2 != null) {
            i2 = childAt2.getLeft();
        }
        m25719a(i2, i);
    }

    /* renamed from: a */
    public final void m25719a(int i, int i2) {
        int i3;
        while (i + i2 > 0 && (i3 = this.f13257b) >= 0) {
            View view = this.f13256a.getView(i3, this.f13265j.poll(), this);
            m25716a(view, 0);
            i -= view.getMeasuredWidth();
            this.f13257b--;
            this.f13262g -= view.getMeasuredWidth();
        }
    }

    /* renamed from: a */
    public final void m25716a(View view, int i) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        ViewGroup.LayoutParams layoutParams2 = layoutParams;
        if (layoutParams == null) {
            layoutParams2 = new ViewGroup.LayoutParams(-1, -1);
        }
        addViewInLayout(view, i, layoutParams2, true);
        view.measure(View.MeasureSpec.makeMeasureSpec(getWidth(), Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(getHeight(), Integer.MIN_VALUE));
    }

    /* renamed from: a */
    public void setAdapter(ListAdapter listAdapter) {
        ListAdapter listAdapter2 = this.f13256a;
        if (listAdapter2 != null) {
            listAdapter2.unregisterDataSetObserver(this.f13270o);
        }
        this.f13256a = listAdapter;
        this.f13256a.registerDataSetObserver(this.f13270o);
        m25712b();
    }

    /* renamed from: a */
    public boolean m25718a(MotionEvent motionEvent) {
        this.f13263h.forceFinished(true);
        return true;
    }

    /* renamed from: a */
    public boolean m25717a(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
        synchronized (this) {
            this.f13263h.fling(this.f13260e, 0, (int) (-f), 0, 0, this.f13261f, 0, 0);
        }
        requestLayout();
        return true;
    }

    /* renamed from: b */
    public final void m25712b() {
        synchronized (this) {
            m25721a();
            removeAllViewsInLayout();
            requestLayout();
        }
    }

    /* renamed from: b */
    public final void m25711b(int i) {
        if (getChildCount() > 0) {
            this.f13262g += i;
            int i2 = this.f13262g;
            int i3 = 0;
            while (i3 < getChildCount()) {
                View childAt = getChildAt(i3);
                int measuredWidth = childAt.getMeasuredWidth() + i2;
                childAt.layout(i2, 0, measuredWidth, childAt.getMeasuredHeight());
                i3++;
                i2 = measuredWidth;
            }
        }
    }

    /* renamed from: b */
    public final void m25710b(int i, int i2) {
        while (i + i2 < getWidth() && this.f13258c < this.f13256a.getCount()) {
            View view = this.f13256a.getView(this.f13258c, this.f13265j.poll(), this);
            m25716a(view, -1);
            i += view.getMeasuredWidth();
            if (this.f13258c == this.f13256a.getCount() - 1) {
                this.f13261f = (this.f13259d + i) - getWidth();
            }
            if (this.f13261f < 0) {
                this.f13261f = 0;
            }
            this.f13258c++;
        }
    }

    /* renamed from: c */
    public final void m25708c(int i) {
        View childAt = getChildAt(0);
        while (childAt != null && childAt.getRight() + i <= 0) {
            this.f13262g += childAt.getMeasuredWidth();
            this.f13265j.offer(childAt);
            removeViewInLayout(childAt);
            this.f13257b++;
            childAt = getChildAt(0);
        }
        View childAt2 = getChildAt(getChildCount() - 1);
        while (childAt2 != null && childAt2.getLeft() + i >= getWidth()) {
            this.f13265j.offer(childAt2);
            removeViewInLayout(childAt2);
            this.f13258c--;
            childAt2 = getChildAt(getChildCount() - 1);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        return this.f13264i.onTouchEvent(motionEvent);
    }

    @Override // android.widget.AdapterView
    public ListAdapter getAdapter() {
        return this.f13256a;
    }

    @Override // android.widget.AdapterView
    public View getSelectedView() {
        return null;
    }

    @Override // android.widget.AdapterView, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        synchronized (this) {
            super.onLayout(z, i, i2, i3, i4);
            if (this.f13256a != null) {
                if (this.f13269n) {
                    int i5 = this.f13259d;
                    m25721a();
                    removeAllViewsInLayout();
                    this.f13260e = i5;
                    this.f13269n = false;
                }
                if (this.f13263h.computeScrollOffset()) {
                    this.f13260e = this.f13263h.getCurrX();
                }
                if (this.f13260e <= 0) {
                    this.f13260e = 0;
                    this.f13263h.forceFinished(true);
                }
                if (this.f13260e >= this.f13261f) {
                    this.f13260e = this.f13261f;
                    this.f13263h.forceFinished(true);
                }
                int i6 = this.f13259d - this.f13260e;
                m25708c(i6);
                m25720a(i6);
                m25711b(i6);
                this.f13259d = this.f13260e;
                if (!this.f13263h.isFinished()) {
                    post(new RunnableC5316b());
                }
            }
        }
    }

    @Override // android.widget.AdapterView
    public void setOnItemClickListener(AdapterView.OnItemClickListener onItemClickListener) {
        this.f13267l = onItemClickListener;
    }

    @Override // android.widget.AdapterView
    public void setOnItemLongClickListener(AdapterView.OnItemLongClickListener onItemLongClickListener) {
        this.f13268m = onItemLongClickListener;
    }

    @Override // android.widget.AdapterView
    public void setOnItemSelectedListener(AdapterView.OnItemSelectedListener onItemSelectedListener) {
        this.f13266k = onItemSelectedListener;
    }

    @Override // android.widget.AdapterView
    public void setSelection(int i) {
    }
}
