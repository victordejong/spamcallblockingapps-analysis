package p193e.p194a.p195a.p229f;

import android.content.ContentResolver;
import android.net.Uri;
import com.truecaller.messaging.data.types.ImGroupInfo;
import java.util.Objects;
import javax.inject.Provider;
import o3.c.b;
import p193e.p194a.AbstractC15539j2;
import p193e.p194a.p1114o5.AbstractC19126x;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1146q2.AbstractC19463a0;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p1187r2.AbstractC19868j;
import p193e.p194a.p1187r2.AbstractC19870l;
import p193e.p194a.p195a.AbstractC6392i0;
import p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6485m;
import p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6489q;
import p193e.p194a.p195a.p286y0.AbstractC7343q;
import p193e.p194a.p372b0.p430q.C8582g0;
import s1.z.c.l;
/* renamed from: e.a.a.f.b */
/* loaded from: classes7-dex2jar.jar:e/a/a/f/b.class */
public final class C6046b {

    /* renamed from: a */
    public final C6049c f20096a;

    /* renamed from: b */
    public final AbstractC15539j2 f20097b;

    /* renamed from: c */
    public final C6046b f20098c = this;

    /* renamed from: d */
    public Provider<C6052f> f20099d;

    /* renamed from: e */
    public Provider<AbstractC6050d> f20100e;

    /* renamed from: e.a.a.f.b$b */
    /* loaded from: classes7-dex2jar.jar:e/a/a/f/b$b.class */
    public static final class C6048b<T> implements Provider<T> {

        /* renamed from: a */
        public final C6046b f20101a;

        public C6048b(C6046b c6046b, int i) {
            this.f20101a = c6046b;
        }

        public T get() {
            C6046b c6046b = this.f20101a;
            C6049c c6049c = c6046b.f20096a;
            AbstractC19870l mo12119z1 = c6046b.f20097b.mo12119z1();
            Objects.requireNonNull(mo12119z1, "Cannot return null from a non-@Nullable component method");
            Objects.requireNonNull(c6049c);
            l.e(mo12119z1, "actorsThreads");
            AbstractC19868j mo11845d = mo12119z1.mo11845d();
            l.d(mo11845d, "actorsThreads.ui()");
            ImGroupInfo imGroupInfo = c6046b.f20096a.f20102a;
            Objects.requireNonNull(imGroupInfo, "Cannot return null from a non-@Nullable @Provides method");
            AbstractC19854f<AbstractC6485m> mo12224r4 = c6046b.f20097b.mo12224r4();
            Objects.requireNonNull(mo12224r4, "Cannot return null from a non-@Nullable component method");
            AbstractC19223c0 mo12349i = c6046b.f20097b.mo12349i();
            Objects.requireNonNull(mo12349i, "Cannot return null from a non-@Nullable component method");
            AbstractC19854f<AbstractC19126x> mo12201t1 = c6046b.f20097b.mo12201t1();
            Objects.requireNonNull(mo12201t1, "Cannot return null from a non-@Nullable component method");
            AbstractC6489q mo12466Z5 = c6046b.f20097b.mo12466Z5();
            Objects.requireNonNull(mo12466Z5, "Cannot return null from a non-@Nullable component method");
            AbstractC19854f<AbstractC7343q> mo12417d3 = c6046b.f20097b.mo12417d3();
            Objects.requireNonNull(mo12417d3, "Cannot return null from a non-@Nullable component method");
            AbstractC19854f<AbstractC19463a0> mo12217s = c6046b.f20097b.mo12217s();
            Objects.requireNonNull(mo12217s, "Cannot return null from a non-@Nullable component method");
            AbstractC19462a mo12776C4 = c6046b.f20097b.mo12776C4();
            Objects.requireNonNull(mo12776C4, "Cannot return null from a non-@Nullable component method");
            AbstractC6392i0 mo12565S = c6046b.f20097b.mo12565S();
            Objects.requireNonNull(mo12565S, "Cannot return null from a non-@Nullable component method");
            ContentResolver mo11652Z = c6046b.f20097b.mo11652Z();
            Objects.requireNonNull(mo11652Z, "Cannot return null from a non-@Nullable component method");
            Objects.requireNonNull(c6046b.f20096a);
            Uri m28338C = C8582g0.m28338C();
            l.d(m28338C, "ImGroupInfoTable.getContentUri()");
            return (T) new C6052f(mo11845d, imGroupInfo, mo12224r4, mo12349i, mo12201t1, mo12466Z5, mo12417d3, mo12217s, mo12776C4, mo12565S, mo11652Z, m28338C);
        }
    }

    public C6046b(C6049c c6049c, AbstractC15539j2 abstractC15539j2, C6047a c6047a) {
        this.f20096a = c6049c;
        this.f20097b = abstractC15539j2;
        C6048b c6048b = new C6048b(this, 0);
        this.f20099d = c6048b;
        this.f20100e = b.b(c6048b);
    }
}
