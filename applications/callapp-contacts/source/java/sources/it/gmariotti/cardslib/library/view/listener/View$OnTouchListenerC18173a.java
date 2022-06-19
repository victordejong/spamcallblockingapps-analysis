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
import it.gmariotti.cardslib.library.C18061a;
import it.gmariotti.cardslib.library.p510a.C18073b;
import it.gmariotti.cardslib.library.view.listener.p516a.AbstractC18182c;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* renamed from: it.gmariotti.cardslib.library.view.listener.a */
/* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/view/listener/a.class */
public final class View$OnTouchListenerC18173a implements View.OnTouchListener {

    /* renamed from: a */
    boolean f63216a;

    /* renamed from: b */
    protected AbstractC18182c f63217b;

    /* renamed from: c */
    private int f63218c;

    /* renamed from: d */
    private int f63219d;

    /* renamed from: e */
    private int f63220e;

    /* renamed from: f */
    private long f63221f;

    /* renamed from: g */
    private ListView f63222g;

    /* renamed from: h */
    private AbstractC18178a f63223h;

    /* renamed from: i */
    private int f63224i = 1;

    /* renamed from: j */
    private List<C18179b> f63225j = new ArrayList();

    /* renamed from: k */
    private int f63226k = 0;

    /* renamed from: l */
    private float f63227l;

    /* renamed from: m */
    private float f63228m;

    /* renamed from: n */
    private boolean f63229n;

    /* renamed from: o */
    private int f63230o;

    /* renamed from: p */
    private VelocityTracker f63231p;

    /* renamed from: q */
    private int f63232q;

    /* renamed from: r */
    private View f63233r;

    /* renamed from: s */
    private int f63234s;

    /* renamed from: it.gmariotti.cardslib.library.view.listener.a$4 */
    /* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/view/listener/a$4.class */
    static final /* synthetic */ class C181774 {

        /* renamed from: a */
        static final /* synthetic */ int[] f63242a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[AbstractC18182c.EnumC18183a.values().length];
            f63242a = iArr;
            try {
                iArr[AbstractC18182c.EnumC18183a.BOTH.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f63242a[AbstractC18182c.EnumC18183a.RIGHT.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f63242a[AbstractC18182c.EnumC18183a.LEFT.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    /* renamed from: it.gmariotti.cardslib.library.view.listener.a$a */
    /* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/view/listener/a$a.class */
    public interface AbstractC18178a {
        /* renamed from: a */
        void mo4334a(ListView listView, int[] iArr);

        /* renamed from: a */
        boolean mo4478a(C18073b c18073b);
    }

    /* renamed from: it.gmariotti.cardslib.library.view.listener.a$b */
    /* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/view/listener/a$b.class */
    public final class C18179b implements Comparable<C18179b> {

        /* renamed from: a */
        public int f63243a;

        /* renamed from: b */
        public View f63244b;

        public C18179b(int i, View view) {
            View$OnTouchListenerC18173a.this = r4;
            this.f63243a = i;
            this.f63244b = view;
        }

        @Override // java.lang.Comparable
        public final /* bridge */ /* synthetic */ int compareTo(C18179b c18179b) {
            return c18179b.f63243a - this.f63243a;
        }
    }

    public View$OnTouchListenerC18173a(ListView listView, AbstractC18178a abstractC18178a) {
        this.f63234s = 2;
        ViewConfiguration viewConfiguration = ViewConfiguration.get(listView.getContext());
        this.f63218c = viewConfiguration.getScaledTouchSlop();
        this.f63219d = viewConfiguration.getScaledMinimumFlingVelocity() * 16;
        this.f63220e = viewConfiguration.getScaledMaximumFlingVelocity();
        this.f63221f = listView.getContext().getResources().getInteger(17694720);
        this.f63222g = listView;
        this.f63223h = abstractC18178a;
        this.f63234s = listView.getContext().getResources().getInteger(C18061a.C18065d.list_card_swipe_distance_divisor);
    }

    /* renamed from: a */
    static /* synthetic */ int m4341a(View$OnTouchListenerC18173a view$OnTouchListenerC18173a) {
        int i = view$OnTouchListenerC18173a.f63226k - 1;
        view$OnTouchListenerC18173a.f63226k = i;
        return i;
    }

    /* renamed from: a */
    static /* synthetic */ void m4340a(View$OnTouchListenerC18173a view$OnTouchListenerC18173a, final View view, int i) {
        final ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        ValueAnimator duration = ValueAnimator.ofInt(view.getHeight(), 1).setDuration(view$OnTouchListenerC18173a.f63221f);
        duration.addListener(new AnimatorListenerAdapter() { // from class: it.gmariotti.cardslib.library.view.listener.a.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                View$OnTouchListenerC18173a.m4341a(View$OnTouchListenerC18173a.this);
                if (View$OnTouchListenerC18173a.this.f63226k == 0) {
                    Collections.sort(View$OnTouchListenerC18173a.this.f63225j);
                    int[] iArr = new int[View$OnTouchListenerC18173a.this.f63225j.size()];
                    for (int size = View$OnTouchListenerC18173a.this.f63225j.size() - 1; size >= 0; size--) {
                        iArr[size] = ((C18179b) View$OnTouchListenerC18173a.this.f63225j.get(size)).f63243a;
                    }
                    View$OnTouchListenerC18173a.this.f63223h.mo4334a(View$OnTouchListenerC18173a.this.f63222g, iArr);
                    View$OnTouchListenerC18173a.this.f63232q = -1;
                    for (C18179b c18179b : View$OnTouchListenerC18173a.this.f63225j) {
                        c18179b.f63244b.setAlpha(1.0f);
                        c18179b.f63244b.setTranslationX(BitmapDescriptorFactory.HUE_RED);
                        ViewGroup.LayoutParams layoutParams2 = c18179b.f63244b.getLayoutParams();
                        layoutParams2.height = 0;
                        c18179b.f63244b.setLayoutParams(layoutParams2);
                    }
                    long uptimeMillis = SystemClock.uptimeMillis();
                    View$OnTouchListenerC18173a.this.f63222g.dispatchTouchEvent(MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 0));
                    View$OnTouchListenerC18173a.this.f63225j.clear();
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
        view$OnTouchListenerC18173a.f63225j.add(new C18179b(i, view));
        duration.start();
    }

    /* renamed from: a */
    public final void m4342a(AbstractC18182c abstractC18182c) {
        this.f63217b = abstractC18182c;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        boolean z;
        boolean z2;
        int i;
        if (this.f63224i < 2) {
            this.f63224i = this.f63222g.getWidth();
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            if (this.f63216a) {
                return false;
            }
            if (this.f63229n) {
                return true;
            }
            Rect rect = new Rect();
            int childCount = this.f63222g.getChildCount();
            int headerViewsCount = this.f63222g.getHeaderViewsCount();
            int footerViewsCount = this.f63222g.getFooterViewsCount();
            int[] iArr = new int[2];
            this.f63222g.getLocationOnScreen(iArr);
            int rawX = (int) motionEvent.getRawX();
            int i2 = iArr[0];
            int rawY = (int) motionEvent.getRawY();
            int i3 = iArr[1];
            while (true) {
                if (headerViewsCount >= childCount - footerViewsCount) {
                    break;
                }
                View childAt = this.f63222g.getChildAt(headerViewsCount);
                childAt.getHitRect(rect);
                if (rect.contains(rawX - i2, rawY - i3)) {
                    this.f63233r = childAt;
                    break;
                }
                headerViewsCount++;
            }
            if (this.f63233r != null) {
                this.f63227l = motionEvent.getRawX();
                this.f63228m = motionEvent.getRawY();
                int positionForView = this.f63222g.getPositionForView(this.f63233r);
                this.f63232q = positionForView;
                if (positionForView == -1 || positionForView >= this.f63222g.getAdapter().getCount()) {
                    this.f63233r = null;
                } else if (!(this.f63222g.getAdapter().getItem(this.f63232q) instanceof C18073b)) {
                    this.f63233r = null;
                } else if (this.f63223h.mo4478a((C18073b) this.f63222g.getAdapter().getItem(this.f63232q))) {
                    VelocityTracker obtain = VelocityTracker.obtain();
                    this.f63231p = obtain;
                    obtain.addMovement(motionEvent);
                } else {
                    this.f63233r = null;
                }
            }
            view.onTouchEvent(motionEvent);
            return true;
        } else if (actionMasked != 1) {
            if (actionMasked != 2) {
                if (actionMasked != 3 || this.f63231p == null) {
                    return false;
                }
                View view2 = this.f63233r;
                if (view2 != null) {
                    view2.animate().translationX(BitmapDescriptorFactory.HUE_RED).alpha(1.0f).setDuration(this.f63221f).setListener(null);
                }
                this.f63231p.recycle();
                this.f63231p = null;
                this.f63227l = BitmapDescriptorFactory.HUE_RED;
                this.f63228m = BitmapDescriptorFactory.HUE_RED;
                this.f63233r = null;
                this.f63232q = -1;
                this.f63229n = false;
                return false;
            }
            VelocityTracker velocityTracker = this.f63231p;
            if (velocityTracker == null || this.f63216a) {
                return false;
            }
            velocityTracker.addMovement(motionEvent);
            float rawX2 = motionEvent.getRawX() - this.f63227l;
            float rawY2 = motionEvent.getRawY();
            float f = this.f63228m;
            int i4 = C181774.f63242a[this.f63217b.mo4333a().ordinal()];
            boolean z3 = i4 == 1 ? Math.abs(rawX2) > BitmapDescriptorFactory.HUE_RED : !(i4 == 2 ? rawX2 <= BitmapDescriptorFactory.HUE_RED : i4 != 3 || rawX2 >= BitmapDescriptorFactory.HUE_RED);
            if (Math.abs(rawX2) > this.f63218c && Math.abs(rawY2 - f) < Math.abs(rawX2) / 2.0f && z3) {
                this.f63229n = true;
                this.f63230o = rawX2 > BitmapDescriptorFactory.HUE_RED ? this.f63218c : -this.f63218c;
                this.f63222g.requestDisallowInterceptTouchEvent(true);
                MotionEvent obtain2 = MotionEvent.obtain(motionEvent);
                obtain2.setAction((motionEvent.getActionIndex() << 8) | 3);
                this.f63222g.onTouchEvent(obtain2);
                view.onTouchEvent(obtain2);
                obtain2.recycle();
            }
            if (!this.f63229n) {
                return false;
            }
            this.f63233r.setTranslationX(rawX2 - this.f63230o);
            this.f63233r.setAlpha(Math.max((float) BitmapDescriptorFactory.HUE_RED, Math.min(1.0f, 1.0f - ((Math.abs(rawX2) * 2.0f) / this.f63224i))));
            return true;
        } else if (this.f63231p == null) {
            return false;
        } else {
            float rawX3 = motionEvent.getRawX() - this.f63227l;
            this.f63231p.addMovement(motionEvent);
            this.f63231p.computeCurrentVelocity(1000);
            float xVelocity = this.f63231p.getXVelocity();
            float abs = Math.abs(xVelocity);
            float abs2 = Math.abs(this.f63231p.getYVelocity());
            if (Math.abs(rawX3) <= this.f63224i / this.f63234s || !this.f63229n) {
                if (this.f63219d > abs || abs > this.f63220e || abs2 >= abs || !this.f63229n) {
                    z = false;
                } else {
                    boolean z4 = ((xVelocity > BitmapDescriptorFactory.HUE_RED ? 1 : (xVelocity == BitmapDescriptorFactory.HUE_RED ? 0 : -1)) < 0) == ((rawX3 > BitmapDescriptorFactory.HUE_RED ? 1 : (rawX3 == BitmapDescriptorFactory.HUE_RED ? 0 : -1)) < 0);
                    z = z4;
                    if (this.f63231p.getXVelocity() > BitmapDescriptorFactory.HUE_RED) {
                        z = z4;
                        z2 = true;
                    }
                }
                z2 = false;
            } else {
                z2 = rawX3 > BitmapDescriptorFactory.HUE_RED;
                z = true;
            }
            if (!z || (i = this.f63232q) == -1) {
                this.f63233r.animate().translationX(BitmapDescriptorFactory.HUE_RED).alpha(1.0f).setDuration(this.f63221f).setListener(null);
            } else {
                final View view3 = this.f63233r;
                final int headerViewsCount2 = i - this.f63222g.getHeaderViewsCount();
                this.f63226k++;
                if (view3 == null) {
                    this.f63223h.mo4334a(this.f63222g, new int[]{headerViewsCount2});
                } else {
                    view3.animate().translationX(z2 ? this.f63224i : -this.f63224i).alpha(BitmapDescriptorFactory.HUE_RED).setDuration(this.f63221f).setListener(new AnimatorListenerAdapter() { // from class: it.gmariotti.cardslib.library.view.listener.a.1
                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public final void onAnimationEnd(Animator animator) {
                            View$OnTouchListenerC18173a.m4340a(View$OnTouchListenerC18173a.this, view3, headerViewsCount2);
                        }
                    });
                }
            }
            this.f63231p.recycle();
            this.f63231p = null;
            this.f63227l = BitmapDescriptorFactory.HUE_RED;
            this.f63228m = BitmapDescriptorFactory.HUE_RED;
            this.f63233r = null;
            this.f63232q = -1;
            if (this.f63229n) {
                this.f63229n = false;
                return true;
            }
            this.f63229n = false;
            return false;
        }
    }
}
