package com.callapp.contacts.widget.floatingwidget.ui.container;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import com.callapp.contacts.widget.floatingwidget.ui.ChatHead;
import com.callapp.contacts.widget.floatingwidget.ui.ChatHeadArrangement;
import com.callapp.contacts.widget.floatingwidget.ui.ChatHeadManager;
import com.callapp.contacts.widget.floatingwidget.ui.HostFrameLayout;
import com.callapp.contacts.widget.floatingwidget.ui.MinimizedArrangement;
import com.facebook.ads.AdError;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/floatingwidget/ui/container/WindowManagerContainer.class */
public class WindowManagerContainer extends FrameChatHeadContainer {

    /* renamed from: c  reason: collision with root package name */
    private View f16805c;

    /* renamed from: d  reason: collision with root package name */
    private WindowManager f16806d;
    private ChatHeadArrangement e;
    private boolean f;
    private BroadcastReceiver g;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/floatingwidget/ui/container/WindowManagerContainer$MotionCaptureView.class */
    class MotionCaptureView extends View {
        public MotionCaptureView(Context context) {
            super(context);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/floatingwidget/ui/container/WindowManagerContainer$MotionCapturingTouchListener.class */
    protected class MotionCapturingTouchListener implements View.OnTouchListener {
        protected MotionCapturingTouchListener() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            motionEvent.offsetLocation(WindowManagerContainer.e(view).x, WindowManagerContainer.e(view).y);
            if (motionEvent.getAction() == 4) {
                return WindowManagerContainer.this.getManager().i();
            }
            HostFrameLayout frameLayout = WindowManagerContainer.this.getFrameLayout();
            if (frameLayout != null) {
                return frameLayout.dispatchTouchEvent(motionEvent);
            }
            return false;
        }
    }

    public WindowManagerContainer(Context context) {
        super(context);
    }

    private static WindowManager.LayoutParams a(boolean z) {
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(-1, -1, Build.VERSION.SDK_INT >= 26 ? 2038 : AdError.CACHE_ERROR_CODE, z ? 32 : 24, -3);
        layoutParams.x = 0;
        layoutParams.y = 0;
        layoutParams.gravity = 8388659;
        return layoutParams;
    }

    static WindowManager.LayoutParams e(View view) {
        WindowManager.LayoutParams layoutParams = (WindowManager.LayoutParams) view.getLayoutParams();
        WindowManager.LayoutParams layoutParams2 = layoutParams;
        if (layoutParams == null) {
            layoutParams2 = a(false);
            view.setLayoutParams(layoutParams2);
        }
        return layoutParams2;
    }

    @Override // com.callapp.contacts.widget.floatingwidget.ui.container.FrameChatHeadContainer, com.callapp.contacts.widget.floatingwidget.ui.ChatHeadContainer
    public final void a() {
        super.a();
        View view = this.f16805c;
        if (view != null) {
            view.setOnTouchListener(null);
        }
        if (this.f16802b) {
            this.f16806d.removeViewImmediate(getFrameLayout());
            this.f16802b = false;
        }
        if (this.f) {
            this.f16806d.removeViewImmediate(this.f16805c);
            this.f = false;
        }
        if (this.g != null) {
            getContext().unregisterReceiver(this.g);
            this.g = null;
        }
    }

    @Override // com.callapp.contacts.widget.floatingwidget.ui.container.FrameChatHeadContainer, com.callapp.contacts.widget.floatingwidget.ui.ChatHeadContainer
    public final void a(View view, int i) {
        super.a(view, i);
        if ((view instanceof ChatHead) && ((ChatHead) view).isHero() && (this.e instanceof MinimizedArrangement)) {
            View view2 = this.f16805c;
            WindowManager.LayoutParams e = e(view2);
            e.x = i;
            if (view2.getWindowToken() != null) {
                getWindowManager().updateViewLayout(view2, e);
            }
            View view3 = this.f16805c;
            int measuredWidth = view.getMeasuredWidth();
            WindowManager.LayoutParams e2 = e(view3);
            e2.width = measuredWidth;
            if (view3.getWindowToken() != null) {
                getWindowManager().updateViewLayout(view3, e2);
            }
        }
    }

    @Override // com.callapp.contacts.widget.floatingwidget.ui.container.FrameChatHeadContainer, com.callapp.contacts.widget.floatingwidget.ui.ChatHeadContainer
    public final void a(View view, ViewGroup.LayoutParams layoutParams) {
        super.a(view, layoutParams);
        if (!this.f) {
            a(this.f16805c, true);
            WindowManager.LayoutParams e = e(this.f16805c);
            e.width = 0;
            e.height = 0;
            this.f16806d.updateViewLayout(this.f16805c, e);
            this.f = true;
        }
    }

    @Override // com.callapp.contacts.widget.floatingwidget.ui.container.FrameChatHeadContainer
    public final void a(View view, boolean z) {
        WindowManager.LayoutParams a2 = a(z);
        view.setLayoutParams(a2);
        getWindowManager().addView(view, a2);
    }

    @Override // com.callapp.contacts.widget.floatingwidget.ui.ChatHeadContainer
    public final void a(ChatHeadArrangement chatHeadArrangement) {
        this.e = chatHeadArrangement;
        WindowManager.LayoutParams e = e(this.f16805c);
        e.flags |= 8;
        e.flags &= -17;
        e.flags |= 32;
        e.flags |= 262144;
        if (!this.f) {
            this.f16806d.addView(this.f16805c, e);
            this.f = true;
        } else {
            this.f16806d.updateViewLayout(this.f16805c, e);
        }
        WindowManager.LayoutParams e2 = e(getFrameLayout());
        e2.flags |= 24;
        this.f16806d.updateViewLayout(getFrameLayout(), e2);
    }

    @Override // com.callapp.contacts.widget.floatingwidget.ui.container.FrameChatHeadContainer, com.callapp.contacts.widget.floatingwidget.ui.ChatHeadContainer
    public final void a(ChatHeadManager chatHeadManager) {
        super.a(chatHeadManager);
        this.f16805c = new MotionCaptureView(getContext());
        this.f16805c.setOnTouchListener(new MotionCapturingTouchListener());
        Context context = getContext();
        BroadcastReceiver broadcastReceiver = new BroadcastReceiver() { // from class: com.callapp.contacts.widget.floatingwidget.ui.container.WindowManagerContainer.1
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                HostFrameLayout frameLayout = WindowManagerContainer.this.getFrameLayout();
                if (frameLayout != null) {
                    frameLayout.a();
                }
            }
        };
        this.g = broadcastReceiver;
        context.registerReceiver(broadcastReceiver, new IntentFilter("android.intent.action.CLOSE_SYSTEM_DIALOGS"));
    }

    @Override // com.callapp.contacts.widget.floatingwidget.ui.container.FrameChatHeadContainer, com.callapp.contacts.widget.floatingwidget.ui.ChatHeadContainer
    public final void b(View view, int i) {
        super.b(view, i);
        if ((view instanceof ChatHead) && (this.e instanceof MinimizedArrangement) && ((ChatHead) view).isHero()) {
            View view2 = this.f16805c;
            WindowManager.LayoutParams e = e(view2);
            e.y = i;
            if (view2.getWindowToken() != null) {
                getWindowManager().updateViewLayout(view2, e);
            }
            View view3 = this.f16805c;
            int measuredHeight = view.getMeasuredHeight();
            WindowManager.LayoutParams e2 = e(view3);
            e2.height = measuredHeight;
            if (view3.getWindowToken() != null) {
                getWindowManager().updateViewLayout(view3, e2);
            }
        }
    }

    public WindowManager getWindowManager() {
        if (this.f16806d == null) {
            this.f16806d = (WindowManager) getContext().getSystemService("window");
        }
        return this.f16806d;
    }
}
