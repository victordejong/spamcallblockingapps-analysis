package p012b.p016b.p026q;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.widget.CompoundButton;
import p012b.p042i.p046j.p047m.C0907a;
import p012b.p042i.p056q.C1026c;
/* renamed from: b.b.q.e */
/* loaded from: classes-dex2jar.jar:b/b/q/e.class */
public class C0687e {

    /* renamed from: a */
    public final CompoundButton f3395a;

    /* renamed from: b */
    public ColorStateList f3396b = null;

    /* renamed from: c */
    public PorterDuff.Mode f3397c = null;

    /* renamed from: d */
    public boolean f3398d = false;

    /* renamed from: e */
    public boolean f3399e = false;

    /* renamed from: f */
    public boolean f3400f;

    public C0687e(CompoundButton compoundButton) {
        this.f3395a = compoundButton;
    }

    /* renamed from: a */
    public int m36445a(int i) {
        int i2 = i;
        if (Build.VERSION.SDK_INT < 17) {
            Drawable a = C1026c.m35119a(this.f3395a);
            i2 = i;
            if (a != null) {
                i2 = i + a.getIntrinsicWidth();
            }
        }
        return i2;
    }

    /* renamed from: a */
    public void m36446a() {
        Drawable a = C1026c.m35119a(this.f3395a);
        if (a == null) {
            return;
        }
        if (this.f3398d || this.f3399e) {
            Drawable mutate = C0907a.m35514h(a).mutate();
            if (this.f3398d) {
                C0907a.m35526a(mutate, this.f3396b);
            }
            if (this.f3399e) {
                C0907a.m35523a(mutate, this.f3397c);
            }
            if (mutate.isStateful()) {
                mutate.setState(this.f3395a.getDrawableState());
            }
            this.f3395a.setButtonDrawable(mutate);
        }
    }

    /* renamed from: a */
    public void m36444a(ColorStateList colorStateList) {
        this.f3396b = colorStateList;
        this.f3398d = true;
        m36446a();
    }

    /* renamed from: a */
    public void m36443a(PorterDuff.Mode mode) {
        this.f3397c = mode;
        this.f3399e = true;
        m36446a();
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0092 A[Catch: all -> 0x00c2, TryCatch #0 {all -> 0x00c2, blocks: (B:3:0x002b, B:5:0x0035, B:7:0x0042, B:12:0x005f, B:14:0x0069, B:16:0x0076, B:18:0x0089, B:20:0x0092, B:22:0x00a1, B:24:0x00aa), top: B:32:0x002b }] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00aa A[Catch: all -> 0x00c2, TryCatch #0 {all -> 0x00c2, blocks: (B:3:0x002b, B:5:0x0035, B:7:0x0042, B:12:0x005f, B:14:0x0069, B:16:0x0076, B:18:0x0089, B:20:0x0092, B:22:0x00a1, B:24:0x00aa), top: B:32:0x002b }] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m36442a(android.util.AttributeSet r9, int r10) {
        /*
            r8 = this;
            r0 = r8
            android.widget.CompoundButton r0 = r0.f3395a
            android.content.Context r0 = r0.getContext()
            r1 = r9
            int[] r2 = p012b.p016b.C0583j.CompoundButton
            r3 = r10
            r4 = 0
            b.b.q.f0 r0 = p012b.p016b.p026q.C0691f0.m36414a(r0, r1, r2, r3, r4)
            r11 = r0
            r0 = r8
            android.widget.CompoundButton r0 = r0.f3395a
            r12 = r0
            r0 = r12
            r1 = r12
            android.content.Context r1 = r1.getContext()
            int[] r2 = p012b.p016b.C0583j.CompoundButton
            r3 = r9
            r4 = r11
            android.content.res.TypedArray r4 = r4.m36422a()
            r5 = r10
            r6 = 0
            p012b.p042i.p054p.C1002u.m35244a(r0, r1, r2, r3, r4, r5, r6)
            r0 = r11
            int r1 = p012b.p016b.C0583j.CompoundButton_buttonCompat     // Catch: all -> 0x00c2
            boolean r0 = r0.m36402g(r1)     // Catch: all -> 0x00c2
            if (r0 == 0) goto L_0x0059
            r0 = r11
            int r1 = p012b.p016b.C0583j.CompoundButton_buttonCompat     // Catch: all -> 0x00c2
            r2 = 0
            int r0 = r0.m36401g(r1, r2)     // Catch: all -> 0x00c2
            r10 = r0
            r0 = r10
            if (r0 == 0) goto L_0x0059
            r0 = r8
            android.widget.CompoundButton r0 = r0.f3395a     // Catch: all -> 0x00c2, NotFoundException -> 0x00c9
            r1 = r8
            android.widget.CompoundButton r1 = r1.f3395a     // Catch: all -> 0x00c2, NotFoundException -> 0x00c9
            android.content.Context r1 = r1.getContext()     // Catch: all -> 0x00c2, NotFoundException -> 0x00c9
            r2 = r10
            android.graphics.drawable.Drawable r1 = p012b.p016b.p018l.p019a.C0601a.m36777c(r1, r2)     // Catch: all -> 0x00c2, NotFoundException -> 0x00c9
            r0.setButtonDrawable(r1)     // Catch: all -> 0x00c2, NotFoundException -> 0x00c9
            r0 = 1
            r10 = r0
            goto L_0x005b
        L_0x0059:
            r0 = 0
            r10 = r0
        L_0x005b:
            r0 = r10
            if (r0 != 0) goto L_0x0088
            r0 = r11
            int r1 = p012b.p016b.C0583j.CompoundButton_android_button     // Catch: all -> 0x00c2
            boolean r0 = r0.m36402g(r1)     // Catch: all -> 0x00c2
            if (r0 == 0) goto L_0x0088
            r0 = r11
            int r1 = p012b.p016b.C0583j.CompoundButton_android_button     // Catch: all -> 0x00c2
            r2 = 0
            int r0 = r0.m36401g(r1, r2)     // Catch: all -> 0x00c2
            r10 = r0
            r0 = r10
            if (r0 == 0) goto L_0x0088
            r0 = r8
            android.widget.CompoundButton r0 = r0.f3395a     // Catch: all -> 0x00c2
            r1 = r8
            android.widget.CompoundButton r1 = r1.f3395a     // Catch: all -> 0x00c2
            android.content.Context r1 = r1.getContext()     // Catch: all -> 0x00c2
            r2 = r10
            android.graphics.drawable.Drawable r1 = p012b.p016b.p018l.p019a.C0601a.m36777c(r1, r2)     // Catch: all -> 0x00c2
            r0.setButtonDrawable(r1)     // Catch: all -> 0x00c2
        L_0x0088:
            r0 = r11
            int r1 = p012b.p016b.C0583j.CompoundButton_buttonTint     // Catch: all -> 0x00c2
            boolean r0 = r0.m36402g(r1)     // Catch: all -> 0x00c2
            if (r0 == 0) goto L_0x00a0
            r0 = r8
            android.widget.CompoundButton r0 = r0.f3395a     // Catch: all -> 0x00c2
            r1 = r11
            int r2 = p012b.p016b.C0583j.CompoundButton_buttonTint     // Catch: all -> 0x00c2
            android.content.res.ColorStateList r1 = r1.m36421a(r2)     // Catch: all -> 0x00c2
            p012b.p042i.p056q.C1026c.m35118a(r0, r1)     // Catch: all -> 0x00c2
        L_0x00a0:
            r0 = r11
            int r1 = p012b.p016b.C0583j.CompoundButton_buttonTintMode     // Catch: all -> 0x00c2
            boolean r0 = r0.m36402g(r1)     // Catch: all -> 0x00c2
            if (r0 == 0) goto L_0x00bd
            r0 = r8
            android.widget.CompoundButton r0 = r0.f3395a     // Catch: all -> 0x00c2
            r1 = r11
            int r2 = p012b.p016b.C0583j.CompoundButton_buttonTintMode     // Catch: all -> 0x00c2
            r3 = -1
            int r1 = r1.m36407d(r2, r3)     // Catch: all -> 0x00c2
            r2 = 0
            android.graphics.PorterDuff$Mode r1 = p012b.p016b.p026q.C0716p.m36252a(r1, r2)     // Catch: all -> 0x00c2
            p012b.p042i.p056q.C1026c.m35117a(r0, r1)     // Catch: all -> 0x00c2
        L_0x00bd:
            r0 = r11
            r0.m36413b()
            return
        L_0x00c2:
            r9 = move-exception
            r0 = r11
            r0.m36413b()
            r0 = r9
            throw r0
        L_0x00c9:
            r9 = move-exception
            goto L_0x0059
        */
        throw new UnsupportedOperationException("Method not decompiled: p012b.p016b.p026q.C0687e.m36442a(android.util.AttributeSet, int):void");
    }

    /* renamed from: b */
    public ColorStateList m36441b() {
        return this.f3396b;
    }

    /* renamed from: c */
    public PorterDuff.Mode m36440c() {
        return this.f3397c;
    }

    /* renamed from: d */
    public void m36439d() {
        if (this.f3400f) {
            this.f3400f = false;
            return;
        }
        this.f3400f = true;
        m36446a();
    }
}
