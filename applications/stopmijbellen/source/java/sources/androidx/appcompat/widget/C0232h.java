package androidx.appcompat.widget;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.widget.CheckedTextView;
import p098g0.C2789a;
/* renamed from: androidx.appcompat.widget.h */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/h.class */
public class C0232h {

    /* renamed from: a */
    public final CheckedTextView f948a;

    /* renamed from: b */
    public ColorStateList f949b = null;

    /* renamed from: c */
    public PorterDuff.Mode f950c = null;

    /* renamed from: d */
    public boolean f951d = false;

    /* renamed from: e */
    public boolean f952e = false;

    /* renamed from: f */
    public boolean f953f;

    public C0232h(CheckedTextView checkedTextView) {
        this.f948a = checkedTextView;
    }

    /* renamed from: a */
    public void m8500a() {
        Drawable checkMarkDrawable = this.f948a.getCheckMarkDrawable();
        if (checkMarkDrawable != null) {
            if (!this.f951d && !this.f952e) {
                return;
            }
            Drawable mutate = C2789a.m3007h(checkMarkDrawable).mutate();
            if (this.f951d) {
                mutate.setTintList(this.f949b);
            }
            if (this.f952e) {
                mutate.setTintMode(this.f950c);
            }
            if (mutate.isStateful()) {
                mutate.setState(this.f948a.getDrawableState());
            }
            this.f948a.setCheckMarkDrawable(mutate);
        }
    }
}
