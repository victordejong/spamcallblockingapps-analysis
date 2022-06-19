package androidx.appcompat.widget;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.widget.CompoundButton;
import p098g0.C2789a;
import p196p0.C3985c;
/* renamed from: androidx.appcompat.widget.i */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/i.class */
public class C0237i {

    /* renamed from: a */
    public final CompoundButton f964a;

    /* renamed from: b */
    public ColorStateList f965b = null;

    /* renamed from: c */
    public PorterDuff.Mode f966c = null;

    /* renamed from: d */
    public boolean f967d = false;

    /* renamed from: e */
    public boolean f968e = false;

    /* renamed from: f */
    public boolean f969f;

    public C0237i(CompoundButton compoundButton) {
        this.f964a = compoundButton;
    }

    /* renamed from: a */
    public void m8492a() {
        Drawable m1574a = C3985c.m1574a(this.f964a);
        if (m1574a != null) {
            if (!this.f967d && !this.f968e) {
                return;
            }
            Drawable mutate = C2789a.m3007h(m1574a).mutate();
            if (this.f967d) {
                mutate.setTintList(this.f965b);
            }
            if (this.f968e) {
                mutate.setTintMode(this.f966c);
            }
            if (mutate.isStateful()) {
                mutate.setState(this.f964a.getDrawableState());
            }
            this.f964a.setButtonDrawable(mutate);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x008e A[Catch: all -> 0x009d, TRY_LEAVE, TryCatch #1 {all -> 0x009d, blocks: (B:3:0x0032, B:5:0x003a, B:7:0x0047, B:11:0x0062, B:13:0x006a, B:15:0x0075, B:17:0x0087, B:19:0x008e, B:21:0x00a1, B:23:0x00a9), top: B:32:0x0032 }] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00a9 A[Catch: all -> 0x009d, TryCatch #1 {all -> 0x009d, blocks: (B:3:0x0032, B:5:0x003a, B:7:0x0047, B:11:0x0062, B:13:0x006a, B:15:0x0075, B:17:0x0087, B:19:0x008e, B:21:0x00a1, B:23:0x00a9), top: B:32:0x0032 }] */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m8491b(android.util.AttributeSet r9, int r10) {
        /*
            Method dump skipped, instructions count: 207
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.C0237i.m8491b(android.util.AttributeSet, int):void");
    }
}
