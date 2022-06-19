package p000;

import android.graphics.Rect;
import android.os.Build;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.AbsListView;
import android.widget.ListView;
import p000.hi1;
/* renamed from: tb1 */
/* loaded from: classes3-dex2jar.jar:tb1.class */
public class tb1 implements View.OnTouchListener {

    /* renamed from: a */
    public int f8204a;

    /* renamed from: b */
    public View f8205b;

    /* renamed from: c */
    public float f8206c;

    /* renamed from: d */
    public View f8207d;

    /* renamed from: f */
    public int f8208f;

    /* renamed from: g */
    public float f8209g;

    /* renamed from: h */
    public boolean f8210h;

    /* renamed from: j */
    public int f8211j;

    /* renamed from: k */
    public float f8212k;

    /* renamed from: l */
    public ListView f8213l;

    /* renamed from: m */
    public float f8214m;

    /* renamed from: n */
    public boolean f8215n;

    /* renamed from: tb1$a */
    /* loaded from: classes3-dex2jar.jar:tb1$a.class */
    public class C1664a implements AbsListView.OnScrollListener {
        public C1664a() {
            tb1.this = r4;
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScroll(AbsListView absListView, int i, int i2, int i3) {
            tb1.this.f8215n = true;
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScrollStateChanged(AbsListView absListView, int i) {
            if (i != 0) {
                if (tb1.this.f8215n) {
                    tb1.this.m519d();
                }
                tb1.this.f8215n = false;
            }
        }
    }

    /* renamed from: tb1$b */
    /* loaded from: classes3-dex2jar.jar:tb1$b.class */
    public class C1665b implements hi1.AbstractC1443a {

        /* renamed from: a */
        public final /* synthetic */ View f8217a;

        /* renamed from: b */
        public final /* synthetic */ float f8218b;

        public C1665b(View view, float f) {
            tb1.this = r4;
            this.f8217a = view;
            this.f8218b = f;
        }

        @Override // p000.hi1.AbstractC1443a
        /* renamed from: a */
        public void mo304a(hi1 hi1Var) {
            tb1.this.m516g(this.f8217a, this.f8218b);
        }

        @Override // p000.hi1.AbstractC1443a
        /* renamed from: b */
        public void mo303b(hi1 hi1Var) {
        }

        @Override // p000.hi1.AbstractC1443a
        /* renamed from: c */
        public void mo302c(hi1 hi1Var) {
        }

        @Override // p000.hi1.AbstractC1443a
        /* renamed from: d */
        public void mo301d(hi1 hi1Var) {
            tb1.this.m516g(this.f8217a, this.f8218b);
        }
    }

    public tb1(ListView listView, int i, int i2) {
        this.f8213l = listView;
        listView.setOnScrollListener(new C1664a());
        this.f8204a = ViewConfiguration.get(listView.getContext()).getScaledTouchSlop();
        this.f8208f = i;
        this.f8211j = i2;
        float f = listView.getResources().getDisplayMetrics().density;
        this.f8214m = f;
        if (f <= 0.0f) {
            this.f8214m = 1.0f;
        }
    }

    /* renamed from: d */
    public void m519d() {
        m518e(this.f8207d, 0.0f);
        this.f8207d = null;
    }

    /* renamed from: e */
    public final void m518e(View view, float f) {
        if (view == null) {
            return;
        }
        si1.m563a(view).mo316d(f).mo318b(200L).mo317c(new C1665b(view, f));
    }

    /* renamed from: f */
    public final float m517f(View view) {
        return Build.VERSION.SDK_INT >= 11 ? view.getX() : this.f8206c;
    }

    /* renamed from: g */
    public final void m516g(View view, float f) {
        if (Build.VERSION.SDK_INT >= 11) {
            view.setX(f);
            return;
        }
        si1.m563a(view).mo316d(f).mo318b(0L);
        this.f8206c = f;
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        if (!this.f8215n) {
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.f8210h = false;
            int childCount = this.f8213l.getChildCount();
            int[] iArr = new int[2];
            this.f8213l.getLocationOnScreen(iArr);
            int rawX = (int) motionEvent.getRawX();
            int i = iArr[0];
            int rawY = (int) motionEvent.getRawY();
            int i2 = iArr[1];
            Rect rect = new Rect();
            int i3 = 0;
            while (true) {
                if (i3 >= childCount) {
                    break;
                }
                View childAt = this.f8213l.getChildAt(i3);
                if (childAt != null) {
                    childAt.getHitRect(rect);
                    if (rect.contains(rawX - i, rawY - i2)) {
                        View findViewById = childAt.findViewById(this.f8208f);
                        this.f8205b = findViewById;
                        if (findViewById != null) {
                            this.f8209g = motionEvent.getRawX();
                            this.f8206c = this.f8205b == this.f8207d ? this.f8213l.getWidth() - this.f8205b.getWidth() : 0.0f;
                            this.f8212k = this.f8205b.findViewById(this.f8211j).getWidth();
                        }
                    } else {
                        continue;
                    }
                }
                i3++;
            }
            View view2 = this.f8205b;
            return view2 != null && m517f(view2) < 0.0f;
        } else if (actionMasked != 1) {
            if (actionMasked != 2 || this.f8205b == null) {
                return false;
            }
            float rawX2 = motionEvent.getRawX() - this.f8209g;
            if (!this.f8210h && Math.abs(rawX2) < this.f8204a * 3 * this.f8214m) {
                if (this.f8207d == this.f8205b) {
                    return false;
                }
                m519d();
                return false;
            }
            if (!this.f8210h) {
                MotionEvent obtain = MotionEvent.obtain(motionEvent);
                obtain.setAction((obtain.getActionIndex() << 8) | 3);
                this.f8213l.onTouchEvent(obtain);
                if (this.f8207d != this.f8205b) {
                    m519d();
                }
            }
            this.f8210h = true;
            float m517f = m517f(this.f8205b);
            if (rawX2 < 0.0f && this.f8205b.getWidth() + m517f <= this.f8213l.getWidth()) {
                m516g(this.f8205b, this.f8213l.getWidth() - this.f8205b.getWidth());
                return true;
            } else if (rawX2 > 0.0f && m517f >= 0.0f) {
                m516g(this.f8205b, 0.0f);
                return true;
            } else {
                float f = rawX2;
                if (m517f + rawX2 < this.f8213l.getWidth() - this.f8205b.getWidth()) {
                    f = (this.f8213l.getWidth() - this.f8205b.getWidth()) - m517f;
                }
                float f2 = f;
                if (m517f + f > 0.0f) {
                    f2 = -m517f;
                }
                m516g(this.f8205b, m517f + f2);
                this.f8209g = motionEvent.getRawX();
                return true;
            }
        } else {
            View view3 = this.f8205b;
            if (view3 == null) {
                return false;
            }
            float m517f2 = m517f(view3);
            if (!this.f8210h && m517f2 < 0.0f && Build.VERSION.SDK_INT < 11) {
                int[] iArr2 = new int[2];
                this.f8213l.getLocationOnScreen(iArr2);
                int rawX3 = (int) motionEvent.getRawX();
                int i4 = iArr2[0];
                int m517f3 = (int) m517f(this.f8205b);
                View findViewById2 = this.f8205b.findViewById(this.f8211j);
                Rect rect2 = new Rect();
                findViewById2.getHitRect(rect2);
                if (rect2.contains((rawX3 - i4) - m517f3, rect2.top)) {
                    MotionEvent obtain2 = MotionEvent.obtain(motionEvent);
                    obtain2.setAction(0 | (obtain2.getActionIndex() << 8));
                    findViewById2.onTouchEvent(obtain2);
                    findViewById2.onTouchEvent(motionEvent);
                    this.f8205b = null;
                    return true;
                }
            }
            if (Math.abs(m517f2) > this.f8212k / 2.0f) {
                View view4 = this.f8205b;
                this.f8207d = view4;
                m518e(view4, this.f8213l.getWidth() - this.f8205b.getWidth());
            }
            if (Math.abs(m517f2) <= this.f8212k / 2.0f || (!this.f8210h && m517f2 < 0.0f)) {
                this.f8207d = null;
                m518e(this.f8205b, 0.0f);
            }
            this.f8205b = null;
            boolean z = true;
            if (!this.f8210h) {
                z = m517f2 < 0.0f;
            }
            this.f8210h = false;
            return z;
        }
    }
}
