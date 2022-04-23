package p459j.p460a.p582w0.p590x4;

import java.util.List;
import kotlin.Metadata;
import p459j.p460a.p541n0.C13032a;
import p459j.p460a.p568u.C13640c;
import p459j.p460a.p582w0.C14080m2;
import p459j.p460a.p582w0.p590x4.C14296p;
import p626l.AbstractC14974f;
import p626l.C14975g;
import p626l.p629c0.AbstractC14906i;
import p626l.p632u.C15021m;
import p626l.p641z.p642c.AbstractC15107a;
import p626l.p641z.p643d.AbstractC15150l;
import p626l.p641z.p643d.C15131a0;
import p626l.p641z.p643d.C15149k;
import p626l.p641z.p643d.C15157s;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0004\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\u0005H\u0002J\b\u0010\u000f\u001a\u00020\fH\u0007R!\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\u0006\u0010\u0007R\u000e\u0010\n\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n��¨\u0006\u0010"}, m815d2 = {"Lgogolook/callgogolook2/util/analytics/RemoteConfigEventHelper;", "", "()V", "CONFIG_KEY_LIST", "", "", "getCONFIG_KEY_LIST", "()Ljava/util/List;", "CONFIG_KEY_LIST$delegate", "Lkotlin/Lazy;", "GF_NAME", "trackConfig", "", "name", C13032a.f29462d, "trackRemoteConfig", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.w0.x4.u */
/* loaded from: classes3-dex2jar.jar:j/a/w0/x4/u.class */
public final class C14303u {

    /* renamed from: a */
    public static final /* synthetic */ AbstractC14906i[] f32036a;

    /* renamed from: c */
    public static final C14303u f32038c = new C14303u();

    /* renamed from: b */
    public static final AbstractC14974f f32037b = C14975g.m662a(C14304a.f32039a);

    /* renamed from: j.a.w0.x4.u$a */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/x4/u$a.class */
    public static final class C14304a extends AbstractC15150l implements AbstractC15107a<List<? extends String>> {

        /* renamed from: a */
        public static final C14304a f32039a = new C14304a();

        public C14304a() {
            super(0);
        }

        @Override // p626l.p641z.p642c.AbstractC15107a
        public final List<? extends String> invoke() {
            return C15021m.m557c("iap_post_call_end_promo", "mopub_init_scenario_v1", "ad_sms_request_timeout", "sms_url_scan_manually", "sms_dialog_view_message_to_scp", "show_metaphor_on_scan_url_notification");
        }
    }

    static {
        C15157s sVar = new C15157s(C15131a0.m419a(C14303u.class), "CONFIG_KEY_LIST", "getCONFIG_KEY_LIST()Ljava/util/List;");
        C15131a0.m412a(sVar);
        f32036a = new AbstractC14906i[]{sVar};
    }

    /* renamed from: b */
    public static final void m1644b() {
        for (String str : f32038c.m1646a()) {
            try {
                String d = C13640c.m3745d().m3744d(str);
                C15149k.m383a((Object) d, "it");
                if ((d.length() > 0 ? d : null) != null) {
                    C14303u uVar = f32038c;
                    C15149k.m383a((Object) d, C13032a.f29462d);
                    uVar.m1645a(str, d);
                }
            } catch (Exception e) {
                C14080m2.m2612a((Throwable) e);
            }
        }
    }

    /* renamed from: a */
    public final List<String> m1646a() {
        AbstractC14974f fVar = f32037b;
        AbstractC14906i iVar = f32036a[0];
        return (List) fVar.getValue();
    }

    /* renamed from: a */
    public final void m1645a(String str, String str2) {
        C14296p.C14297a.C14298a aVar = new C14296p.C14297a.C14298a();
        aVar.m1807a("key_name", str);
        aVar.m1807a("config_value", str2);
        C14296p.m1830a("whoscall_dau_remote_config_status", aVar.m1811a());
    }
}
