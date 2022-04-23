package p459j.p460a.p572v0.p573c;

import gogolook.callgogolook2.realm.obj.messaging.SmsUrlScanResultRealmObject;
import java.util.Map;
import kotlin.Metadata;
import p459j.p460a.p572v0.p573c.AbstractC13709g;
import p459j.p460a.p572v0.p574d.C13724a;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u001e\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\b6\u0018��2\u00020\u0001:\u0003\u0007\b\tB\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0012\u0010\u0003\u001a\u00020\u0004X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006\u0082\u0001\u0002\n\u000b¨\u0006\f"}, m815d2 = {"Lgogolook/callgogolook2/urlscan/data/UrlScanResult;", "", "()V", "request", "Lgogolook/callgogolook2/urlscan/request/ScanRequest;", "getRequest", "()Lgogolook/callgogolook2/urlscan/request/ScanRequest;", "Error", "ScanResult", "Success", "Lgogolook/callgogolook2/urlscan/data/UrlScanResult$Success;", "Lgogolook/callgogolook2/urlscan/data/UrlScanResult$Error;", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.v0.c.n */
/* loaded from: classes3-dex2jar.jar:j/a/v0/c/n.class */
public abstract class AbstractC13719n {

    /* renamed from: j.a.v0.c.n$a */
    /* loaded from: classes3-dex2jar.jar:j/a/v0/c/n$a.class */
    public static final class C13720a extends AbstractC13719n {

        /* renamed from: a */
        public final C13724a f30801a;

        /* renamed from: b */
        public final Exception f30802b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13720a(C13724a aVar, Exception exc) {
            super(null);
            C15149k.m377b(aVar, "request");
            C15149k.m377b(exc, "exception");
            this.f30801a = aVar;
            this.f30802b = exc;
        }

        /* renamed from: a */
        public final Exception m3609a() {
            return this.f30802b;
        }

        /* renamed from: b */
        public C13724a m3608b() {
            return this.f30801a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C13720a)) {
                return false;
            }
            C13720a aVar = (C13720a) obj;
            return C15149k.m384a(m3608b(), aVar.m3608b()) && C15149k.m384a(this.f30802b, aVar.f30802b);
        }

        public int hashCode() {
            C13724a b = m3608b();
            int i = 0;
            int hashCode = b != null ? b.hashCode() : 0;
            Exception exc = this.f30802b;
            if (exc != null) {
                i = exc.hashCode();
            }
            return (hashCode * 31) + i;
        }

        public String toString() {
            return "Error(request=" + m3608b() + ", exception=" + this.f30802b + ")";
        }
    }

    /* renamed from: j.a.v0.c.n$b */
    /* loaded from: classes3-dex2jar.jar:j/a/v0/c/n$b.class */
    public static final class C13721b {

        /* renamed from: a */
        public final String f30803a;

        /* renamed from: b */
        public final EnumC13715k f30804b;

        /* renamed from: c */
        public final AbstractC13709g.EnumC13710a f30805c;

        /* renamed from: d */
        public final Map<AbstractC13709g.EnumC13710a, AbstractC13709g> f30806d;

        /* JADX WARN: Multi-variable type inference failed */
        public C13721b(String str, EnumC13715k kVar, AbstractC13709g.EnumC13710a aVar, Map<AbstractC13709g.EnumC13710a, ? extends AbstractC13709g> map) {
            C15149k.m377b(str, "url");
            C15149k.m377b(kVar, SmsUrlScanResultRealmObject.RATING);
            C15149k.m377b(aVar, "source");
            C15149k.m377b(map, "rawResults");
            this.f30803a = str;
            this.f30804b = kVar;
            this.f30805c = aVar;
            this.f30806d = map;
        }

        /* renamed from: a */
        public final EnumC13715k m3607a() {
            return this.f30804b;
        }

        /* renamed from: b */
        public final Map<AbstractC13709g.EnumC13710a, AbstractC13709g> m3606b() {
            return this.f30806d;
        }

        /* renamed from: c */
        public final AbstractC13709g.EnumC13710a m3605c() {
            return this.f30805c;
        }

        /* renamed from: d */
        public final String m3604d() {
            return this.f30803a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C13721b)) {
                return false;
            }
            C13721b bVar = (C13721b) obj;
            return C15149k.m384a((Object) this.f30803a, (Object) bVar.f30803a) && C15149k.m384a(this.f30804b, bVar.f30804b) && C15149k.m384a(this.f30805c, bVar.f30805c) && C15149k.m384a(this.f30806d, bVar.f30806d);
        }

        public int hashCode() {
            String str = this.f30803a;
            int i = 0;
            int hashCode = str != null ? str.hashCode() : 0;
            EnumC13715k kVar = this.f30804b;
            int hashCode2 = kVar != null ? kVar.hashCode() : 0;
            AbstractC13709g.EnumC13710a aVar = this.f30805c;
            int hashCode3 = aVar != null ? aVar.hashCode() : 0;
            Map<AbstractC13709g.EnumC13710a, AbstractC13709g> map = this.f30806d;
            if (map != null) {
                i = map.hashCode();
            }
            return (((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + i;
        }

        public String toString() {
            return "ScanResult { url=" + this.f30803a + ", rating=" + this.f30804b + ", source=" + this.f30805c + " }";
        }
    }

    /* renamed from: j.a.v0.c.n$c */
    /* loaded from: classes3-dex2jar.jar:j/a/v0/c/n$c.class */
    public static final class C13722c extends AbstractC13719n {

        /* renamed from: a */
        public final C13724a f30807a;

        /* renamed from: b */
        public final C13721b f30808b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13722c(C13724a aVar, C13721b bVar) {
            super(null);
            C15149k.m377b(aVar, "request");
            C15149k.m377b(bVar, "result");
            this.f30807a = aVar;
            this.f30808b = bVar;
        }

        /* renamed from: a */
        public C13724a m3603a() {
            return this.f30807a;
        }

        /* renamed from: b */
        public final C13721b m3602b() {
            return this.f30808b;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C13722c)) {
                return false;
            }
            C13722c cVar = (C13722c) obj;
            return C15149k.m384a(m3603a(), cVar.m3603a()) && C15149k.m384a(this.f30808b, cVar.f30808b);
        }

        public int hashCode() {
            C13724a a = m3603a();
            int i = 0;
            int hashCode = a != null ? a.hashCode() : 0;
            C13721b bVar = this.f30808b;
            if (bVar != null) {
                i = bVar.hashCode();
            }
            return (hashCode * 31) + i;
        }

        public String toString() {
            return "Success(request=" + m3603a() + ", result=" + this.f30808b + ")";
        }
    }

    public AbstractC13719n() {
    }

    public /* synthetic */ AbstractC13719n(C15145g gVar) {
        this();
    }
}
