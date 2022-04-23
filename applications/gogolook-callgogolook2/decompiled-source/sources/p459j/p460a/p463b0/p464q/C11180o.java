package p459j.p460a.p463b0.p464q;

import android.content.Context;
import androidx.lifecycle.LiveData;
import gogolook.callgogolook2.gson.CallLogContentFeedConfig;
import gogolook.callgogolook2.p074ad.AdDataSource;
import gogolook.callgogolook2.p074ad.AdRequestState;
import gogolook.callgogolook2.p074ad.AdUnit;
import gogolook.callgogolook2.p074ad.AppAdsSettingsUtils;
import gogolook.callgogolook2.realm.obj.logsgroup.LogsGroupRealmObject;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import p081h.p160h.p161a.EnumC6184a;
import p081h.p160h.p161a.p162h.AbstractC6207d;
import p626l.AbstractC14974f;
import p626l.C14975g;
import p626l.p629c0.AbstractC14906i;
import p626l.p641z.p642c.AbstractC15107a;
import p626l.p641z.p643d.AbstractC15150l;
import p626l.p641z.p643d.C15131a0;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
import p626l.p641z.p643d.C15157s;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��j\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010\u0015\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018�� '2\u00020\u0001:\u0001'B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0012\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0018\u001a\u00020\u0019H\u0016J\u0010\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u0018\u001a\u00020\u0019H\u0016J\u0012\u0010\u001c\u001a\u00020\u001d2\b\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u0016J&\u0010 \u001a\u00020\u001d2\u0006\u0010!\u001a\u00020\"2\u0006\u0010\u0018\u001a\u00020\u00192\f\u0010#\u001a\b\u0012\u0004\u0012\u00020%0$H\u0016J\u0010\u0010&\u001a\u00020\u001d2\u0006\u0010\u0018\u001a\u00020\u0019H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n��R\u001a\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\b8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\n\u0010\u000bR\u001b\u0010\f\u001a\u00020\r8VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u000e\u0010\u000fR \u0010\u0012\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00140\u00130\b8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0015\u0010\u000bR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��¨\u0006("}, m815d2 = {"Lgogolook/callgogolook2/main/calllog/CallLogsPageRepositoryImpl;", "Lgogolook/callgogolook2/main/calllog/CallLogsPageRepository;", "callLogsDataSource", "Lgogolook/callgogolook2/main/calllog/CallLogsDataSource;", "adDataSource", "Lgogolook/callgogolook2/ad/AdDataSource;", "(Lgogolook/callgogolook2/main/calllog/CallLogsDataSource;Lgogolook/callgogolook2/ad/AdDataSource;)V", "adRequestState", "Landroidx/lifecycle/LiveData;", "Lgogolook/callgogolook2/ad/AdRequestState;", "getAdRequestState", "()Landroidx/lifecycle/LiveData;", "callLogContentFeedAdConfig", "Lgogolook/callgogolook2/gson/CallLogContentFeedConfig;", "getCallLogContentFeedAdConfig", "()Lgogolook/callgogolook2/gson/CallLogContentFeedConfig;", "callLogContentFeedAdConfig$delegate", "Lkotlin/Lazy;", "callLogs", "", "Lgogolook/callgogolook2/realm/obj/logsgroup/LogsGroupRealmObject;", "getCallLogs", "getAdObject", "Lcom/gogolook/adsdk/adobject/BaseAdObject;", "adUnit", "Lgogolook/callgogolook2/ad/AdUnit;", "isAdRequesting", "", "loadCallLogs", "", "filterTypes", "", "requestAd", "context", "Landroid/content/Context;", "needToRequestAdSourceSet", "", "Lcom/gogolook/adsdk/Definition$AdSource;", "stopAdRequest", "Companion", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.b0.q.o */
/* loaded from: classes2-dex2jar.jar:j/a/b0/q/o.class */
public final class C11180o implements AbstractC11179n {

    /* renamed from: d */
    public static final /* synthetic */ AbstractC14906i[] f25099d;

    /* renamed from: a */
    public final AbstractC14974f f25100a = C14975g.m662a(C11182b.f25103a);

    /* renamed from: b */
    public final AbstractC11166i f25101b;

    /* renamed from: c */
    public final AdDataSource f25102c;

    /* renamed from: j.a.b0.q.o$a */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/q/o$a.class */
    public static final class C11181a {
        public C11181a() {
        }

        public /* synthetic */ C11181a(C15145g gVar) {
            this();
        }
    }

    /* renamed from: j.a.b0.q.o$b */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/q/o$b.class */
    public static final class C11182b extends AbstractC15150l implements AbstractC15107a<CallLogContentFeedConfig> {

        /* renamed from: a */
        public static final C11182b f25103a = new C11182b();

        public C11182b() {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // p626l.p641z.p642c.AbstractC15107a
        public final CallLogContentFeedConfig invoke() {
            return AppAdsSettingsUtils.INSTANCE.m28793a();
        }
    }

    static {
        C15157s sVar = new C15157s(C15131a0.m419a(C11180o.class), "callLogContentFeedAdConfig", "getCallLogContentFeedAdConfig()Lgogolook/callgogolook2/gson/CallLogContentFeedConfig;");
        C15131a0.m412a(sVar);
        f25099d = new AbstractC14906i[]{sVar};
        new C11181a(null);
    }

    public C11180o(AbstractC11166i iVar, AdDataSource adDataSource) {
        C15149k.m377b(iVar, "callLogsDataSource");
        C15149k.m377b(adDataSource, "adDataSource");
        this.f25101b = iVar;
        this.f25102c = adDataSource;
    }

    @Override // p459j.p460a.p463b0.p464q.AbstractC11179n
    /* renamed from: a */
    public LiveData<AdRequestState> mo10124a() {
        return this.f25102c.mo28870a();
    }

    @Override // p459j.p460a.p463b0.p464q.AbstractC11179n
    /* renamed from: a */
    public void mo10123a(Context context, AdUnit adUnit, Set<? extends EnumC6184a> set) {
        C15149k.m377b(context, "context");
        C15149k.m377b(adUnit, "adUnit");
        C15149k.m377b(set, "needToRequestAdSourceSet");
        this.f25102c.mo28869a(context, adUnit, set);
    }

    @Override // p459j.p460a.p463b0.p464q.AbstractC11179n
    /* renamed from: a */
    public void mo10121a(int[] iArr) {
        this.f25101b.mo10150a(iArr);
    }

    @Override // p459j.p460a.p463b0.p464q.AbstractC11179n
    /* renamed from: a */
    public boolean mo10122a(AdUnit adUnit) {
        C15149k.m377b(adUnit, "adUnit");
        return this.f25102c.mo28867a(adUnit);
    }

    @Override // p459j.p460a.p463b0.p464q.AbstractC11179n
    /* renamed from: b */
    public LiveData<List<LogsGroupRealmObject>> mo10120b() {
        return this.f25101b.mo10148b();
    }

    @Override // p459j.p460a.p463b0.p464q.AbstractC11179n
    /* renamed from: b */
    public AbstractC6207d mo10119b(AdUnit adUnit) {
        C15149k.m377b(adUnit, "adUnit");
        return this.f25102c.mo28865b(adUnit);
    }

    @Override // p459j.p460a.p463b0.p464q.AbstractC11179n
    /* renamed from: c */
    public CallLogContentFeedConfig mo10118c() {
        AbstractC14974f fVar = this.f25100a;
        AbstractC14906i iVar = f25099d[0];
        return (CallLogContentFeedConfig) fVar.getValue();
    }

    @Override // p459j.p460a.p463b0.p464q.AbstractC11179n
    /* renamed from: c */
    public void mo10117c(AdUnit adUnit) {
        C15149k.m377b(adUnit, "adUnit");
        this.f25102c.mo28864c(adUnit);
    }
}
