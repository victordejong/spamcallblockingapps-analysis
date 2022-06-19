package p262v3;

import android.content.Context;
import android.content.res.TypedArray;
import android.support.p012v4.media.C0082b;
import android.util.AttributeSet;
import android.util.TypedValue;
import me.zhanghai.android.materialprogressbar.C3681R;
import p134j4.C3260w0;
/* renamed from: v3.p */
/* loaded from: classes-dex2jar.jar:v3/p.class */
public final class C4634p {

    /* renamed from: a */
    public static final int[] f14324a = {C3681R.attr.colorPrimary};

    /* renamed from: b */
    public static final int[] f14325b = {2130968844};

    /* renamed from: a */
    public static void m690a(Context context, AttributeSet attributeSet, int i, int i2) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C3260w0.f11016J, i, i2);
        boolean z = obtainStyledAttributes.getBoolean(1, false);
        obtainStyledAttributes.recycle();
        if (z) {
            TypedValue typedValue = new TypedValue();
            if (!context.getTheme().resolveAttribute(2130969130, typedValue, true) || (typedValue.type == 18 && typedValue.data == 0)) {
                m688c(context, f14325b, "Theme.MaterialComponents");
            }
        }
        m688c(context, f14324a, "Theme.AppCompat");
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0074, code lost:
        if (r0.getResourceId(0, -1) != (-1)) goto L20;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m689b(android.content.Context r6, android.util.AttributeSet r7, int[] r8, int r9, int r10, int... r11) {
        /*
            r0 = r6
            r1 = r7
            int[] r2 = p134j4.C3260w0.f11016J
            r3 = r9
            r4 = r10
            android.content.res.TypedArray r0 = r0.obtainStyledAttributes(r1, r2, r3, r4)
            r12 = r0
            r0 = 0
            r13 = r0
            r0 = r12
            r1 = 2
            r2 = 0
            boolean r0 = r0.getBoolean(r1, r2)
            if (r0 != 0) goto L20
            r0 = r12
            r0.recycle()
            return
        L20:
            r0 = r11
            if (r0 == 0) goto L69
            r0 = r11
            int r0 = r0.length
            if (r0 != 0) goto L2e
            goto L69
        L2e:
            r0 = r6
            r1 = r7
            r2 = r8
            r3 = r9
            r4 = r10
            android.content.res.TypedArray r0 = r0.obtainStyledAttributes(r1, r2, r3, r4)
            r6 = r0
            r0 = r11
            int r0 = r0.length
            r10 = r0
            r0 = 0
            r9 = r0
        L3f:
            r0 = r9
            r1 = r10
            if (r0 >= r1) goto L62
            r0 = r6
            r1 = r11
            r2 = r9
            r1 = r1[r2]
            r2 = -1
            int r0 = r0.getResourceId(r1, r2)
            r1 = -1
            if (r0 != r1) goto L5c
            r0 = r6
            r0.recycle()
            r0 = r13
            r9 = r0
            goto L79
        L5c:
            int r9 = r9 + 1
            goto L3f
        L62:
            r0 = r6
            r0.recycle()
            goto L77
        L69:
            r0 = r13
            r9 = r0
            r0 = r12
            r1 = 0
            r2 = -1
            int r0 = r0.getResourceId(r1, r2)
            r1 = -1
            if (r0 == r1) goto L79
        L77:
            r0 = 1
            r9 = r0
        L79:
            r0 = r12
            r0.recycle()
            r0 = r9
            if (r0 == 0) goto L83
            return
        L83:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            r1 = r0
            java.lang.String r2 = "This component requires that you specify a valid TextAppearance attribute. Update your app theme to inherit from Theme.MaterialComponents (or a descendant)."
            r1.<init>(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p262v3.C4634p.m689b(android.content.Context, android.util.AttributeSet, int[], int, int, int[]):void");
    }

    /* renamed from: c */
    public static void m688c(Context context, int[] iArr, String str) {
        boolean z;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(iArr);
        int i = 0;
        while (true) {
            if (i >= iArr.length) {
                obtainStyledAttributes.recycle();
                z = true;
                break;
            } else if (!obtainStyledAttributes.hasValue(i)) {
                obtainStyledAttributes.recycle();
                z = false;
                break;
            } else {
                i++;
            }
        }
        if (z) {
            return;
        }
        throw new IllegalArgumentException(C0082b.m8755g("The style on this component requires your app theme to be ", str, " (or a descendant)."));
    }

    /* renamed from: d */
    public static TypedArray m687d(Context context, AttributeSet attributeSet, int[] iArr, int i, int i2, int... iArr2) {
        m690a(context, attributeSet, i, i2);
        m689b(context, attributeSet, iArr, i, i2, iArr2);
        return context.obtainStyledAttributes(attributeSet, iArr, i, i2);
    }
}
