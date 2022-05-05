package p459j.p460a.p603y;

import gogolook.callgogolook2.job.DailySyncJobWorker;
import gogolook.callgogolook2.p074ad.AppAdsSettingsUtils;
import gogolook.callgogolook2.util.control.VersionManager;
import kotlin.Metadata;
import p459j.p460a.p521j0.p529x.C12754a;
import p459j.p460a.p521j0.p529x.C12758e;
import p459j.p460a.p533l.p535o.C12998a;
import p459j.p460a.p568u.C13640c;
import p459j.p460a.p582w0.C13915b3;
import p459j.p460a.p582w0.C13963d3;
import p459j.p460a.p582w0.p583a5.p584e.C13909c;
import p459j.p460a.p582w0.p590x4.C14303u;
import p459j.p460a.p582w0.p590x4.C14313z;
import p459j.p460a.p582w0.p590x4.p591a0.AbstractC14238e;
import p459j.p460a.p582w0.p590x4.p591a0.C14234c;
import p626l.C14989s;
import p626l.p641z.p642c.AbstractC15107a;
import p626l.p641z.p643d.AbstractC15150l;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\b\n��\n\u0002\u0010\u0002\n��\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, m815d2 = {"<anonymous>", "", "invoke"}, m814k = 3, m813mv = {1, 1, 13})
/* renamed from: j.a.y.o */
/* loaded from: classes2-dex2jar.jar:j/a/y/o.class */
public final class C14461o extends AbstractC15150l implements AbstractC15107a<C14989s> {

    /* renamed from: a */
    public final /* synthetic */ DailySyncJobWorker f32360a;

    /* renamed from: j.a.y.o$a */
    /* loaded from: classes2-dex2jar.jar:j/a/y/o$a.class */
    public static final class C14462a implements C13640c.AbstractC13645e {
        public C14462a() {
        }

        @Override // p459j.p460a.p568u.C13640c.AbstractC13645e
        /* renamed from: a */
        public final void mo1273a(int i, boolean z) {
            AbstractC14238e.C14239a.m2086a(new C14234c("DailyJob_FetchRemoteComplete_Callback"), null, 1, null);
            if (z) {
                VersionManager.m25987h();
                C13915b3.m3046e();
                C14313z.m1605f();
                C14303u.m1644b();
                AppAdsSettingsUtils.m28774f();
                C12998a.f29391e.m4834i();
                C13909c.m3070c();
                C13963d3.m2960k();
            }
            if (C12758e.m5405k() || C12754a.m5427e()) {
                C14461o.this.f32360a.m27938b();
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C14461o(DailySyncJobWorker dailySyncJobWorker) {
        super(0);
        this.f32360a = dailySyncJobWorker;
    }

    @Override // p626l.p641z.p642c.AbstractC15107a
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2() {
        C13640c.m3745d().m3755a(new C14462a());
    }
}
