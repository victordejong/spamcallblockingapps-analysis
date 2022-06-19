package androidx.core.graphics;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.Build;
import android.os.CancellationSignal;
import android.os.Handler;
import androidx.core.p017a.p018a.C0441c;
import androidx.core.p017a.p018a.C0449f;
import androidx.core.p023e.C0489b;
import androidx.p013b.C0379e;
/* renamed from: androidx.core.graphics.c */
/* loaded from: classes-dex2jar.jar:androidx/core/graphics/c.class */
public class C0533c {

    /* renamed from: a */
    private static final C0544h f1966a;

    /* renamed from: b */
    private static final C0379e<String, Typeface> f1967b;

    static {
        if (Build.VERSION.SDK_INT >= 28) {
            f1966a = new C0543g();
        } else if (Build.VERSION.SDK_INT >= 26) {
            f1966a = new C0542f();
        } else if (Build.VERSION.SDK_INT >= 24 && C0541e.m20573a()) {
            f1966a = new C0541e();
        } else if (Build.VERSION.SDK_INT >= 21) {
            f1966a = new C0534d();
        } else {
            f1966a = new C0544h();
        }
        f1967b = new C0379e<>(16);
    }

    /* renamed from: a */
    public static Typeface m20616a(Context context, Resources resources, int i, String str, int i2) {
        Typeface mo20555a = f1966a.mo20555a(context, resources, i, str, i2);
        if (mo20555a != null) {
            f1967b.m21116a(m20610b(resources, i, i2), mo20555a);
        }
        return mo20555a;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x001e, code lost:
        if (r4 != null) goto L10;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.graphics.Typeface m20615a(android.content.Context r4, android.graphics.Typeface r5, int r6) {
        /*
            r0 = r4
            if (r0 != 0) goto Le
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            r1 = r0
            java.lang.String r2 = "Context cannot be null"
            r1.<init>(r2)
            throw r0
        Le:
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 21
            if (r0 >= r1) goto L23
            r0 = r4
            r1 = r5
            r2 = r6
            android.graphics.Typeface r0 = m20611b(r0, r1, r2)
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L23
        L21:
            r0 = r4
            return r0
        L23:
            r0 = r5
            r1 = r6
            android.graphics.Typeface r0 = android.graphics.Typeface.create(r0, r1)
            r4 = r0
            goto L21
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.graphics.C0533c.m20615a(android.content.Context, android.graphics.Typeface, int):android.graphics.Typeface");
    }

    /* renamed from: a */
    public static Typeface m20614a(Context context, CancellationSignal cancellationSignal, C0489b.C0495b[] c0495bArr, int i) {
        return f1966a.mo20554a(context, cancellationSignal, c0495bArr, i);
    }

    /* renamed from: a */
    public static Typeface m20613a(Context context, C0441c.AbstractC0442a abstractC0442a, Resources resources, int i, int i2, C0449f.AbstractC0450a abstractC0450a, Handler handler, boolean z) {
        Typeface typeface;
        boolean z2 = true;
        if (abstractC0442a instanceof C0441c.C0445d) {
            C0441c.C0445d c0445d = (C0441c.C0445d) abstractC0442a;
            if (z) {
                if (c0445d.m20857b() != 0) {
                    z2 = false;
                }
            } else if (abstractC0450a != null) {
                z2 = false;
            }
            typeface = C0489b.m20716a(context, c0445d.m20858a(), abstractC0450a, handler, z2, z ? c0445d.m20856c() : -1, i2);
        } else {
            Typeface mo20553a = f1966a.mo20553a(context, (C0441c.C0443b) abstractC0442a, resources, i2);
            typeface = mo20553a;
            if (abstractC0450a != null) {
                if (mo20553a != null) {
                    abstractC0450a.m20841a(mo20553a, handler);
                    typeface = mo20553a;
                } else {
                    abstractC0450a.m20842a(-3, handler);
                    typeface = mo20553a;
                }
            }
        }
        if (typeface != null) {
            f1967b.m21116a(m20610b(resources, i, i2), typeface);
        }
        return typeface;
    }

    /* renamed from: a */
    public static Typeface m20612a(Resources resources, int i, int i2) {
        return f1967b.m21117a((C0379e<String, Typeface>) m20610b(resources, i, i2));
    }

    /* renamed from: b */
    private static Typeface m20611b(Context context, Typeface typeface, int i) {
        C0441c.C0443b m20551a = f1966a.m20551a(typeface);
        return m20551a == null ? null : f1966a.mo20553a(context, m20551a, context.getResources(), i);
    }

    /* renamed from: b */
    private static String m20610b(Resources resources, int i, int i2) {
        return resources.getResourcePackageName(i) + "-" + i + "-" + i2;
    }
}
