package p193e.p194a.p1392y2;

import androidx.work.ListenableWorker;
import java.util.Map;
import s1.z.b.l;
import s1.z.c.m;
/* renamed from: e.a.y2.c */
/* loaded from: classes5-dex2jar.jar:e/a/y2/c.class */
public final class C21757c extends m implements l<Map.Entry<? extends String, ? extends ListenableWorker.AbstractC0414a>, Boolean> {

    /* renamed from: b */
    public static final C21757c f60586b = new C21757c();

    public C21757c() {
        super(1);
    }

    /* renamed from: d */
    public Object m9116d(Object obj) {
        Map.Entry entry = (Map.Entry) obj;
        s1.z.c.l.e(entry, "<name for destructuring parameter 0>");
        String str = (String) entry.getKey();
        return Boolean.valueOf(((ListenableWorker.AbstractC0414a) entry.getValue()) instanceof ListenableWorker.AbstractC0414a.C0416b);
    }
}
