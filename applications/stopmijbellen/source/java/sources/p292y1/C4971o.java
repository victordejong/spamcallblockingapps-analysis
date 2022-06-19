package p292y1;

import android.content.Context;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.foreground.C0703a;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.UUID;
import p003a2.AbstractC0008a;
import p003a2.C0009b;
import p186o1.AbstractC3821e;
import p186o1.AbstractC3824h;
import p186o1.C3820d;
import p186o1.EnumC3836m;
import p197p1.C3998c;
import p271w1.AbstractC4729a;
import p282x1.AbstractC4834q;
import p282x1.C4835r;
import p302z1.AbstractC5023a;
import p302z1.C5035c;
/* renamed from: y1.o */
/* loaded from: classes-dex2jar.jar:y1/o.class */
public class C4971o implements AbstractC3821e {

    /* renamed from: a */
    public final AbstractC0008a f15155a;

    /* renamed from: b */
    public final AbstractC4729a f15156b;

    /* renamed from: c */
    public final AbstractC4834q f15157c;

    /* renamed from: y1.o$a */
    /* loaded from: classes-dex2jar.jar:y1/o$a.class */
    public class RunnableC4972a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ C5035c f15158a;

        /* renamed from: b */
        public final /* synthetic */ UUID f15159b;

        /* renamed from: c */
        public final /* synthetic */ C3820d f15160c;

        /* renamed from: d */
        public final /* synthetic */ Context f15161d;

        public RunnableC4972a(C5035c c5035c, UUID uuid, C3820d c3820d, Context context) {
            C4971o.this = r4;
            this.f15158a = c5035c;
            this.f15159b = uuid;
            this.f15160c = c3820d;
            this.f15161d = context;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (!(this.f15158a.f15283a instanceof AbstractC5023a.C5026c)) {
                    String uuid = this.f15159b.toString();
                    EnumC3836m m383f = ((C4835r) C4971o.this.f15157c).m383f(uuid);
                    if (m383f == null || m383f.m1768a()) {
                        throw new IllegalStateException("Calls to setForegroundAsync() must complete before a ListenableWorker signals completion of work by returning an instance of Result.");
                    }
                    ((C3998c) C4971o.this.f15156b).m1547f(uuid, this.f15160c);
                    this.f15161d.startService(C0703a.m7457b(this.f15161d, uuid, this.f15160c));
                }
                this.f15158a.m117k(null);
            } catch (Throwable th) {
                this.f15158a.m116l(th);
            }
        }
    }

    static {
        AbstractC3824h.m1773e("WMFgUpdater");
    }

    public C4971o(WorkDatabase workDatabase, AbstractC4729a abstractC4729a, AbstractC0008a abstractC0008a) {
        this.f15156b = abstractC4729a;
        this.f15155a = abstractC0008a;
        this.f15157c = workDatabase.mo7475q();
    }

    /* renamed from: a */
    public ListenableFuture<Void> m170a(Context context, UUID uuid, C3820d c3820d) {
        C5035c c5035c = new C5035c();
        AbstractC0008a abstractC0008a = this.f15155a;
        ((C0009b) abstractC0008a).f8a.execute(new RunnableC4972a(c5035c, uuid, c3820d, context));
        return c5035c;
    }
}
