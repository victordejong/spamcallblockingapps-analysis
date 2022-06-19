package p000;

import android.util.Log;
import dy;
import p000.C1324dz;
/* renamed from: dy$d$b */
/* loaded from: classes-dex2jar.jar:dy$d$b.class */
public class dy$d$b {

    /* renamed from: a */
    public final Object f6151a;

    /* renamed from: b */
    public final int f6152b;

    public dy$d$b(dy.d dVar, Object obj) {
        int i;
        this.f6151a = obj;
        if (obj instanceof String) {
            i = 1;
        } else if (!(obj instanceof C1324dz.C1332i)) {
            this.f6152b = 0;
            Log.w("RecyclerAdapter", "Wrong type of data passed to Item constructor");
            return;
        } else {
            i = 2;
        }
        this.f6152b = i;
    }

    /* renamed from: a */
    public Object m2413a() {
        return this.f6151a;
    }

    /* renamed from: b */
    public int m2412b() {
        return this.f6152b;
    }
}
