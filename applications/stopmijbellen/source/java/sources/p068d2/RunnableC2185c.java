package p068d2;

import android.content.Context;
import android.support.p012v4.media.AbstractC0081a;
import android.util.Base64;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import org.json.JSONArray;
import org.json.JSONObject;
/* renamed from: d2.c */
/* loaded from: classes-dex2jar.jar:d2/c.class */
public class RunnableC2185c implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ C2230f1 f7977a;

    /* renamed from: b */
    public final /* synthetic */ C2272g2 f7978b;

    /* renamed from: c */
    public final /* synthetic */ AbstractC0081a f7979c;

    /* renamed from: d2.c$a */
    /* loaded from: classes-dex2jar.jar:d2/c$a.class */
    public class RunnableC2186a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ String f7980a;

        public RunnableC2186a(String str) {
            RunnableC2185c.this = r4;
            this.f7980a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!this.f7980a.isEmpty()) {
                RunnableC2185c.this.f7979c.mo4830H(this.f7980a);
            } else {
                RunnableC2185c.this.f7979c.mo4829z();
            }
        }
    }

    public RunnableC2185c(C2230f1 c2230f1, C2272g2 c2272g2, AbstractC0081a abstractC0081a) {
        this.f7977a = c2230f1;
        this.f7978b = c2272g2;
        this.f7979c = abstractC0081a;
    }

    @Override // java.lang.Runnable
    public void run() {
        String str;
        C2230f1 c2230f1 = this.f7977a;
        C2272g2 c2272g2 = this.f7978b;
        long j = c2230f1.f8079Q;
        C2267f4 c2267f4 = c2230f1.m3715s().f8370d;
        ExecutorService executorService = C2315i3.f8262a;
        c2267f4.m3711a(new String[]{"ads_to_restore"});
        ArrayList arrayList = new ArrayList(Arrays.asList(c2267f4));
        if (j > 0) {
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new CallableC2192d(c2230f1, j));
            arrayList2.add(new CallableC2201e(c2230f1, j));
            ArrayList arrayList3 = new ArrayList();
            ExecutorService newFixedThreadPool = Executors.newFixedThreadPool(arrayList2.size());
            ArrayList arrayList4 = new ArrayList();
            try {
                arrayList4.addAll(newFixedThreadPool.invokeAll(arrayList2));
                newFixedThreadPool.shutdownNow();
            } catch (Exception e) {
            }
            for (int i = 0; i < arrayList4.size(); i++) {
                Future future = (Future) arrayList4.get(i);
                if (!future.isCancelled()) {
                    try {
                        arrayList3.add(future.get());
                    } catch (Exception e2) {
                    }
                } else if (arrayList2.get(i) instanceof AbstractCallableC2459y1) {
                    arrayList3.add(((AbstractCallableC2459y1) arrayList2.get(i)).m3533a());
                }
            }
            arrayList.addAll(arrayList3);
        } else {
            C2267f4 m3783b = c2230f1.m3721m().m3783b(-1L);
            C2315i3.m3667d(m3783b);
            arrayList.add(m3783b);
            arrayList.add(C2168b.m3791g(-1L));
        }
        arrayList.add(c2230f1.f8078P);
        C2267f4 m3748e = C2227e4.m3748e((C2267f4[]) arrayList.toArray(new C2267f4[0]));
        int i2 = c2272g2.f8168b + 1;
        c2272g2.f8168b = i2;
        C2227e4.m3740m(m3748e, "signals_count", i2);
        Context context = C2408t.f8531a;
        C2227e4.m3739n(m3748e, "device_audio", context == null ? false : C2315i3.m3653r(C2315i3.m3668c(context)));
        m3748e.m3696p("launch_metadata");
        synchronized (m3748e.f8159a) {
            Iterator<String> m3708d = m3748e.m3708d();
            while (m3708d.hasNext()) {
                Object m3698n = m3748e.m3698n(m3708d.next());
                if (m3698n == null || (((m3698n instanceof JSONArray) && ((JSONArray) m3698n).length() == 0) || (((m3698n instanceof JSONObject) && ((JSONObject) m3698n).length() == 0) || m3698n.equals("")))) {
                    m3708d.remove();
                }
            }
        }
        try {
            str = Base64.encodeToString(m3748e.toString().getBytes("UTF-8"), 0);
        } catch (UnsupportedEncodingException e3) {
            str = "";
        }
        C2315i3.m3652s(new RunnableC2186a(str));
    }
}
