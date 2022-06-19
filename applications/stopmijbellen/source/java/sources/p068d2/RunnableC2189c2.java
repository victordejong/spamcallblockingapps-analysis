package p068d2;

import java.io.IOException;
import org.json.JSONException;
/* renamed from: d2.c2 */
/* loaded from: classes-dex2jar.jar:d2/c2.class */
public class RunnableC2189c2 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ C2195d2 f7984a;

    public RunnableC2189c2(C2195d2 c2195d2) {
        this.f7984a = c2195d2;
    }

    @Override // java.lang.Runnable
    public void run() {
        C2195d2 c2195d2 = this.f7984a;
        synchronized (c2195d2) {
            try {
                try {
                    if (c2195d2.f8009c.size() > 0) {
                        c2195d2.f8007a.m3691a(c2195d2.m3771a(c2195d2.f8012f, c2195d2.f8009c));
                        c2195d2.f8009c.clear();
                    }
                    if (c2195d2.f8010d.size() > 0) {
                        c2195d2.f8007a.m3691a(c2195d2.m3771a(c2195d2.f8013g, c2195d2.f8010d));
                        c2195d2.f8010d.clear();
                    }
                } catch (JSONException e) {
                    c2195d2.f8009c.clear();
                }
            } catch (IOException e2) {
                c2195d2.f8009c.clear();
            }
        }
    }
}
