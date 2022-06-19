package com.callapp.contacts.widget.floatingwidget.p240ui.container;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import com.callapp.contacts.widget.floatingwidget.p240ui.ChatHead;
import com.callapp.contacts.widget.floatingwidget.p240ui.ChatHeadArrangement;
import com.callapp.contacts.widget.floatingwidget.p240ui.ChatHeadManager;
import com.callapp.contacts.widget.floatingwidget.p240ui.HostFrameLayout;
import com.callapp.contacts.widget.floatingwidget.p240ui.MinimizedArrangement;
/* renamed from: com.callapp.contacts.widget.floatingwidget.ui.container.WindowManagerContainer */
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/floatingwidget/ui/container/WindowManagerContainer.class */
public class WindowManagerContainer extends FrameChatHeadContainer {

    /* renamed from: c */
    private View f29266c;

    /* renamed from: d */
    private WindowManager f29267d;

    /* renamed from: e */
    private ChatHeadArrangement f29268e;

    /* renamed from: f */
    private boolean f29269f;

    /* renamed from: g */
    private BroadcastReceiver f29270g;

    /* renamed from: com.callapp.contacts.widget.floatingwidget.ui.container.WindowManagerContainer$MotionCaptureView */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/floatingwidget/ui/container/WindowManagerContainer$MotionCaptureView.class */
    class MotionCaptureView extends View {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public MotionCaptureView(Context context) {
            super(context);
            WindowManagerContainer.this = r4;
        }
    }

    /* renamed from: com.callapp.contacts.widget.floatingwidget.ui.container.WindowManagerContainer$MotionCapturingTouchListener */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/floatingwidget/ui/container/WindowManagerContainer$MotionCapturingTouchListener.class */
    protected class MotionCapturingTouchListener implements View.OnTouchListener {
        protected MotionCapturingTouchListener() {
            WindowManagerContainer.this = r4;
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            motionEvent.offsetLocation(WindowManagerContainer.m26388e(view).x, WindowManagerContainer.m26388e(view).y);
            if (motionEvent.getAction() == 4) {
                return WindowManagerContainer.this.getManager().mo26403i();
            }
            HostFrameLayout frameLayout = WindowManagerContainer.this.getFrameLayout();
            if (frameLayout == null) {
                return false;
            }
            return frameLayout.dispatchTouchEvent(motionEvent);
        }
    }

    public WindowManagerContainer(Context context) {
        super(context);
    }

    /* renamed from: a */
    private static WindowManager.LayoutParams m26390a(boolean z) {
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(-1, -1, Build.VERSION.SDK_INT >= 26 ? 2038 : 2002, z ? 32 : 24, -3);
        layoutParams.x = 0;
        layoutParams.y = 0;
        layoutParams.gravity = 8388659;
        return layoutParams;
    }

    /* renamed from: e */
    static WindowManager.LayoutParams m26388e(View view) {
        WindowManager.LayoutParams layoutParams = (WindowManager.LayoutParams) view.getLayoutParams();
        WindowManager.LayoutParams layoutParams2 = layoutParams;
        if (layoutParams == null) {
            layoutParams2 = m26390a(false);
            view.setLayoutParams(layoutParams2);
        }
        return layoutParams2;
    }

    @Override // com.callapp.contacts.widget.floatingwidget.p240ui.container.FrameChatHeadContainer, com.callapp.contacts.widget.floatingwidget.p240ui.ChatHeadContainer
    /* renamed from: a */
    public final void mo26396a() {
        super.mo26396a();
        View view = this.f29266c;
        if (view != null) {
            view.setOnTouchListener(null);
        }
        if (this.f29262b) {
            this.f29267d.removeViewImmediate(getFrameLayout());
            this.f29262b = false;
        }
        if (this.f29269f) {
            this.f29267d.removeViewImmediate(this.f29266c);
            this.f29269f = false;
        }
        if (this.f29270g != null) {
            getContext().unregisterReceiver(this.f29270g);
            this.f29270g = null;
        }
    }

    @Override // com.callapp.contacts.widget.floatingwidget.p240ui.container.FrameChatHeadContainer, com.callapp.contacts.widget.floatingwidget.p240ui.ChatHeadContainer
    /* renamed from: a */
    public final void mo26395a(View view, int i) {
        super.mo26395a(view, i);
        if (!(view instanceof ChatHead) || !((ChatHead) view).isHero() || !(this.f29268e instanceof MinimizedArrangement)) {
            return;
        }
        View view2 = this.f29266c;
        WindowManager.LayoutParams m26388e = m26388e(view2);
        m26388e.x = i;
        if (view2.getWindowToken() != null) {
            getWindowManager().updateViewLayout(view2, m26388e);
        }
        View view3 = this.f29266c;
        int measuredWidth = view.getMeasuredWidth();
        WindowManager.LayoutParams m26388e2 = m26388e(view3);
        m26388e2.width = measuredWidth;
        if (view3.getWindowToken() == null) {
            return;
        }
        getWindowManager().updateViewLayout(view3, m26388e2);
    }

    @Override // com.callapp.contacts.widget.floatingwidget.p240ui.container.FrameChatHeadContainer, com.callapp.contacts.widget.floatingwidget.p240ui.ChatHeadContainer
    /* renamed from: a */
    public final void mo26394a(View view, ViewGroup.LayoutParams layoutParams) {
        super.mo26394a(view, layoutParams);
        if (!this.f29269f) {
            mo26393a(this.f29266c, true);
            WindowManager.LayoutParams m26388e = m26388e(this.f29266c);
            m26388e.width = 0;
            m26388e.height = 0;
            this.f29267d.updateViewLayout(this.f29266c, m26388e);
            this.f29269f = true;
        }
    }

    @Override // com.callapp.contacts.widget.floatingwidget.p240ui.container.FrameChatHeadContainer
    /* renamed from: a */
    public final void mo26393a(View view, boolean z) {
        WindowManager.LayoutParams m26390a = m26390a(z);
        view.setLayoutParams(m26390a);
        getWindowManager().addView(view, m26390a);
    }

    @Override // com.callapp.contacts.widget.floatingwidget.p240ui.ChatHeadContainer
    /* renamed from: a */
    public final void mo26392a(ChatHeadArrangement chatHeadArrangement) {
        this.f29268e = chatHeadArrangement;
        WindowManager.LayoutParams m26388e = m26388e(this.f29266c);
        m26388e.flags |= 8;
        m26388e.flags &= -17;
        m26388e.flags |= 32;
        m26388e.flags |= 262144;
        if (!this.f29269f) {
            this.f29267d.addView(this.f29266c, m26388e);
            this.f29269f = true;
        } else {
            this.f29267d.updateViewLayout(this.f29266c, m26388e);
        }
        WindowManager.LayoutParams m26388e2 = m26388e(getFrameLayout());
        m26388e2.flags |= 24;
        this.f29267d.updateViewLayout(getFrameLayout(), m26388e2);
    }

    @Override // com.callapp.contacts.widget.floatingwidget.p240ui.container.FrameChatHeadContainer, com.callapp.contacts.widget.floatingwidget.p240ui.ChatHeadContainer
    /* renamed from: a */
    public final void mo26391a(ChatHeadManager chatHeadManager) {
        super.mo26391a(chatHeadManager);
        this.f29266c = new MotionCaptureView(getContext());
        this.f29266c.setOnTouchListener(new MotionCapturingTouchListener());
        Context context = getContext();
        BroadcastReceiver broadcastReceiver = new BroadcastReceiver() { // from class: com.callapp.contacts.widget.floatingwidget.ui.container.WindowManagerContainer.1
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                HostFrameLayout frameLayout = WindowManagerContainer.this.getFrameLayout();
                if (frameLayout != null) {
                    frameLayout.m26515a();
                }
            }
        };
        this.f29270g = broadcastReceiver;
        context.registerReceiver(broadcastReceiver, new IntentFilter("android.intent.action.CLOSE_SYSTEM_DIALOGS"));
    }

    @Override // com.callapp.contacts.widget.floatingwidget.p240ui.container.FrameChatHeadContainer, com.callapp.contacts.widget.floatingwidget.p240ui.ChatHeadContainer
    /* renamed from: b */
    public final void mo26389b(View view, int i) {
        super.mo26389b(view, i);
        if (!(view instanceof ChatHead) || !(this.f29268e instanceof MinimizedArrangement) || !((ChatHead) view).isHero()) {
            return;
        }
        View view2 = this.f29266c;
        WindowManager.LayoutParams m26388e = m26388e(view2);
        m26388e.y = i;
        if (view2.getWindowToken() != null) {
            getWindowManager().updateViewLayout(view2, m26388e);
        }
        View view3 = this.f29266c;
        int measuredHeight = view.getMeasuredHeight();
        WindowManager.LayoutParams m26388e2 = m26388e(view3);
        m26388e2.height = measuredHeight;
        if (view3.getWindowToken() == null) {
            return;
        }
        getWindowManager().updateViewLayout(view3, m26388e2);
    }

    public WindowManager getWindowManager() {
        if (this.f29267d == null) {
            this.f29267d = (WindowManager) getContext().getSystemService("window");
        }
        return this.f29267d;
    }
}
