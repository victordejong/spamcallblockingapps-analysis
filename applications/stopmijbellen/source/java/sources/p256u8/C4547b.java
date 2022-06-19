package p256u8;

import android.os.Looper;
import android.os.Process;
import com.raizlabs.android.dbflow.config.AbstractC2116c;
import com.raizlabs.android.dbflow.config.C2120f;
import java.util.ArrayList;
import java.util.Objects;
import p074d9.C2492e;
import p074d9.C2497h;
/* renamed from: u8.b */
/* loaded from: classes2-dex2jar.jar:u8/b.class */
public class C4547b extends Thread {

    /* renamed from: c */
    public AbstractC2116c f13975c;

    /* renamed from: a */
    public long f13973a = 30000;

    /* renamed from: d */
    public final C2492e.AbstractC2494b f13976d = new C4548a(this);

    /* renamed from: e */
    public final C2497h.AbstractC2500c f13977e = new C4549b();

    /* renamed from: f */
    public final C2497h.AbstractC2499b f13978f = new C4550c();

    /* renamed from: b */
    public final ArrayList<Object> f13974b = new ArrayList<>();

    /* renamed from: u8.b$a */
    /* loaded from: classes2-dex2jar.jar:u8/b$a.class */
    public class C4548a implements C2492e.AbstractC2494b {
        public C4548a(C4547b c4547b) {
        }
    }

    /* renamed from: u8.b$b */
    /* loaded from: classes2-dex2jar.jar:u8/b$b.class */
    public class C4549b implements C2497h.AbstractC2500c {
        public C4549b() {
            C4547b.this = r4;
        }

        @Override // p074d9.C2497h.AbstractC2500c
        /* renamed from: c */
        public void mo105c(C2497h c2497h) {
            Objects.requireNonNull(C4547b.this);
        }
    }

    /* renamed from: u8.b$c */
    /* loaded from: classes2-dex2jar.jar:u8/b$c.class */
    public class C4550c implements C2497h.AbstractC2499b {
        public C4550c() {
            C4547b.this = r4;
        }

        @Override // p074d9.C2497h.AbstractC2499b
        /* renamed from: f */
        public void mo847f(C2497h c2497h, Throwable th) {
            Objects.requireNonNull(C4547b.this);
        }
    }

    public C4547b(AbstractC2116c abstractC2116c) {
        super("DBBatchSaveQueue");
        this.f13975c = abstractC2116c;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        ArrayList arrayList;
        super.run();
        Looper.prepare();
        Process.setThreadPriority(10);
        while (true) {
            synchronized (this.f13974b) {
                arrayList = new ArrayList(this.f13974b);
                this.f13974b.clear();
            }
            if (arrayList.size() > 0) {
                AbstractC2116c abstractC2116c = this.f13975c;
                C2492e.C2493a c2493a = new C2492e.C2493a(this.f13976d);
                c2493a.f8739b.addAll(arrayList);
                C2492e c2492e = new C2492e(c2493a);
                Objects.requireNonNull(abstractC2116c);
                C2497h.C2498a c2498a = new C2497h.C2498a(c2492e, abstractC2116c);
                c2498a.f8751d = this.f13977e;
                c2498a.f8750c = this.f13978f;
                new C2497h(c2498a).m3513a();
            }
            try {
                Thread.sleep(this.f13973a);
            } catch (InterruptedException e) {
                C2120f.m3889a(C2120f.EnumC2122b.f7694b, "DBRequestQueue Batch interrupted to start saving", null);
            }
        }
    }
}
