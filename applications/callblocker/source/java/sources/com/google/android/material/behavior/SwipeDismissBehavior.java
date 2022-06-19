package com.google.android.material.behavior;

import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.p026h.C0595u;
import androidx.p029d.p031b.C0644c;
/* loaded from: classes-dex2jar.jar:com/google/android/material/behavior/SwipeDismissBehavior.class */
public class SwipeDismissBehavior<V extends View> extends CoordinatorLayout.AbstractC0423b<V> {

    /* renamed from: a */
    C0644c f19685a;

    /* renamed from: b */
    AbstractC4535a f19686b;

    /* renamed from: g */
    private boolean f19691g;

    /* renamed from: i */
    private boolean f19693i;

    /* renamed from: h */
    private float f19692h = 0.0f;

    /* renamed from: c */
    int f19687c = 2;

    /* renamed from: d */
    float f19688d = 0.5f;

    /* renamed from: e */
    float f19689e = 0.0f;

    /* renamed from: f */
    float f19690f = 0.5f;

    /* renamed from: j */
    private final C0644c.AbstractC0647a f19694j = new C0644c.AbstractC0647a() { // from class: com.google.android.material.behavior.SwipeDismissBehavior.1

        /* renamed from: b */
        private int f19696b;

        /* renamed from: c */
        private int f19697c = -1;

        /* renamed from: a */
        private boolean m3675a(View view, float f) {
            boolean z = true;
            if (f != 0.0f) {
                boolean z2 = C0595u.m20320g(view) == 1;
                if (SwipeDismissBehavior.this.f19687c != 2) {
                    if (SwipeDismissBehavior.this.f19687c == 0) {
                        if (z2) {
                            if (f >= 0.0f) {
                                z = false;
                            }
                        } else if (f <= 0.0f) {
                            z = false;
                        }
                    } else if (SwipeDismissBehavior.this.f19687c != 1) {
                        z = false;
                    } else if (z2) {
                        if (f <= 0.0f) {
                            z = false;
                        }
                    } else if (f >= 0.0f) {
                        z = false;
                    }
                }
            } else {
                if (Math.abs(view.getLeft() - this.f19696b) < Math.round(view.getWidth() * SwipeDismissBehavior.this.f19688d)) {
                    z = false;
                }
            }
            return z;
        }

        @Override // androidx.p029d.p031b.C0644c.AbstractC0647a
        /* renamed from: a */
        public int mo3676a(View view) {
            return view.getWidth();
        }

        @Override // androidx.p029d.p031b.C0644c.AbstractC0647a
        /* renamed from: a */
        public int mo3527a(View view, int i, int i2) {
            int width;
            int width2;
            boolean z = C0595u.m20320g(view) == 1;
            if (SwipeDismissBehavior.this.f19687c == 0) {
                if (z) {
                    width = this.f19696b - view.getWidth();
                    width2 = this.f19696b;
                } else {
                    width = this.f19696b;
                    width2 = this.f19696b + view.getWidth();
                }
            } else if (SwipeDismissBehavior.this.f19687c != 1) {
                width = this.f19696b - view.getWidth();
                width2 = this.f19696b + view.getWidth();
            } else if (z) {
                width = this.f19696b;
                width2 = this.f19696b + view.getWidth();
            } else {
                width = this.f19696b - view.getWidth();
                width2 = this.f19696b;
            }
            return SwipeDismissBehavior.m3681a(width, i, width2);
        }

        @Override // androidx.p029d.p031b.C0644c.AbstractC0647a
        /* renamed from: a */
        public void mo3529a(int i) {
            if (SwipeDismissBehavior.this.f19686b != null) {
                SwipeDismissBehavior.this.f19686b.mo2511a(i);
            }
        }

        @Override // androidx.p029d.p031b.C0644c.AbstractC0647a
        /* renamed from: a */
        public void mo3528a(View view, float f, float f2) {
            int i;
            boolean z;
            this.f19697c = -1;
            int width = view.getWidth();
            if (m3675a(view, f)) {
                i = view.getLeft() < this.f19696b ? this.f19696b - width : this.f19696b + width;
                z = true;
            } else {
                i = this.f19696b;
                z = false;
            }
            if (SwipeDismissBehavior.this.f19685a.m20057a(i, view.getTop())) {
                C0595u.m20341a(view, new RunnableC4536b(view, z));
            } else if (!z || SwipeDismissBehavior.this.f19686b == null) {
            } else {
                SwipeDismissBehavior.this.f19686b.mo2510a(view);
            }
        }

        @Override // androidx.p029d.p031b.C0644c.AbstractC0647a
        /* renamed from: a */
        public void mo3674a(View view, int i) {
            this.f19697c = i;
            this.f19696b = view.getLeft();
            ViewParent parent = view.getParent();
            if (parent != null) {
                parent.requestDisallowInterceptTouchEvent(true);
            }
        }

        @Override // androidx.p029d.p031b.C0644c.AbstractC0647a
        /* renamed from: a */
        public void mo3526a(View view, int i, int i2, int i3, int i4) {
            float width = this.f19696b + (view.getWidth() * SwipeDismissBehavior.this.f19689e);
            float width2 = this.f19696b + (view.getWidth() * SwipeDismissBehavior.this.f19690f);
            if (i <= width) {
                view.setAlpha(1.0f);
            } else if (i >= width2) {
                view.setAlpha(0.0f);
            } else {
                view.setAlpha(SwipeDismissBehavior.m3683a(0.0f, 1.0f - SwipeDismissBehavior.m3677b(width, width2, i), 1.0f));
            }
        }

        @Override // androidx.p029d.p031b.C0644c.AbstractC0647a
        /* renamed from: b */
        public int mo3523b(View view, int i, int i2) {
            return view.getTop();
        }

        @Override // androidx.p029d.p031b.C0644c.AbstractC0647a
        /* renamed from: b */
        public boolean mo3524b(View view, int i) {
            return (this.f19697c == -1 || this.f19697c == i) && SwipeDismissBehavior.this.mo2509a(view);
        }
    };

    /* renamed from: com.google.android.material.behavior.SwipeDismissBehavior$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/behavior/SwipeDismissBehavior$a.class */
    public interface AbstractC4535a {
        /* renamed from: a */
        void mo2511a(int i);

        /* renamed from: a */
        void mo2510a(View view);
    }

    /* renamed from: com.google.android.material.behavior.SwipeDismissBehavior$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/behavior/SwipeDismissBehavior$b.class */
    private class RunnableC4536b implements Runnable {

        /* renamed from: b */
        private final View f19699b;

        /* renamed from: c */
        private final boolean f19700c;

        RunnableC4536b(View view, boolean z) {
            SwipeDismissBehavior.this = r4;
            this.f19699b = view;
            this.f19700c = z;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (SwipeDismissBehavior.this.f19685a != null && SwipeDismissBehavior.this.f19685a.m20047a(true)) {
                C0595u.m20341a(this.f19699b, this);
            } else if (!this.f19700c || SwipeDismissBehavior.this.f19686b == null) {
            } else {
                SwipeDismissBehavior.this.f19686b.mo2510a(this.f19699b);
            }
        }
    }

    /* renamed from: a */
    static float m3683a(float f, float f2, float f3) {
        return Math.min(Math.max(f, f2), f3);
    }

    /* renamed from: a */
    static int m3681a(int i, int i2, int i3) {
        return Math.min(Math.max(i, i2), i3);
    }

    /* renamed from: a */
    private void m3680a(ViewGroup viewGroup) {
        if (this.f19685a == null) {
            this.f19685a = this.f19693i ? C0644c.m20049a(viewGroup, this.f19692h, this.f19694j) : C0644c.m20048a(viewGroup, this.f19694j);
        }
    }

    /* renamed from: b */
    static float m3677b(float f, float f2, float f3) {
        return (f3 - f) / (f2 - f);
    }

    /* renamed from: a */
    public void m3684a(float f) {
        this.f19689e = m3683a(0.0f, f, 1.0f);
    }

    /* renamed from: a */
    public void m3682a(int i) {
        this.f19687c = i;
    }

    /* renamed from: a */
    public void m3679a(AbstractC4535a abstractC4535a) {
        this.f19686b = abstractC4535a;
    }

    /* renamed from: a */
    public boolean mo2509a(View view) {
        return true;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0423b
    /* renamed from: a */
    public boolean mo2508a(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
        boolean z = false;
        boolean z2 = this.f19691g;
        boolean z3 = z2;
        switch (motionEvent.getActionMasked()) {
            case 0:
                this.f19691g = coordinatorLayout.m20987a(v, (int) motionEvent.getX(), (int) motionEvent.getY());
                z3 = this.f19691g;
                break;
            case 1:
            case 3:
                this.f19691g = false;
                z3 = z2;
                break;
            case 2:
                break;
            default:
                z3 = z2;
                break;
        }
        if (z3) {
            m3680a((ViewGroup) coordinatorLayout);
            z = this.f19685a.m20054a(motionEvent);
        }
        return z;
    }

    /* renamed from: b */
    public void m3678b(float f) {
        this.f19690f = m3683a(0.0f, f, 1.0f);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0423b
    /* renamed from: b */
    public boolean mo2188b(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
        boolean z;
        if (this.f19685a != null) {
            this.f19685a.m20040b(motionEvent);
            z = true;
        } else {
            z = false;
        }
        return z;
    }
}
