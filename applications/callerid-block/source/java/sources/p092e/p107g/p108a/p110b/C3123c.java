package p092e.p107g.p108a.p110b;

import android.content.Context;
import android.graphics.Typeface;
import java.util.HashMap;
/* renamed from: e.g.a.b.c */
/* loaded from: classes2-dex2jar.jar:e/g/a/b/c.class */
public class C3123c {

    /* renamed from: a */
    private static final HashMap<String, Typeface> f12933a = new HashMap<>();

    /* renamed from: a */
    public static Typeface m77a(Context context, String str, int i) {
        if (str == null || !str.startsWith("asset:")) {
            return Typeface.create(str, i);
        }
        HashMap<String, Typeface> hashMap = f12933a;
        synchronized (hashMap) {
            try {
                if (hashMap.containsKey(str)) {
                    return hashMap.get(str);
                }
                Typeface createFromAsset = Typeface.createFromAsset(context.getAssets(), str.substring(6));
                hashMap.put(str, createFromAsset);
                return createFromAsset;
            } catch (Exception e) {
                return Typeface.DEFAULT;
            }
        }
    }
}
