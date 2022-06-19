package p193e.p1512i.p1516b.p1528q2;

import com.criteo.publisher.logging.RemoteLogRecords;
import com.mopub.mobileads.AdData;
import java.util.Objects;
import p193e.p1512i.p1516b.p1531s2.C23080f;
import p193e.p1512i.p1516b.p1537z1.AbstractC23188h;
import s1.z.c.l;
/* renamed from: e.i.b.q2.n */
/* loaded from: classes-dex2jar.jar:e/i/b/q2/n.class */
public final class C23032n implements AbstractC23188h<RemoteLogRecords> {

    /* renamed from: a */
    public final Class<RemoteLogRecords> f63816a = RemoteLogRecords.class;

    /* renamed from: b */
    public final C23080f f63817b;

    public C23032n(C23080f c23080f) {
        l.f(c23080f, "buildConfigWrapper");
        this.f63817b = c23080f;
    }

    @Override // p193e.p1512i.p1516b.p1537z1.AbstractC23188h
    /* renamed from: a */
    public int mo7419a() {
        Objects.requireNonNull(this.f63817b);
        return AdData.DEFAULT_DURATION_FOR_REWARDED_IMAGE_CLOSE_BUTTON_MILLIS;
    }

    @Override // p193e.p1512i.p1516b.p1537z1.AbstractC23188h
    /* renamed from: b */
    public Class<RemoteLogRecords> mo7418b() {
        return this.f63816a;
    }

    @Override // p193e.p1512i.p1516b.p1537z1.AbstractC23188h
    /* renamed from: c */
    public int mo7417c() {
        Objects.requireNonNull(this.f63817b);
        return 256000;
    }

    @Override // p193e.p1512i.p1516b.p1537z1.AbstractC23188h
    /* renamed from: d */
    public String mo7416d() {
        Objects.requireNonNull(this.f63817b);
        l.b("criteo_remote_logs_queue", "buildConfigWrapper.remoteLogQueueFilename");
        return "criteo_remote_logs_queue";
    }
}
