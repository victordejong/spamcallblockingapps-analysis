package com.callapp.contacts.widget.floatingwidget.ui;

import android.content.Context;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.RelativeLayout;
import com.callapp.contacts.widget.floatingwidget.ChatHeadUtils;
import com.facebook.rebound.d;
import com.facebook.rebound.e;
import com.facebook.rebound.i;
import com.facebook.rebound.k;
import java.io.Serializable;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/floatingwidget/ui/ChatHead.class */
public class ChatHead<T extends Serializable> extends RelativeLayout implements i {

    /* renamed from: a  reason: collision with root package name */
    final int f16695a;

    /* renamed from: b  reason: collision with root package name */
    public ChatHeadManager f16696b;

    /* renamed from: c  reason: collision with root package name */
    protected float f16697c;

    /* renamed from: d  reason: collision with root package name */
    protected float f16698d;
    public e e;
    private final int f;
    private final float g;
    private k h;
    private boolean i;
    private State j;
    private T k;
    private float l;
    private float m;
    private VelocityTracker n;
    private boolean o;
    private e p;
    private e q;
    private Bundle r;
    private boolean s;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/floatingwidget/ui/ChatHead$State.class */
    public enum State {
        FREE,
        CAPTURED_LEFT,
        CAPTURED_RIGHT
    }

    public ChatHead(Context context) {
        super(context);
        this.f16695a = ChatHeadUtils.a(getContext(), 120);
        this.f = ViewConfiguration.get(getContext()).getScaledTouchSlop();
        this.g = ChatHeadUtils.a(getContext(), 10);
        this.i = false;
        this.l = -1.0f;
        this.m = -1.0f;
        throw new IllegalArgumentException("This constructor cannot be used");
    }

    public ChatHead(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f16695a = ChatHeadUtils.a(getContext(), 120);
        this.f = ViewConfiguration.get(getContext()).getScaledTouchSlop();
        this.g = ChatHeadUtils.a(getContext(), 10);
        this.i = false;
        this.l = -1.0f;
        this.m = -1.0f;
        throw new IllegalArgumentException("This constructor cannot be used");
    }

    public ChatHead(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f16695a = ChatHeadUtils.a(getContext(), 120);
        this.f = ViewConfiguration.get(getContext()).getScaledTouchSlop();
        this.g = ChatHeadUtils.a(getContext(), 10);
        this.i = false;
        this.l = -1.0f;
        this.m = -1.0f;
        throw new IllegalArgumentException("This constructor cannot be used");
    }

    public ChatHead(ChatHeadManager chatHeadManager, k kVar, Context context, boolean z) {
        super(context);
        this.f16695a = ChatHeadUtils.a(getContext(), 120);
        this.f = ViewConfiguration.get(getContext()).getScaledTouchSlop();
        this.g = ChatHeadUtils.a(getContext(), 10);
        this.i = false;
        this.l = -1.0f;
        this.m = -1.0f;
        this.f16696b = chatHeadManager;
        this.h = kVar;
        this.i = z;
        d dVar = new d() { // from class: com.callapp.contacts.widget.floatingwidget.ui.ChatHead.1
            @Override // com.facebook.rebound.d, com.facebook.rebound.i
            public final void a(e eVar) {
                super.a(eVar);
                ChatHead.this.f16696b.getChatHeadContainer().a(ChatHead.this, (int) eVar.f20128d.f20129a);
            }
        };
        e a2 = this.h.a();
        this.e = a2;
        a2.a(dVar);
        this.e.a(this);
        d dVar2 = new d() { // from class: com.callapp.contacts.widget.floatingwidget.ui.ChatHead.2
            @Override // com.facebook.rebound.d, com.facebook.rebound.i
            public final void a(e eVar) {
                super.a(eVar);
                ChatHead.this.f16696b.getChatHeadContainer().b(ChatHead.this, (int) eVar.f20128d.f20129a);
            }
        };
        e a3 = this.h.a();
        this.q = a3;
        a3.a(dVar2);
        this.q.a(this);
        e a4 = this.h.a();
        this.p = a4;
        a4.a(new d() { // from class: com.callapp.contacts.widget.floatingwidget.ui.ChatHead.3
            @Override // com.facebook.rebound.d, com.facebook.rebound.i
            public final void a(e eVar) {
                super.a(eVar);
                float f = (float) eVar.f20128d.f20129a;
                ChatHead.this.setScaleX(f);
                ChatHead.this.setScaleY(f);
            }
        });
        this.p.a(1.0d).c();
        this.j = State.FREE;
    }

    protected void a() {
    }

    @Override // com.facebook.rebound.i
    public void a(e eVar) {
        e eVar2;
        e eVar3 = this.e;
        if (eVar3 != null && (eVar2 = this.q) != null) {
            if (eVar == eVar3 || eVar == eVar2) {
                int hypot = (int) Math.hypot(eVar3.f20128d.f20130b, eVar2.f20128d.f20130b);
                if (this.f16696b.getActiveArrangement() != null) {
                    this.f16696b.getActiveArrangement().a(this, this.o, this.f16696b.getMaxWidth(), this.f16696b.getMaxHeight(), eVar, eVar3, eVar2, hypot);
                }
            }
        }
    }

    public void a(e eVar, e eVar2) {
        this.f16697c = (float) eVar.f20128d.f20129a;
        this.f16698d = (float) eVar2.f20128d.f20129a;
        eVar.c();
        eVar2.c();
    }

    public void a(e eVar, e eVar2, float f, float f2) {
        eVar.a(this.f16697c + f, true);
        eVar2.a(this.f16698d + f2, true);
    }

    public void b() {
        this.e.c();
        this.e.d();
        this.e.a();
        this.e = null;
        this.q.c();
        this.q.d();
        this.q.a();
        this.q = null;
        d();
    }

    @Override // com.facebook.rebound.i
    public void b(e eVar) {
        this.f16696b.a(getHorizontalSpring().f20128d.f20129a, getVerticalSpring().f20128d.f20129a);
    }

    public void c() {
    }

    @Override // com.facebook.rebound.i
    public final void c(e eVar) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void d() {
        e eVar = this.p;
        if (eVar != null) {
            eVar.c();
            this.p.d();
            this.p.a();
            this.p = null;
        }
    }

    @Override // com.facebook.rebound.i
    public final void d(e eVar) {
    }

    public e getHorizontalSpring() {
        return this.e;
    }

    public T getKey() {
        return this.k;
    }

    public State getState() {
        return this.j;
    }

    public e getVerticalSpring() {
        return this.q;
    }

    public boolean isDragging() {
        return this.o;
    }

    public boolean isHero() {
        return this.s;
    }

    public boolean isSticky() {
        return this.i;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        e eVar;
        super.onTouchEvent(motionEvent);
        e eVar2 = this.e;
        if (eVar2 == null || (eVar = this.q) == null) {
            return false;
        }
        int action = motionEvent.getAction();
        float rawX = motionEvent.getRawX();
        float rawY = motionEvent.getRawY();
        float f = rawX - this.l;
        float f2 = rawY - this.m;
        boolean b2 = this.f16696b.getActiveArrangement().b();
        motionEvent.offsetLocation(this.f16696b.getChatHeadContainer().a(this), this.f16696b.getChatHeadContainer().b(this));
        if (action == 0) {
            VelocityTracker velocityTracker = this.n;
            if (velocityTracker == null) {
                this.n = VelocityTracker.obtain();
            } else {
                velocityTracker.clear();
            }
            eVar2.a(SpringConfigsHolder.f16736a);
            eVar.a(SpringConfigsHolder.f16736a);
            setState(State.FREE);
            this.l = rawX;
            this.m = rawY;
            e eVar3 = this.p;
            if (eVar3 != null) {
                eVar3.b(0.8999999761581421d);
            }
            this.n.addMovement(motionEvent);
            a(eVar2, eVar);
            return true;
        } else if (action == 2) {
            if (Math.hypot(f, f2) > this.f) {
                this.o = true;
                if (b2) {
                    this.f16696b.getLeftCloseButton().a();
                    this.f16696b.getRightCloseButton().a();
                }
            }
            this.n.addMovement(motionEvent);
            if (!this.o) {
                return true;
            }
            this.f16696b.getLeftCloseButton().a(rawX, rawY);
            this.f16696b.getRightCloseButton().a(rawX, rawY);
            this.f16696b.getActiveArrangement();
            double b3 = this.f16696b.b(rawX, rawY);
            double a2 = this.f16696b.a(rawX, rawY);
            int i = this.f16695a;
            if (a2 < i && b2) {
                setState(State.CAPTURED_LEFT);
                eVar2.a(SpringConfigsHolder.f16736a);
                eVar.a(SpringConfigsHolder.f16736a);
                int[] c2 = this.f16696b.c(this);
                eVar2.b(c2[0]);
                eVar.b(c2[1]);
                this.f16696b.getLeftCloseButton().b();
            } else if (b3 >= i || !b2) {
                this.f16696b.g();
                setState(State.FREE);
                eVar2.a(SpringConfigsHolder.f16738c);
                eVar.a(SpringConfigsHolder.f16738c);
                a(eVar2, eVar, f, f2);
                this.f16696b.getLeftCloseButton().d();
                this.f16696b.getRightCloseButton().d();
            } else {
                setState(State.CAPTURED_RIGHT);
                eVar2.a(SpringConfigsHolder.f16736a);
                eVar.a(SpringConfigsHolder.f16736a);
                int[] d2 = this.f16696b.d(this);
                eVar2.b(d2[0]);
                eVar.b(d2[1]);
                this.f16696b.getRightCloseButton().b();
            }
            this.n.computeCurrentVelocity(1000);
            return true;
        } else if (action != 1 && action != 3) {
            return true;
        } else {
            boolean z = this.o;
            this.o = false;
            if (z) {
                a();
                this.f16696b.h();
            }
            eVar2.a(SpringConfigsHolder.f16738c);
            eVar.a(SpringConfigsHolder.f16738c);
            e eVar4 = this.p;
            if (eVar4 != null) {
                eVar4.b(1.0d);
            }
            int xVelocity = (int) this.n.getXVelocity();
            int yVelocity = (int) this.n.getYVelocity();
            this.n.recycle();
            this.n = null;
            if (this.e == null || this.q == null) {
                return true;
            }
            this.f16696b.getActiveArrangement().a(this, xVelocity, yVelocity, z);
            return true;
        }
    }

    public void setChatHeadToDefaultPosition(boolean z) {
        if (getVerticalSpring() != null) {
            getVerticalSpring().a(-this.f16696b.getConfig().getHeadHeight(), true);
        }
        if (getHorizontalSpring() != null) {
            getHorizontalSpring().a(-this.f16696b.getConfig().getHeadWidth(), true);
        }
    }

    public void setChatHeadView(View view) {
        removeAllViews();
        addView(view);
    }

    public void setExtras(Bundle bundle) {
        this.r = bundle;
    }

    public void setHero(boolean z) {
        this.s = z;
    }

    public void setKey(T t) {
        this.k = t;
    }

    public void setState(State state) {
        this.j = state;
    }
}
