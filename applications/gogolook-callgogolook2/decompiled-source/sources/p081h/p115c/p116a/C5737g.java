package p081h.p115c.p116a;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.aotter.net.volley.toolbox.JsonRequest;
import p081h.p115c.p116a.p117i.C5745b;
/* renamed from: h.c.a.g */
/* loaded from: classes-dex2jar.jar:h/c/a/g.class */
public class C5737g extends C5745b {

    /* renamed from: c */
    public AbstractC5739b f14362c;

    /* renamed from: d */
    public Handler f14363d = new Handler(Looper.getMainLooper());

    /* renamed from: h.c.a.g$a */
    /* loaded from: classes-dex2jar.jar:h/c/a/g$a.class */
    public class RunnableC5738a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ String f14364a;

        public RunnableC5738a(String str) {
            this.f14364a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            C5737g.this.loadDataWithBaseURL("about:blank", this.f14364a, "text/html", JsonRequest.PROTOCOL_CHARSET, null);
        }
    }

    /* renamed from: h.c.a.g$b */
    /* loaded from: classes-dex2jar.jar:h/c/a/g$b.class */
    public interface AbstractC5739b {
        /* renamed from: a */
        void mo24618a();

        void onDismiss();
    }

    public C5737g(Context context, AbstractC5739b bVar) {
        super(context);
        this.f14362c = bVar;
    }

    /* renamed from: a */
    public void m24621a(String str) {
        m24620b("<html><head></head><body style=\"margin:0;padding:0\">" + str + "</body></html>");
    }

    /* renamed from: b */
    public void m24620b(String str) {
        this.f14363d.post(new RunnableC5738a(str));
    }

    /* renamed from: d */
    public AbstractC5739b m24619d() {
        return this.f14362c;
    }
}
