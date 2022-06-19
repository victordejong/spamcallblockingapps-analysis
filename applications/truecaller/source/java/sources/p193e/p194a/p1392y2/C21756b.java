package p193e.p194a.p1392y2;

import androidx.work.ListenableWorker;
import java.util.Map;
import s1.z.b.l;
import s1.z.c.m;
/* renamed from: e.a.y2.b */
/* loaded from: classes5-dex2jar.jar:e/a/y2/b.class */
public final class C21756b extends m implements l<Map.Entry<? extends String, ? extends ListenableWorker.AbstractC0414a>, CharSequence> {

    /* renamed from: b */
    public static final C21756b f60585b = new C21756b();

    public C21756b() {
        super(1);
    }

    /* renamed from: d */
    public Object m9117d(Object obj) {
        Map.Entry entry = (Map.Entry) obj;
        s1.z.c.l.e(entry, "<name for destructuring parameter 0>");
        String str = (String) entry.getKey();
        ListenableWorker.AbstractC0414a abstractC0414a = (ListenableWorker.AbstractC0414a) entry.getValue();
        return str + '=' + abstractC0414a;
    }
}
