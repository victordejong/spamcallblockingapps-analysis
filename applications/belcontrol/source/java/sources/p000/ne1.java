package p000;

import android.content.Context;
import java.util.concurrent.ExecutorService;
import p000.k61;
/* renamed from: ne1 */
/* loaded from: classes3-dex2jar.jar:ne1.class */
public class ne1 {

    /* renamed from: a */
    public AbstractC1499b f7128a;

    /* renamed from: b */
    public ExecutorService f7129b;

    /* renamed from: ne1$a */
    /* loaded from: classes3-dex2jar.jar:ne1$a.class */
    public class RunnableC1498a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ String f7130a;

        public RunnableC1498a(String str) {
            ne1.this = r4;
            this.f7130a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            int i;
            try {
                k61.m1464E(this.f7130a);
                ne1.this.f7128a.m1181a();
            } catch (k61.C1456a e) {
                Context m1839k = fa1.m1839k();
                if (m1839k == null) {
                    return;
                }
                String string = m1839k.getString(2131822093);
                int m1434b = e.m1434b();
                if (m1434b != 403) {
                    if (m1434b == 404) {
                        i = 2131822095;
                    }
                    ne1.this.f7128a.onFailure(string);
                }
                i = 2131822094;
                string = m1839k.getString(i);
                ne1.this.f7128a.onFailure(string);
            }
        }
    }

    /* renamed from: ne1$b */
    /* loaded from: classes3-dex2jar.jar:ne1$b.class */
    public interface AbstractC1499b {
        /* renamed from: a */
        void m1181a();

        void onFailure(String str);
    }

    public ne1(AbstractC1499b abstractC1499b, ExecutorService executorService) {
        this.f7128a = abstractC1499b;
        this.f7129b = executorService;
    }

    /* renamed from: b */
    public void m1182b(String str) {
        this.f7129b.execute(new RunnableC1498a(str));
    }
}
