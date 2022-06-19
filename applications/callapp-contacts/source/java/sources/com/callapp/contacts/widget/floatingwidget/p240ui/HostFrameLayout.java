package com.callapp.contacts.widget.floatingwidget.p240ui;

import android.content.Context;
import android.os.Bundle;
import android.view.KeyEvent;
import android.widget.FrameLayout;
/* renamed from: com.callapp.contacts.widget.floatingwidget.ui.HostFrameLayout */
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/floatingwidget/ui/HostFrameLayout.class */
public class HostFrameLayout extends FrameLayout {

    /* renamed from: a */
    private final ChatHeadManager f29109a;

    public HostFrameLayout(Context context, ChatHeadManager chatHeadManager) {
        super(context);
        this.f29109a = chatHeadManager;
    }

    /* renamed from: a */
    public final void m26515a() {
        if (!(this.f29109a.getActiveArrangement() instanceof MinimizedArrangement)) {
            this.f29109a.mo26416a(MinimizedArrangement.class, (Bundle) null);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        boolean dispatchKeyEvent = super.dispatchKeyEvent(keyEvent);
        if (!dispatchKeyEvent && keyEvent.getAction() == 1 && keyEvent.getKeyCode() == 4) {
            m26515a();
            return true;
        }
        return dispatchKeyEvent;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        this.f29109a.mo26425a(getMeasuredHeight(), getMeasuredWidth());
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.f29109a.mo26406f();
    }
}
