package p081h.p115c.p116a;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.view.MotionEvent;
import android.view.View;
import com.aotter.net.volley.toolbox.JsonRequest;
import p081h.p115c.p116a.p117i.C5745b;
/* renamed from: h.c.a.c */
/* loaded from: classes-dex2jar.jar:h/c/a/c.class */
public class C5722c extends C5745b {

    /* renamed from: c */
    public AbstractC5724b f14326c;

    /* renamed from: d */
    public Handler f14327d = new Handler(Looper.getMainLooper());

    /* renamed from: h.c.a.c$a */
    /* loaded from: classes-dex2jar.jar:h/c/a/c$a.class */
    public class RunnableC5723a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ String f14328a;

        public RunnableC5723a(String str) {
            this.f14328a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            C5722c.this.loadDataWithBaseURL("about:blank", this.f14328a, "text/html", JsonRequest.PROTOCOL_CHARSET, null);
        }
    }

    /* renamed from: h.c.a.c$b */
    /* loaded from: classes-dex2jar.jar:h/c/a/c$b.class */
    public interface AbstractC5724b {
        void onClick();
    }

    /* renamed from: h.c.a.c$c */
    /* loaded from: classes-dex2jar.jar:h/c/a/c$c.class */
    public class View$OnTouchListenerC5725c implements View.OnTouchListener {

        /* renamed from: a */
        public long f14330a;

        public View$OnTouchListenerC5725c() {
        }

        public /* synthetic */ View$OnTouchListenerC5725c(C5722c cVar, RunnableC5723a aVar) {
            this();
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            int action = motionEvent.getAction();
            if (action == 0) {
                this.f14330a = motionEvent.getEventTime();
                return false;
            } else if (action != 1 || motionEvent.getEventTime() - this.f14330a > 500) {
                return false;
            } else {
                C5722c.this.f14326c.onClick();
                return false;
            }
        }
    }

    public C5722c(Context context, AbstractC5724b bVar) {
        super(context);
        this.f14326c = bVar;
        setOnTouchListener(new View$OnTouchListenerC5725c(this, null));
    }

    /* renamed from: a */
    public void m24649a(String str) {
        m24648b("<html><head></head><body style=\"margin:0;padding:0\">" + str + "</body></html>");
    }

    /* renamed from: b */
    public void m24648b(String str) {
        this.f14327d.post(new RunnableC5723a(str));
    }
}
