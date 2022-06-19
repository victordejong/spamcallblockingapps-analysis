package p193e.p194a.p195a.p244k.p255y;

import android.net.Uri;
import e.d.b.a.b.t;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1187r2.AbstractC19889v;
import p193e.p194a.p1187r2.AbstractC19890w;
import p193e.p194a.p1187r2.AbstractC19891x;
import p193e.p194a.p1187r2.C19852e;
/* renamed from: e.a.a.k.y.j */
/* loaded from: classes11-dex2jar.jar:e/a/a/k/y/j.class */
public final class C6734j implements AbstractC6740k {

    /* renamed from: a */
    public final AbstractC19890w f22185a;

    /* renamed from: e.a.a.k.y.j$b */
    /* loaded from: classes11-dex2jar.jar:e/a/a/k/y/j$b.class */
    public static class C6736b extends AbstractC19889v<AbstractC6740k, Void> {

        /* renamed from: b */
        public final long f22186b;

        /* renamed from: c */
        public final byte[] f22187c;

        /* renamed from: d */
        public final Uri f22188d;

        /* renamed from: e */
        public final boolean f22189e;

        public C6736b(C19852e c19852e, long j, byte[] bArr, Uri uri, boolean z, C6735a c6735a) {
            super(c19852e);
            this.f22186b = j;
            this.f22187c = bArr;
            this.f22188d = uri;
            this.f22189e = z;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            ((AbstractC6740k) obj).mo30503d(this.f22186b, this.f22187c, this.f22188d, this.f22189e);
            return null;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C(".downloadMms(");
            C22128a.m8605k0(this.f22186b, 2, m8728C, ",");
            m8728C.append(AbstractC19889v.m11837b(this.f22187c, 2));
            m8728C.append(",");
            m8728C.append(AbstractC19889v.m11837b(this.f22188d, 2));
            m8728C.append(",");
            return C22128a.m8566u(this.f22189e, 2, m8728C, ")");
        }
    }

    /* renamed from: e.a.a.k.y.j$c */
    /* loaded from: classes11-dex2jar.jar:e/a/a/k/y/j$c.class */
    public static class C6737c extends AbstractC19889v<AbstractC6740k, Void> {

        /* renamed from: b */
        public final byte[] f22190b;

        /* renamed from: c */
        public final Uri f22191c;

        public C6737c(C19852e c19852e, byte[] bArr, Uri uri, C6735a c6735a) {
            super(c19852e);
            this.f22190b = bArr;
            this.f22191c = uri;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            ((AbstractC6740k) obj).mo30505b(this.f22190b, this.f22191c);
            return null;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C(".sendAcknowledgeForMmsDownload(");
            m8728C.append(AbstractC19889v.m11837b(this.f22190b, 2));
            m8728C.append(",");
            m8728C.append(AbstractC19889v.m11837b(this.f22191c, 2));
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    /* renamed from: e.a.a.k.y.j$d */
    /* loaded from: classes11-dex2jar.jar:e/a/a/k/y/j$d.class */
    public static class C6738d extends AbstractC19889v<AbstractC6740k, Void> {

        /* renamed from: b */
        public final long f22192b;

        /* renamed from: c */
        public final long f22193c;

        /* renamed from: d */
        public final t f22194d;

        /* renamed from: e */
        public final Uri f22195e;

        public C6738d(C19852e c19852e, long j, long j2, t tVar, Uri uri, C6735a c6735a) {
            super(c19852e);
            this.f22192b = j;
            this.f22193c = j2;
            this.f22194d = tVar;
            this.f22195e = uri;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            ((AbstractC6740k) obj).mo30504c(this.f22192b, this.f22193c, this.f22194d, this.f22195e);
            return null;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C(".sendMms(");
            C22128a.m8605k0(this.f22192b, 2, m8728C, ",");
            C22128a.m8605k0(this.f22193c, 2, m8728C, ",");
            m8728C.append(AbstractC19889v.m11837b(this.f22194d, 2));
            m8728C.append(",");
            m8728C.append(AbstractC19889v.m11837b(this.f22195e, 2));
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    /* renamed from: e.a.a.k.y.j$e */
    /* loaded from: classes11-dex2jar.jar:e/a/a/k/y/j$e.class */
    public static class C6739e extends AbstractC19889v<AbstractC6740k, Void> {

        /* renamed from: b */
        public final byte[] f22196b;

        /* renamed from: c */
        public final Uri f22197c;

        /* renamed from: d */
        public final int f22198d;

        public C6739e(C19852e c19852e, byte[] bArr, Uri uri, int i, C6735a c6735a) {
            super(c19852e);
            this.f22196b = bArr;
            this.f22197c = uri;
            this.f22198d = i;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            ((AbstractC6740k) obj).mo30506a(this.f22196b, this.f22197c, this.f22198d);
            return null;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C(".sendNotifyResponseForMmsDownload(");
            m8728C.append(AbstractC19889v.m11837b(this.f22196b, 2));
            m8728C.append(",");
            m8728C.append(AbstractC19889v.m11837b(this.f22197c, 2));
            m8728C.append(",");
            return C22128a.m8694K1(this.f22198d, 2, m8728C, ")");
        }
    }

    public C6734j(AbstractC19890w abstractC19890w) {
        this.f22185a = abstractC19890w;
    }

    @Override // p193e.p194a.p195a.p244k.p255y.AbstractC6740k
    /* renamed from: a */
    public void mo30506a(byte[] bArr, Uri uri, int i) {
        this.f22185a.mo11835a(new C6739e(new C19852e(), bArr, uri, i, null));
    }

    @Override // p193e.p194a.p195a.p244k.p255y.AbstractC6740k
    /* renamed from: b */
    public void mo30505b(byte[] bArr, Uri uri) {
        this.f22185a.mo11835a(new C6737c(new C19852e(), bArr, uri, null));
    }

    @Override // p193e.p194a.p195a.p244k.p255y.AbstractC6740k
    /* renamed from: c */
    public void mo30504c(long j, long j2, t tVar, Uri uri) {
        this.f22185a.mo11835a(new C6738d(new C19852e(), j, j2, tVar, uri, null));
    }

    @Override // p193e.p194a.p195a.p244k.p255y.AbstractC6740k
    /* renamed from: d */
    public void mo30503d(long j, byte[] bArr, Uri uri, boolean z) {
        this.f22185a.mo11835a(new C6736b(new C19852e(), j, bArr, uri, z, null));
    }
}
