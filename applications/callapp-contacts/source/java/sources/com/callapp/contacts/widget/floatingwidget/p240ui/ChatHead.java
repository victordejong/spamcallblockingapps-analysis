package com.callapp.contacts.widget.floatingwidget.p240ui;

import android.content.Context;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.RelativeLayout;
import com.callapp.contacts.widget.floatingwidget.ChatHeadUtils;
import com.facebook.rebound.AbstractC10420i;
import com.facebook.rebound.C10413d;
import com.facebook.rebound.C10414e;
import com.facebook.rebound.C10422k;
import java.io.Serializable;
/* renamed from: com.callapp.contacts.widget.floatingwidget.ui.ChatHead */
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/floatingwidget/ui/ChatHead.class */
public class ChatHead<T extends Serializable> extends RelativeLayout implements AbstractC10420i {

    /* renamed from: a */
    final int f29046a;

    /* renamed from: b */
    public ChatHeadManager f29047b;

    /* renamed from: c */
    protected float f29048c;

    /* renamed from: d */
    protected float f29049d;

    /* renamed from: e */
    public C10414e f29050e;

    /* renamed from: f */
    private final int f29051f;

    /* renamed from: g */
    private final float f29052g;

    /* renamed from: h */
    private C10422k f29053h;

    /* renamed from: i */
    private boolean f29054i;

    /* renamed from: j */
    private State f29055j;

    /* renamed from: k */
    private T f29056k;

    /* renamed from: l */
    private float f29057l;

    /* renamed from: m */
    private float f29058m;

    /* renamed from: n */
    private VelocityTracker f29059n;

    /* renamed from: o */
    private boolean f29060o;

    /* renamed from: p */
    private C10414e f29061p;

    /* renamed from: q */
    private C10414e f29062q;

    /* renamed from: r */
    private Bundle f29063r;

    /* renamed from: s */
    private boolean f29064s;

    /* renamed from: com.callapp.contacts.widget.floatingwidget.ui.ChatHead$State */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/floatingwidget/ui/ChatHead$State.class */
    public enum State {
        FREE,
        CAPTURED_LEFT,
        CAPTURED_RIGHT
    }

    public ChatHead(Context context) {
        super(context);
        this.f29046a = ChatHeadUtils.m26543a(getContext(), 120);
        this.f29051f = ViewConfiguration.get(getContext()).getScaledTouchSlop();
        this.f29052g = ChatHeadUtils.m26543a(getContext(), 10);
        this.f29054i = false;
        this.f29057l = -1.0f;
        this.f29058m = -1.0f;
        throw new IllegalArgumentException("This constructor cannot be used");
    }

    public ChatHead(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f29046a = ChatHeadUtils.m26543a(getContext(), 120);
        this.f29051f = ViewConfiguration.get(getContext()).getScaledTouchSlop();
        this.f29052g = ChatHeadUtils.m26543a(getContext(), 10);
        this.f29054i = false;
        this.f29057l = -1.0f;
        this.f29058m = -1.0f;
        throw new IllegalArgumentException("This constructor cannot be used");
    }

    public ChatHead(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f29046a = ChatHeadUtils.m26543a(getContext(), 120);
        this.f29051f = ViewConfiguration.get(getContext()).getScaledTouchSlop();
        this.f29052g = ChatHeadUtils.m26543a(getContext(), 10);
        this.f29054i = false;
        this.f29057l = -1.0f;
        this.f29058m = -1.0f;
        throw new IllegalArgumentException("This constructor cannot be used");
    }

    public ChatHead(ChatHeadManager chatHeadManager, C10422k c10422k, Context context, boolean z) {
        super(context);
        this.f29046a = ChatHeadUtils.m26543a(getContext(), 120);
        this.f29051f = ViewConfiguration.get(getContext()).getScaledTouchSlop();
        this.f29052g = ChatHeadUtils.m26543a(getContext(), 10);
        this.f29054i = false;
        this.f29057l = -1.0f;
        this.f29058m = -1.0f;
        this.f29047b = chatHeadManager;
        this.f29053h = c10422k;
        this.f29054i = z;
        C10413d c10413d = new C10413d() { // from class: com.callapp.contacts.widget.floatingwidget.ui.ChatHead.1
            @Override // com.facebook.rebound.C10413d, com.facebook.rebound.AbstractC10420i
            /* renamed from: a */
            public final void mo22809a(C10414e c10414e) {
                super.mo22809a(c10414e);
                ChatHead.this.f29047b.getChatHeadContainer().mo26395a(ChatHead.this, (int) c10414e.f34074d.f34085a);
            }
        };
        C10414e a = this.f29053h.m22856a();
        this.f29050e = a;
        a.m22842a(c10413d);
        this.f29050e.m22842a(this);
        C10413d c10413d2 = new C10413d() { // from class: com.callapp.contacts.widget.floatingwidget.ui.ChatHead.2
            @Override // com.facebook.rebound.C10413d, com.facebook.rebound.AbstractC10420i
            /* renamed from: a */
            public final void mo22809a(C10414e c10414e) {
                super.mo22809a(c10414e);
                ChatHead.this.f29047b.getChatHeadContainer().mo26389b(ChatHead.this, (int) c10414e.f34074d.f34085a);
            }
        };
        C10414e a2 = this.f29053h.m22856a();
        this.f29062q = a2;
        a2.m22842a(c10413d2);
        this.f29062q.m22842a(this);
        C10414e a3 = this.f29053h.m22856a();
        this.f29061p = a3;
        a3.m22842a(new C10413d() { // from class: com.callapp.contacts.widget.floatingwidget.ui.ChatHead.3
            @Override // com.facebook.rebound.C10413d, com.facebook.rebound.AbstractC10420i
            /* renamed from: a */
            public final void mo22809a(C10414e c10414e) {
                super.mo22809a(c10414e);
                float f = (float) c10414e.f34074d.f34085a;
                ChatHead.this.setScaleX(f);
                ChatHead.this.setScaleY(f);
            }
        });
        this.f29061p.m22846a(1.0d).m22838c();
        this.f29055j = State.FREE;
    }

    /* renamed from: a */
    protected void mo26466a() {
    }

    @Override // com.facebook.rebound.AbstractC10420i
    /* renamed from: a */
    public void mo22809a(C10414e c10414e) {
        C10414e c10414e2;
        C10414e c10414e3 = this.f29050e;
        if (c10414e3 == null || (c10414e2 = this.f29062q) == null) {
            return;
        }
        if (c10414e != c10414e3 && c10414e != c10414e2) {
            return;
        }
        int hypot = (int) Math.hypot(c10414e3.f34074d.f34086b, c10414e2.f34074d.f34086b);
        if (this.f29047b.getActiveArrangement() == null) {
            return;
        }
        this.f29047b.getActiveArrangement().mo26510a(this, this.f29060o, this.f29047b.getMaxWidth(), this.f29047b.getMaxHeight(), c10414e, c10414e3, c10414e2, hypot);
    }

    /* renamed from: a */
    public void mo26461a(C10414e c10414e, C10414e c10414e2) {
        this.f29048c = (float) c10414e.f34074d.f34085a;
        this.f29049d = (float) c10414e2.f34074d.f34085a;
        c10414e.m22838c();
        c10414e2.m22838c();
    }

    /* renamed from: a */
    public void mo26473a(C10414e c10414e, C10414e c10414e2, float f, float f2) {
        c10414e.m22845a(this.f29048c + f, true);
        c10414e2.m22845a(this.f29049d + f2, true);
    }

    /* renamed from: b */
    public void mo26460b() {
        this.f29050e.m22838c();
        this.f29050e.m22836d();
        this.f29050e.m22847a();
        this.f29050e = null;
        this.f29062q.m22838c();
        this.f29062q.m22836d();
        this.f29062q.m22847a();
        this.f29062q = null;
        m26529d();
    }

    @Override // com.facebook.rebound.AbstractC10420i
    /* renamed from: b */
    public void mo22808b(C10414e c10414e) {
        this.f29047b.mo26427a(getHorizontalSpring().f34074d.f34085a, getVerticalSpring().f34074d.f34085a);
    }

    /* renamed from: c */
    public void mo26456c() {
    }

    @Override // com.facebook.rebound.AbstractC10420i
    /* renamed from: c */
    public final void mo22807c(C10414e c10414e) {
    }

    /* renamed from: d */
    public final void m26529d() {
        C10414e c10414e = this.f29061p;
        if (c10414e != null) {
            c10414e.m22838c();
            this.f29061p.m22836d();
            this.f29061p.m22847a();
            this.f29061p = null;
        }
    }

    @Override // com.facebook.rebound.AbstractC10420i
    /* renamed from: d */
    public final void mo22806d(C10414e c10414e) {
    }

    public C10414e getHorizontalSpring() {
        return this.f29050e;
    }

    public T getKey() {
        return this.f29056k;
    }

    public State getState() {
        return this.f29055j;
    }

    public C10414e getVerticalSpring() {
        return this.f29062q;
    }

    public boolean isDragging() {
        return this.f29060o;
    }

    public boolean isHero() {
        return this.f29064s;
    }

    public boolean isSticky() {
        return this.f29054i;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        C10414e c10414e;
        super.onTouchEvent(motionEvent);
        C10414e c10414e2 = this.f29050e;
        if (c10414e2 == null || (c10414e = this.f29062q) == null) {
            return false;
        }
        int action = motionEvent.getAction();
        float rawX = motionEvent.getRawX();
        float rawY = motionEvent.getRawY();
        float f = rawX - this.f29057l;
        float f2 = rawY - this.f29058m;
        boolean mo26505b = this.f29047b.getActiveArrangement().mo26505b();
        motionEvent.offsetLocation(this.f29047b.getChatHeadContainer().mo26401a(this), this.f29047b.getChatHeadContainer().mo26399b(this));
        if (action == 0) {
            VelocityTracker velocityTracker = this.f29059n;
            if (velocityTracker == null) {
                this.f29059n = VelocityTracker.obtain();
            } else {
                velocityTracker.clear();
            }
            c10414e2.m22843a(SpringConfigsHolder.f29139a);
            c10414e.m22843a(SpringConfigsHolder.f29139a);
            setState(State.FREE);
            this.f29057l = rawX;
            this.f29058m = rawY;
            C10414e c10414e3 = this.f29061p;
            if (c10414e3 != null) {
                c10414e3.m22840b(0.8999999761581421d);
            }
            this.f29059n.addMovement(motionEvent);
            mo26461a(c10414e2, c10414e);
            return true;
        } else if (action != 2) {
            if (action != 1 && action != 3) {
                return true;
            }
            boolean z = this.f29060o;
            this.f29060o = false;
            if (z) {
                mo26466a();
                this.f29047b.mo26404h();
            }
            c10414e2.m22843a(SpringConfigsHolder.f29141c);
            c10414e.m22843a(SpringConfigsHolder.f29141c);
            C10414e c10414e4 = this.f29061p;
            if (c10414e4 != null) {
                c10414e4.m22840b(1.0d);
            }
            int xVelocity = (int) this.f29059n.getXVelocity();
            int yVelocity = (int) this.f29059n.getYVelocity();
            this.f29059n.recycle();
            this.f29059n = null;
            if (this.f29050e == null || this.f29062q == null) {
                return true;
            }
            this.f29047b.getActiveArrangement().mo26512a(this, xVelocity, yVelocity, z);
            return true;
        } else {
            if (Math.hypot(f, f2) > this.f29051f) {
                this.f29060o = true;
                if (mo26505b) {
                    this.f29047b.getLeftCloseButton().m26528a();
                    this.f29047b.getRightCloseButton().m26528a();
                }
            }
            this.f29059n.addMovement(motionEvent);
            if (!this.f29060o) {
                return true;
            }
            this.f29047b.getLeftCloseButton().m26526a(rawX, rawY);
            this.f29047b.getRightCloseButton().m26526a(rawX, rawY);
            this.f29047b.getActiveArrangement();
            double mo26415b = this.f29047b.mo26415b(rawX, rawY);
            double mo26426a = this.f29047b.mo26426a(rawX, rawY);
            int i = this.f29046a;
            if (mo26426a < i && mo26505b) {
                setState(State.CAPTURED_LEFT);
                c10414e2.m22843a(SpringConfigsHolder.f29139a);
                c10414e.m22843a(SpringConfigsHolder.f29139a);
                int[] mo26410c = this.f29047b.mo26410c(this);
                c10414e2.m22840b(mo26410c[0]);
                c10414e.m22840b(mo26410c[1]);
                this.f29047b.getLeftCloseButton().m26523b();
            } else if (mo26415b >= i || !mo26505b) {
                this.f29047b.mo26405g();
                setState(State.FREE);
                c10414e2.m22843a(SpringConfigsHolder.f29141c);
                c10414e.m22843a(SpringConfigsHolder.f29141c);
                mo26473a(c10414e2, c10414e, f, f2);
                this.f29047b.getLeftCloseButton().m26521d();
                this.f29047b.getRightCloseButton().m26521d();
            } else {
                setState(State.CAPTURED_RIGHT);
                c10414e2.m22843a(SpringConfigsHolder.f29139a);
                c10414e.m22843a(SpringConfigsHolder.f29139a);
                int[] mo26408d = this.f29047b.mo26408d(this);
                c10414e2.m22840b(mo26408d[0]);
                c10414e.m22840b(mo26408d[1]);
                this.f29047b.getRightCloseButton().m26523b();
            }
            this.f29059n.computeCurrentVelocity(1000);
            return true;
        }
    }

    public void setChatHeadToDefaultPosition(boolean z) {
        if (getVerticalSpring() != null) {
            getVerticalSpring().m22845a(-this.f29047b.getConfig().getHeadHeight(), true);
        }
        if (getHorizontalSpring() != null) {
            getHorizontalSpring().m22845a(-this.f29047b.getConfig().getHeadWidth(), true);
        }
    }

    public void setChatHeadView(View view) {
        removeAllViews();
        addView(view);
    }

    public void setExtras(Bundle bundle) {
        this.f29063r = bundle;
    }

    public void setHero(boolean z) {
        this.f29064s = z;
    }

    public void setKey(T t) {
        this.f29056k = t;
    }

    public void setState(State state) {
        this.f29055j = state;
    }
}
