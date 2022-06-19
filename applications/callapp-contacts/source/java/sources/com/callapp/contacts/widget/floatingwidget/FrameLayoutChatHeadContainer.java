package com.callapp.contacts.widget.floatingwidget;

import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.callapp.contacts.widget.floatingwidget.p240ui.ChatHeadArrangement;
import com.callapp.contacts.widget.floatingwidget.p240ui.ChatHeadManager;
import com.callapp.contacts.widget.floatingwidget.p240ui.container.FrameChatHeadContainer;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/floatingwidget/FrameLayoutChatHeadContainer.class */
public class FrameLayoutChatHeadContainer extends FrameChatHeadContainer {

    /* renamed from: c */
    private FrameLayout f29045c;

    public FrameLayoutChatHeadContainer(FrameLayout frameLayout) {
        super(frameLayout.getContext());
        this.f29045c = frameLayout;
        if (frameLayout.getDisplay() != null) {
            frameLayout.getDisplay().getMetrics(this.f29261a);
        }
        frameLayout.setFocusable(true);
        frameLayout.setFocusableInTouchMode(true);
    }

    @Override // com.callapp.contacts.widget.floatingwidget.p240ui.container.FrameChatHeadContainer, com.callapp.contacts.widget.floatingwidget.p240ui.ChatHeadContainer
    /* renamed from: a */
    public final int mo26401a(View view) {
        return (int) view.getTranslationX();
    }

    @Override // com.callapp.contacts.widget.floatingwidget.p240ui.container.FrameChatHeadContainer, com.callapp.contacts.widget.floatingwidget.p240ui.ChatHeadContainer
    /* renamed from: a */
    public final ViewGroup.LayoutParams mo26402a(int i, int i2, int i3) {
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i2, i);
        layoutParams.gravity = i3;
        layoutParams.bottomMargin = 0;
        return layoutParams;
    }

    @Override // com.callapp.contacts.widget.floatingwidget.p240ui.container.FrameChatHeadContainer, com.callapp.contacts.widget.floatingwidget.p240ui.ChatHeadContainer
    /* renamed from: a */
    public final void mo26396a() {
        FrameLayout frameLayout = this.f29045c;
        if (frameLayout != null) {
            frameLayout.removeAllViews();
        }
    }

    @Override // com.callapp.contacts.widget.floatingwidget.p240ui.container.FrameChatHeadContainer, com.callapp.contacts.widget.floatingwidget.p240ui.ChatHeadContainer
    /* renamed from: a */
    public final void mo26395a(View view, int i) {
        view.setTranslationX(i);
    }

    @Override // com.callapp.contacts.widget.floatingwidget.p240ui.container.FrameChatHeadContainer, com.callapp.contacts.widget.floatingwidget.p240ui.ChatHeadContainer
    /* renamed from: a */
    public final void mo26394a(View view, ViewGroup.LayoutParams layoutParams) {
        this.f29045c.addView(view, layoutParams);
    }

    @Override // com.callapp.contacts.widget.floatingwidget.p240ui.container.FrameChatHeadContainer
    /* renamed from: a */
    public final void mo26393a(View view, boolean z) {
        this.f29045c.addView(view);
    }

    @Override // com.callapp.contacts.widget.floatingwidget.p240ui.ChatHeadContainer
    /* renamed from: a */
    public final void mo26392a(ChatHeadArrangement chatHeadArrangement) {
    }

    @Override // com.callapp.contacts.widget.floatingwidget.p240ui.container.FrameChatHeadContainer, com.callapp.contacts.widget.floatingwidget.p240ui.ChatHeadContainer
    /* renamed from: a */
    public final void mo26391a(ChatHeadManager chatHeadManager) {
        super.mo26391a(chatHeadManager);
    }

    @Override // com.callapp.contacts.widget.floatingwidget.p240ui.container.FrameChatHeadContainer, com.callapp.contacts.widget.floatingwidget.p240ui.ChatHeadContainer
    /* renamed from: b */
    public final int mo26399b(View view) {
        return (int) view.getTranslationY();
    }

    @Override // com.callapp.contacts.widget.floatingwidget.p240ui.container.FrameChatHeadContainer, com.callapp.contacts.widget.floatingwidget.p240ui.ChatHeadContainer
    /* renamed from: b */
    public final void mo26400b() {
        FrameLayout frameLayout = this.f29045c;
        if (frameLayout != null) {
            frameLayout.requestLayout();
        }
    }

    @Override // com.callapp.contacts.widget.floatingwidget.p240ui.container.FrameChatHeadContainer, com.callapp.contacts.widget.floatingwidget.p240ui.ChatHeadContainer
    /* renamed from: b */
    public final void mo26389b(View view, int i) {
        view.setTranslationY(i);
    }

    @Override // com.callapp.contacts.widget.floatingwidget.p240ui.container.FrameChatHeadContainer, com.callapp.contacts.widget.floatingwidget.p240ui.ChatHeadContainer
    /* renamed from: c */
    public final void mo26398c(View view) {
        view.bringToFront();
    }

    @Override // com.callapp.contacts.widget.floatingwidget.p240ui.container.FrameChatHeadContainer, com.callapp.contacts.widget.floatingwidget.p240ui.ChatHeadContainer
    /* renamed from: d */
    public final void mo26397d(View view) {
        this.f29045c.removeView(view);
    }

    @Override // com.callapp.contacts.widget.floatingwidget.p240ui.container.FrameChatHeadContainer, com.callapp.contacts.widget.floatingwidget.p240ui.ChatHeadContainer
    public DisplayMetrics getDisplayMetrics() {
        return this.f29261a;
    }
}
