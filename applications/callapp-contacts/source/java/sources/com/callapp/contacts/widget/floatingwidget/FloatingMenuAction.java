package com.callapp.contacts.widget.floatingwidget;

import android.view.View;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/floatingwidget/FloatingMenuAction.class */
public class FloatingMenuAction {

    /* renamed from: a */
    private int f29025a;

    /* renamed from: b */
    private int f29026b;

    /* renamed from: c */
    private int f29027c;

    /* renamed from: d */
    private int f29028d;

    /* renamed from: e */
    private CharSequence f29029e;

    /* renamed from: f */
    private View.OnClickListener f29030f;

    /* renamed from: g */
    private boolean f29031g;

    /* renamed from: h */
    private boolean f29032h;

    /* renamed from: i */
    private int f29033i;

    public FloatingMenuAction(int i, int i2, int i3, int i4, boolean z, CharSequence charSequence, View.OnClickListener onClickListener, boolean z2, int i5) {
        this.f29025a = i;
        this.f29026b = i2;
        this.f29027c = i3;
        this.f29028d = i4;
        this.f29031g = z;
        this.f29029e = charSequence;
        this.f29030f = onClickListener;
        this.f29032h = z2;
        this.f29033i = i5;
    }

    public FloatingMenuAction(int i, int i2, int i3, CharSequence charSequence, View.OnClickListener onClickListener, boolean z, int i4) {
        this(i, i2, i3, i3, false, charSequence, onClickListener, z, i4);
    }

    public View.OnClickListener getAction() {
        return this.f29030f;
    }

    public int getActionColorDisabled() {
        return this.f29027c;
    }

    public int getActionColorEnabled() {
        return this.f29028d;
    }

    public int getActionIcon() {
        return this.f29026b;
    }

    public CharSequence getActionText() {
        return this.f29029e;
    }

    public int getId() {
        return this.f29033i;
    }

    public int getLayoutRes() {
        return this.f29025a;
    }

    public boolean isEnabled() {
        return this.f29031g;
    }

    public boolean isVisibility() {
        return this.f29032h;
    }
}
