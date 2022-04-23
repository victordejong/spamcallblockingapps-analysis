package com.callapp.contacts.widget.floatingwidget;

import android.view.View;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/floatingwidget/FloatingMenuAction.class */
public class FloatingMenuAction {

    /* renamed from: a  reason: collision with root package name */
    private int f16681a;

    /* renamed from: b  reason: collision with root package name */
    private int f16682b;

    /* renamed from: c  reason: collision with root package name */
    private int f16683c;

    /* renamed from: d  reason: collision with root package name */
    private int f16684d;
    private CharSequence e;
    private View.OnClickListener f;
    private boolean g;
    private boolean h;
    private int i;

    public FloatingMenuAction(int i, int i2, int i3, int i4, boolean z, CharSequence charSequence, View.OnClickListener onClickListener, boolean z2, int i5) {
        this.f16681a = i;
        this.f16682b = i2;
        this.f16683c = i3;
        this.f16684d = i4;
        this.g = z;
        this.e = charSequence;
        this.f = onClickListener;
        this.h = z2;
        this.i = i5;
    }

    public FloatingMenuAction(int i, int i2, int i3, CharSequence charSequence, View.OnClickListener onClickListener, boolean z, int i4) {
        this(i, i2, i3, i3, false, charSequence, onClickListener, z, i4);
    }

    public View.OnClickListener getAction() {
        return this.f;
    }

    public int getActionColorDisabled() {
        return this.f16683c;
    }

    public int getActionColorEnabled() {
        return this.f16684d;
    }

    public int getActionIcon() {
        return this.f16682b;
    }

    public CharSequence getActionText() {
        return this.e;
    }

    public int getId() {
        return this.i;
    }

    public int getLayoutRes() {
        return this.f16681a;
    }

    public boolean isEnabled() {
        return this.g;
    }

    public boolean isVisibility() {
        return this.h;
    }
}
