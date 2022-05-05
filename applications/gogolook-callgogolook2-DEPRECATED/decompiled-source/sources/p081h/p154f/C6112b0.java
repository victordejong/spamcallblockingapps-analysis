package p081h.p154f;

import android.os.Handler;
import com.facebook.GraphRequest;
/* renamed from: h.f.b0 */
/* loaded from: classes-dex2jar.jar:h/f/b0.class */
public class C6112b0 {

    /* renamed from: a */
    public final GraphRequest f15188a;

    /* renamed from: b */
    public final Handler f15189b;

    /* renamed from: c */
    public final long f15190c = C6135n.m23734q();

    /* renamed from: d */
    public long f15191d;

    /* renamed from: e */
    public long f15192e;

    /* renamed from: f */
    public long f15193f;

    /* renamed from: h.f.b0$a */
    /* loaded from: classes-dex2jar.jar:h/f/b0$a.class */
    public class RunnableC6113a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ GraphRequest.AbstractC2233i f15194a;

        /* renamed from: b */
        public final /* synthetic */ long f15195b;

        /* renamed from: c */
        public final /* synthetic */ long f15196c;

        public RunnableC6113a(C6112b0 b0Var, GraphRequest.AbstractC2233i iVar, long j, long j2) {
            this.f15194a = iVar;
            this.f15195b = j;
            this.f15196c = j2;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f15194a.m35402a(this.f15195b, this.f15196c);
        }
    }

    public C6112b0(Handler handler, GraphRequest graphRequest) {
        this.f15188a = graphRequest;
        this.f15189b = handler;
    }

    /* renamed from: a */
    public void m23820a() {
        if (this.f15191d > this.f15192e) {
            GraphRequest.AbstractC2230f e = this.f15188a.m35424e();
            long j = this.f15193f;
            if (j > 0 && (e instanceof GraphRequest.AbstractC2233i)) {
                long j2 = this.f15191d;
                GraphRequest.AbstractC2233i iVar = (GraphRequest.AbstractC2233i) e;
                Handler handler = this.f15189b;
                if (handler == null) {
                    iVar.m35402a(j2, j);
                } else {
                    handler.post(new RunnableC6113a(this, iVar, j2, j));
                }
                this.f15192e = this.f15191d;
            }
        }
    }

    /* renamed from: a */
    public void m23819a(long j) {
        this.f15191d += j;
        long j2 = this.f15191d;
        if (j2 >= this.f15192e + this.f15190c || j2 >= this.f15193f) {
            m23820a();
        }
    }

    /* renamed from: b */
    public void m23818b(long j) {
        this.f15193f += j;
    }
}
