package p081h.p160h.p161a.p169o;

import kotlin.Metadata;
import p626l.AbstractC14974f;
import p626l.C14975g;
import p626l.p629c0.AbstractC14906i;
import p626l.p641z.p642c.AbstractC15107a;
import p626l.p641z.p643d.AbstractC15150l;
import p626l.p641z.p643d.C15131a0;
import p626l.p641z.p643d.C15149k;
import p626l.p641z.p643d.C15157s;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0014\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u000b\bÆ\u0002\u0018��2\u00020\u0001:\u0003\f\r\u000eB\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u001b\u0010\u0003\u001a\u00020\u00048BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\u0005\u0010\u0006R\u001b\u0010\t\u001a\u00020\u00048BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000b\u0010\b\u001a\u0004\b\n\u0010\u0006¨\u0006\u000f"}, m815d2 = {"Lcom/gogolook/adsdk/status/AdStatusCode;", "", "()V", "CLIENT_ERROR_PREFEX", "", "getCLIENT_ERROR_PREFEX", "()Ljava/lang/String;", "CLIENT_ERROR_PREFEX$delegate", "Lkotlin/Lazy;", "CLIENT_STATUS_PREFEX", "getCLIENT_STATUS_PREFEX", "CLIENT_STATUS_PREFEX$delegate", "AdNStatusMessage", "ClientErrorStatusMessage", "ClientStatusMessage", "adsdk_whoscallRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: h.h.a.o.a */
/* loaded from: classes2-dex2jar.jar:h/h/a/o/a.class */
public final class C6262a {

    /* renamed from: a */
    public static final /* synthetic */ AbstractC14906i[] f15505a;

    /* renamed from: d */
    public static final C6262a f15508d = new C6262a();

    /* renamed from: b */
    public static final AbstractC14974f f15506b = C14975g.m662a(C6264b.f15512a);

    /* renamed from: c */
    public static final AbstractC14974f f15507c = C14975g.m662a(C6265c.f15513a);

    /* renamed from: h.h.a.o.a$a */
    /* loaded from: classes2-dex2jar.jar:h/h/a/o/a$a.class */
    public enum EnumC6263a {
        INITIALIZING("Third-party network is initializing."),
        NETWORK_FILL("Third-party network provided an ad.");

        EnumC6263a(String str) {
            C15149k.m377b(str, "message");
        }
    }

    /* renamed from: h.h.a.o.a$b */
    /* loaded from: classes2-dex2jar.jar:h/h/a/o/a$b.class */
    public static final class C6264b extends AbstractC15150l implements AbstractC15107a<String> {

        /* renamed from: a */
        public static final C6264b f15512a = new C6264b();

        public C6264b() {
            super(0);
        }

        @Override // p626l.p641z.p642c.AbstractC15107a
        public final String invoke() {
            return "Client error";
        }
    }

    /* renamed from: h.h.a.o.a$c */
    /* loaded from: classes2-dex2jar.jar:h/h/a/o/a$c.class */
    public static final class C6265c extends AbstractC15150l implements AbstractC15107a<String> {

        /* renamed from: a */
        public static final C6265c f15513a = new C6265c();

        public C6265c() {
            super(0);
        }

        @Override // p626l.p641z.p642c.AbstractC15107a
        public final String invoke() {
            return "Client status ";
        }
    }

    /* renamed from: h.h.a.o.a$d */
    /* loaded from: classes2-dex2jar.jar:h/h/a/o/a$d.class */
    public enum EnumC6266d {
        ERROR_UNKNOWN(C6262a.f15508d.m23451a() + " unknown"),
        ERROR_AD_OBJECT_INVALID(C6262a.f15508d.m23451a() + " ad object invalid"),
        ERROR_CONTEXT_INVALID(C6262a.f15508d.m23451a() + " context invalid"),
        ERROR_AD_UNIT_ID_INVALID(C6262a.f15508d.m23451a() + " ad unit id invalid"),
        ERROR_AD_RENDERER_INVALID(C6262a.f15508d.m23451a() + " ad renderer invalid"),
        ERROR_AD_PARAMETERS_INVALID(C6262a.f15508d.m23451a() + " ad parameters invalid"),
        ERROR_NO_NEED_REQUEST(C6262a.f15508d.m23451a() + " no need to request ad"),
        ERROR_NETWORK_NOT_ENABLE(C6262a.f15508d.m23451a() + " network not enable"),
        ERROR_MOPUB_AD_CONFIGURATION_IS_NULL(C6262a.f15508d.m23451a() + " MoPub ad configuration is null"),
        ERROR_AOTTERTREK_CONFIGURATION_IS_NULL(C6262a.f15508d.m23451a() + " AotterTrek configuration is null"),
        ERROR_MOPUB_SDK_INIT_AD_UNIT_ID_INVALID(C6262a.f15508d.m23451a() + " MoPub SDK init ad unit id invalid"),
        ERROR_MOPUB_SDK_NOT_INITIALIZE(C6262a.f15508d.m23451a() + " MoPub SDK not initialize"),
        ERROR_AD_CACHE_IS_EMPTY(C6262a.f15508d.m23451a() + " ad cache is empty");
        

        /* renamed from: a */
        public final String f15528a;

        EnumC6266d(String str) {
            C15149k.m377b(str, "message");
            this.f15528a = str;
        }

        /* renamed from: a */
        public final String m23447a() {
            return this.f15528a;
        }
    }

    /* renamed from: h.h.a.o.a$e */
    /* loaded from: classes2-dex2jar.jar:h/h/a/o/a$e.class */
    public enum EnumC6267e {
        AD_MOPUB_SDK_INITIALIZING(C6262a.f15508d.m23449b() + " MoPub SDK is initializing"),
        AD_MOPUB_SDK_INIT_SUCCEEDED(C6262a.f15508d.m23449b() + " MoPub SDK initialization is succeeded"),
        AD_FILL(C6262a.f15508d.m23449b() + "ad fill"),
        AD_EXIST(C6262a.f15508d.m23449b() + "ad exist"),
        AD_REQUESTING(C6262a.f15508d.m23449b() + "ad requesting");
        

        /* renamed from: a */
        public final String f15535a;

        EnumC6267e(String str) {
            C15149k.m377b(str, "message");
            this.f15535a = str;
        }

        /* renamed from: a */
        public final String m23446a() {
            return this.f15535a;
        }
    }

    static {
        C15157s sVar = new C15157s(C15131a0.m419a(C6262a.class), "CLIENT_ERROR_PREFEX", "getCLIENT_ERROR_PREFEX()Ljava/lang/String;");
        C15131a0.m412a(sVar);
        C15157s sVar2 = new C15157s(C15131a0.m419a(C6262a.class), "CLIENT_STATUS_PREFEX", "getCLIENT_STATUS_PREFEX()Ljava/lang/String;");
        C15131a0.m412a(sVar2);
        f15505a = new AbstractC14906i[]{sVar, sVar2};
    }

    /* renamed from: a */
    public final String m23451a() {
        AbstractC14974f fVar = f15506b;
        AbstractC14906i iVar = f15505a[0];
        return (String) fVar.getValue();
    }

    /* renamed from: b */
    public final String m23449b() {
        AbstractC14974f fVar = f15507c;
        AbstractC14906i iVar = f15505a[1];
        return (String) fVar.getValue();
    }
}
