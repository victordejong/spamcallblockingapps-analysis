package p459j.p460a.p515i0.p516a;

import androidx.lifecycle.LiveData;
import androidx.lifecycle.ViewModel;
import com.appsflyer.AppsFlyerLib;
import gogolook.callgogolook2.MyApplication;
import gogolook.callgogolook2.p074ad.AdConstant;
import kotlin.Metadata;
import p081h.p160h.p179e.p180a.p186m.AbstractC6377c;
import p081h.p160h.p179e.p180a.p190p.C6429b;
import p459j.p460a.p582w0.C14063l4;
import p459j.p460a.p582w0.C14217x3;
import p459j.p460a.p604y0.p611f.C14589b;
import p626l.AbstractC14974f;
import p626l.C14975g;
import p626l.p629c0.AbstractC14906i;
import p626l.p641z.p642c.AbstractC15107a;
import p626l.p641z.p643d.AbstractC15150l;
import p626l.p641z.p643d.C15131a0;
import p626l.p641z.p643d.C15157s;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��0\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0018��2\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0011\u001a\u00020\u0012H\u0014J\u0006\u0010\u0013\u001a\u00020\u0012R!\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\u0006\u0010\u0007R\u0017\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00050\u000b8F¢\u0006\u0006\u001a\u0004\b\f\u0010\rR\u0011\u0010\u000e\u001a\u00020\u000f8F¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u0010¨\u0006\u0014"}, m815d2 = {"Lgogolook/callgogolook2/offline/offlinedb/OfflineDbUpdateViewModel;", "Landroidx/lifecycle/ViewModel;", "()V", "_fileDownloadStatus", "Lgogolook/callgogolook2/vas/util/SingleLiveEvent;", "Lgogolook/callgogolook2/offline/offlinedb/OfflineDbFileDownloadStatus;", "get_fileDownloadStatus", "()Lgogolook/callgogolook2/vas/util/SingleLiveEvent;", "_fileDownloadStatus$delegate", "Lkotlin/Lazy;", "fileDownloadStatus", "Landroidx/lifecycle/LiveData;", "getFileDownloadStatus", "()Landroidx/lifecycle/LiveData;", "isDbExpired", "", "()Z", "onCleared", "", "updateDb", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.i0.a.k */
/* loaded from: classes3-dex2jar.jar:j/a/i0/a/k.class */
public final class C12433k extends ViewModel {

    /* renamed from: b */
    public static final /* synthetic */ AbstractC14906i[] f28026b;

    /* renamed from: a */
    public final AbstractC14974f f28027a = C14975g.m662a(C12434a.f28028a);

    /* renamed from: j.a.i0.a.k$a */
    /* loaded from: classes3-dex2jar.jar:j/a/i0/a/k$a.class */
    public static final class C12434a extends AbstractC15150l implements AbstractC15107a<C14589b<EnumC12429h>> {

        /* renamed from: a */
        public static final C12434a f28028a = new C12434a();

        public C12434a() {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // p626l.p641z.p642c.AbstractC15107a
        public final C14589b<EnumC12429h> invoke() {
            return new C14589b<>();
        }
    }

    /* renamed from: j.a.i0.a.k$b */
    /* loaded from: classes3-dex2jar.jar:j/a/i0/a/k$b.class */
    public static final class C12435b extends C14063l4.AbstractC14072e {
        public C12435b() {
        }

        @Override // p459j.p460a.p582w0.C14063l4.AbstractC14072e, p081h.p160h.p179e.p180a.p186m.AbstractC6377c
        /* renamed from: a */
        public void mo1444a(C6429b bVar) {
            C12433k.this.m6181b().setValue(EnumC12429h.DOWNLOAD_ERROR);
        }

        @Override // p459j.p460a.p582w0.C14063l4.AbstractC14072e, p081h.p160h.p179e.p180a.p186m.AbstractC6377c
        /* renamed from: b */
        public void mo1443b() {
            C12433k.this.m6181b().setValue(EnumC12429h.DOWNLOAD_END);
        }

        @Override // p459j.p460a.p582w0.C14063l4.AbstractC14072e, p081h.p160h.p179e.p180a.p186m.AbstractC6377c
        /* renamed from: c */
        public void mo1442c() {
            C12433k.this.m6181b().setValue(EnumC12429h.DOWNLOAD_START);
        }

        @Override // p459j.p460a.p582w0.C14063l4.AbstractC14072e
        /* renamed from: d */
        public void mo2635d() {
            C12433k.this.m6181b().setValue(EnumC12429h.STATUS_REFRESHED);
        }
    }

    static {
        C15157s sVar = new C15157s(C15131a0.m419a(C12433k.class), "_fileDownloadStatus", "get_fileDownloadStatus()Lgogolook/callgogolook2/vas/util/SingleLiveEvent;");
        C15131a0.m412a(sVar);
        f28026b = new AbstractC14906i[]{sVar};
    }

    /* renamed from: a */
    public final LiveData<EnumC12429h> m6183a() {
        return m6181b();
    }

    /* renamed from: b */
    public final C14589b<EnumC12429h> m6181b() {
        AbstractC14974f fVar = this.f28027a;
        AbstractC14906i iVar = f28026b[0];
        return (C14589b) fVar.getValue();
    }

    /* renamed from: c */
    public final boolean m6180c() {
        return C14063l4.m2639z();
    }

    /* renamed from: d */
    public final void m6179d() {
        if (!C14217x3.m2111v()) {
            m6181b().setValue(EnumC12429h.ERROR_NO_NETWORK);
            return;
        }
        C14063l4.m2677a(true, (AbstractC6377c) new C12435b());
        AppsFlyerLib.getInstance().trackEvent(MyApplication.m29013o(), AdConstant.APPSFLYER_OFFLINE_DB_UPDATE, null);
    }

    @Override // androidx.lifecycle.ViewModel
    public void onCleared() {
        super.onCleared();
    }
}
