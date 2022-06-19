package p193e.p1512i.p1516b.p1531s2;

import android.content.Context;
import com.criteo.publisher.model.AdSize;
/* renamed from: e.i.b.s2.c */
/* loaded from: classes-dex2jar.jar:e/i/b/s2/c.class */
public class C23078c {

    /* renamed from: a */
    public final Context f63901a;

    /* renamed from: b */
    public final C23086i f63902b;

    public C23078c(Context context, C23086i c23086i) {
        this.f63901a = context;
        this.f63902b = c23086i;
    }

    /* renamed from: a */
    public int m7566a() {
        AdSize m7564a = this.f63902b.m7564a();
        return m7564a.getWidth() < m7564a.getHeight() ? 1 : 2;
    }

    /* renamed from: b */
    public int m7565b(int i) {
        return (int) Math.ceil(i * this.f63901a.getResources().getDisplayMetrics().density);
    }
}
