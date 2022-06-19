package p000;

import android.os.Build;
import android.view.View;
import java.util.WeakHashMap;
import p000.hi1;
/* renamed from: si1 */
/* loaded from: classes3-dex2jar.jar:si1.class */
public abstract class si1 {

    /* renamed from: a */
    public static final WeakHashMap<View, si1> f8143a = new WeakHashMap<>(0);

    /* renamed from: a */
    public static si1 m563a(View view) {
        WeakHashMap<View, si1> weakHashMap = f8143a;
        si1 si1Var = weakHashMap.get(view);
        ui1 ui1Var = si1Var;
        if (si1Var == null) {
            int intValue = Integer.valueOf(Build.VERSION.SDK).intValue();
            ui1Var = intValue >= 14 ? new ui1(view) : intValue >= 11 ? new ti1(view) : new vi1(view);
            weakHashMap.put(view, ui1Var);
        }
        return ui1Var;
    }

    /* renamed from: b */
    public abstract si1 mo318b(long j);

    /* renamed from: c */
    public abstract si1 mo317c(hi1.AbstractC1443a abstractC1443a);

    /* renamed from: d */
    public abstract si1 mo316d(float f);
}
