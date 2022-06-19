package p1727n3.p1734b.p1743f;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.widget.CompoundButton;
/* renamed from: n3.b.f.d */
/* loaded from: classes-dex2jar.jar:n3/b/f/d.class */
public class C25501d {

    /* renamed from: a */
    public final CompoundButton f71353a;

    /* renamed from: b */
    public ColorStateList f71354b = null;

    /* renamed from: c */
    public PorterDuff.Mode f71355c = null;

    /* renamed from: d */
    public boolean f71356d = false;

    /* renamed from: e */
    public boolean f71357e = false;

    /* renamed from: f */
    public boolean f71358f;

    public C25501d(CompoundButton compoundButton) {
        this.f71353a = compoundButton;
    }

    /* renamed from: a */
    public void m3382a() {
        Drawable buttonDrawable = this.f71353a.getButtonDrawable();
        if (buttonDrawable != null) {
            if (!this.f71356d && !this.f71357e) {
                return;
            }
            Drawable mutate = buttonDrawable.mutate();
            if (this.f71356d) {
                mutate.setTintList(this.f71354b);
            }
            if (this.f71357e) {
                mutate.setTintMode(this.f71355c);
            }
            if (mutate.isStateful()) {
                mutate.setState(this.f71353a.getDrawableState());
            }
            this.f71353a.setButtonDrawable(mutate);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0063 A[Catch: all -> 0x00a6, TRY_ENTER, TryCatch #1 {all -> 0x00a6, blocks: (B:3:0x0030, B:5:0x003c, B:7:0x0047, B:12:0x0063, B:14:0x006f, B:16:0x007a, B:17:0x008b, B:17:0x008b, B:18:0x008e, B:20:0x0097, B:22:0x00aa, B:24:0x00b6), top: B:33:0x0030 }] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0097 A[Catch: all -> 0x00a6, TRY_LEAVE, TryCatch #1 {all -> 0x00a6, blocks: (B:3:0x0030, B:5:0x003c, B:7:0x0047, B:12:0x0063, B:14:0x006f, B:16:0x007a, B:17:0x008b, B:17:0x008b, B:18:0x008e, B:20:0x0097, B:22:0x00aa, B:24:0x00b6), top: B:33:0x0030 }] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00b6 A[Catch: all -> 0x00a6, TryCatch #1 {all -> 0x00a6, blocks: (B:3:0x0030, B:5:0x003c, B:7:0x0047, B:12:0x0063, B:14:0x006f, B:16:0x007a, B:17:0x008b, B:17:0x008b, B:18:0x008e, B:20:0x0097, B:22:0x00aa, B:24:0x00b6), top: B:33:0x0030 }] */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m3381b(android.util.AttributeSet r9, int r10) {
        /*
            Method dump skipped, instructions count: 220
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1734b.p1743f.C25501d.m3381b(android.util.AttributeSet, int):void");
    }
}
