package p193e.p194a.p1146q2;

import com.truecaller.analytics.EventsUploadResult;
import org.apache.avro.generic.GenericRecord;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1187r2.AbstractC19889v;
import p193e.p194a.p1187r2.AbstractC19890w;
import p193e.p194a.p1187r2.AbstractC19891x;
import p193e.p194a.p1187r2.C19852e;
import p193e.p194a.p1187r2.C19895z;
import u3.e0;
/* renamed from: e.a.q2.z */
/* loaded from: classes4-dex2jar.jar:e/a/q2/z.class */
public final class C19599z implements AbstractC19463a0 {

    /* renamed from: a */
    public final AbstractC19890w f54469a;

    /* renamed from: e.a.q2.z$b */
    /* loaded from: classes4-dex2jar.jar:e/a/q2/z$b.class */
    public static class C19601b extends AbstractC19889v<AbstractC19463a0, EventsUploadResult> {

        /* renamed from: b */
        public final GenericRecord f54470b;

        /* renamed from: c */
        public final e0 f54471c;

        public C19601b(C19852e c19852e, GenericRecord genericRecord, e0 e0Var, C19600a c19600a) {
            super(c19852e);
            this.f54470b = genericRecord;
            this.f54471c = e0Var;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            AbstractC19891x<EventsUploadResult> mo13110b = ((AbstractC19463a0) obj).mo13110b(this.f54470b, this.f54471c);
            m11836c(mo13110b);
            return mo13110b;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C(".trackEventImmediately(");
            m8728C.append(AbstractC19889v.m11837b(this.f54470b, 1));
            m8728C.append(",");
            m8728C.append(AbstractC19889v.m11837b(this.f54471c, 2));
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    /* renamed from: e.a.q2.z$c */
    /* loaded from: classes4-dex2jar.jar:e/a/q2/z$c.class */
    public static class C19602c extends AbstractC19889v<AbstractC19463a0, Void> {

        /* renamed from: b */
        public final GenericRecord f54472b;

        public C19602c(C19852e c19852e, GenericRecord genericRecord, C19600a c19600a) {
            super(c19852e);
            this.f54472b = genericRecord;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            ((AbstractC19463a0) obj).mo13111a(this.f54472b);
            return null;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C(".trackEvent(");
            m8728C.append(AbstractC19889v.m11837b(this.f54472b, 1));
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    /* renamed from: e.a.q2.z$d */
    /* loaded from: classes4-dex2jar.jar:e/a/q2/z$d.class */
    public static class C19603d extends AbstractC19889v<AbstractC19463a0, Boolean> {

        /* renamed from: b */
        public final e0 f54473b;

        public C19603d(C19852e c19852e, e0 e0Var, C19600a c19600a) {
            super(c19852e);
            this.f54473b = e0Var;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            AbstractC19891x<Boolean> mo13109c = ((AbstractC19463a0) obj).mo13109c(this.f54473b);
            m11836c(mo13109c);
            return mo13109c;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C(".upload(");
            m8728C.append(AbstractC19889v.m11837b(this.f54473b, 2));
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    public C19599z(AbstractC19890w abstractC19890w) {
        this.f54469a = abstractC19890w;
    }

    @Override // p193e.p194a.p1146q2.AbstractC19463a0
    /* renamed from: a */
    public void mo13111a(GenericRecord genericRecord) {
        this.f54469a.mo11835a(new C19602c(new C19852e(), genericRecord, null));
    }

    @Override // p193e.p194a.p1146q2.AbstractC19463a0
    /* renamed from: b */
    public AbstractC19891x<EventsUploadResult> mo13110b(GenericRecord genericRecord, e0 e0Var) {
        return new C19895z(this.f54469a, new C19601b(new C19852e(), genericRecord, e0Var, null));
    }

    @Override // p193e.p194a.p1146q2.AbstractC19463a0
    /* renamed from: c */
    public AbstractC19891x<Boolean> mo13109c(e0 e0Var) {
        return new C19895z(this.f54469a, new C19603d(new C19852e(), e0Var, null));
    }
}
