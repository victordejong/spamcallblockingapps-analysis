package p193e.p194a.p1146q2;

import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.StringConstant;
import com.truecaller.common.network.util.KnownEndpoints;
import com.truecaller.tracking.events.EventRecordVersionedV2;
import com.truecaller.tracking.events.PacketVersionedV2;
import java.io.IOException;
import java.util.ArrayList;
import java.util.ListIterator;
import java.util.Objects;
import java.util.concurrent.TimeUnit;
import javax.inject.Inject;
import org.apache.avro.Schema;
import org.apache.avro.generic.GenericRecord;
import p193e.p194a.p1146q2.p1148b1.AbstractC19469a;
import p193e.p194a.p1146q2.p1148b1.AbstractC19472d;
import s1.f0.r;
import s1.z.c.l;
import u3.a0;
import u3.c0;
import u3.e0;
import u3.g0;
import u3.j0;
import u3.k0;
import u3.z;
import v3.g;
import v3.n;
import v3.u;
/* renamed from: e.a.q2.d0 */
/* loaded from: classes4-dex2jar.jar:e/a/q2/d0.class */
public class C19486d0 implements AbstractC19483c0 {

    /* renamed from: f */
    public static final long f54091f;

    /* renamed from: g */
    public static final long f54092g;

    /* renamed from: a */
    public final int f54093a;

    /* renamed from: b */
    public final int f54094b;

    /* renamed from: c */
    public final long f54095c;

    /* renamed from: d */
    public final AbstractC19472d f54096d;

    /* renamed from: e */
    public final AbstractC19469a f54097e;

    /* renamed from: e.a.q2.d0$b */
    /* loaded from: classes4-dex2jar.jar:e/a/q2/d0$b.class */
    public static class C19488b extends j0 {

        /* renamed from: b */
        public final GenericRecord f54098b;

        public C19488b(GenericRecord genericRecord) {
            this.f54098b = genericRecord;
        }

        /* renamed from: b */
        public c0 m13288b() {
            c0.a aVar = c0.f;
            return c0.a.b("application/octet-stream");
        }

        /* renamed from: c */
        public void m13287c(g gVar) throws IOException {
            n nVar = new n(gVar);
            l.f(nVar, "$this$buffer");
            u uVar = new u(nVar);
            C19596y.m13117b(this.f54098b, new u.a(uVar));
            uVar.close();
        }
    }

    /* renamed from: e.a.q2.d0$c */
    /* loaded from: classes4-dex2jar.jar:e/a/q2/d0$c.class */
    public class C19489c {

        /* renamed from: a */
        public boolean f54099a = false;

        /* renamed from: b */
        public long f54100b = 0;

        /* renamed from: c */
        public Integer f54101c = null;

        public C19489c(C19486d0 c19486d0, C19487a c19487a) {
        }
    }

    static {
        TimeUnit timeUnit = TimeUnit.SECONDS;
        f54091f = timeUnit.toMillis(5L);
        f54092g = timeUnit.toMillis(10L);
    }

    @Inject
    public C19486d0(AbstractC19469a abstractC19469a, AbstractC19472d abstractC19472d) {
        this.f54097e = abstractC19469a;
        this.f54093a = abstractC19469a.getInt("uploadEventsMaxBatchSize", 100);
        this.f54094b = abstractC19469a.getInt("uploadEventsMinBatchSize", 100);
        this.f54095c = abstractC19469a.getLong("uploadEventsRetryJitter", 10000L);
        this.f54096d = abstractC19472d;
    }

    /* JADX WARN: Code restructure failed: missing block: B:42:0x016e, code lost:
        if (r16 != false) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x0173, code lost:
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x0175, code lost:
        r9 = r17;
        r12 = r18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x0181, code lost:
        if (r18 < 2000) goto L65;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x0186, code lost:
        return true;
     */
    @Override // p193e.p194a.p1146q2.AbstractC19483c0
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean mo13293a(p193e.p194a.p1146q2.C19509i r7, u3.e0 r8) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 397
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1146q2.C19486d0.mo13293a(e.a.q2.i, u3.e0):boolean");
    }

    @Override // p193e.p194a.p1146q2.AbstractC19483c0
    /* renamed from: b */
    public boolean mo13292b(C19509i c19509i, e0 e0Var, ArrayList<EventRecordVersionedV2> arrayList) throws IOException {
        synchronized (this) {
            for (int i = 0; i < 3; i++) {
                C19489c m13289e = m13289e(c19509i, e0Var, arrayList);
                if (m13289e.f54099a) {
                    return true;
                }
                StringBuilder sb = new StringBuilder();
                sb.append("Upload failed. Server response: ");
                Integer num = m13289e.f54101c;
                Integer num2 = num;
                if (num == null) {
                    num2 = "none";
                }
                sb.append(num2);
                sb.toString();
                if (!m13291c(i, m13289e)) {
                    return false;
                }
            }
            return false;
        }
    }

    /* renamed from: c */
    public final boolean m13291c(int i, C19489c c19489c) {
        Integer num = c19489c.f54101c;
        if (num != null && num.intValue() >= 500) {
            try {
                Thread.sleep((long) ((Math.random() * this.f54095c) + (Math.pow(2.0d, i) * 1000.0d)));
                return true;
            } catch (InterruptedException e) {
                return false;
            }
        }
        return false;
    }

    /* renamed from: d */
    public final int m13290d(int i, long j, boolean z) {
        int max = (!z || j > f54092g) ? Math.max((i * 66) / 100, this.f54094b) : j < f54091f ? Math.min((i * 133) / 100, this.f54093a) : i;
        if (i != max) {
            this.f54097e.putInt("analyticsUploadEnhancedBatchSize", max);
        }
        return max;
    }

    /* renamed from: e */
    public final C19489c m13289e(C19509i c19509i, e0 e0Var, ArrayList<EventRecordVersionedV2> arrayList) throws IOException {
        C19489c c19489c = new C19489c(this, null);
        if (arrayList.isEmpty()) {
            return c19489c;
        }
        ListIterator<EventRecordVersionedV2> listIterator = arrayList.listIterator();
        while (listIterator.hasNext()) {
            if (listIterator.next() == null) {
                listIterator.remove();
            }
        }
        Objects.requireNonNull(c19509i);
        a0.a f = KnownEndpoints.BATCHLOG.url().f();
        l.f("/v5/events", "encodedPath");
        if (!r.y("/v5/events", StringConstant.SLASH, false, 2)) {
            throw new IllegalArgumentException("unexpected encodedPath: /v5/events".toString());
        }
        f.i("/v5/events", 0, 10);
        a0 b = f.b();
        z m13260a = c19509i.m13260a();
        if (m13260a == null) {
            return c19489c;
        }
        long currentTimeMillis = System.currentTimeMillis();
        String str = "Uploading events to " + b + ". Batch size: " + arrayList.size();
        Schema schema = PacketVersionedV2.f15465b;
        PacketVersionedV2.C4645b c4645b = new PacketVersionedV2.C4645b(null);
        c4645b.validate(c4645b.fields()[0], arrayList);
        c4645b.f15470a = arrayList;
        c4645b.fieldSetFlags()[0] = true;
        C19488b c19488b = new C19488b(c4645b.build());
        g0.a aVar = new g0.a();
        aVar.f(c19488b);
        aVar.d(m13260a);
        l.f("Content-Encoding", AnalyticsConstants.NAME);
        l.f("gzip", "value");
        aVar.c.a("Content-Encoding", "gzip");
        aVar.j(b);
        k0 execute = e0Var.a(aVar.b()).execute();
        try {
            c19489c.f54100b = System.currentTimeMillis() - currentTimeMillis;
            if (execute != null) {
                c19489c.f54099a = execute.j();
                c19489c.f54101c = Integer.valueOf(execute.e);
            }
            if (execute != null) {
                execute.close();
            }
            return c19489c;
        } catch (Throwable th) {
            if (execute != null) {
                try {
                    execute.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }
}
