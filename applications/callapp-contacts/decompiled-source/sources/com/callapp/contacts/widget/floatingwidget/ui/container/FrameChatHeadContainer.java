package com.callapp.contacts.widget.floatingwidget.ui.container;

import android.content.Context;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.FrameLayout;
import com.callapp.contacts.widget.floatingwidget.ui.ChatHeadContainer;
import com.callapp.contacts.widget.floatingwidget.ui.ChatHeadManager;
import com.callapp.contacts.widget.floatingwidget.ui.HostFrameLayout;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/floatingwidget/ui/container/FrameChatHeadContainer.class */
public abstract class FrameChatHeadContainer implements ChatHeadContainer {

    /* renamed from: a  reason: collision with root package name */
    protected DisplayMetrics f16801a = new DisplayMetrics();

    /* renamed from: b  reason: collision with root package name */
    protected boolean f16802b;

    /* renamed from: c  reason: collision with root package name */
    private HostFrameLayout f16803c;

    /* renamed from: d  reason: collision with root package name */
    private final Context f16804d;
    private ChatHeadManager e;

    public FrameChatHeadContainer(Context context) {
        this.f16804d = context;
    }

    @Override // com.callapp.contacts.widget.floatingwidget.ui.ChatHeadContainer
    public int a(View view) {
        return (int) view.getTranslationX();
    }

    @Override // com.callapp.contacts.widget.floatingwidget.ui.ChatHeadContainer
    public ViewGroup.LayoutParams a(int i, int i2, int i3) {
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i2, i);
        layoutParams.gravity = i3;
        layoutParams.bottomMargin = 0;
        return layoutParams;
    }

    @Override // com.callapp.contacts.widget.floatingwidget.ui.ChatHeadContainer
    public void a() {
        HostFrameLayout hostFrameLayout = this.f16803c;
        if (hostFrameLayout != null) {
            hostFrameLayout.removeAllViews();
        }
    }

    @Override // com.callapp.contacts.widget.floatingwidget.ui.ChatHeadContainer
    public void a(View view, int i) {
        view.setTranslationX(i);
    }

    @Override // com.callapp.contacts.widget.floatingwidget.ui.ChatHeadContainer
    public void a(View view, ViewGroup.LayoutParams layoutParams) {
        HostFrameLayout hostFrameLayout = this.f16803c;
        if (hostFrameLayout != null) {
            hostFrameLayout.addView(view, layoutParams);
        }
    }

    public abstract void a(View view, boolean z);

    @Override // com.callapp.contacts.widget.floatingwidget.ui.ChatHeadContainer
    public void a(ChatHeadManager chatHeadManager) {
        this.e = chatHeadManager;
        HostFrameLayout hostFrameLayout = new HostFrameLayout(this.f16804d, chatHeadManager);
        hostFrameLayout.setFocusable(true);
        hostFrameLayout.setFocusableInTouchMode(true);
        this.f16803c = hostFrameLayout;
        a((View) hostFrameLayout, false);
        this.f16802b = true;
    }

    @Override // com.callapp.contacts.widget.floatingwidget.ui.ChatHeadContainer
    public int b(View view) {
        return (int) view.getTranslationY();
    }

    @Override // com.callapp.contacts.widget.floatingwidget.ui.ChatHeadContainer
    public void b() {
        HostFrameLayout hostFrameLayout = this.f16803c;
        if (hostFrameLayout != null) {
            hostFrameLayout.requestLayout();
        }
    }

    @Override // com.callapp.contacts.widget.floatingwidget.ui.ChatHeadContainer
    public void b(View view, int i) {
        view.setTranslationY(i);
    }

    @Override // com.callapp.contacts.widget.floatingwidget.ui.ChatHeadContainer
    public void c(View view) {
        view.bringToFront();
    }

    @Override // com.callapp.contacts.widget.floatingwidget.ui.ChatHeadContainer
    public void d(View view) {
        HostFrameLayout hostFrameLayout = this.f16803c;
        if (hostFrameLayout != null) {
            hostFrameLayout.removeView(view);
        }
    }

    public Context getContext() {
        return this.f16804d;
    }

    @Override // com.callapp.contacts.widget.floatingwidget.ui.ChatHeadContainer
    public DisplayMetrics getDisplayMetrics() {
        ((WindowManager) this.f16804d.getSystemService("window")).getDefaultDisplay().getMetrics(this.f16801a);
        return this.f16801a;
    }

    public HostFrameLayout getFrameLayout() {
        return this.f16803c;
    }

    public ChatHeadManager getManager() {
        return this.e;
    }
}
