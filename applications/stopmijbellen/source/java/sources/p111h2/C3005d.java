package p111h2;

import android.content.Context;
import android.graphics.Typeface;
import p226s.C4263g;
/* renamed from: h2.d */
/* loaded from: classes-dex2jar.jar:h2/d.class */
public class C3005d {

    /* renamed from: a */
    public static final C4263g<String, Typeface> f10104a = new C4263g<>();

    /* renamed from: a */
    public static Typeface m2756a(Context context, String str) {
        C4263g<String, Typeface> c4263g = f10104a;
        synchronized (c4263g) {
            if (c4263g.m1198e(str) >= 0) {
                return c4263g.getOrDefault(str, null);
            }
            try {
                Typeface createFromAsset = Typeface.createFromAsset(context.getAssets(), String.format("fonts/%s", str));
                c4263g.put(str, createFromAsset);
                return createFromAsset;
            } catch (RuntimeException e) {
                return null;
            }
        }
    }
}
