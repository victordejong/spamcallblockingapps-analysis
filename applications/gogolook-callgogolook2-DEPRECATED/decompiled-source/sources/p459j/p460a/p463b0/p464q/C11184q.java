package p459j.p460a.p463b0.p464q;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.View;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.MediatorLiveData;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.Observer;
import com.mopub.common.Constants;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.ReportDialogActivity;
import gogolook.callgogolook2.gson.DataUserReport;
import gogolook.callgogolook2.gson.NumberInfo;
import gogolook.callgogolook2.gson.RowInfo;
import gogolook.callgogolook2.intro.iap.IapPromoActivity;
import gogolook.callgogolook2.ndp.NumberDetailActivity;
import gogolook.callgogolook2.p074ad.AdPlacer;
import gogolook.callgogolook2.p074ad.AdRequestState;
import gogolook.callgogolook2.p074ad.AdResult;
import gogolook.callgogolook2.p074ad.AdStatusController;
import gogolook.callgogolook2.p074ad.AdUnit;
import gogolook.callgogolook2.p074ad.AdUtils;
import gogolook.callgogolook2.p074ad.PositionHelper;
import gogolook.callgogolook2.phone.call.dialog.CallDialogService;
import gogolook.callgogolook2.realm.obj.logsgroup.LogsGroupRealmObject;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import p081h.p160h.p161a.EnumC6184a;
import p081h.p160h.p161a.p162h.AbstractC6207d;
import p081h.p160h.p161a.p169o.C6262a;
import p459j.p460a.p461a0.C11052i;
import p459j.p460a.p463b0.C11142n;
import p459j.p460a.p511h.AbstractC12391a;
import p459j.p460a.p521j0.p529x.C12810o;
import p459j.p460a.p531k0.C12860e;
import p459j.p460a.p533l.C12928g;
import p459j.p460a.p533l.C12942i;
import p459j.p460a.p533l.HandlerC12947l;
import p459j.p460a.p541n0.C13032a;
import p459j.p460a.p541n0.C13131j;
import p459j.p460a.p576w.C13755l;
import p459j.p460a.p576w.p578o.C13797d;
import p459j.p460a.p582w0.C13878a3;
import p459j.p460a.p582w0.C13938c4;
import p459j.p460a.p582w0.C13973d4;
import p459j.p460a.p582w0.C14108o4;
import p459j.p460a.p582w0.C14165s3;
import p459j.p460a.p582w0.C14174u;
import p459j.p460a.p582w0.C14206w4;
import p459j.p460a.p582w0.C14217x3;
import p459j.p460a.p582w0.p590x4.C14247d;
import p459j.p460a.p582w0.p590x4.C14261f;
import p459j.p460a.p582w0.p590x4.C14289m;
import p459j.p460a.p582w0.p590x4.C14299q;
import p459j.p460a.p582w0.p590x4.p592b0.C14241a;
import p459j.p460a.p582w0.p594z4.C14356f;
import p459j.p460a.p613z0.DialogC14618f;
import p459j.p460a.p613z0.p617p.C14687h;
import p626l.AbstractC14974f;
import p626l.C14975g;
import p626l.C14978j;
import p626l.C14986p;
import p626l.C14989s;
import p626l.p629c0.AbstractC14906i;
import p626l.p632u.C15010g0;
import p626l.p632u.C15022n;
import p626l.p632u.C15029u;
import p626l.p641z.p642c.AbstractC15107a;
import p626l.p641z.p642c.AbstractC15118l;
import p626l.p641z.p643d.AbstractC15150l;
import p626l.p641z.p643d.C15131a0;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
import p626l.p641z.p643d.C15157s;
import p660rx.Single;
import p660rx.SingleSubscriber;
import p660rx.android.schedulers.AndroidSchedulers;
import p660rx.functions.Action1;
import p660rx.schedulers.Schedulers;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��È\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\r\n\u0002\u0010\u0015\n\u0002\b\u0018\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018�� \u0086\u00012\u00020\u0001:\u0002\u0086\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\u001e\u0010G\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u000b2\f\u0010H\u001a\b\u0012\u0004\u0012\u00020\f0\u001fH\u0002J\u001e\u0010I\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u000b2\f\u0010J\u001a\b\u0012\u0004\u0012\u00020\f0\u001fH\u0002J\u001c\u0010K\u001a\b\u0012\u0004\u0012\u00020\f0\u001f2\f\u0010L\u001a\b\u0012\u0004\u0012\u00020:0\u000bH\u0002J\u001c\u0010M\u001a\b\u0012\u0004\u0012\u00020\f0\u000b2\f\u0010L\u001a\b\u0012\u0004\u0012\u00020:0\u000bH\u0002J\b\u0010N\u001a\u00020EH\u0016J\b\u0010O\u001a\u00020EH\u0002J\b\u0010P\u001a\u00020EH\u0002J\u0018\u0010Q\u001a\u00020\u000f2\u000e\u0010H\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u000bH\u0002J\n\u0010R\u001a\u0004\u0018\u00010SH\u0002J\n\u0010T\u001a\u0004\u0018\u00010:H\u0016J\n\u0010U\u001a\u0004\u0018\u000106H\u0016J\n\u0010V\u001a\u0004\u0018\u000106H\u0016J\n\u0010W\u001a\u0004\u0018\u000106H\u0016J\u0010\u0010X\u001a\u00020E2\u0006\u0010Y\u001a\u00020:H\u0016J\b\u0010Z\u001a\u00020EH\u0016J\b\u0010[\u001a\u00020EH\u0016J\b\u0010\\\u001a\u00020EH\u0016J\b\u0010]\u001a\u00020EH\u0016J\b\u0010^\u001a\u00020EH\u0016J\b\u0010_\u001a\u00020EH\u0016J\b\u0010`\u001a\u00020EH\u0016J\b\u0010a\u001a\u00020EH\u0016J\b\u0010b\u001a\u00020-H\u0002J\u000f\u0010,\u001a\u0004\u0018\u00010-H\u0016¢\u0006\u0002\u0010cJ\b\u0010d\u001a\u00020EH\u0016J\b\u0010e\u001a\u00020EH\u0016J\b\u0010f\u001a\u00020-H\u0002J\b\u0010g\u001a\u00020-H\u0002J\b\u0010h\u001a\u00020EH\u0016J\b\u0010i\u001a\u00020EH\u0016J\u0010\u0010j\u001a\u00020E2\u0006\u0010k\u001a\u00020lH\u0016J\b\u0010m\u001a\u00020EH\u0016J\b\u0010n\u001a\u00020EH\u0002J\b\u0010o\u001a\u00020EH\u0016J\u0012\u0010p\u001a\u00020E2\b\u0010q\u001a\u0004\u0018\u00010rH\u0016J\b\u0010s\u001a\u00020EH\u0016J\b\u0010t\u001a\u00020EH\u0016J\u0018\u0010u\u001a\u00020E2\u0006\u0010v\u001a\u00020w2\u0006\u0010x\u001a\u00020>H\u0016J\u0018\u0010y\u001a\u00020E2\u0006\u0010v\u001a\u00020w2\u0006\u0010x\u001a\u00020>H\u0016J\u0010\u0010z\u001a\u00020E2\u0006\u0010{\u001a\u00020|H\u0002J\b\u0010}\u001a\u00020EH\u0002J\u0010\u0010~\u001a\u00020E2\u0006\u0010Y\u001a\u00020:H\u0016J\u0011\u0010\u007f\u001a\u00020E2\u0007\u0010{\u001a\u00030\u0080\u0001H\u0002J\u0011\u0010\u0081\u0001\u001a\u00020E2\u0006\u0010Y\u001a\u00020:H\u0016J\u001b\u0010\u0082\u0001\u001a\u00020E2\u0007\u0010\u0083\u0001\u001a\u00020\u000f2\u0007\u0010\u0084\u0001\u001a\u00020\u000fH\u0016J\t\u0010\u0085\u0001\u001a\u00020EH\u0016R\u001a\u0010\t\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\f0\u000b0\nX\u0082\u0004¢\u0006\u0002\n��R \u0010\r\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u000f0\u000e0\nX\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n��R!\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\f0\u00118BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0012\u0010\u0013R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��R \u0010\u001a\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\f0\u000b0\u001b8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001c\u0010\u001dR\u001a\u0010\u001e\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020!0 0\u001fX\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\"\u001a\u00020\u000fX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010#\u001a\u00020\u0017X\u0082\u0004¢\u0006\u0002\n��R\u001b\u0010$\u001a\u00020%8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b(\u0010\u0015\u001a\u0004\b&\u0010'R\u000e\u0010)\u001a\u00020\u000fX\u0082\u000e¢\u0006\u0002\n��R&\u0010*\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u000f0\u000e0\u001b8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b+\u0010\u001dR\u000e\u0010,\u001a\u00020-X\u0082\u000e¢\u0006\u0002\n��R&\u0010/\u001a\u00020-2\u0006\u0010.\u001a\u00020-8V@VX\u0096\u000e¢\u0006\u000e\n��\u001a\u0004\b/\u00100\"\u0004\b1\u00102R&\u00103\u001a\u00020-2\u0006\u0010.\u001a\u00020-8V@VX\u0096\u000e¢\u0006\u000e\n��\u001a\u0004\b3\u00100\"\u0004\b4\u00102R\u0010\u00105\u001a\u0004\u0018\u000106X\u0082\u000e¢\u0006\u0002\n��R\u0010\u00107\u001a\u0004\u0018\u000106X\u0082\u000e¢\u0006\u0002\n��R\u0010\u00108\u001a\u0004\u0018\u000106X\u0082\u000e¢\u0006\u0002\n��R\u0010\u00109\u001a\u0004\u0018\u00010:X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010;\u001a\u00020\u000fX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010<\u001a\u00020\u0017X\u0082\u0004¢\u0006\u0002\n��R\u0010\u0010=\u001a\u0004\u0018\u00010>X\u0082\u000e¢\u0006\u0002\n��R\u001b\u0010?\u001a\u00020@8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bC\u0010\u0015\u001a\u0004\bA\u0010BR\u0014\u0010D\u001a\b\u0012\u0004\u0012\u00020E0\nX\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010F\u001a\u00020\u0017X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0087\u0001"}, m815d2 = {"Lgogolook/callgogolook2/main/calllog/CallLogsPresenter;", "Lgogolook/callgogolook2/main/calllog/CallLogsContract$Presenter;", "callLogsView", "Lgogolook/callgogolook2/main/calllog/CallLogsContract$View;", "callLogsPageRepository", "Lgogolook/callgogolook2/main/calllog/CallLogsPageRepository;", "adEventCacheHelper", "Lgogolook/callgogolook2/util/analytics/AdEventCacheHelper$Companion;", "(Lgogolook/callgogolook2/main/calllog/CallLogsContract$View;Lgogolook/callgogolook2/main/calllog/CallLogsPageRepository;Lgogolook/callgogolook2/util/analytics/AdEventCacheHelper$Companion;)V", "_callLogsViewDataList", "Landroidx/lifecycle/MutableLiveData;", "", "Lgogolook/callgogolook2/adapter/ViewData;", "_forceRefreshRecyclerViewInRange", "Lkotlin/Pair;", "", "adPlacer", "Lgogolook/callgogolook2/ad/AdPlacer;", "getAdPlacer", "()Lgogolook/callgogolook2/ad/AdPlacer;", "adPlacer$delegate", "Lkotlin/Lazy;", "addAdViewDataToListRunnable", "Ljava/lang/Runnable;", "callLogViewDataUpdateHandler", "Landroid/os/Handler;", "callLogsViewDataList", "Landroidx/lifecycle/LiveData;", "getCallLogsViewDataList", "()Landroidx/lifecycle/LiveData;", "contentFeedAdViewDataCache", "", "Lgogolook/callgogolook2/main/calllog/TimestampWrapper;", "Lgogolook/callgogolook2/main/calllog/AdViewData;", "contentFeedAdViewDataCacheCount", "createNewViewDataListRunnable", "filterViewData", "Lgogolook/callgogolook2/main/calllog/FilterViewData;", "getFilterViewData", "()Lgogolook/callgogolook2/main/calllog/FilterViewData;", "filterViewData$delegate", "firstVisiblePosition", "forceUpdateCallLogsInRange", "getForceUpdateCallLogsInRange", "isLastLongClickLogBlocked", "", C13032a.f29462d, "isShowIapNotice", "()Z", "setShowIapNotice", "(Z)V", "isStickyAdShown", "setStickyAdShown", "lastLongClickLogDisplayNumber", "", "lastLongClickLogE164", "lastLongClickLogNumber", "lastLongClickLogs", "Lgogolook/callgogolook2/realm/obj/logsgroup/LogsGroupRealmObject;", "lastVisiblePosition", "removeAdViewDataFromListRunnable", "stickyAdCache", "Lcom/gogolook/adsdk/adobject/BaseAdObject;", "suggestionViewData", "Lgogolook/callgogolook2/main/calllog/SuggestionViewData;", "getSuggestionViewData", "()Lgogolook/callgogolook2/main/calllog/SuggestionViewData;", "suggestionViewData$delegate", "updateSuggestionViewDataEvent", "", "updateSuggestionViewDataRunnable", "addAdViewDataToList", "list", "checkAndUpdateSuggestionViewDataToList", "viewDataList", "convertRawCallLogListToViewDataList", "rawCallLogList", "createTheNewViewDataList", "destroyAds", "destroyCallLogContentFeedAds", "destroyStickyAd", "getCallLogViewDataOffset", "getFilterSelections", "", "getLastLongClickLog", "getLastLongClickLogDisplayNumber", "getLastLongClickLogE164", "getLastLongClickLogNumber", "handleCallLogsLongClick", "logsGroupRealmObject", "handleContextMenuActionBlock", "handleContextMenuActionCall", "handleContextMenuActionDeleteLog", "handleContextMenuActionFavorite", "handleContextMenuActionMessage", "handleContextMenuActionReport", "handleContextMenuActionReportNumber", "handleContextMenuActionSave", "hasUnusedContentFeedAdCache", "()Ljava/lang/Boolean;", "loadCallLogs", "loadCallLogsPageAds", "needToAddSuggestionViewData", "needToShowCallLogContentFeedAd", "onStop", "refreshIapNoticeBanner", "restoreOrFixPayment", "notice", "Lgogolook/callgogolook2/iap/model/IapNotice;", "showAboutPremium", "showStickyAd", "startTrackingAds", "stopCallDialogServiceIfNeed", Constants.INTENT_SCHEME, "Landroid/content/Intent;", "stopCallLogAdsLoading", "stopTrackingAds", "trackAdClick", "adUnit", "Lgogolook/callgogolook2/ad/AdUnit;", "adObject", "trackAdImpression", "trackAdRequestState", "requestState", "Lgogolook/callgogolook2/ad/AdRequestState;", "tryLoadCallLogContentFeedAd", "tryToPerformCall", "tryToShowAds", "Lgogolook/callgogolook2/ad/AdRequestState$End;", "tryToStartNdpByClickCallLog", "updateCallLogsVisibleRange", "first", "last", "updateSuggestionItem", "Companion", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.b0.q.q */
/* loaded from: classes2-dex2jar.jar:j/a/b0/q/q.class */
public final class C11184q implements AbstractC11164g {

    /* renamed from: A */
    public static final /* synthetic */ AbstractC14906i[] f25105A;

    /* renamed from: B */
    public static final String f25106B = C11184q.class.getSimpleName();

    /* renamed from: b */
    public int f25108b;

    /* renamed from: c */
    public int f25109c;

    /* renamed from: m */
    public final MutableLiveData<List<AbstractC12391a>> f25119m;

    /* renamed from: n */
    public boolean f25120n;

    /* renamed from: o */
    public boolean f25121o;

    /* renamed from: q */
    public int f25123q;

    /* renamed from: r */
    public AbstractC6207d f25124r;

    /* renamed from: s */
    public LogsGroupRealmObject f25125s;

    /* renamed from: t */
    public boolean f25126t;

    /* renamed from: u */
    public String f25127u;

    /* renamed from: v */
    public String f25128v;

    /* renamed from: w */
    public String f25129w;

    /* renamed from: x */
    public final AbstractC11165h f25130x;

    /* renamed from: y */
    public final AbstractC11179n f25131y;

    /* renamed from: z */
    public final C14247d.C14259l f25132z;

    /* renamed from: a */
    public final AbstractC14974f f25107a = C14975g.m662a(new C11189e());

    /* renamed from: d */
    public final AbstractC14974f f25110d = C14975g.m662a(C11193i.f25140a);

    /* renamed from: e */
    public final AbstractC14974f f25111e = C14975g.m662a(C11200m.f25147a);

    /* renamed from: f */
    public final MutableLiveData<C14989s> f25112f = new MutableLiveData<>();

    /* renamed from: g */
    public final MutableLiveData<C14978j<Integer, Integer>> f25113g = new MutableLiveData<>();

    /* renamed from: h */
    public final Handler f25114h = new Handler(Looper.getMainLooper());

    /* renamed from: i */
    public final Runnable f25115i = new RunnableC11192h();

    /* renamed from: j */
    public final Runnable f25116j = new RunnableC11201n();

    /* renamed from: k */
    public final Runnable f25117k = new RunnableC11191g();

    /* renamed from: l */
    public final Runnable f25118l = new RunnableC11199l();

    /* renamed from: p */
    public final List<C11152c0<C11147b>> f25122p = new ArrayList();

    /* renamed from: j.a.b0.q.q$a */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/q/q$a.class */
    public static final class C11185a<T> implements Observer<S> {
        public C11185a() {
        }

        /* renamed from: a */
        public final void onChanged(List<? extends LogsGroupRealmObject> list) {
            C11184q.this.f25114h.post(C11184q.this.f25115i);
        }
    }

    /* renamed from: j.a.b0.q.q$b */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/q/q$b.class */
    public static final class C11186b<T> implements Observer<S> {
        public C11186b() {
        }

        /* renamed from: a */
        public final void onChanged(C14989s sVar) {
            C11184q.this.f25114h.post(C11184q.this.f25116j);
        }
    }

    /* renamed from: j.a.b0.q.q$c */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/q/q$c.class */
    public static final class C11187c<T> implements Observer<S> {
        public C11187c() {
        }

        /* renamed from: a */
        public final void onChanged(AdRequestState adRequestState) {
            C11184q qVar = C11184q.this;
            C15149k.m383a((Object) adRequestState, "requestState");
            qVar.m10101a(adRequestState);
            if (adRequestState instanceof AdRequestState.End) {
                C11184q.this.m10102a((AdRequestState.End) adRequestState);
            }
        }
    }

    /* renamed from: j.a.b0.q.q$d */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/q/q$d.class */
    public static final class C11188d {
        public C11188d() {
        }

        public /* synthetic */ C11188d(C15145g gVar) {
            this();
        }
    }

    /* renamed from: j.a.b0.q.q$e */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/q/q$e.class */
    public static final class C11189e extends AbstractC15150l implements AbstractC15107a<AdPlacer<AbstractC12391a>> {
        public C11189e() {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // p626l.p641z.p642c.AbstractC15107a
        public final AdPlacer<AbstractC12391a> invoke() {
            return new AdPlacer<>(new PositionHelper(C11184q.this.f25131y.mo10118c().m28547c()));
        }
    }

    /* renamed from: j.a.b0.q.q$f */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/q/q$f.class */
    public static final class C11190f extends AbstractC15150l implements AbstractC15118l<Integer, C14978j<? extends C11147b, ? extends Boolean>> {
        public C11190f() {
            super(1);
        }

        /* renamed from: a */
        public final C14978j<C11147b, Boolean> m10038a(int i) {
            long uptimeMillis = SystemClock.uptimeMillis();
            while (C11184q.this.m10110F()) {
                List list = C11184q.this.f25122p;
                C11184q qVar = C11184q.this;
                int i2 = qVar.f25123q;
                qVar.f25123q = i2 + 1;
                C11152c0 c0Var = (C11152c0) list.get(i2);
                if (uptimeMillis - c0Var.m10182a() < C11184q.this.f25131y.mo10118c().m28548b()) {
                    return new C14978j<>(c0Var.m10181b(), true);
                }
                List list2 = C11184q.this.f25122p;
                C11184q qVar2 = C11184q.this;
                qVar2.f25123q--;
                list2.remove(qVar2.f25123q);
                ((C11147b) c0Var.m10181b()).m10186a().mo23568b();
            }
            AbstractC6207d b = C11184q.this.f25131y.mo10119b(AdUnit.CALL_LOG_CONTENT_FEED);
            C14978j<C11147b, Boolean> jVar = null;
            if (b != null) {
                C11147b bVar = new C11147b(0, b, 1, null);
                C11184q.this.f25122p.add(new C11152c0(bVar));
                C11184q.this.f25123q++;
                jVar = new C14978j<>(bVar, false);
            }
            return jVar;
        }

        @Override // p626l.p641z.p642c.AbstractC15118l
        public /* bridge */ /* synthetic */ C14978j<? extends C11147b, ? extends Boolean> invoke(Integer num) {
            return m10038a(num.intValue());
        }
    }

    /* renamed from: j.a.b0.q.q$g */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/q/q$g.class */
    public static final class RunnableC11191g implements Runnable {
        public RunnableC11191g() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            List list = (List) C11184q.this.f25119m.getValue();
            if (list != null) {
                C15149k.m383a((Object) list, "_callLogsViewDataList.value ?: return@Runnable");
                if (C11184q.this.m10108H()) {
                    List a = C11184q.this.m10092a(C15029u.m526d((Collection) list));
                    if (a != null) {
                        C11184q.this.f25119m.setValue(a);
                    } else {
                        C11184q.this.m10106J();
                    }
                }
            }
        }
    }

    /* renamed from: j.a.b0.q.q$h */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/q/q$h.class */
    public static final class RunnableC11192h implements Runnable {
        public RunnableC11192h() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            List<LogsGroupRealmObject> value = C11184q.this.f25131y.mo10120b().getValue();
            if (value != null) {
                MutableLiveData mutableLiveData = C11184q.this.f25119m;
                C11184q qVar = C11184q.this;
                C15149k.m383a((Object) value, "it");
                mutableLiveData.setValue(qVar.m10075d(value));
            }
        }
    }

    /* renamed from: j.a.b0.q.q$i */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/q/q$i.class */
    public static final class C11193i extends AbstractC15150l implements AbstractC15107a<C11207w> {

        /* renamed from: a */
        public static final C11193i f25140a = new C11193i();

        public C11193i() {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // p626l.p641z.p642c.AbstractC15107a
        public final C11207w invoke() {
            return new C11207w(0, 1, null);
        }
    }

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0016\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n��\u0010��\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\n¢\u0006\u0002\b\u0007"}, m815d2 = {"<anonymous>", "", "dialog", "Landroid/content/DialogInterface;", "kotlin.jvm.PlatformType", "<anonymous parameter 1>", "", "onClick"}, m814k = 3, m813mv = {1, 1, 13})
    /* renamed from: j.a.b0.q.q$j */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/q/q$j.class */
    public static final class DialogInterface$OnClickListenerC11194j implements DialogInterface.OnClickListener {

        /* renamed from: j.a.b0.q.q$j$a */
        /* loaded from: classes2-dex2jar.jar:j/a/b0/q/q$j$a.class */
        public static final class C11195a<T> implements Single.OnSubscribe<T> {
            public C11195a() {
            }

            /* renamed from: a */
            public final void call(SingleSubscriber<? super Void> singleSubscriber) {
                try {
                    C13131j.m4529c(C11184q.this.f25127u);
                    singleSubscriber.onSuccess(null);
                } catch (Exception e) {
                    singleSubscriber.onError(e);
                }
            }
        }

        /* renamed from: j.a.b0.q.q$j$b */
        /* loaded from: classes2-dex2jar.jar:j/a/b0/q/q$j$b.class */
        public static final class C11196b<T> implements Action1<Void> {
            public C11196b() {
            }

            /* renamed from: a */
            public final void call(Void r8) {
                C11184q.this.mo10105a();
                C14687h.m861a(C11184q.this.f25130x.mo10160a(), C14206w4.m2225a((int) R$string.delete_number_toast), 1).m858c();
                C14217x3.m2119o(C11184q.this.f25130x.mo10160a());
                C14289m.m1897a((Integer) null, (Integer) null, (Integer) 4, (Integer) null, (Integer) 1, (Integer) null);
            }
        }

        /* renamed from: j.a.b0.q.q$j$c */
        /* loaded from: classes2-dex2jar.jar:j/a/b0/q/q$j$c.class */
        public static final class C11197c<T> implements Action1<Throwable> {

            /* renamed from: a */
            public static final C11197c f25144a = new C11197c();

            /* renamed from: a */
            public final void call(Throwable th) {
                C13973d4.m2952a(th);
            }
        }

        public DialogInterface$OnClickListenerC11194j() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
            Single.create(new C11195a()).subscribeOn(Schedulers.from(C14174u.m2300d())).observeOn(AndroidSchedulers.mainThread()).subscribe(new C11196b(), C11197c.f25144a);
            dialogInterface.dismiss();
        }
    }

    /* renamed from: j.a.b0.q.q$k */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/q/q$k.class */
    public static final class DialogInterface$OnClickListenerC11198k implements DialogInterface.OnClickListener {

        /* renamed from: a */
        public static final DialogInterface$OnClickListenerC11198k f25145a = new DialogInterface$OnClickListenerC11198k();

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
            C14289m.m1897a((Integer) null, (Integer) null, (Integer) 4, (Integer) null, (Integer) 0, (Integer) null);
        }
    }

    /* renamed from: j.a.b0.q.q$l */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/q/q$l.class */
    public static final class RunnableC11199l implements Runnable {
        public RunnableC11199l() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            List list;
            if (C11184q.this.m10114B().m28859a() && (list = (List) C11184q.this.f25119m.getValue()) != null) {
                C15149k.m383a((Object) list, "_callLogsViewDataList.value ?: return@Runnable");
                C11184q.this.m10114B().m28854b();
                C11184q.this.f25123q = 0;
                for (C11152c0 c0Var : C11184q.this.f25122p) {
                    ((C11147b) c0Var.m10181b()).m10186a().mo23568b();
                }
                C11184q.this.f25122p.clear();
                MutableLiveData mutableLiveData = C11184q.this.f25119m;
                List d = C15029u.m526d((Collection) list);
                ArrayList arrayList = new ArrayList();
                for (Object obj : d) {
                    if (((AbstractC12391a) obj).getViewType() != 4) {
                        arrayList.add(obj);
                    }
                }
                mutableLiveData.setValue(arrayList);
            }
        }
    }

    /* renamed from: j.a.b0.q.q$m */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/q/q$m.class */
    public static final class C11200m extends AbstractC15150l implements AbstractC15107a<C11146a0> {

        /* renamed from: a */
        public static final C11200m f25147a = new C11200m();

        public C11200m() {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // p626l.p641z.p642c.AbstractC15107a
        public final C11146a0 invoke() {
            return new C11146a0(0, 1, null);
        }
    }

    /* renamed from: j.a.b0.q.q$n */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/q/q$n.class */
    public static final class RunnableC11201n implements Runnable {
        public RunnableC11201n() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            List list = (List) C11184q.this.f25119m.getValue();
            if (list != null) {
                C15149k.m383a((Object) list, "_callLogsViewDataList.value ?: return@Runnable");
                List b = C11184q.this.m10085b(C15029u.m526d((Collection) list));
                if (b != null) {
                    C11184q.this.f25119m.setValue(b);
                } else {
                    C11184q.this.f25113g.setValue(new C14978j(0, Integer.valueOf(C11184q.this.m10072e(list))));
                }
            }
        }
    }

    static {
        C15157s sVar = new C15157s(C15131a0.m419a(C11184q.class), "adPlacer", "getAdPlacer()Lgogolook/callgogolook2/ad/AdPlacer;");
        C15131a0.m412a(sVar);
        C15157s sVar2 = new C15157s(C15131a0.m419a(C11184q.class), "filterViewData", "getFilterViewData()Lgogolook/callgogolook2/main/calllog/FilterViewData;");
        C15131a0.m412a(sVar2);
        C15157s sVar3 = new C15157s(C15131a0.m419a(C11184q.class), "suggestionViewData", "getSuggestionViewData()Lgogolook/callgogolook2/main/calllog/SuggestionViewData;");
        C15131a0.m412a(sVar3);
        f25105A = new AbstractC14906i[]{sVar, sVar2, sVar3};
        new C11188d(null);
    }

    public C11184q(AbstractC11165h hVar, AbstractC11179n nVar, C14247d.C14259l lVar) {
        C15149k.m377b(hVar, "callLogsView");
        C15149k.m377b(nVar, "callLogsPageRepository");
        C15149k.m377b(lVar, "adEventCacheHelper");
        this.f25130x = hVar;
        this.f25131y = nVar;
        this.f25132z = lVar;
        MediatorLiveData mediatorLiveData = new MediatorLiveData();
        mediatorLiveData.addSource(this.f25131y.mo10120b(), new C11185a());
        mediatorLiveData.addSource(this.f25112f, new C11186b());
        mediatorLiveData.addSource(this.f25131y.mo10124a(), new C11187c());
        this.f25119m = mediatorLiveData;
    }

    /* renamed from: A */
    public final void m10115A() {
        AbstractC6207d dVar = this.f25124r;
        if (dVar != null) {
            dVar.mo23568b();
        }
        this.f25124r = null;
    }

    /* renamed from: B */
    public final AdPlacer<AbstractC12391a> m10114B() {
        AbstractC14974f fVar = this.f25107a;
        AbstractC14906i iVar = f25105A[0];
        return (AdPlacer) fVar.getValue();
    }

    /* renamed from: C */
    public final int[] m10113C() {
        int c = C11142n.m10200c();
        ArrayList arrayList = new ArrayList();
        if (C11142n.m10197d(c)) {
            arrayList.add(1);
        }
        if (C11142n.m10195f(c)) {
            arrayList.add(2);
        }
        if (C11142n.m10196e(c)) {
            arrayList.add(4);
        }
        return C15029u.m534b((Collection<Integer>) arrayList);
    }

    /* renamed from: D */
    public final C11207w m10112D() {
        AbstractC14974f fVar = this.f25110d;
        AbstractC14906i iVar = f25105A[1];
        return (C11207w) fVar.getValue();
    }

    /* renamed from: E */
    public final C11146a0 m10111E() {
        AbstractC14974f fVar = this.f25111e;
        AbstractC14906i iVar = f25105A[2];
        return (C11146a0) fVar.getValue();
    }

    /* renamed from: F */
    public final boolean m10110F() {
        boolean z = true;
        if (this.f25131y.mo10118c().m28548b() <= 0 || !(!this.f25122p.isEmpty()) || this.f25122p.size() <= this.f25123q) {
            z = false;
        }
        return z;
    }

    /* renamed from: G */
    public final boolean m10109G() {
        return C13878a3.m3231b() && C13878a3.m3252J() && !mo10065i();
    }

    /* renamed from: H */
    public final boolean m10108H() {
        List<AbstractC12391a> value;
        AbstractC12391a aVar;
        AdStatusController c = AdStatusController.m28827c();
        C15149k.m383a((Object) c, "AdStatusController.getInstance()");
        boolean z = true;
        if (!c.m28831a() || !this.f25131y.mo10118c().m28549a() || (!((value = this.f25119m.getValue()) == null || (aVar = (AbstractC12391a) C15029u.m521f((List<? extends Object>) value)) == null || aVar.getViewType() != 0) || m10114B().m28858a(this.f25108b, this.f25109c + 1) <= 0)) {
            z = false;
        }
        return z;
    }

    /* renamed from: I */
    public final void m10107I() {
        AbstractC6207d b = this.f25131y.mo10119b(AdUnit.CALL_LOG_STICKY);
        if (b != null) {
            this.f25132z.m2038a(AdUnit.CALL_LOG_STICKY, b);
            this.f25124r = b;
            this.f25130x.mo10159a(b);
        }
    }

    /* renamed from: J */
    public final void m10106J() {
        if (!this.f25131y.mo10122a(AdUnit.CALL_LOG_CONTENT_FEED) && m10108H()) {
            this.f25131y.mo10123a(this.f25130x.mo10160a(), AdUnit.CALL_LOG_CONTENT_FEED, C15010g0.m613a(EnumC6184a.NATIVE));
        }
    }

    /* renamed from: a */
    public final List<AbstractC12391a> m10092a(List<AbstractC12391a> list) {
        if (m10114B().m28856a(list, m10072e(list), this.f25108b, this.f25109c, new C11190f()) <= 0) {
            list = null;
        }
        return list;
    }

    @Override // p459j.p460a.p463b0.p464q.AbstractC11164g
    /* renamed from: a */
    public void mo10105a() {
        if (this.f25130x.mo10156c() && !C14356f.m1477d()) {
            this.f25131y.mo10121a(m10113C());
        }
    }

    @Override // p459j.p460a.p463b0.p464q.AbstractC11164g
    /* renamed from: a */
    public void mo10104a(int i, int i2) {
        this.f25108b = i;
        this.f25109c = i2;
        this.f25114h.post(this.f25117k);
    }

    @Override // p459j.p460a.p463b0.p464q.AbstractC11164g
    /* renamed from: a */
    public void mo10103a(Intent intent) {
        if (C15149k.m384a((Object) (intent != null ? intent.getStringExtra("from") : null), (Object) "missed_call_notification")) {
            C14261f.m1985a(C14261f.EnumC14264c.a_Multiple_CED_Click_Notification);
            Context a = this.f25130x.mo10160a();
            a.stopService(new Intent(a, CallDialogService.class));
        }
    }

    /* renamed from: a */
    public final void m10102a(AdRequestState.End end) {
        if (end.m28845c() != AdResult.EXIST && end.m28845c() != AdResult.FILL) {
            return;
        }
        if (end.m28847a() == AdUnit.CALL_LOG_STICKY) {
            m10107I();
        } else if (end.m28847a() == AdUnit.CALL_LOG_CONTENT_FEED) {
            this.f25114h.post(this.f25117k);
        }
    }

    /* renamed from: a */
    public final void m10101a(AdRequestState adRequestState) {
        if (adRequestState instanceof AdRequestState.Start) {
            this.f25132z.m2022e(adRequestState.m28847a());
        } else if (adRequestState instanceof AdRequestState.Requesting) {
            this.f25132z.m2037a(adRequestState.m28847a(), C6262a.EnumC6267e.AD_REQUESTING.m23446a());
        } else if (adRequestState instanceof AdRequestState.End) {
            this.f25132z.m2037a(adRequestState.m28847a(), ((AdRequestState.End) adRequestState).m28846b());
        }
    }

    @Override // p459j.p460a.p463b0.p464q.AbstractC11164g
    /* renamed from: a */
    public void mo10100a(AdUnit adUnit, AbstractC6207d dVar) {
        C15149k.m377b(adUnit, "adUnit");
        C15149k.m377b(dVar, "adObject");
        this.f25132z.m2028c(adUnit);
    }

    @Override // p459j.p460a.p463b0.p464q.AbstractC11164g
    /* renamed from: a */
    public void mo10099a(LogsGroupRealmObject logsGroupRealmObject) {
        String str;
        Integer type;
        C15149k.m377b(logsGroupRealmObject, "logsGroupRealmObject");
        this.f25125s = logsGroupRealmObject;
        this.f25127u = C15149k.m384a((Object) logsGroupRealmObject.getE164(), (Object) C14206w4.m2225a((int) R$string.unknown_number)) ? "" : logsGroupRealmObject.getE164();
        this.f25128v = C15149k.m384a((Object) logsGroupRealmObject.getNumber(), (Object) C14206w4.m2225a((int) R$string.unknown_number)) ? "" : logsGroupRealmObject.getNumber();
        Integer type2 = logsGroupRealmObject.getType();
        if ((type2 != null && type2.intValue() == 17) || ((type = logsGroupRealmObject.getType()) != null && type.intValue() == 19)) {
            if (!C15149k.m384a((Object) logsGroupRealmObject.getNumber(), (Object) C14206w4.m2225a((int) R$string.unknown_number))) {
                String number = logsGroupRealmObject.getNumber();
                if (!(number == null || number.length() == 0)) {
                    str = this.f25128v;
                }
            }
            str = C14206w4.m2225a((int) R$string.unknown_number);
        } else {
            str = C14108o4.m2481e(this.f25128v);
        }
        this.f25129w = str;
        C12942i a = C12928g.m5000a().m4996a(this.f25130x.mo10160a(), this.f25129w, "", 3);
        C15149k.m383a((Object) a, "blockResult");
        this.f25126t = a.m4960d();
        this.f25130x.mo10157b();
    }

    @Override // p459j.p460a.p463b0.p464q.AbstractC11164g
    /* renamed from: a */
    public void mo10093a(C13797d dVar) {
        C15149k.m377b(dVar, "notice");
        C14165s3.f31680a.m2324d(this.f25130x.mo10160a(), dVar.m3431g());
        C13755l.m3513a(1);
    }

    @Override // p459j.p460a.p463b0.p464q.AbstractC11164g
    /* renamed from: a */
    public void mo10091a(boolean z) {
        this.f25120n = z;
        this.f25112f.setValue(C14989s.f33022a);
    }

    /* renamed from: b */
    public final List<AbstractC12391a> m10085b(List<AbstractC12391a> list) {
        boolean G = m10109G();
        boolean z = true;
        if (!(!list.isEmpty()) || list.get(0).getViewType() != 3) {
            z = false;
        }
        if (G && !z) {
            list.add(0, m10111E());
            return list;
        } else if (G || !z) {
            return null;
        } else {
            list.remove(m10111E());
            return list;
        }
    }

    @Override // p459j.p460a.p463b0.p464q.AbstractC11164g
    /* renamed from: b */
    public void mo10090b() {
        AbstractC11165h hVar = this.f25130x;
        String str = this.f25127u;
        boolean z = false;
        if (!(str == null || str.length() == 0)) {
            String str2 = this.f25128v;
            z = false;
            if (!(str2 == null || str2.length() == 0)) {
                z = true;
            }
        }
        if (!z) {
            hVar = null;
        }
        if (hVar != null) {
            C14299q.m1674t();
            C14289m.m1897a((Integer) null, (Integer) null, (Integer) 3, (Integer) null, (Integer) null, (Integer) null);
            if (C14217x3.m2146e(this.f25130x.mo10160a(), this.f25127u) != null) {
                C14687h.m861a(this.f25130x.mo10160a(), C14206w4.m2225a((int) R$string.already_contact), 1).m858c();
            } else {
                C14217x3.m2178a(this.f25130x.mo10155y(), this.f25128v, C11052i.m10328e().m10329d(this.f25127u));
            }
        }
    }

    @Override // p459j.p460a.p463b0.p464q.AbstractC11164g
    /* renamed from: b */
    public void mo10089b(AdUnit adUnit, AbstractC6207d dVar) {
        C15149k.m377b(adUnit, "adUnit");
        C15149k.m377b(dVar, "adObject");
        this.f25132z.m2038a(adUnit, dVar);
        this.f25132z.m2025d(adUnit);
    }

    @Override // p459j.p460a.p463b0.p464q.AbstractC11164g
    /* renamed from: b */
    public void mo10088b(LogsGroupRealmObject logsGroupRealmObject) {
        C15149k.m377b(logsGroupRealmObject, "logsGroupRealmObject");
        Context a = this.f25130x.mo10160a();
        if (!TextUtils.isEmpty(logsGroupRealmObject.getNumber())) {
            C14299q.m1683q();
            C14289m.m1897a((Integer) null, (Integer) 1, (Integer) null, (Integer) null, (Integer) null, (Integer) null);
            C14217x3.m2145e(a, logsGroupRealmObject.getNumber(), 1);
        }
    }

    @Override // p459j.p460a.p463b0.p464q.AbstractC11164g
    /* renamed from: b */
    public void mo10084b(boolean z) {
        this.f25121o = z;
        this.f25112f.setValue(C14989s.f33022a);
    }

    /* renamed from: c */
    public final List<AbstractC12391a> m10079c(List<? extends LogsGroupRealmObject> list) {
        ArrayList arrayList = new ArrayList(C15022n.m555a(list, 10));
        for (LogsGroupRealmObject logsGroupRealmObject : list) {
            arrayList.add(new C11156e(0, logsGroupRealmObject, 1, null));
        }
        return C15029u.m526d((Collection) arrayList);
    }

    @Override // p459j.p460a.p463b0.p464q.AbstractC11164g
    /* renamed from: c */
    public void mo10083c() {
        String str;
        String str2;
        AbstractC11165h hVar = this.f25130x;
        if (this.f25126t) {
            C12928g.m4997a(hVar.mo10160a(), this.f25129w, 3, "", (View.OnClickListener) null, DataUserReport.Source.CALL);
            return;
        }
        C14299q.m1671u();
        C14289m.m1897a((Integer) null, (Integer) null, (Integer) 2, (Integer) null, (Integer) null, (Integer) null);
        C14289m.m1909a(1, 1, this.f25127u);
        RowInfo rowInfo = C11175m.f25094f.m10132a().get(this.f25128v);
        String str3 = this.f25129w;
        String str4 = this.f25127u;
        if (rowInfo == null) {
            str = "";
        } else {
            NumberInfo g = rowInfo.m28226g();
            C15149k.m383a((Object) g, "rowInfo.numberInfo");
            str = g.m28393C();
        }
        if (rowInfo == null) {
            str2 = "";
        } else {
            NumberInfo g2 = rowInfo.m28226g();
            C15149k.m383a((Object) g2, "rowInfo.numberInfo");
            str2 = g2.m28383M();
        }
        C12928g.m4989a(hVar.mo10160a(), true, true, true, this.f25129w, (HandlerC12947l) null, 0, new DataUserReport(str3, str4, str, str2, DataUserReport.Source.CALL));
    }

    @Override // p459j.p460a.p463b0.p464q.AbstractC11164g
    /* renamed from: c */
    public void mo10082c(LogsGroupRealmObject logsGroupRealmObject) {
        Bundle bundle;
        C15149k.m377b(logsGroupRealmObject, "logsGroupRealmObject");
        Context a = this.f25130x.mo10160a();
        Integer type = logsGroupRealmObject.getType();
        if (TextUtils.isEmpty(logsGroupRealmObject.getE164())) {
            C14687h.m861a(a, C14206w4.m2225a((int) R$string.no_identify_privatenumber), 1).m858c();
            return;
        }
        C14299q.m1680r();
        C14289m.m1897a((Integer) null, (Integer) 2, (Integer) null, (Integer) null, (Integer) null, (Integer) null);
        if ((type != null && type.intValue() == 33) || ((type != null && type.intValue() == 34) || ((type != null && type.intValue() == 65) || (type != null && type.intValue() == 66)))) {
            bundle = new Bundle();
            bundle.putBoolean("show_history", true);
        } else if ((type != null && type.intValue() == 17) || (type != null && type.intValue() == 19)) {
            bundle = new Bundle();
            bundle.putBoolean("show_sn_warning", true);
        } else {
            bundle = null;
        }
        C14217x3.m2156c(a, NumberDetailActivity.f12014n.m26841a(a, logsGroupRealmObject.getNumber(), logsGroupRealmObject.getE164(), bundle, "FROM_Calllog"));
    }

    /* renamed from: d */
    public final List<AbstractC12391a> m10075d(List<? extends LogsGroupRealmObject> list) {
        m10114B().m28854b();
        this.f25123q = 0;
        List<AbstractC12391a> c = m10079c(list);
        boolean z = true;
        if (c.isEmpty()) {
            c.add(new C11204t(0, 1, null));
        } else {
            if (!(this.f25108b == 0 && this.f25109c == 0)) {
                z = false;
            }
            if (z) {
                int i = 6;
                if (c.size() < 6) {
                    i = c.size();
                }
                this.f25109c = i;
            }
            if (m10092a(c) == null) {
                m10106J();
            }
        }
        List<AbstractC12391a> arrayList = new ArrayList<>();
        m10085b(arrayList);
        arrayList.add(m10112D());
        c.addAll(0, arrayList);
        return c;
    }

    @Override // p459j.p460a.p463b0.p464q.AbstractC11164g
    /* renamed from: d */
    public void mo10078d() {
        this.f25112f.setValue(C14989s.f33022a);
    }

    /* renamed from: e */
    public final int m10072e(List<? extends AbstractC12391a> list) {
        int i = 0;
        int i2 = 0;
        if (list != null) {
            Iterator<T> it = list.iterator();
            while (true) {
                i = i2;
                if (!it.hasNext()) {
                    break;
                }
                int viewType = ((AbstractC12391a) it.next()).getViewType();
                if (viewType != 2 && viewType != 3) {
                    return i2;
                }
                i2++;
            }
        }
        return i;
    }

    @Override // p459j.p460a.p463b0.p464q.AbstractC11164g
    /* renamed from: e */
    public void mo10074e() {
        String str;
        String[] strArr;
        NumberInfo g;
        List<String> h;
        String str2 = this.f25128v;
        if (str2 != null) {
            RowInfo rowInfo = C11175m.f25094f.m10132a().get(str2);
            String str3 = this.f25128v;
            String str4 = this.f25127u;
            String str5 = "";
            if (rowInfo == null) {
                str = "";
            } else {
                NumberInfo g2 = rowInfo.m28226g();
                C15149k.m383a((Object) g2, "rowInfo.numberInfo");
                str = g2.m28393C();
            }
            if (rowInfo != null) {
                NumberInfo g3 = rowInfo.m28226g();
                C15149k.m383a((Object) g3, "rowInfo.numberInfo");
                str5 = g3.m28383M();
            }
            DataUserReport dataUserReport = new DataUserReport(str3, str4, str, str5, DataUserReport.Source.CALL);
            Context a = this.f25130x.mo10160a();
            String b = dataUserReport.m28467b();
            String c = dataUserReport.m28463c();
            if (rowInfo == null || (g = rowInfo.m28226g()) == null || (h = g.m28324h()) == null) {
                strArr = null;
            } else {
                Object[] array = h.toArray(new String[0]);
                if (array != null) {
                    strArr = (String[]) array;
                } else {
                    throw new C14986p("null cannot be cast to non-null type kotlin.Array<T>");
                }
            }
            ReportDialogActivity.m28959a(a, dataUserReport, b, c, strArr, C14241a.EnumC14244c.CallLogContextMenu, true);
        }
    }

    @Override // p459j.p460a.p463b0.p464q.AbstractC11164g
    /* renamed from: f */
    public void mo10071f() {
        if (AdUtils.m28802g()) {
            this.f25130x.mo10161G();
            return;
        }
        m10106J();
        AbstractC6207d dVar = this.f25124r;
        if (dVar != null) {
            this.f25132z.m2038a(AdUnit.CALL_LOG_STICKY, dVar);
            this.f25132z.m2037a(AdUnit.CALL_LOG_STICKY, C6262a.EnumC6267e.AD_EXIST.m23446a());
            this.f25130x.mo10159a(dVar);
            return;
        }
        this.f25131y.mo10123a(this.f25130x.mo10160a(), AdUnit.CALL_LOG_STICKY, C15010g0.m613a(EnumC6184a.NATIVE));
    }

    @Override // p459j.p460a.p463b0.p464q.AbstractC11164g
    /* renamed from: g */
    public void mo10069g() {
        this.f25132z.m2031b(AdUnit.CALL_LOG_STICKY);
        this.f25132z.m2031b(AdUnit.CALL_LOG_CONTENT_FEED);
    }

    @Override // p459j.p460a.p463b0.p464q.AbstractC11164g
    /* renamed from: h */
    public void mo10067h() {
        C13797d a = C14165s3.f31680a.m2328a(this.f25130x.mo10160a(), "call_log");
        if (a != null) {
            this.f25130x.mo10158a(a);
            C13755l.m3512a("call_log", a.m3431g());
            if (a != null) {
                return;
            }
        }
        this.f25130x.mo10154z();
        C14989s sVar = C14989s.f33022a;
    }

    @Override // p459j.p460a.p463b0.p464q.AbstractC11164g
    /* renamed from: i */
    public boolean mo10065i() {
        return this.f25120n;
    }

    @Override // p459j.p460a.p463b0.p464q.AbstractC11164g
    /* renamed from: j */
    public boolean mo10063j() {
        return this.f25121o;
    }

    @Override // p459j.p460a.p463b0.p464q.AbstractC11164g
    /* renamed from: k */
    public void mo10061k() {
        String str = this.f25128v;
        if (str != null) {
            C14299q.m1662x();
            C14289m.m1897a((Integer) null, (Integer) null, (Integer) 1, (Integer) null, (Integer) null, (Integer) null);
            C12810o.m5266a(this.f25130x.mo10160a(), 1, str, null, false, 0, 32, null);
        }
    }

    @Override // p459j.p460a.p463b0.p464q.AbstractC11164g
    /* renamed from: l */
    public LiveData<C14978j<Integer, Integer>> mo10059l() {
        return this.f25113g;
    }

    @Override // p459j.p460a.p463b0.p464q.AbstractC11164g
    /* renamed from: m */
    public String mo10057m() {
        return this.f25127u;
    }

    @Override // p459j.p460a.p463b0.p464q.AbstractC11164g
    /* renamed from: n */
    public String mo10055n() {
        return this.f25128v;
    }

    @Override // p459j.p460a.p463b0.p464q.AbstractC11164g
    /* renamed from: o */
    public void mo10053o() {
        try {
            C14299q.m1668v();
            C14289m.m1897a((Integer) null, (Integer) null, (Integer) 4, (Integer) null, (Integer) null, (Integer) null);
            DialogC14618f.C14624f fVar = new DialogC14618f.C14624f(this.f25130x.mo10160a());
            fVar.m979b(C14206w4.m2225a((int) R$string.delete_number));
            fVar.m977c(4);
            fVar.m978b(C14206w4.m2225a((int) R$string.okok), new DialogInterface$OnClickListenerC11194j());
            fVar.m984a(C14206w4.m2225a((int) R$string.cancel), DialogInterface$OnClickListenerC11198k.f25145a);
            fVar.m982b();
        } catch (Exception e) {
            C13973d4.m2952a(e);
        }
    }

    @Override // p459j.p460a.p463b0.p464q.AbstractC11164g
    public void onStop() {
    }

    @Override // p459j.p460a.p463b0.p464q.AbstractC11164g
    /* renamed from: p */
    public void mo10052p() {
        this.f25131y.mo10117c(AdUnit.CALL_LOG_STICKY);
        this.f25131y.mo10117c(AdUnit.CALL_LOG_CONTENT_FEED);
    }

    @Override // p459j.p460a.p463b0.p464q.AbstractC11164g
    /* renamed from: q */
    public void mo10051q() {
        mo10052p();
        m10042z();
        m10115A();
    }

    @Override // p459j.p460a.p463b0.p464q.AbstractC11164g
    /* renamed from: r */
    public void mo10050r() {
        String str = this.f25127u;
        if (str != null) {
            C13938c4.m3010a(this.f25130x.mo10160a(), str);
        }
    }

    @Override // p459j.p460a.p463b0.p464q.AbstractC11164g
    /* renamed from: s */
    public void mo10049s() {
        String str = this.f25127u;
        if (str != null) {
            C12860e.m5132a(this.f25130x.mo10160a(), str, (String) null, false, f25106B, (HandlerC12947l) null);
        }
    }

    @Override // p459j.p460a.p463b0.p464q.AbstractC11164g
    /* renamed from: t */
    public void mo10048t() {
        this.f25132z.m2040a(AdUnit.CALL_LOG_STICKY);
        this.f25132z.m2040a(AdUnit.CALL_LOG_CONTENT_FEED);
    }

    @Override // p459j.p460a.p463b0.p464q.AbstractC11164g
    /* renamed from: u */
    public void mo10047u() {
        C14217x3.m2156c(this.f25130x.mo10160a(), IapPromoActivity.f10880c.m28042a(this.f25130x.mo10160a(), "restore"));
        C13755l.m3513a(2);
    }

    @Override // p459j.p460a.p463b0.p464q.AbstractC11164g
    /* renamed from: v */
    public void mo10046v() {
        String str = this.f25128v;
        if (str != null) {
            C14217x3.m2145e(this.f25130x.mo10160a(), str, 1);
        }
    }

    @Override // p459j.p460a.p463b0.p464q.AbstractC11164g
    /* renamed from: w */
    public LogsGroupRealmObject mo10045w() {
        return this.f25125s;
    }

    @Override // p459j.p460a.p463b0.p464q.AbstractC11164g
    /* renamed from: x */
    public Boolean mo10044x() {
        return Boolean.valueOf(this.f25126t);
    }

    @Override // p459j.p460a.p463b0.p464q.AbstractC11164g
    /* renamed from: y */
    public LiveData<List<AbstractC12391a>> mo10043y() {
        return this.f25119m;
    }

    /* renamed from: z */
    public final void m10042z() {
        this.f25114h.post(this.f25118l);
    }
}
