package p010g.p022j.p023a;

import android.content.Context;
import android.util.Log;
import g.j.a.e;
import g.j.a.f;
import java.util.Locale;
import p010g.p022j.p023a.AbstractC0245d;
import p010g.p022j.p023a.C0241b;
/* renamed from: g.j.a.c */
/* loaded from: classes2-dex2jar.jar:g/j/a/c.class */
public class C0243c {

    /* renamed from: a */
    private static C0241b.EnumC0242a f506a;

    /* renamed from: g.j.a.c$a */
    /* loaded from: classes2-dex2jar.jar:g/j/a/c$a.class */
    static /* synthetic */ class C0244a {

        /* renamed from: a */
        static final /* synthetic */ int[] f507a;

        static {
            int[] iArr = new int[C0241b.EnumC0242a.values().length];
            f507a = iArr;
            iArr[C0241b.EnumC0242a.Picasso252.ordinal()] = 1;
            f507a[C0241b.EnumC0242a.Picasso271828.ordinal()] = 2;
        }
    }

    /* renamed from: a */
    public static AbstractC0245d.AbstractC0246a m580a(Context context) {
        int i = C0244a.f507a[m579b().ordinal()];
        if (i == 1) {
            return new e.b(context);
        }
        if (i == 2) {
            return new f.b(context);
        }
        throw new RuntimeException("Add Picasso to your project");
    }

    /* renamed from: b */
    private static C0241b.EnumC0242a m579b() {
        if (f506a == null) {
            f506a = C0241b.m582a();
            Log.d("PicassoCompat", String.format(Locale.ENGLISH, "Picasso detected: '%s'", f506a));
        }
        return f506a;
    }

    /* renamed from: c */
    public static AbstractC0245d m578c(Context context) {
        int i = C0244a.f507a[m579b().ordinal()];
        if (i == 1) {
            return new e(context);
        }
        if (i == 2) {
            return new f();
        }
        throw new RuntimeException("Add Picasso to your project");
    }
}
