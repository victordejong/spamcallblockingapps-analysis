package com.callapp.contacts.widget.floatingwidget.ui;

import android.content.Context;
import android.os.Bundle;
import android.view.KeyEvent;
import android.widget.FrameLayout;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/floatingwidget/ui/HostFrameLayout.class */
public class HostFrameLayout extends FrameLayout {

    /* renamed from: a  reason: collision with root package name */
    private final ChatHeadManager f16723a;

    public HostFrameLayout(Context context, ChatHeadManager chatHeadManager) {
        super(context);
        this.f16723a = chatHeadManager;
    }

    public final void a() {
        if (!(this.f16723a.getActiveArrangement() instanceof MinimizedArrangement)) {
            this.f16723a.a(MinimizedArrangement.class, (Bundle) null);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        boolean dispatchKeyEvent = super.dispatchKeyEvent(keyEvent);
        if (dispatchKeyEvent || keyEvent.getAction() != 1 || keyEvent.getKeyCode() != 4) {
            return dispatchKeyEvent;
        }
        a();
        return true;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        this.f16723a.a(getMeasuredHeight(), getMeasuredWidth());
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.f16723a.f();
    }
}
