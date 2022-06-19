package com.callapp.contacts.widget.floatingwidget.p240ui.container;

import android.content.Context;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.FrameLayout;
import com.callapp.contacts.widget.floatingwidget.p240ui.ChatHeadContainer;
import com.callapp.contacts.widget.floatingwidget.p240ui.ChatHeadManager;
import com.callapp.contacts.widget.floatingwidget.p240ui.HostFrameLayout;
/* renamed from: com.callapp.contacts.widget.floatingwidget.ui.container.FrameChatHeadContainer */
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/floatingwidget/ui/container/FrameChatHeadContainer.class */
public abstract class FrameChatHeadContainer implements ChatHeadContainer {

    /* renamed from: a */
    protected DisplayMetrics f29261a = new DisplayMetrics();

    /* renamed from: b */
    protected boolean f29262b;

    /* renamed from: c */
    private HostFrameLayout f29263c;

    /* renamed from: d */
    private final Context f29264d;

    /* renamed from: e */
    private ChatHeadManager f29265e;

    public FrameChatHeadContainer(Context context) {
        this.f29264d = context;
    }

    @Override // com.callapp.contacts.widget.floatingwidget.p240ui.ChatHeadContainer
    /* renamed from: a */
    public int mo26401a(View view) {
        return (int) view.getTranslationX();
    }

    @Override // com.callapp.contacts.widget.floatingwidget.p240ui.ChatHeadContainer
    /* renamed from: a */
    public ViewGroup.LayoutParams mo26402a(int i, int i2, int i3) {
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i2, i);
        layoutParams.gravity = i3;
        layoutParams.bottomMargin = 0;
        return layoutParams;
    }

    @Override // com.callapp.contacts.widget.floatingwidget.p240ui.ChatHeadContainer
    /* renamed from: a */
    public void mo26396a() {
        HostFrameLayout hostFrameLayout = this.f29263c;
        if (hostFrameLayout != null) {
            hostFrameLayout.removeAllViews();
        }
    }

    @Override // com.callapp.contacts.widget.floatingwidget.p240ui.ChatHeadContainer
    /* renamed from: a */
    public void mo26395a(View view, int i) {
        view.setTranslationX(i);
    }

    @Override // com.callapp.contacts.widget.floatingwidget.p240ui.ChatHeadContainer
    /* renamed from: a */
    public void mo26394a(View view, ViewGroup.LayoutParams layoutParams) {
        HostFrameLayout hostFrameLayout = this.f29263c;
        if (hostFrameLayout != null) {
            hostFrameLayout.addView(view, layoutParams);
        }
    }

    /* renamed from: a */
    public abstract void mo26393a(View view, boolean z);

    @Override // com.callapp.contacts.widget.floatingwidget.p240ui.ChatHeadContainer
    /* renamed from: a */
    public void mo26391a(ChatHeadManager chatHeadManager) {
        this.f29265e = chatHeadManager;
        HostFrameLayout hostFrameLayout = new HostFrameLayout(this.f29264d, chatHeadManager);
        hostFrameLayout.setFocusable(true);
        hostFrameLayout.setFocusableInTouchMode(true);
        this.f29263c = hostFrameLayout;
        mo26393a((View) hostFrameLayout, false);
        this.f29262b = true;
    }

    @Override // com.callapp.contacts.widget.floatingwidget.p240ui.ChatHeadContainer
    /* renamed from: b */
    public int mo26399b(View view) {
        return (int) view.getTranslationY();
    }

    @Override // com.callapp.contacts.widget.floatingwidget.p240ui.ChatHeadContainer
    /* renamed from: b */
    public void mo26400b() {
        HostFrameLayout hostFrameLayout = this.f29263c;
        if (hostFrameLayout != null) {
            hostFrameLayout.requestLayout();
        }
    }

    @Override // com.callapp.contacts.widget.floatingwidget.p240ui.ChatHeadContainer
    /* renamed from: b */
    public void mo26389b(View view, int i) {
        view.setTranslationY(i);
    }

    @Override // com.callapp.contacts.widget.floatingwidget.p240ui.ChatHeadContainer
    /* renamed from: c */
    public void mo26398c(View view) {
        view.bringToFront();
    }

    @Override // com.callapp.contacts.widget.floatingwidget.p240ui.ChatHeadContainer
    /* renamed from: d */
    public void mo26397d(View view) {
        HostFrameLayout hostFrameLayout = this.f29263c;
        if (hostFrameLayout != null) {
            hostFrameLayout.removeView(view);
        }
    }

    public Context getContext() {
        return this.f29264d;
    }

    @Override // com.callapp.contacts.widget.floatingwidget.p240ui.ChatHeadContainer
    public DisplayMetrics getDisplayMetrics() {
        ((WindowManager) this.f29264d.getSystemService("window")).getDefaultDisplay().getMetrics(this.f29261a);
        return this.f29261a;
    }

    public HostFrameLayout getFrameLayout() {
        return this.f29263c;
    }

    public ChatHeadManager getManager() {
        return this.f29265e;
    }
}
