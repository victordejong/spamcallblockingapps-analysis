package com.android.contacts.list;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.ListView;
import com.asus.contacts.c;
/* loaded from: classes-dex2jar.jar:com/android/contacts/list/TouchListView.class */
public class TouchListView extends ListView {

    /* renamed from: a  reason: collision with root package name */
    private ImageView f1753a;

    /* renamed from: b  reason: collision with root package name */
    private WindowManager f1754b;
    private WindowManager.LayoutParams c;
    private int d;
    private int e;
    private int f;
    private int g;
    private a h;
    private b i;
    private c j;
    private int k;
    private int l;
    private int m;
    private GestureDetector n;
    private int o;
    private Rect p;
    private Bitmap q;
    private final int r;
    private int s;
    private int t;
    private int u;
    private int v;

    /* loaded from: classes-dex2jar.jar:com/android/contacts/list/TouchListView$a.class */
    public interface a {
        void a();
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/list/TouchListView$b.class */
    public interface b {
        void drop(int i, int i2);
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/list/TouchListView$c.class */
    public interface c {
        void remove(int i);
    }

    public TouchListView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public TouchListView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.o = -1;
        this.p = new Rect();
        this.s = -1;
        this.t = -1;
        this.u = -1;
        this.v = 0;
        this.r = ViewConfiguration.get(context).getScaledTouchSlop();
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, c.a.q, 0, 0);
            this.s = obtainStyledAttributes.getDimensionPixelSize(3, 0);
            this.t = obtainStyledAttributes.getDimensionPixelSize(1, this.s);
            this.u = obtainStyledAttributes.getResourceId(2, -1);
            this.v = obtainStyledAttributes.getColor(0, 0);
            this.o = obtainStyledAttributes.getInt(4, -1);
            obtainStyledAttributes.recycle();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        if (this.f1753a != null) {
            this.f1753a.setVisibility(8);
            ((WindowManager) getContext().getSystemService("window")).removeView(this.f1753a);
            this.f1753a.setImageDrawable(null);
            this.f1753a = null;
        }
        if (this.q != null) {
            this.q.recycle();
            this.q = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(boolean z) {
        int i = 0;
        while (true) {
            View childAt = getChildAt(i);
            View view = childAt;
            if (childAt == null) {
                if (z) {
                    int firstVisiblePosition = getFirstVisiblePosition();
                    int top = getChildAt(0).getTop();
                    setAdapter(getAdapter());
                    setSelectionFromTop(firstVisiblePosition, top);
                }
                layoutChildren();
                view = getChildAt(i);
                if (view == null) {
                    return;
                }
            }
            if (a(view)) {
                ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
                layoutParams.height = this.s;
                view.setLayoutParams(layoutParams);
                view.setVisibility(0);
            }
            i++;
        }
    }

    private boolean a(View view) {
        return view.findViewById(this.u) != null;
    }

    @Override // android.widget.ListView
    public final void addFooterView(View view) {
        if (this.o == 2 || this.o == 1) {
            throw new RuntimeException("Footers are not supported with TouchListView in conjunction with remove_mode");
        }
    }

    @Override // android.widget.ListView
    public final void addFooterView(View view, Object obj, boolean z) {
        if (this.o == 2 || this.o == 1) {
            throw new RuntimeException("Footers are not supported with TouchListView in conjunction with remove_mode");
        }
    }

    @Override // android.widget.ListView
    public final void addHeaderView(View view) {
        throw new RuntimeException("Headers are not supported with TouchListView");
    }

    @Override // android.widget.ListView
    public final void addHeaderView(View view, Object obj, boolean z) {
        throw new RuntimeException("Headers are not supported with TouchListView");
    }

    @Override // android.widget.AbsListView, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        boolean z;
        if (this.j != null && this.n == null && this.o == 0) {
            this.n = new GestureDetector(getContext(), new GestureDetector.SimpleOnGestureListener() { // from class: com.android.contacts.list.TouchListView.1
                @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
                public final boolean onFling(MotionEvent motionEvent2, MotionEvent motionEvent3, float f, float f2) {
                    boolean z2;
                    if (TouchListView.this.f1753a != null) {
                        if (f > 1000.0f) {
                            Rect rect = TouchListView.this.p;
                            TouchListView.this.f1753a.getDrawingRect(rect);
                            if (motionEvent3.getX() > (rect.right * 2) / 3) {
                                TouchListView.this.a();
                                TouchListView.this.j.remove(TouchListView.this.e);
                                TouchListView.this.a(true);
                            }
                        }
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    return z2;
                }
            });
        }
        if (!(this.h == null && this.i == null)) {
            switch (motionEvent.getAction()) {
                case 0:
                    int x = (int) motionEvent.getX();
                    int y = (int) motionEvent.getY();
                    int pointToPosition = pointToPosition(x, y);
                    if (pointToPosition != -1) {
                        View childAt = getChildAt(pointToPosition - getFirstVisiblePosition());
                        if (a(childAt)) {
                            this.f = y - childAt.getTop();
                            this.g = ((int) motionEvent.getRawY()) - y;
                            View findViewById = childAt.findViewById(this.u);
                            Rect rect = this.p;
                            rect.left = findViewById.getLeft();
                            rect.right = findViewById.getRight();
                            rect.top = findViewById.getTop();
                            rect.bottom = findViewById.getBottom();
                            if (rect.left < x && x < rect.right) {
                                childAt.setDrawingCacheEnabled(true);
                                Bitmap createBitmap = Bitmap.createBitmap(childAt.getDrawingCache());
                                childAt.setDrawingCacheEnabled(false);
                                Rect rect2 = new Rect();
                                getGlobalVisibleRect(rect2, null);
                                int i = rect2.left;
                                a();
                                this.c = new WindowManager.LayoutParams();
                                this.c.gravity = 51;
                                this.c.x = i;
                                this.c.y = (y - this.f) + this.g;
                                this.c.height = -2;
                                this.c.width = -2;
                                this.c.flags = 408;
                                this.c.format = -3;
                                this.c.windowAnimations = 0;
                                ImageView imageView = new ImageView(getContext());
                                imageView.setBackgroundColor(this.v);
                                imageView.setImageBitmap(createBitmap);
                                this.q = createBitmap;
                                this.f1754b = (WindowManager) getContext().getSystemService("window");
                                this.f1754b.addView(imageView, this.c);
                                this.f1753a = imageView;
                                this.d = pointToPosition;
                                this.e = this.d;
                                this.m = getHeight();
                                int i2 = this.r;
                                this.k = Math.min(y - i2, this.m / 3);
                                this.l = Math.max(i2 + y, (this.m * 2) / 3);
                                z = false;
                                break;
                            } else {
                                this.f1753a = null;
                            }
                        }
                    }
                    break;
                default:
                    z = super.onInterceptTouchEvent(motionEvent);
                    break;
            }
            return z;
        }
        z = super.onInterceptTouchEvent(motionEvent);
        return z;
    }

    @Override // android.widget.AbsListView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean onTouchEvent;
        int i;
        int i2;
        int i3;
        Rect rect;
        int i4 = 4;
        if (this.n != null) {
            this.n.onTouchEvent(motionEvent);
        }
        if ((this.h != null || this.i != null) && this.f1753a != null) {
            int action = motionEvent.getAction();
            switch (action) {
                case 0:
                case 2:
                    int x = (int) motionEvent.getX();
                    int y = (int) motionEvent.getY();
                    float f = 1.0f;
                    int width = this.f1753a.getWidth();
                    if (this.o == 1) {
                        if (x > width / 2) {
                            f = (width - x) / (width / 2);
                        }
                        this.c.alpha = f;
                    } else if (this.o == 2) {
                        if (x < width / 2) {
                            f = x / (width / 2);
                        }
                        this.c.alpha = f;
                    }
                    this.c.y = (y - this.f) + this.g;
                    this.f1754b.updateViewLayout(this.f1753a, this.c);
                    int i5 = (y - this.f) - (this.s / 2);
                    Rect rect2 = this.p;
                    int childCount = getChildCount() - 1;
                    while (true) {
                        if (childCount >= 0) {
                            getChildAt(childCount).getHitRect(rect2);
                            if (rect2.contains(0, i5)) {
                                i = childCount + getFirstVisiblePosition();
                            } else {
                                childCount--;
                            }
                        } else {
                            i = -1;
                        }
                    }
                    if (i >= 0) {
                        i2 = i;
                        if (i <= this.e) {
                            i2 = i + 1;
                        }
                    } else {
                        i2 = i;
                        if (i5 < 0) {
                            i2 = 0;
                        }
                    }
                    onTouchEvent = true;
                    if (i2 >= 0) {
                        if (action == 0 || i2 != this.d) {
                            if (this.h != null) {
                                this.h.a();
                            }
                            this.d = i2;
                            int firstVisiblePosition = this.d - getFirstVisiblePosition();
                            int i6 = firstVisiblePosition;
                            if (this.d > this.e) {
                                i6 = firstVisiblePosition + 1;
                            }
                            View childAt = getChildAt(this.e - getFirstVisiblePosition());
                            int i7 = 0;
                            while (true) {
                                View childAt2 = getChildAt(i7);
                                if (childAt2 != null) {
                                    int i8 = this.s;
                                    if (childAt2.equals(childAt)) {
                                        if (this.d == this.e) {
                                            i3 = 4;
                                        } else {
                                            i3 = 4;
                                            i8 = 1;
                                        }
                                    } else if (i7 != i6 || this.d >= getCount() - 1) {
                                        i3 = 0;
                                    } else {
                                        i8 = this.t;
                                        i3 = 0;
                                    }
                                    if (a(childAt2)) {
                                        ViewGroup.LayoutParams layoutParams = childAt2.getLayoutParams();
                                        layoutParams.height = i8;
                                        childAt2.setLayoutParams(layoutParams);
                                        childAt2.setVisibility(i3);
                                    }
                                    i7++;
                                } else {
                                    layoutChildren();
                                }
                            }
                        }
                        if (y >= this.m / 3) {
                            this.k = this.m / 3;
                        }
                        if (y <= (this.m * 2) / 3) {
                            this.l = (this.m * 2) / 3;
                        }
                        if (y <= this.l) {
                            i4 = y < this.k ? y < this.k / 2 ? -16 : -4 : 0;
                        } else if (y > (this.m + this.l) / 2) {
                            i4 = 16;
                        }
                        onTouchEvent = true;
                        if (i4 != 0) {
                            int pointToPosition = pointToPosition(0, this.m / 2);
                            int i9 = pointToPosition;
                            if (pointToPosition == -1) {
                                i9 = pointToPosition(0, (this.m / 2) + getDividerHeight() + 64);
                            }
                            View childAt3 = getChildAt(i9 - getFirstVisiblePosition());
                            onTouchEvent = true;
                            if (childAt3 != null) {
                                setSelectionFromTop(i9, childAt3.getTop() - i4);
                                onTouchEvent = true;
                                break;
                            }
                        }
                    }
                    break;
                case 1:
                case 3:
                    this.f1753a.getDrawingRect(this.p);
                    a();
                    if (this.o == 1 && motionEvent.getX() > rect.left + ((rect.width() * 3) / 4)) {
                        if (this.j != null) {
                            this.j.remove(this.e);
                        }
                        a(true);
                        onTouchEvent = true;
                        break;
                    } else {
                        if (this.o == 2) {
                            if (motionEvent.getX() < (rect.width() / 4) + rect.left) {
                                if (this.j != null) {
                                    this.j.remove(this.e);
                                }
                                a(true);
                                onTouchEvent = true;
                                break;
                            }
                        }
                        if (this.i != null && this.d >= 0 && this.d < getCount()) {
                            this.i.drop(this.e, this.d);
                        }
                        a(false);
                        onTouchEvent = true;
                        break;
                    }
                    break;
                default:
                    onTouchEvent = true;
                    break;
            }
        } else {
            onTouchEvent = super.onTouchEvent(motionEvent);
        }
        return onTouchEvent;
    }

    public void setDragListener(a aVar) {
        this.h = aVar;
    }

    public void setDropListener(b bVar) {
        this.i = bVar;
    }

    public void setRemoveListener(c cVar) {
        this.j = cVar;
    }
}
