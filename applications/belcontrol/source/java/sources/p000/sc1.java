package p000;

import android.os.SystemClock;
import java.util.ArrayList;
/* renamed from: sc1 */
/* loaded from: classes3-dex2jar.jar:sc1.class */
public class sc1 {

    /* renamed from: a */
    public final ArrayList<C1655a> f8125a = new ArrayList<>();

    /* renamed from: b */
    public final ArrayList<C1655a> f8126b = new ArrayList<>();

    /* renamed from: c */
    public long f8127c = SystemClock.elapsedRealtime();

    /* renamed from: sc1$a */
    /* loaded from: classes3-dex2jar.jar:sc1$a.class */
    public static class C1655a {

        /* renamed from: a */
        public float f8128a = 1.0f;

        public C1655a(float f) {
        }
    }

    /* renamed from: a */
    public void m580a(float f) {
        m578c();
        this.f8126b.add(new C1655a(f));
    }

    /* renamed from: b */
    public void m579b(float f) {
        m578c();
        this.f8125a.add(new C1655a(f));
    }

    /* renamed from: c */
    public final void m578c() {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        long j = this.f8127c;
        if (elapsedRealtime <= j) {
            return;
        }
        float pow = (float) Math.pow(0.8999999761581421d, ((float) (elapsedRealtime - j)) / 50.0f);
        m577d(this.f8125a, pow);
        m577d(this.f8126b, pow);
        this.f8127c = elapsedRealtime;
    }

    /* renamed from: d */
    public final void m577d(ArrayList<C1655a> arrayList, float f) {
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            arrayList.get(i).f8128a *= f;
        }
        while (!arrayList.isEmpty() && m576e(arrayList.get(0).f8128a)) {
            arrayList.remove(0);
        }
    }

    /* renamed from: e */
    public final boolean m576e(float f) {
        return f <= 1.0E-5f && f >= -1.0E-5f;
    }
}
