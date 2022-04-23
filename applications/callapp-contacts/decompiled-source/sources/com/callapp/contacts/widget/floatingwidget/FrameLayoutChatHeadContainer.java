package com.callapp.contacts.widget.floatingwidget;

import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.callapp.contacts.widget.floatingwidget.ui.ChatHeadArrangement;
import com.callapp.contacts.widget.floatingwidget.ui.ChatHeadManager;
import com.callapp.contacts.widget.floatingwidget.ui.container.FrameChatHeadContainer;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/floatingwidget/FrameLayoutChatHeadContainer.class */
public class FrameLayoutChatHeadContainer extends FrameChatHeadContainer {

    /* renamed from: c  reason: collision with root package name */
    private FrameLayout f16694c;

    public FrameLayoutChatHeadContainer(FrameLayout frameLayout) {
        super(frameLayout.getContext());
        this.f16694c = frameLayout;
        if (frameLayout.getDisplay() != null) {
            frameLayout.getDisplay().getMetrics(this.f16801a);
        }
        frameLayout.setFocusable(true);
        frameLayout.setFocusableInTouchMode(true);
    }

    @Override // com.callapp.contacts.widget.floatingwidget.ui.container.FrameChatHeadContainer, com.callapp.contacts.widget.floatingwidget.ui.ChatHeadContainer
    public final int a(View view) {
        return (int) view.getTranslationX();
    }

    @Override // com.callapp.contacts.widget.floatingwidget.ui.container.FrameChatHeadContainer, com.callapp.contacts.widget.floatingwidget.ui.ChatHeadContainer
    public final ViewGroup.LayoutParams a(int i, int i2, int i3) {
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i2, i);
        layoutParams.gravity = i3;
        layoutParams.bottomMargin = 0;
        return layoutParams;
    }

    @Override // com.callapp.contacts.widget.floatingwidget.ui.container.FrameChatHeadContainer, com.callapp.contacts.widget.floatingwidget.ui.ChatHeadContainer
    public final void a() {
        FrameLayout frameLayout = this.f16694c;
        if (frameLayout != null) {
            frameLayout.removeAllViews();
        }
    }

    @Override // com.callapp.contacts.widget.floatingwidget.ui.container.FrameChatHeadContainer, com.callapp.contacts.widget.floatingwidget.ui.ChatHeadContainer
    public final void a(View view, int i) {
        view.setTranslationX(i);
    }

    @Override // com.callapp.contacts.widget.floatingwidget.ui.container.FrameChatHeadContainer, com.callapp.contacts.widget.floatingwidget.ui.ChatHeadContainer
    public final void a(View view, ViewGroup.LayoutParams layoutParams) {
        this.f16694c.addView(view, layoutParams);
    }

    @Override // com.callapp.contacts.widget.floatingwidget.ui.container.FrameChatHeadContainer
    public final void a(View view, boolean z) {
        this.f16694c.addView(view);
    }

    @Override // com.callapp.contacts.widget.floatingwidget.ui.ChatHeadContainer
    public final void a(ChatHeadArrangement chatHeadArrangement) {
    }

    @Override // com.callapp.contacts.widget.floatingwidget.ui.container.FrameChatHeadContainer, com.callapp.contacts.widget.floatingwidget.ui.ChatHeadContainer
    public final void a(ChatHeadManager chatHeadManager) {
        super.a(chatHeadManager);
    }

    @Override // com.callapp.contacts.widget.floatingwidget.ui.container.FrameChatHeadContainer, com.callapp.contacts.widget.floatingwidget.ui.ChatHeadContainer
    public final int b(View view) {
        return (int) view.getTranslationY();
    }

    @Override // com.callapp.contacts.widget.floatingwidget.ui.container.FrameChatHeadContainer, com.callapp.contacts.widget.floatingwidget.ui.ChatHeadContainer
    public final void b() {
        FrameLayout frameLayout = this.f16694c;
        if (frameLayout != null) {
            frameLayout.requestLayout();
        }
    }

    @Override // com.callapp.contacts.widget.floatingwidget.ui.container.FrameChatHeadContainer, com.callapp.contacts.widget.floatingwidget.ui.ChatHeadContainer
    public final void b(View view, int i) {
        view.setTranslationY(i);
    }

    @Override // com.callapp.contacts.widget.floatingwidget.ui.container.FrameChatHeadContainer, com.callapp.contacts.widget.floatingwidget.ui.ChatHeadContainer
    public final void c(View view) {
        view.bringToFront();
    }

    @Override // com.callapp.contacts.widget.floatingwidget.ui.container.FrameChatHeadContainer, com.callapp.contacts.widget.floatingwidget.ui.ChatHeadContainer
    public final void d(View view) {
        this.f16694c.removeView(view);
    }

    @Override // com.callapp.contacts.widget.floatingwidget.ui.container.FrameChatHeadContainer, com.callapp.contacts.widget.floatingwidget.ui.ChatHeadContainer
    public DisplayMetrics getDisplayMetrics() {
        return this.f16801a;
    }
}
