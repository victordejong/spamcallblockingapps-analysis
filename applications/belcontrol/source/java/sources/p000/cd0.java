package p000;

import android.content.Context;
import android.graphics.Typeface;
import java.util.HashMap;
/* renamed from: cd0 */
/* loaded from: classes-dex2jar.jar:cd0.class */
public class cd0 {

    /* renamed from: a */
    public static HashMap<String, Typeface> f2349a = new HashMap<>();

    /* renamed from: b */
    public static HashMap<String, Typeface>[] f2350b;

    static {
        HashMap<String, Typeface>[] hashMapArr = new HashMap[4];
        f2350b = hashMapArr;
        hashMapArr[0] = new HashMap<>();
        f2350b[2] = new HashMap<>();
        f2350b[1] = new HashMap<>();
        f2350b[3] = new HashMap<>();
    }

    /* renamed from: a */
    public static Typeface m5346a(Context context, String str) {
        Typeface typeface = f2349a.get(str);
        if (typeface != null) {
            return typeface;
        }
        zc0[] values = zc0.values();
        int length = values.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                break;
            }
            zc0 zc0Var = values[i];
            if (zc0Var.b().equals(str)) {
                Typeface m5344c = m5344c(context, zc0Var);
                if (m5344c != null) {
                    return m5344c;
                }
            } else {
                i++;
            }
        }
        Typeface createFromAsset = Typeface.createFromAsset(context.getAssets(), str);
        if (createFromAsset == null) {
            return Typeface.DEFAULT;
        }
        f2349a.put(str, createFromAsset);
        return createFromAsset;
    }

    /* renamed from: b */
    public static Typeface m5345b(Context context, String str, int i) {
        zc0[] values;
        Typeface m5344c;
        Typeface typeface = f2350b[i].get(str);
        if (typeface != null) {
            return typeface;
        }
        for (zc0 zc0Var : zc0.values()) {
            if (zc0Var.a().equals(str) && zc0Var.c() == i && (m5344c = m5344c(context, zc0Var)) != null) {
                return m5344c;
            }
        }
        Typeface create = Typeface.create(str, i);
        if (create == null) {
            return Typeface.DEFAULT;
        }
        f2350b[i].put(str, create);
        return create;
    }

    /* renamed from: c */
    public static Typeface m5344c(Context context, zc0 zc0Var) {
        try {
            Typeface createFromAsset = Typeface.createFromAsset(context.getAssets(), zc0Var.b());
            f2349a.put(zc0Var.b(), createFromAsset);
            f2350b[zc0Var.c()].put(zc0Var.a(), createFromAsset);
            return createFromAsset;
        } catch (Exception e) {
            Typeface create = Typeface.create(zc0Var.a(), zc0Var.c());
            if (create == null) {
                return null;
            }
            f2349a.put(zc0Var.b(), create);
            f2350b[zc0Var.c()].put(zc0Var.a(), create);
            return create;
        }
    }
}
