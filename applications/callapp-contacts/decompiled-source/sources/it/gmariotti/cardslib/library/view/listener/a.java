package it.gmariotti.cardslib.library.view.listener;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.graphics.Rect;
import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.widget.ListView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import it.gmariotti.cardslib.library.a;
import it.gmariotti.cardslib.library.view.listener.a.c;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/view/listener/a.class */
public final class a implements View.OnTouchListener {

    /* renamed from: a  reason: collision with root package name */
    boolean f36495a;

    /* renamed from: b  reason: collision with root package name */
    protected c f36496b;

    /* renamed from: c  reason: collision with root package name */
    private int f36497c;

    /* renamed from: d  reason: collision with root package name */
    private int f36498d;
    private int e;
    private long f;
    private ListView g;
    private AbstractC0601a h;
    private int i = 1;
    private List<b> j = new ArrayList();
    private int k = 0;
    private float l;
    private float m;
    private boolean n;
    private int o;
    private VelocityTracker p;
    private int q;
    private View r;
    private int s;

    /* renamed from: it.gmariotti.cardslib.library.view.listener.a$4  reason: invalid class name */
    /* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/view/listener/a$4.class */
    static final /* synthetic */ class AnonymousClass4 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f36506a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[c.a.values().length];
            f36506a = iArr;
            try {
                iArr[c.a.BOTH.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f36506a[c.a.RIGHT.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f36506a[c.a.LEFT.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    /* renamed from: it.gmariotti.cardslib.library.view.listener.a$a  reason: collision with other inner class name */
    /* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/view/listener/a$a.class */
    public interface AbstractC0601a {
        void a(ListView listView, int[] iArr);

        boolean a(it.gmariotti.cardslib.library.a.b bVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/view/listener/a$b.class */
    public final class b implements Comparable<b> {

        /* renamed from: a  reason: collision with root package name */
        public int f36508a;

        /* renamed from: b  reason: collision with root package name */
        public View f36509b;

        public b(int i, View view) {
            this.f36508a = i;
            this.f36509b = view;
        }

        @Override // java.lang.Comparable
        public final /* bridge */ /* synthetic */ int compareTo(b bVar) {
            return bVar.f36508a - this.f36508a;
        }
    }

    public a(ListView listView, AbstractC0601a aVar) {
        this.s = 2;
        ViewConfiguration viewConfiguration = ViewConfiguration.get(listView.getContext());
        this.f36497c = viewConfiguration.getScaledTouchSlop();
        this.f36498d = viewConfiguration.getScaledMinimumFlingVelocity() * 16;
        this.e = viewConfiguration.getScaledMaximumFlingVelocity();
        this.f = listView.getContext().getResources().getInteger(17694720);
        this.g = listView;
        this.h = aVar;
        this.s = listView.getContext().getResources().getInteger(a.d.list_card_swipe_distance_divisor);
    }

    static /* synthetic */ int a(a aVar) {
        int i = aVar.k - 1;
        aVar.k = i;
        return i;
    }

    static /* synthetic */ void a(a aVar, final View view, int i) {
        final ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        ValueAnimator duration = ValueAnimator.ofInt(view.getHeight(), 1).setDuration(aVar.f);
        duration.addListener(new AnimatorListenerAdapter() { // from class: it.gmariotti.cardslib.library.view.listener.a.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                a.a(a.this);
                if (a.this.k == 0) {
                    Collections.sort(a.this.j);
                    int[] iArr = new int[a.this.j.size()];
                    for (int size = a.this.j.size() - 1; size >= 0; size--) {
                        iArr[size] = ((b) a.this.j.get(size)).f36508a;
                    }
                    a.this.h.a(a.this.g, iArr);
                    a.this.q = -1;
                    for (b bVar : a.this.j) {
                        bVar.f36509b.setAlpha(1.0f);
                        bVar.f36509b.setTranslationX(BitmapDescriptorFactory.HUE_RED);
                        ViewGroup.LayoutParams layoutParams2 = bVar.f36509b.getLayoutParams();
                        layoutParams2.height = 0;
                        bVar.f36509b.setLayoutParams(layoutParams2);
                    }
                    long uptimeMillis = SystemClock.uptimeMillis();
                    a.this.g.dispatchTouchEvent(MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 0));
                    a.this.j.clear();
                }
            }
        });
        duration.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: it.gmariotti.cardslib.library.view.listener.a.3
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                layoutParams.height = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                view.setLayoutParams(layoutParams);
            }
        });
        aVar.j.add(new b(i, view));
        duration.start();
    }

    public final void a(c cVar) {
        this.f36496b = cVar;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        boolean z;
        boolean z2;
        int i;
        if (this.i < 2) {
            this.i = this.g.getWidth();
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 0) {
            if (actionMasked != 1) {
                if (actionMasked == 2) {
                    VelocityTracker velocityTracker = this.p;
                    if (velocityTracker == null || this.f36495a) {
                        return false;
                    }
                    velocityTracker.addMovement(motionEvent);
                    float rawX = motionEvent.getRawX() - this.l;
                    float rawY = motionEvent.getRawY();
                    float f = this.m;
                    int i2 = AnonymousClass4.f36506a[this.f36496b.a().ordinal()];
                    boolean z3 = i2 == 1 ? Math.abs(rawX) > BitmapDescriptorFactory.HUE_RED : !(i2 == 2 ? rawX <= BitmapDescriptorFactory.HUE_RED : i2 != 3 || rawX >= BitmapDescriptorFactory.HUE_RED);
                    if (Math.abs(rawX) > this.f36497c && Math.abs(rawY - f) < Math.abs(rawX) / 2.0f && z3) {
                        this.n = true;
                        this.o = rawX > BitmapDescriptorFactory.HUE_RED ? this.f36497c : -this.f36497c;
                        this.g.requestDisallowInterceptTouchEvent(true);
                        MotionEvent obtain = MotionEvent.obtain(motionEvent);
                        obtain.setAction((motionEvent.getActionIndex() << 8) | 3);
                        this.g.onTouchEvent(obtain);
                        view.onTouchEvent(obtain);
                        obtain.recycle();
                    }
                    if (!this.n) {
                        return false;
                    }
                    this.r.setTranslationX(rawX - this.o);
                    this.r.setAlpha(Math.max((float) BitmapDescriptorFactory.HUE_RED, Math.min(1.0f, 1.0f - ((Math.abs(rawX) * 2.0f) / this.i))));
                    return true;
                } else if (actionMasked != 3 || this.p == null) {
                    return false;
                } else {
                    View view2 = this.r;
                    if (view2 != null) {
                        view2.animate().translationX(BitmapDescriptorFactory.HUE_RED).alpha(1.0f).setDuration(this.f).setListener(null);
                    }
                    this.p.recycle();
                    this.p = null;
                    this.l = BitmapDescriptorFactory.HUE_RED;
                    this.m = BitmapDescriptorFactory.HUE_RED;
                    this.r = null;
                    this.q = -1;
                    this.n = false;
                    return false;
                }
            } else if (this.p == null) {
                return false;
            } else {
                float rawX2 = motionEvent.getRawX() - this.l;
                this.p.addMovement(motionEvent);
                this.p.computeCurrentVelocity(1000);
                float xVelocity = this.p.getXVelocity();
                float abs = Math.abs(xVelocity);
                float abs2 = Math.abs(this.p.getYVelocity());
                if (Math.abs(rawX2) <= this.i / this.s || !this.n) {
                    if (this.f36498d > abs || abs > this.e || abs2 >= abs || !this.n) {
                        z = false;
                    } else {
                        boolean z4 = ((xVelocity > BitmapDescriptorFactory.HUE_RED ? 1 : (xVelocity == BitmapDescriptorFactory.HUE_RED ? 0 : -1)) < 0) == ((rawX2 > BitmapDescriptorFactory.HUE_RED ? 1 : (rawX2 == BitmapDescriptorFactory.HUE_RED ? 0 : -1)) < 0);
                        z = z4;
                        if (this.p.getXVelocity() > BitmapDescriptorFactory.HUE_RED) {
                            z2 = true;
                            z = z4;
                        }
                    }
                    z2 = false;
                } else {
                    z2 = rawX2 > BitmapDescriptorFactory.HUE_RED;
                    z = true;
                }
                if (!z || (i = this.q) == -1) {
                    this.r.animate().translationX(BitmapDescriptorFactory.HUE_RED).alpha(1.0f).setDuration(this.f).setListener(null);
                } else {
                    final View view3 = this.r;
                    final int headerViewsCount = i - this.g.getHeaderViewsCount();
                    this.k++;
                    if (view3 == null) {
                        this.h.a(this.g, new int[]{headerViewsCount});
                    } else {
                        view3.animate().translationX(z2 ? this.i : -this.i).alpha(BitmapDescriptorFactory.HUE_RED).setDuration(this.f).setListener(new AnimatorListenerAdapter() { // from class: it.gmariotti.cardslib.library.view.listener.a.1
                            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                            public final void onAnimationEnd(Animator animator) {
                                a.a(a.this, view3, headerViewsCount);
                            }
                        });
                    }
                }
                this.p.recycle();
                this.p = null;
                this.l = BitmapDescriptorFactory.HUE_RED;
                this.m = BitmapDescriptorFactory.HUE_RED;
                this.r = null;
                this.q = -1;
                if (this.n) {
                    this.n = false;
                    return true;
                }
                this.n = false;
                return false;
            }
        } else if (this.f36495a) {
            return false;
        } else {
            if (this.n) {
                return true;
            }
            Rect rect = new Rect();
            int childCount = this.g.getChildCount();
            int headerViewsCount2 = this.g.getHeaderViewsCount();
            int footerViewsCount = this.g.getFooterViewsCount();
            int[] iArr = new int[2];
            this.g.getLocationOnScreen(iArr);
            int rawX3 = (int) motionEvent.getRawX();
            int i3 = iArr[0];
            int rawY2 = (int) motionEvent.getRawY();
            int i4 = iArr[1];
            while (true) {
                if (headerViewsCount2 >= childCount - footerViewsCount) {
                    break;
                }
                View childAt = this.g.getChildAt(headerViewsCount2);
                childAt.getHitRect(rect);
                if (rect.contains(rawX3 - i3, rawY2 - i4)) {
                    this.r = childAt;
                    break;
                }
                headerViewsCount2++;
            }
            if (this.r != null) {
                this.l = motionEvent.getRawX();
                this.m = motionEvent.getRawY();
                int positionForView = this.g.getPositionForView(this.r);
                this.q = positionForView;
                if (positionForView == -1 || positionForView >= this.g.getAdapter().getCount()) {
                    this.r = null;
                } else if (!(this.g.getAdapter().getItem(this.q) instanceof it.gmariotti.cardslib.library.a.b)) {
                    this.r = null;
                } else if (this.h.a((it.gmariotti.cardslib.library.a.b) this.g.getAdapter().getItem(this.q))) {
                    VelocityTracker obtain2 = VelocityTracker.obtain();
                    this.p = obtain2;
                    obtain2.addMovement(motionEvent);
                } else {
                    this.r = null;
                }
            }
            view.onTouchEvent(motionEvent);
            return true;
        }
    }
}
