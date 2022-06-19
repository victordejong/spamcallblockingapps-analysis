package com.truecaller.callrecording.p154ui.bubble;

import android.animation.AnimatorInflater;
import android.animation.AnimatorSet;
import android.content.Context;
import android.graphics.Point;
import android.os.Handler;
import android.os.Looper;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowManager;
import com.truecaller.callrecording.C3624R;
import com.truecaller.callrecording.p154ui.bubble.BubbleLayout;
import java.util.Objects;
import p193e.p194a.p982k0.p989n.p991b.C16370f;
import p193e.p194a.p982k0.p989n.p991b.C16372h;
import p193e.p194a.p982k0.p989n.p991b.RunnableC16369e;
/* renamed from: com.truecaller.callrecording.ui.bubble.BubbleLayout */
/* loaded from: classes7-dex2jar.jar:com/truecaller/callrecording/ui/bubble/BubbleLayout.class */
public class BubbleLayout extends C16370f {

    /* renamed from: q */
    public static final /* synthetic */ int f10781q = 0;

    /* renamed from: d */
    public float f10782d;

    /* renamed from: e */
    public float f10783e;

    /* renamed from: f */
    public int f10784f;

    /* renamed from: g */
    public int f10785g;

    /* renamed from: h */
    public AbstractC3635e f10786h;

    /* renamed from: i */
    public AbstractC3633c f10787i;

    /* renamed from: j */
    public long f10788j;

    /* renamed from: l */
    public int f10790l;

    /* renamed from: m */
    public final WindowManager f10791m;

    /* renamed from: o */
    public AbstractC3634d f10793o;

    /* renamed from: n */
    public boolean f10792n = true;

    /* renamed from: p */
    public boolean f10794p = false;

    /* renamed from: k */
    public final RunnableC3632b f10789k = new RunnableC3632b(null);

    /* renamed from: com.truecaller.callrecording.ui.bubble.BubbleLayout$b */
    /* loaded from: classes7-dex2jar.jar:com/truecaller/callrecording/ui/bubble/BubbleLayout$b.class */
    public class RunnableC3632b implements Runnable {

        /* renamed from: a */
        public final Handler f10795a = new Handler(Looper.getMainLooper());

        /* renamed from: b */
        public float f10796b;

        /* renamed from: c */
        public float f10797c;

        /* renamed from: d */
        public long f10798d;

        public RunnableC3632b(C3631a c3631a) {
            BubbleLayout.this = r6;
        }

        @Override // java.lang.Runnable
        public void run() {
            WindowManager.LayoutParams viewParams;
            WindowManager.LayoutParams viewParams2;
            if (BubbleLayout.this.getRootView() == null || BubbleLayout.this.getRootView().getParent() == null) {
                return;
            }
            float min = Math.min(1.0f, ((float) (System.currentTimeMillis() - this.f10798d)) / 400.0f);
            float f = this.f10796b;
            float f2 = BubbleLayout.this.getViewParams().x;
            float f3 = this.f10797c;
            float f4 = BubbleLayout.this.getViewParams().y;
            BubbleLayout bubbleLayout = BubbleLayout.this;
            int i = BubbleLayout.f10781q;
            bubbleLayout.getViewParams().x = (int) (viewParams.x + ((f - f2) * min));
            bubbleLayout.getViewParams().y = (int) (viewParams2.y + ((f3 - f4) * min));
            bubbleLayout.f10791m.updateViewLayout(bubbleLayout, bubbleLayout.getViewParams());
            if (min >= 1.0f) {
                return;
            }
            this.f10795a.post(this);
        }
    }

    /* renamed from: com.truecaller.callrecording.ui.bubble.BubbleLayout$c */
    /* loaded from: classes7-dex2jar.jar:com/truecaller/callrecording/ui/bubble/BubbleLayout$c.class */
    public interface AbstractC3633c {
        /* renamed from: B1 */
        boolean mo17494B1();

        /* renamed from: C1 */
        void mo17493C1(BubbleLayout bubbleLayout);
    }

    /* renamed from: com.truecaller.callrecording.ui.bubble.BubbleLayout$d */
    /* loaded from: classes7-dex2jar.jar:com/truecaller/callrecording/ui/bubble/BubbleLayout$d.class */
    public interface AbstractC3634d {
        /* renamed from: a */
        void mo17477a(BubbleLayout bubbleLayout);
    }

    /* renamed from: com.truecaller.callrecording.ui.bubble.BubbleLayout$e */
    /* loaded from: classes7-dex2jar.jar:com/truecaller/callrecording/ui/bubble/BubbleLayout$e.class */
    public interface AbstractC3635e {
        /* renamed from: a */
        void mo17478a(BubbleLayout bubbleLayout);
    }

    public BubbleLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f10791m = (WindowManager) context.getSystemService("window");
        setClickable(true);
        setLongClickable(true);
        setOnLongClickListener(new View.OnLongClickListener() { // from class: e.a.k0.n.b.a
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                BubbleLayout bubbleLayout = BubbleLayout.this;
                C16372h layoutCoordinator = bubbleLayout.getLayoutCoordinator();
                if (layoutCoordinator != null) {
                    layoutCoordinator.m17498b(bubbleLayout);
                    return true;
                }
                return true;
            }
        });
    }

    private Point getDisplaySize() {
        this.f10791m.getDefaultDisplay().getMetrics(new DisplayMetrics());
        Display defaultDisplay = getWindowManager().getDefaultDisplay();
        Point point = new Point();
        defaultDisplay.getSize(point);
        return point;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (!isInEditMode()) {
            AnimatorSet animatorSet = (AnimatorSet) AnimatorInflater.loadAnimator(getContext(), C3624R.animator.bubble_shown_animator);
            animatorSet.setTarget(this);
            animatorSet.start();
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        AbstractC3633c abstractC3633c;
        if (motionEvent != null) {
            int action = motionEvent.getAction();
            if (action == 0) {
                this.f10784f = getViewParams().x;
                this.f10785g = getViewParams().y;
                this.f10782d = motionEvent.getRawX();
                this.f10783e = motionEvent.getRawY();
                if (this.f10787i.mo17494B1()) {
                    this.f10794p = true;
                    if (!isInEditMode()) {
                        AnimatorSet animatorSet = (AnimatorSet) AnimatorInflater.loadAnimator(getContext(), C3624R.animator.bubble_down_click_animator);
                        animatorSet.setTarget(this);
                        animatorSet.start();
                    }
                }
                this.f10788j = System.currentTimeMillis();
                this.f10790l = getDisplaySize().x - getWidth();
                RunnableC3632b runnableC3632b = this.f10789k;
                runnableC3632b.f10795a.removeCallbacks(runnableC3632b);
            } else if (action == 1) {
                if (this.f10792n) {
                    float f = getViewParams().x >= this.f10790l / 2 ? this.f10790l : 0.0f;
                    RunnableC3632b runnableC3632b2 = this.f10789k;
                    runnableC3632b2.f10796b = f;
                    runnableC3632b2.f10797c = getViewParams().y;
                    runnableC3632b2.f10798d = System.currentTimeMillis();
                    runnableC3632b2.f10795a.post(runnableC3632b2);
                }
                if (getLayoutCoordinator() != null) {
                    C16372h layoutCoordinator = getLayoutCoordinator();
                    if (layoutCoordinator.f46045a != null) {
                        if (layoutCoordinator.m17499a(this)) {
                            BubblesService bubblesService = layoutCoordinator.f46047c;
                            Objects.requireNonNull(bubblesService);
                            bubblesService.f10802c.post(new RunnableC16369e(bubblesService, this));
                        }
                        layoutCoordinator.f46045a.setVisibility(8);
                    }
                    if (this.f10794p && !isInEditMode()) {
                        AnimatorSet animatorSet2 = (AnimatorSet) AnimatorInflater.loadAnimator(getContext(), C3624R.animator.bubble_up_click_animator);
                        animatorSet2.setTarget(this);
                        animatorSet2.start();
                    }
                }
                if (System.currentTimeMillis() - this.f10788j < 150 && (abstractC3633c = this.f10787i) != null && abstractC3633c.mo17494B1()) {
                    this.f10787i.mo17493C1(this);
                }
                this.f10794p = false;
            } else if (action == 2) {
                int i = this.f10784f;
                int rawX = (int) (motionEvent.getRawX() - this.f10782d);
                int i2 = this.f10785g;
                int rawY = (int) (motionEvent.getRawY() - this.f10783e);
                Point displaySize = getDisplaySize();
                getViewParams().x = Math.min(Math.max(i + rawX, 0), displaySize.x - getWidth());
                getViewParams().y = Math.min(Math.max(i2 + rawY, 0), displaySize.y - getHeight());
                getWindowManager().updateViewLayout(this, getViewParams());
                if (getLayoutCoordinator() != null) {
                    getLayoutCoordinator().m17498b(this);
                }
                AbstractC3634d abstractC3634d = this.f10793o;
                if (abstractC3634d != null) {
                    abstractC3634d.mo17477a(this);
                }
            }
        }
        return super.onTouchEvent(motionEvent);
    }

    public void setOnBubbleClickListener(AbstractC3633c abstractC3633c) {
        this.f10787i = abstractC3633c;
    }

    public void setOnBubbleMovedListener(AbstractC3634d abstractC3634d) {
        this.f10793o = abstractC3634d;
    }

    public void setOnBubbleRemoveListener(AbstractC3635e abstractC3635e) {
        this.f10786h = abstractC3635e;
    }

    public void setShouldStickToWall(boolean z) {
        this.f10792n = z;
    }
}
