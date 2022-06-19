package p087f0;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.Build;
import android.util.Log;
import java.lang.reflect.Method;
import p029c4.C0821e;
import p076e0.C2511f;
import p226s.C4256e;
/* renamed from: f0.e */
/* loaded from: classes-dex2jar.jar:f0/e.class */
public class C2699e {

    /* renamed from: a */
    public static final C2706k f9279a;

    /* renamed from: b */
    public static final C4256e<String, Typeface> f9280b;

    /* renamed from: f0.e$a */
    /* loaded from: classes-dex2jar.jar:f0/e$a.class */
    public static class C2700a extends C0821e {

        /* renamed from: i */
        public C2511f.AbstractC2514c f9281i;

        public C2700a(C2511f.AbstractC2514c abstractC2514c) {
            this.f9281i = abstractC2514c;
        }
    }

    static {
        int i = Build.VERSION.SDK_INT;
        if (i >= 29) {
            f9279a = new C2705j();
        } else if (i >= 28) {
            f9279a = new C2704i();
        } else if (i >= 26) {
            f9279a = new C2703h();
        } else {
            if (i >= 24) {
                Method method = C2702g.f9289d;
                if (method == null) {
                    Log.w("TypefaceCompatApi24Impl", "Unable to collect necessary private methods.Fallback to legacy implementation.");
                }
                if (method != null) {
                    f9279a = new C2702g();
                }
            }
            f9279a = new C2701f();
        }
        f9280b = new C4256e<>(16);
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0040, code lost:
        if (r8.equals(r0) == false) goto L13;
     */
    /* JADX WARN: Finally extract failed */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.graphics.Typeface m3243a(android.content.Context r7, p076e0.C2505d.AbstractC2506a r8, android.content.res.Resources r9, int r10, int r11, p076e0.C2511f.AbstractC2514c r12, android.os.Handler r13, boolean r14) {
        /*
            Method dump skipped, instructions count: 739
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p087f0.C2699e.m3243a(android.content.Context, e0.d$a, android.content.res.Resources, int, int, e0.f$c, android.os.Handler, boolean):android.graphics.Typeface");
    }

    /* renamed from: b */
    public static Typeface m3242b(Context context, Resources resources, int i, String str, int i2) {
        Typeface mo3224d = f9279a.mo3224d(context, resources, i, str, i2);
        if (mo3224d != null) {
            f9280b.put(m3241c(resources, i, i2), mo3224d);
        }
        return mo3224d;
    }

    /* renamed from: c */
    public static String m3241c(Resources resources, int i, int i2) {
        return resources.getResourcePackageName(i) + "-" + i + "-" + i2;
    }
}
