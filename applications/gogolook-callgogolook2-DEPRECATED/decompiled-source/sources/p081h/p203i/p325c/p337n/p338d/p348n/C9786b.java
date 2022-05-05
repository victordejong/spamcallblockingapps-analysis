package p081h.p203i.p325c.p337n.p338d.p348n;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import p081h.p203i.p325c.p337n.p338d.C9513b;
import p081h.p203i.p325c.p337n.p338d.p341h.AbstractRunnableC9538d;
import p081h.p203i.p325c.p337n.p338d.p341h.EnumC9614u;
import p081h.p203i.p325c.p337n.p338d.p348n.p349c.AbstractC9793c;
import p081h.p203i.p325c.p337n.p338d.p348n.p350d.AbstractC9798b;
import p081h.p203i.p325c.p337n.p338d.p352p.p353i.C9814b;
/* renamed from: h.i.c.n.d.n.b */
/* loaded from: classes2-dex2jar.jar:h/i/c/n/d/n/b.class */
public class C9786b {

    /* renamed from: h */
    public static final short[] f22207h = {10, 20, 30, 60, 120, 300};

    /* renamed from: a */
    public final AbstractC9798b f22208a;
    @Nullable

    /* renamed from: b */
    public final String f22209b;

    /* renamed from: c */
    public final String f22210c;

    /* renamed from: d */
    public final EnumC9614u f22211d;

    /* renamed from: e */
    public final C9785a f22212e;

    /* renamed from: f */
    public final AbstractC9787a f22213f;

    /* renamed from: g */
    public Thread f22214g;

    /* renamed from: h.i.c.n.d.n.b$a */
    /* loaded from: classes2-dex2jar.jar:h/i/c/n/d/n/b$a.class */
    public interface AbstractC9787a {
        /* renamed from: a */
        boolean mo14196a();
    }

    /* renamed from: h.i.c.n.d.n.b$b */
    /* loaded from: classes2-dex2jar.jar:h/i/c/n/d/n/b$b.class */
    public interface AbstractC9788b {
        /* renamed from: a */
        C9786b mo14195a(@NonNull C9814b bVar);
    }

    /* renamed from: h.i.c.n.d.n.b$c */
    /* loaded from: classes2-dex2jar.jar:h/i/c/n/d/n/b$c.class */
    public interface AbstractC9789c {
        /* renamed from: a */
        File[] mo14194a();

        /* renamed from: b */
        File[] mo14193b();
    }

    /* renamed from: h.i.c.n.d.n.b$d */
    /* loaded from: classes2-dex2jar.jar:h/i/c/n/d/n/b$d.class */
    public class C9790d extends AbstractRunnableC9538d {

        /* renamed from: a */
        public final List<AbstractC9793c> f22215a;

        /* renamed from: b */
        public final boolean f22216b;

        /* renamed from: c */
        public final float f22217c;

        public C9790d(List<AbstractC9793c> list, boolean z, float f) {
            this.f22215a = list;
            this.f22216b = z;
            this.f22217c = f;
        }

        @Override // p081h.p203i.p325c.p337n.p338d.p341h.AbstractRunnableC9538d
        /* renamed from: a */
        public void mo14192a() {
            try {
                m14191a(this.f22215a, this.f22216b);
            } catch (Exception e) {
                C9513b.m15015a().m15010b("An unexpected error occurred while attempting to upload crash reports.", e);
            }
            C9786b.this.f22214g = null;
        }

        /* renamed from: a */
        public final void m14191a(List<AbstractC9793c> list, boolean z) {
            float f;
            C9513b.m15015a().m15013a("Starting report processing in " + this.f22217c + " second(s)...");
            if (this.f22217c > 0.0f) {
                try {
                    Thread.sleep(f * 1000.0f);
                } catch (InterruptedException e) {
                    Thread.currentThread().interrupt();
                    return;
                }
            }
            if (!C9786b.this.f22213f.mo14196a()) {
                int i = 0;
                while (list.size() > 0 && !C9786b.this.f22213f.mo14196a()) {
                    C9513b.m15015a().m15013a("Attempting to send " + list.size() + " report(s)");
                    ArrayList arrayList = new ArrayList();
                    for (AbstractC9793c cVar : list) {
                        if (!C9786b.this.m14198a(cVar, z)) {
                            arrayList.add(cVar);
                        }
                    }
                    i = i;
                    if (arrayList.size() > 0) {
                        long j = C9786b.f22207h[Math.min(i, C9786b.f22207h.length - 1)];
                        C9513b.m15015a().m15013a("Report submission: scheduling delayed retry in " + j + " seconds");
                        try {
                            Thread.sleep(j * 1000);
                            i++;
                        } catch (InterruptedException e2) {
                            Thread.currentThread().interrupt();
                            return;
                        }
                    }
                    list = arrayList;
                }
            }
        }
    }

    public C9786b(@Nullable String str, String str2, EnumC9614u uVar, C9785a aVar, AbstractC9798b bVar, AbstractC9787a aVar2) {
        if (bVar != null) {
            this.f22208a = bVar;
            this.f22209b = str;
            this.f22210c = str2;
            this.f22211d = uVar;
            this.f22212e = aVar;
            this.f22213f = aVar2;
            return;
        }
        throw new IllegalArgumentException("createReportCall must not be null.");
    }

    /* renamed from: a */
    public void m14197a(List<AbstractC9793c> list, boolean z, float f) {
        synchronized (this) {
            if (this.f22214g != null) {
                C9513b.m15015a().m15013a("Report upload has already been started.");
                return;
            }
            this.f22214g = new Thread(new C9790d(list, z, f), "Crashlytics Report Uploader");
            this.f22214g.start();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x00b0 A[Catch: Exception -> 0x00bd, TRY_ENTER, TRY_LEAVE, TryCatch #0 {Exception -> 0x00bd, blocks: (B:3:0x0002, B:6:0x0027, B:7:0x0032, B:9:0x003c, B:11:0x0048, B:14:0x0056, B:18:0x008b, B:22:0x00b0), top: B:28:0x0002 }] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m14198a(p081h.p203i.p325c.p337n.p338d.p348n.p349c.AbstractC9793c r6, boolean r7) {
        /*
            Method dump skipped, instructions count: 236
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p325c.p337n.p338d.p348n.C9786b.m14198a(h.i.c.n.d.n.c.c, boolean):boolean");
    }
}
