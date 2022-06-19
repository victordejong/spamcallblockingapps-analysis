package androidx.appcompat.widget;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.View;
import java.util.WeakHashMap;
import p163m0.C3589v;
import p163m0.C3611y;
/* renamed from: androidx.appcompat.widget.e */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/e.class */
public class C0221e {

    /* renamed from: a */
    public final View f911a;

    /* renamed from: d */
    public C0289x0 f914d;

    /* renamed from: e */
    public C0289x0 f915e;

    /* renamed from: f */
    public C0289x0 f916f;

    /* renamed from: c */
    public int f913c = -1;

    /* renamed from: b */
    public final C0242j f912b = C0242j.m8486a();

    public C0221e(View view) {
        this.f911a = view;
    }

    /* renamed from: a */
    public void m8548a() {
        boolean z;
        Drawable background = this.f911a.getBackground();
        if (background != null) {
            int i = Build.VERSION.SDK_INT;
            if (i <= 21 ? i == 21 : this.f914d != null) {
                if (this.f916f == null) {
                    this.f916f = new C0289x0();
                }
                C0289x0 c0289x0 = this.f916f;
                c0289x0.f1131a = null;
                c0289x0.f1134d = false;
                c0289x0.f1132b = null;
                c0289x0.f1133c = false;
                View view = this.f911a;
                WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
                ColorStateList m2044g = C3589v.C3598i.m2044g(view);
                if (m2044g != null) {
                    c0289x0.f1134d = true;
                    c0289x0.f1131a = m2044g;
                }
                PorterDuff.Mode m2043h = C3589v.C3598i.m2043h(this.f911a);
                if (m2043h != null) {
                    c0289x0.f1133c = true;
                    c0289x0.f1132b = m2043h;
                }
                if (c0289x0.f1134d || c0289x0.f1133c) {
                    C0242j.m8481f(background, c0289x0, this.f911a.getDrawableState());
                    z = true;
                } else {
                    z = false;
                }
                if (z) {
                    return;
                }
            }
            C0289x0 c0289x02 = this.f915e;
            if (c0289x02 != null) {
                C0242j.m8481f(background, c0289x02, this.f911a.getDrawableState());
                return;
            }
            C0289x0 c0289x03 = this.f914d;
            if (c0289x03 == null) {
                return;
            }
            C0242j.m8481f(background, c0289x03, this.f911a.getDrawableState());
        }
    }

    /* renamed from: b */
    public ColorStateList m8547b() {
        C0289x0 c0289x0 = this.f915e;
        return c0289x0 != null ? c0289x0.f1131a : null;
    }

    /* renamed from: c */
    public PorterDuff.Mode m8546c() {
        C0289x0 c0289x0 = this.f915e;
        return c0289x0 != null ? c0289x0.f1132b : null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:41:0x0108, code lost:
        if (p163m0.C3589v.C3598i.m2043h(r0) != null) goto L42;
     */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00b4 A[Catch: all -> 0x00c1, TRY_LEAVE, TryCatch #0 {all -> 0x00c1, blocks: (B:3:0x0033, B:5:0x003b, B:7:0x005c, B:9:0x0062, B:11:0x0069, B:14:0x0085, B:16:0x0092, B:25:0x00ac, B:27:0x00b4, B:29:0x00c5, B:31:0x00cc, B:33:0x00d3, B:36:0x00f4, B:40:0x0104, B:48:0x0116, B:50:0x011e, B:52:0x0129), top: B:58:0x0033 }] */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m8545d(android.util.AttributeSet r9, int r10) {
        /*
            Method dump skipped, instructions count: 319
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.C0221e.m8545d(android.util.AttributeSet, int):void");
    }

    /* renamed from: e */
    public void m8544e() {
        this.f913c = -1;
        m8542g(null);
        m8548a();
    }

    /* renamed from: f */
    public void m8543f(int i) {
        this.f913c = i;
        C0242j c0242j = this.f912b;
        m8542g(c0242j != null ? c0242j.m8483d(this.f911a.getContext(), i) : null);
        m8548a();
    }

    /* renamed from: g */
    public void m8542g(ColorStateList colorStateList) {
        if (colorStateList != null) {
            if (this.f914d == null) {
                this.f914d = new C0289x0();
            }
            C0289x0 c0289x0 = this.f914d;
            c0289x0.f1131a = colorStateList;
            c0289x0.f1134d = true;
        } else {
            this.f914d = null;
        }
        m8548a();
    }

    /* renamed from: h */
    public void m8541h(ColorStateList colorStateList) {
        if (this.f915e == null) {
            this.f915e = new C0289x0();
        }
        C0289x0 c0289x0 = this.f915e;
        c0289x0.f1131a = colorStateList;
        c0289x0.f1134d = true;
        m8548a();
    }

    /* renamed from: i */
    public void m8540i(PorterDuff.Mode mode) {
        if (this.f915e == null) {
            this.f915e = new C0289x0();
        }
        C0289x0 c0289x0 = this.f915e;
        c0289x0.f1132b = mode;
        c0289x0.f1133c = true;
        m8548a();
    }
}
