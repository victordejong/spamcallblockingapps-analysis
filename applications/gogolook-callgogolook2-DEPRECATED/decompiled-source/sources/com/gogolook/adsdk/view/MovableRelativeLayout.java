package com.gogolook.adsdk.view;

import android.animation.Animator;
import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.widget.RelativeLayout;
/* loaded from: classes2-dex2jar.jar:com/gogolook/adsdk/view/MovableRelativeLayout.class */
public class MovableRelativeLayout extends RelativeLayout {

    /* renamed from: a */
    public AbstractC3525e f6095a = null;

    /* renamed from: b */
    public int f6096b = 0;

    /* renamed from: c */
    public int f6097c = 0;

    /* renamed from: d */
    public int f6098d = 0;

    /* renamed from: e */
    public boolean f6099e = false;

    /* renamed from: f */
    public boolean f6100f = false;

    /* renamed from: g */
    public boolean f6101g = false;

    /* renamed from: h */
    public GestureDetector f6102h = null;

    /* renamed from: i */
    public View.OnClickListener f6103i = null;

    /* renamed from: j */
    public Rect f6104j = null;

    /* renamed from: k */
    public View f6105k = null;

    /* renamed from: l */
    public boolean f6106l = false;

    /* renamed from: m */
    public boolean f6107m = false;

    /* renamed from: n */
    public int f6108n = 0;

    /* renamed from: o */
    public float f6109o = 1000.0f;

    /* renamed from: p */
    public boolean f6110p = false;

    /* renamed from: q */
    public Animator.AnimatorListener f6111q = new C3522b();

    /* renamed from: r */
    public AccelerateDecelerateInterpolator f6112r = new C3523c();

    /* renamed from: s */
    public DecelerateInterpolator f6113s = new C3524d();

    /* renamed from: com.gogolook.adsdk.view.MovableRelativeLayout$a */
    /* loaded from: classes2-dex2jar.jar:com/gogolook/adsdk/view/MovableRelativeLayout$a.class */
    public class GestureDetector$OnGestureListenerC3521a implements GestureDetector.OnGestureListener {
        public GestureDetector$OnGestureListenerC3521a() {
        }

        @Override // android.view.GestureDetector.OnGestureListener
        public boolean onDown(MotionEvent motionEvent) {
            MovableRelativeLayout.this.f6108n = 0;
            MovableRelativeLayout.this.f6101g = false;
            MovableRelativeLayout.this.f6100f = false;
            MovableRelativeLayout.this.f6107m = false;
            return true;
        }

        @Override // android.view.GestureDetector.OnGestureListener
        public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
            MovableRelativeLayout.this.m32272a(motionEvent, motionEvent2);
            return true;
        }

        @Override // android.view.GestureDetector.OnGestureListener
        public void onLongPress(MotionEvent motionEvent) {
        }

        @Override // android.view.GestureDetector.OnGestureListener
        public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
            MovableRelativeLayout.this.m32272a(motionEvent, motionEvent2);
            return true;
        }

        @Override // android.view.GestureDetector.OnGestureListener
        public void onShowPress(MotionEvent motionEvent) {
        }

        @Override // android.view.GestureDetector.OnGestureListener
        public boolean onSingleTapUp(MotionEvent motionEvent) {
            MovableRelativeLayout.this.f6107m = true;
            if (MovableRelativeLayout.this.f6104j == null || !MovableRelativeLayout.this.f6104j.contains((int) motionEvent.getX(), (int) motionEvent.getY())) {
                return true;
            }
            if (MovableRelativeLayout.this.f6103i == null) {
                MovableRelativeLayout.this.m32274a();
                return true;
            }
            MovableRelativeLayout.this.f6103i.onClick(MovableRelativeLayout.this);
            return true;
        }
    }

    /* renamed from: com.gogolook.adsdk.view.MovableRelativeLayout$b */
    /* loaded from: classes2-dex2jar.jar:com/gogolook/adsdk/view/MovableRelativeLayout$b.class */
    public class C3522b implements Animator.AnimatorListener {
        public C3522b() {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            float translationY = MovableRelativeLayout.this.getTranslationY();
            if (MovableRelativeLayout.this.f6095a != null) {
                if (translationY == MovableRelativeLayout.this.f6098d) {
                    MovableRelativeLayout.this.f6095a.m32257a(false);
                } else if (translationY == MovableRelativeLayout.this.f6097c) {
                    MovableRelativeLayout.this.f6095a.m32257a(true);
                }
                MovableRelativeLayout.this.f6095a.m32259a((int) translationY, MovableRelativeLayout.this.f6096b);
            }
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
        }
    }

    /* renamed from: com.gogolook.adsdk.view.MovableRelativeLayout$c */
    /* loaded from: classes2-dex2jar.jar:com/gogolook/adsdk/view/MovableRelativeLayout$c.class */
    public class C3523c extends AccelerateDecelerateInterpolator {
        public C3523c() {
        }

        @Override // android.view.animation.AccelerateDecelerateInterpolator, android.animation.TimeInterpolator
        public float getInterpolation(float f) {
            if (MovableRelativeLayout.this.f6095a != null) {
                MovableRelativeLayout.this.f6095a.m32259a((int) MovableRelativeLayout.this.getTranslationY(), MovableRelativeLayout.this.f6096b);
            }
            return super.getInterpolation(f);
        }
    }

    /* renamed from: com.gogolook.adsdk.view.MovableRelativeLayout$d */
    /* loaded from: classes2-dex2jar.jar:com/gogolook/adsdk/view/MovableRelativeLayout$d.class */
    public class C3524d extends DecelerateInterpolator {
        public C3524d() {
        }

        @Override // android.view.animation.DecelerateInterpolator, android.animation.TimeInterpolator
        public float getInterpolation(float f) {
            if (MovableRelativeLayout.this.f6095a != null) {
                MovableRelativeLayout.this.f6095a.m32259a((int) MovableRelativeLayout.this.getTranslationY(), MovableRelativeLayout.this.f6096b);
            }
            return super.getInterpolation(f);
        }
    }

    /* renamed from: com.gogolook.adsdk.view.MovableRelativeLayout$e */
    /* loaded from: classes2-dex2jar.jar:com/gogolook/adsdk/view/MovableRelativeLayout$e.class */
    public interface AbstractC3525e {
        /* renamed from: a */
        void m32259a(int i, int i2);

        /* renamed from: a */
        void m32257a(boolean z);

        /* renamed from: a */
        int[] m32258a(View view);
    }

    public MovableRelativeLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m32273a(context);
    }

    /* renamed from: a */
    public void m32274a() {
        m32267a(!this.f6099e, true);
    }

    /* renamed from: a */
    public final void m32273a(Context context) {
        this.f6102h = new GestureDetector(context, new GestureDetector$OnGestureListenerC3521a());
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0068, code lost:
        if (r0 <= r5.f6097c) goto L_0x006b;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m32272a(android.view.MotionEvent r6, android.view.MotionEvent r7) {
        /*
            r5 = this;
            r0 = r7
            float r0 = r0.getRawY()
            double r0 = (double) r0
            double r0 = java.lang.Math.floor(r0)
            int r0 = (int) r0
            r1 = r6
            float r1 = r1.getRawY()
            double r1 = (double) r1
            double r1 = java.lang.Math.floor(r1)
            int r1 = (int) r1
            int r0 = r0 - r1
            float r0 = (float) r0
            r1 = 1065353216(0x3f800000, float:1.0)
            float r0 = r0 * r1
            int r0 = (int) r0
            r8 = r0
            r0 = r5
            int r0 = r0.f6108n
            r9 = r0
            r0 = r8
            r1 = r9
            if (r0 == r1) goto L_0x009e
            r0 = r8
            r1 = r9
            int r0 = r0 - r1
            r10 = r0
            r0 = r10
            if (r0 <= 0) goto L_0x003c
            r0 = r5
            r1 = 1
            r0.f6101g = r1
            r0 = r5
            r1 = 0
            r0.f6100f = r1
            goto L_0x004b
        L_0x003c:
            r0 = r10
            if (r0 >= 0) goto L_0x004b
            r0 = r5
            r1 = 0
            r0.f6101g = r1
            r0 = r5
            r1 = 1
            r0.f6100f = r1
        L_0x004b:
            r0 = r5
            float r0 = r0.getTranslationY()
            r11 = r0
            r0 = r11
            r1 = r5
            int r1 = r1.f6098d
            float r1 = (float) r1
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x006b
            r0 = r10
            r9 = r0
            r0 = r11
            r1 = r5
            int r1 = r1.f6097c
            float r1 = (float) r1
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 > 0) goto L_0x0075
        L_0x006b:
            r0 = r10
            double r0 = (double) r0
            r1 = 4599075939470750515(0x3fd3333333333333, double:0.3)
            double r0 = r0 * r1
            int r0 = (int) r0
            r9 = r0
        L_0x0075:
            r0 = r11
            r1 = r9
            float r1 = (float) r1
            float r0 = r0 + r1
            r11 = r0
            r0 = r5
            r1 = r11
            r0.setTranslationY(r1)
            r0 = r5
            com.gogolook.adsdk.view.MovableRelativeLayout$e r0 = r0.f6095a
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L_0x0099
            r0 = r6
            r1 = r11
            int r1 = (int) r1
            r2 = r5
            int r2 = r2.f6096b
            r0.m32259a(r1, r2)
        L_0x0099:
            r0 = r5
            r1 = r8
            r0.f6108n = r1
        L_0x009e:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.gogolook.adsdk.view.MovableRelativeLayout.m32272a(android.view.MotionEvent, android.view.MotionEvent):void");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v46, types: [long] */
    /* JADX WARN: Type inference failed for: r0v91, types: [long] */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r10v4 */
    /* JADX WARN: Type inference failed for: r10v5 */
    /* JADX WARN: Type inference failed for: r10v6 */
    /* JADX WARN: Type inference failed for: r10v7 */
    /* JADX WARN: Type inference failed for: r10v8 */
    /* JADX WARN: Type inference failed for: r10v9 */
    /* JADX WARN: Unknown variable types count: 2 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m32267a(boolean r6, boolean r7) {
        /*
            Method dump skipped, instructions count: 449
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.gogolook.adsdk.view.MovableRelativeLayout.m32267a(boolean, boolean):void");
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (!this.f6110p) {
            return false;
        }
        if (motionEvent.getAction() == 0) {
            animate().cancel();
            Rect rect = this.f6104j;
            if (rect == null || !rect.contains((int) motionEvent.getX(), (int) motionEvent.getY())) {
                this.f6102h.onTouchEvent(motionEvent);
            } else {
                this.f6102h.onTouchEvent(motionEvent);
                this.f6106l = true;
                return true;
            }
        } else {
            this.f6102h.onTouchEvent(motionEvent);
            if (motionEvent.getAction() == 1) {
                this.f6106l = false;
                if (!this.f6107m) {
                    if (this.f6100f) {
                        m32267a(true, true);
                    } else if (this.f6101g) {
                        m32267a(false, true);
                    }
                    this.f6100f = false;
                    this.f6101g = false;
                    return true;
                }
            }
            if (this.f6106l) {
                return true;
            }
        }
        super.dispatchTouchEvent(motionEvent);
        return true;
    }

    @Override // android.widget.RelativeLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (z) {
            this.f6109o = (getHeight() / 300) * 1000;
            if (this.f6109o <= 0.0f) {
                this.f6109o = 1000.0f;
            }
            AbstractC3525e eVar = this.f6095a;
            if (eVar != null) {
                int[] a = eVar.m32258a(this);
                if (a != null && a.length == 2) {
                    this.f6097c = a[0];
                    this.f6098d = a[1];
                }
            } else {
                this.f6097c = 0;
                this.f6098d = (int) (getHeight() * 0.6f);
            }
            this.f6096b = this.f6098d - this.f6097c;
            m32267a(false, false);
        }
        if (this.f6105k != null) {
            Rect rect = new Rect();
            Rect rect2 = new Rect();
            getGlobalVisibleRect(rect);
            this.f6105k.getGlobalVisibleRect(rect2);
            int abs = Math.abs(rect2.left - rect.left);
            int abs2 = Math.abs(rect2.top - rect.top);
            this.f6104j = new Rect();
            this.f6104j.set(abs, abs2, this.f6105k.getWidth() + abs, this.f6105k.getHeight() + abs2);
        }
    }
}
