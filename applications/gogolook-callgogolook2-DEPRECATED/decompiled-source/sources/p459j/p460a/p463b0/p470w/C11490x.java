package p459j.p460a.p463b0.p470w;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import androidx.core.app.NotificationCompat;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.MediatorLiveData;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.Observer;
import androidx.transition.Transition;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.ReportDialogActivity;
import gogolook.callgogolook2.gson.DataUserReport;
import gogolook.callgogolook2.gson.NumberInfo;
import gogolook.callgogolook2.gson.RowInfo;
import gogolook.callgogolook2.messaging.datamodel.action.DeleteConversationAction;
import gogolook.callgogolook2.messaging.datamodel.action.MarkAsReadAction;
import gogolook.callgogolook2.ndp.NumberDetailActivity;
import gogolook.callgogolook2.p074ad.AdUnit;
import gogolook.callgogolook2.p074ad.AdUtils;
import gogolook.callgogolook2.vas.main.VasDetectionActivity;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;
import kotlin.Metadata;
import p081h.p160h.p161a.C6192e;
import p081h.p160h.p161a.EnumC6184a;
import p081h.p160h.p161a.p162h.AbstractC6207d;
import p081h.p160h.p161a.p163i.C6214a;
import p081h.p160h.p161a.p167m.AbstractC6258b;
import p081h.p160h.p161a.p168n.C6260a;
import p081h.p160h.p161a.p169o.C6262a;
import p081h.p160h.p161a.p170p.C6268a;
import p459j.p460a.p461a0.C11052i;
import p459j.p460a.p511h.AbstractC12391a;
import p459j.p460a.p521j0.p529x.C12810o;
import p459j.p460a.p531k0.C12860e;
import p459j.p460a.p533l.C12928g;
import p459j.p460a.p533l.C12942i;
import p459j.p460a.p533l.HandlerC12947l;
import p459j.p460a.p541n0.C13032a;
import p459j.p460a.p582w0.C13915b3;
import p459j.p460a.p582w0.C14037j3;
import p459j.p460a.p582w0.C14200w1;
import p459j.p460a.p582w0.C14206w4;
import p459j.p460a.p582w0.C14217x3;
import p459j.p460a.p582w0.p590x4.C14247d;
import p459j.p460a.p582w0.p590x4.C14261f;
import p459j.p460a.p582w0.p590x4.C14289m;
import p459j.p460a.p582w0.p590x4.p592b0.C14241a;
import p459j.p460a.p613z0.DialogC14618f;
import p459j.p460a.p613z0.p617p.C14687h;
import p626l.AbstractC14974f;
import p626l.C14975g;
import p626l.C14978j;
import p626l.C14986p;
import p626l.C14989s;
import p626l.p629c0.AbstractC14906i;
import p626l.p630d0.C14930l;
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
import p660rx.android.schedulers.AndroidSchedulers;
import p660rx.functions.Action1;
import p660rx.schedulers.Schedulers;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��x\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n��\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010!\n\u0002\b&\u0018�� ^2\u00020\u0001:\u0001^B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0006\u00106\u001a\u00020\u000eJ\u001e\u00107\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\f2\f\u00108\u001a\b\u0012\u0004\u0012\u00020\r09H\u0002J\b\u0010:\u001a\u00020\nH\u0003J\u001c\u0010;\u001a\b\u0012\u0004\u0012\u00020\r092\f\u0010<\u001a\b\u0012\u0004\u0012\u00020,0\fH\u0002J\u001c\u0010=\u001a\b\u0012\u0004\u0012\u00020\r0\f2\f\u0010>\u001a\b\u0012\u0004\u0012\u00020,0\fH\u0002J\u0016\u0010?\u001a\u0002042\f\u0010@\u001a\b\u0012\u0004\u0012\u00020,0\fH\u0016J\b\u0010A\u001a\u000204H\u0016J\n\u0010B\u001a\u0004\u0018\u00010,H\u0016J\u0018\u0010C\u001a\u00020\n2\u000e\u0010D\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\fH\u0002J\b\u0010E\u001a\u00020\nH\u0016J\u0010\u0010F\u001a\u00020\u000e2\u0006\u0010G\u001a\u00020\nH\u0016J\b\u0010H\u001a\u000204H\u0016J\b\u0010I\u001a\u000204H\u0016J\b\u0010J\u001a\u000204H\u0016J\b\u0010K\u001a\u000204H\u0016J\b\u0010L\u001a\u000204H\u0016J\b\u0010M\u001a\u000204H\u0016J\b\u0010N\u001a\u000204H\u0016J\u0010\u0010O\u001a\u0002042\u0006\u0010P\u001a\u00020,H\u0016J\r\u0010)\u001a\u00020\u000eH\u0016¢\u0006\u0002\u0010QJ\b\u0010R\u001a\u000204H\u0016J\u0010\u0010S\u001a\u0002042\u0006\u0010T\u001a\u00020\u000eH\u0016J\u0016\u0010U\u001a\u0002042\f\u0010V\u001a\b\u0012\u0004\u0012\u00020\r0\fH\u0016J\b\u0010W\u001a\u000204H\u0016J\b\u0010X\u001a\u000204H\u0016J\u0010\u0010Y\u001a\u0002042\u0006\u00102\u001a\u00020\nH\u0016J\b\u0010Z\u001a\u000204H\u0016J\b\u0010[\u001a\u000204H\u0016J\b\u0010\\\u001a\u000204H\u0016J\b\u0010]\u001a\u000204H\u0016R \u0010\u0007\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n0\t0\bX\u0082\u0004¢\u0006\u0002\n��R&\u0010\u000b\u001a\u001a\u0012\u0016\u0012\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\r0\f\u0012\u0004\u0012\u00020\u000e0\t0\bX\u0082\u0004¢\u0006\u0002\n��R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004¢\u0006\u0002\n��R\u001b\u0010\u0013\u001a\u00020\u00148BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0015\u0010\u0016R\u0010\u0010\u0019\u001a\u0004\u0018\u00010\u001aX\u0082\u000e¢\u0006\u0002\n��R\u001a\u0010\u001b\u001a\u00020\nX\u0096\u000e¢\u0006\u000e\n��\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001fR&\u0010 \u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n0\t0!8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\"\u0010#R$\u0010%\u001a\u00020\u000e2\u0006\u0010$\u001a\u00020\u000e@VX\u0096\u000e¢\u0006\u000e\n��\u001a\u0004\b%\u0010&\"\u0004\b'\u0010(R\u000e\u0010)\u001a\u00020\u000eX\u0082\u000e¢\u0006\u0002\n��R\u001a\u0010*\u001a\b\u0012\u0004\u0012\u00020\u000e0!8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b*\u0010#R\u0010\u0010+\u001a\u0004\u0018\u00010,X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010-\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��R,\u0010.\u001a\u001a\u0012\u0016\u0012\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\r0\f\u0012\u0004\u0012\u00020\u000e0\t0!8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b/\u0010#R\u000e\u00100\u001a\u000201X\u0082\u0004¢\u0006\u0002\n��R\u000e\u00102\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n��R\u0014\u00103\u001a\b\u0012\u0004\u0012\u0002040\bX\u0082\u0004¢\u0006\u0002\n��R\u000e\u00105\u001a\u00020\u0012X\u0082\u0004¢\u0006\u0002\n��¨\u0006_"}, m815d2 = {"Lgogolook/callgogolook2/main/smslog/SmsLogsPresenter;", "Lgogolook/callgogolook2/main/smslog/SmsLogsContract$Presenter;", "view", "Lgogolook/callgogolook2/main/smslog/SmsLogsContract$View;", "smsLogsPageRepository", "Lgogolook/callgogolook2/main/smslog/SmsLogsPageRepository;", "(Lgogolook/callgogolook2/main/smslog/SmsLogsContract$View;Lgogolook/callgogolook2/main/smslog/SmsLogsPageRepository;)V", "_forceRefreshRecyclerViewInRange", "Landroidx/lifecycle/MutableLiveData;", "Lkotlin/Pair;", "", "_smsLogsViewDataList", "", "Lgogolook/callgogolook2/adapter/ViewData;", "", "adObject", "Lcom/gogolook/adsdk/adobject/BaseAdObject;", "createNewViewDataListRunnable", "Ljava/lang/Runnable;", "defaultSettingViewData", "Lgogolook/callgogolook2/main/smslog/DefaultSettingViewData;", "getDefaultSettingViewData", "()Lgogolook/callgogolook2/main/smslog/DefaultSettingViewData;", "defaultSettingViewData$delegate", "Lkotlin/Lazy;", "deleteSmsLogsDialog", "Lgogolook/callgogolook2/view/MDialog;", "filter", "getFilter", "()I", "setFilter", "(I)V", "forceUpdateSmsLogsInRange", "Landroidx/lifecycle/LiveData;", "getForceUpdateSmsLogsInRange", "()Landroidx/lifecycle/LiveData;", C13032a.f29462d, "isAdShown", "()Z", "setAdShown", "(Z)V", "isLastLongClickLogBlocked", "isLoading", "lastLongClickLog", "Lgogolook/callgogolook2/main/smslog/SmsLogsContract$SmsLog;", "smsLogsView", "smsLogsViewDataList", "getSmsLogsViewDataList", "smsLogsViewDataUpdateHandler", "Landroid/os/Handler;", "undoneAction", "updateDefaultSettingViewDataEvent", "", "updateDefaultSettingViewDataRunnable", "checkAndResetFilterType", "checkAndUpdateDefaultSettingViewDataToList", "viewDataList", "", "checkScanStatus", "convertRawSmsLogListToViewDataList", "rawSmsLogsList", "createTheNewViewDataList", "rawSmsLogList", "deleteMultiSmsLogs", "logs", "destroyAd", "getLastLongClickLog", "getSmsLogViewDataOffset", "list", "getUndoneAction", "handleContextItemSelected", Transition.MATCH_ITEM_ID_STR, "handleContextMenuActionBlock", "handleContextMenuActionDeleteLog", "handleContextMenuActionFavorite", "handleContextMenuActionMessage", "handleContextMenuActionNumberDetail", "handleContextMenuActionReport", "handleContextMenuActionSave", "handleSmsLogLongClick", "smsLog", "()Ljava/lang/Boolean;", "loadSmsLogAd", "loadSmsLogs", "scrollToTop", "markAllAsRead", "smsLogs", "reset", "resetUndoneAction", "setUndoneAction", "startVasDetectionActivity", "stopSmsLogAdLoading", "trackAdContent", "updateDefaultSettingItem", "Companion", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.b0.w.x */
/* loaded from: classes2-dex2jar.jar:j/a/b0/w/x.class */
public final class C11490x implements AbstractC11443m {

    /* renamed from: q */
    public static final /* synthetic */ AbstractC14906i[] f25662q;

    /* renamed from: r */
    public static final String f25663r = C11490x.class.getSimpleName();

    /* renamed from: a */
    public final AbstractC11445o f25664a;

    /* renamed from: b */
    public C11444n f25665b;

    /* renamed from: c */
    public boolean f25666c;

    /* renamed from: d */
    public DialogC14618f f25667d;

    /* renamed from: e */
    public AbstractC6207d f25668e;

    /* renamed from: m */
    public final MutableLiveData<C14978j<List<AbstractC12391a>, Boolean>> f25676m;

    /* renamed from: n */
    public boolean f25677n;

    /* renamed from: p */
    public final AbstractC11487u f25679p;

    /* renamed from: f */
    public int f25669f = -1;

    /* renamed from: g */
    public final AbstractC14974f f25670g = C14975g.m662a(C11495e.f25683a);

    /* renamed from: h */
    public final MutableLiveData<C14989s> f25671h = new MutableLiveData<>();

    /* renamed from: i */
    public final MutableLiveData<C14978j<Integer, Integer>> f25672i = new MutableLiveData<>();

    /* renamed from: j */
    public final Handler f25673j = new Handler(Looper.getMainLooper());

    /* renamed from: k */
    public final Runnable f25674k = new RunnableC11494d();

    /* renamed from: l */
    public final Runnable f25675l = new RunnableC11505k();

    /* renamed from: o */
    public int f25678o = C12810o.m5238g();

    /* renamed from: j.a.b0.w.x$a */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/w/x$a.class */
    public static final class C11491a<T> implements Observer<S> {
        public C11491a() {
        }

        /* renamed from: a */
        public final void onChanged(C14978j<? extends List<C11444n>, ? extends Object> jVar) {
            C11490x.this.f25673j.post(C11490x.this.f25674k);
        }
    }

    /* renamed from: j.a.b0.w.x$b */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/w/x$b.class */
    public static final class C11492b<T> implements Observer<S> {
        public C11492b() {
        }

        /* renamed from: a */
        public final void onChanged(C14989s sVar) {
            C11490x.this.f25673j.post(C11490x.this.f25675l);
        }
    }

    /* renamed from: j.a.b0.w.x$c */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/w/x$c.class */
    public static final class C11493c {
        public C11493c() {
        }

        public /* synthetic */ C11493c(C15145g gVar) {
            this();
        }
    }

    /* renamed from: j.a.b0.w.x$d */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/w/x$d.class */
    public static final class RunnableC11494d implements Runnable {
        public RunnableC11494d() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            C14978j<List<C11444n>, Object> value = C11490x.this.f25679p.mo9531a().getValue();
            if (value != null) {
                MutableLiveData mutableLiveData = C11490x.this.f25676m;
                List c = C11490x.this.m9509c(value.m659c());
                Object d = value.m658d();
                Object obj = d;
                if (!(d instanceof Boolean)) {
                    obj = null;
                }
                mutableLiveData.setValue(new C14978j(c, Boolean.valueOf(C15149k.m384a((Object) ((Boolean) obj), (Object) true))));
            }
        }
    }

    /* renamed from: j.a.b0.w.x$e */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/w/x$e.class */
    public static final class C11495e extends AbstractC15150l implements AbstractC15107a<C11419b> {

        /* renamed from: a */
        public static final C11495e f25683a = new C11495e();

        public C11495e() {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // p626l.p641z.p642c.AbstractC15107a
        public final C11419b invoke() {
            return new C11419b(0, 1, null);
        }
    }

    /* renamed from: j.a.b0.w.x$f */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/w/x$f.class */
    public static final class DialogInterface$OnClickListenerC11496f implements DialogInterface.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ List f25684a;

        /* renamed from: b */
        public final /* synthetic */ C11490x f25685b;

        public DialogInterface$OnClickListenerC11496f(List list, Context context, C11490x xVar, List list2) {
            this.f25684a = list;
            this.f25685b = xVar;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
            List<C11444n> list = this.f25684a;
            ArrayList arrayList = new ArrayList(C15022n.m555a(list, 10));
            for (C11444n nVar : list) {
                arrayList.add(nVar.m9626c());
            }
            Object[] array = arrayList.toArray(new String[0]);
            if (array != null) {
                String[] strArr = (String[]) array;
                List<C11444n> list2 = this.f25684a;
                ArrayList arrayList2 = new ArrayList(C15022n.m555a(list2, 10));
                for (C11444n nVar2 : list2) {
                    arrayList2.add(Long.valueOf(nVar2.m9620i()));
                }
                DeleteConversationAction.m27722a(strArr, C15029u.m529c((Collection<Long>) arrayList2), this.f25685b.m9505e());
                C14037j3.m2731a().mo2704a(new C14200w1());
                return;
            }
            throw new C14986p("null cannot be cast to non-null type kotlin.Array<T>");
        }
    }

    /* renamed from: j.a.b0.w.x$g */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/w/x$g.class */
    public static final class DialogInterface$OnClickListenerC11497g implements DialogInterface.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ String f25686a;

        /* renamed from: b */
        public final /* synthetic */ C11490x f25687b;

        public DialogInterface$OnClickListenerC11497g(String str, Context context, C11490x xVar) {
            this.f25686a = str;
            this.f25687b = xVar;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
            String str = this.f25686a;
            DeleteConversationAction.m27722a(new String[]{str}, new long[]{System.currentTimeMillis()}, this.f25687b.m9505e());
            dialogInterface.dismiss();
        }
    }

    /* renamed from: j.a.b0.w.x$h */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/w/x$h.class */
    public static final class C11498h<T> implements Action1<C12942i> {

        /* renamed from: b */
        public final /* synthetic */ Context f25689b;

        public C11498h(Context context) {
            this.f25689b = context;
        }

        /* renamed from: a */
        public final void call(C12942i iVar) {
            if (C14217x3.m2193a(this.f25689b)) {
                C11490x xVar = C11490x.this;
                C15149k.m383a((Object) iVar, "result");
                xVar.f25666c = iVar.m4960d();
                C11490x.this.f25664a.mo9591b();
            }
        }
    }

    /* renamed from: j.a.b0.w.x$i */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/w/x$i.class */
    public static final class C11499i implements AbstractC6258b {
        public C11499i() {
        }

        @Override // p081h.p160h.p161a.p167m.AbstractC6258b
        /* renamed from: a */
        public void mo5004a(String str) {
            C15149k.m377b(str, "adUnitName");
            C14261f.m1975a(str, AdUtils.m28811a(str));
            List<C6260a> a = C6268a.m23442a(str);
            if (a != null) {
                C14261f.m1972a(a);
            }
            C11490x.this.f25668e = C6214a.m23564b(str);
            AbstractC6207d dVar = C11490x.this.f25668e;
            if (dVar != null) {
                C14247d.f31867v.m2037a(AdUnit.SMS_LOG_STICKY, C6262a.EnumC6267e.AD_FILL.m23446a());
                C11490x.this.f25664a.mo9589b(dVar);
                return;
            }
            C14247d.f31867v.m2033a(str, C6192e.f15373p.m23592a(str).m23605b());
        }

        @Override // p081h.p160h.p161a.p167m.AbstractC6258b
        /* renamed from: b */
        public void mo5003b(String str) {
            C15149k.m377b(str, "adUnitName");
            C14247d.f31867v.m2034a(str);
            C14247d.f31867v.m2037a(AdUnit.SMS_LOG_STICKY, C6262a.EnumC6267e.AD_REQUESTING.m23446a());
        }
    }

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\n\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010��\u001a\u0004\u0018\u00010\u0001H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, m815d2 = {"<anonymous>", "", NotificationCompat.CATEGORY_CALL, "()Lkotlin/Unit;"}, m814k = 3, m813mv = {1, 1, 13})
    /* renamed from: j.a.b0.w.x$j */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/w/x$j.class */
    public static final class CallableC11500j<V> implements Callable<T> {

        /* renamed from: a */
        public final /* synthetic */ List f25691a;

        /* renamed from: j.a.b0.w.x$j$a */
        /* loaded from: classes2-dex2jar.jar:j/a/b0/w/x$j$a.class */
        public static final class C11501a extends AbstractC15150l implements AbstractC15118l<AbstractC12391a, Boolean> {

            /* renamed from: a */
            public static final C11501a f25692a = new C11501a();

            public C11501a() {
                super(1);
            }

            /* renamed from: a */
            public final boolean m9474a(AbstractC12391a aVar) {
                C15149k.m377b(aVar, "it");
                boolean z = true;
                if (1 != aVar.getViewType()) {
                    z = false;
                }
                return z;
            }

            @Override // p626l.p641z.p642c.AbstractC15118l
            public /* bridge */ /* synthetic */ Boolean invoke(AbstractC12391a aVar) {
                return Boolean.valueOf(m9474a(aVar));
            }
        }

        /* renamed from: j.a.b0.w.x$j$b */
        /* loaded from: classes2-dex2jar.jar:j/a/b0/w/x$j$b.class */
        public static final class C11502b extends AbstractC15150l implements AbstractC15118l<AbstractC12391a, C11444n> {

            /* renamed from: a */
            public static final C11502b f25693a = new C11502b();

            public C11502b() {
                super(1);
            }

            /* renamed from: a */
            public final C11444n invoke(AbstractC12391a aVar) {
                C15149k.m377b(aVar, "it");
                return ((C11439k) aVar).m9632a();
            }
        }

        /* renamed from: j.a.b0.w.x$j$c */
        /* loaded from: classes2-dex2jar.jar:j/a/b0/w/x$j$c.class */
        public static final class C11503c extends AbstractC15150l implements AbstractC15118l<C11444n, Boolean> {

            /* renamed from: a */
            public static final C11503c f25694a = new C11503c();

            public C11503c() {
                super(1);
            }

            /* renamed from: a */
            public final boolean m9472a(C11444n nVar) {
                C15149k.m377b(nVar, "it");
                return nVar.m9619j() > 0;
            }

            @Override // p626l.p641z.p642c.AbstractC15118l
            public /* bridge */ /* synthetic */ Boolean invoke(C11444n nVar) {
                return Boolean.valueOf(m9472a(nVar));
            }
        }

        /* renamed from: j.a.b0.w.x$j$d */
        /* loaded from: classes2-dex2jar.jar:j/a/b0/w/x$j$d.class */
        public static final class C11504d extends AbstractC15150l implements AbstractC15118l<C11444n, String> {

            /* renamed from: a */
            public static final C11504d f25695a = new C11504d();

            public C11504d() {
                super(1);
            }

            /* renamed from: a */
            public final String invoke(C11444n nVar) {
                C15149k.m377b(nVar, "it");
                return nVar.m9626c();
            }
        }

        public CallableC11500j(List list) {
            this.f25691a = list;
        }

        @Override // java.util.concurrent.Callable
        public final C14989s call() {
            List c = C14930l.m769c(C14930l.m770b(C14930l.m772a(C14930l.m770b(C14930l.m772a(C15029u.m550a((Iterable) this.f25691a), C11501a.f25692a), C11502b.f25693a), C11503c.f25694a), C11504d.f25695a));
            C14989s sVar = null;
            if (!(!c.isEmpty())) {
                c = null;
            }
            if (c != null) {
                MarkAsReadAction.m27698a(c, -1);
                sVar = C14989s.f33022a;
            }
            return sVar;
        }
    }

    /* renamed from: j.a.b0.w.x$k */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/w/x$k.class */
    public static final class RunnableC11505k implements Runnable {
        public RunnableC11505k() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            List list;
            C14978j jVar = (C14978j) C11490x.this.f25676m.getValue();
            if (jVar != null && (list = (List) jVar.m659c()) != null) {
                List a = C11490x.this.m9521a(C15029u.m526d((Collection) list));
                if (a != null) {
                    C11490x.this.f25676m.setValue(new C14978j(a, false));
                } else {
                    C11490x.this.f25672i.setValue(new C14978j(0, Integer.valueOf(C11490x.this.m9503e(list))));
                }
            }
        }
    }

    static {
        C15157s sVar = new C15157s(C15131a0.m419a(C11490x.class), "defaultSettingViewData", "getDefaultSettingViewData()Lgogolook/callgogolook2/main/smslog/DefaultSettingViewData;");
        C15131a0.m412a(sVar);
        f25662q = new AbstractC14906i[]{sVar};
        new C11493c(null);
    }

    public C11490x(AbstractC11445o oVar, AbstractC11487u uVar) {
        C15149k.m377b(oVar, "view");
        C15149k.m377b(uVar, "smsLogsPageRepository");
        this.f25679p = uVar;
        this.f25664a = oVar;
        MediatorLiveData mediatorLiveData = new MediatorLiveData();
        mediatorLiveData.addSource(this.f25679p.mo9531a(), new C11491a());
        mediatorLiveData.addSource(this.f25671h, new C11492b());
        this.f25676m = mediatorLiveData;
    }

    /* renamed from: a */
    public final List<AbstractC12391a> m9521a(List<AbstractC12391a> list) {
        boolean z = true;
        boolean z2 = C12810o.m5230o() && !C12810o.m5236i();
        if (!(!list.isEmpty()) || list.get(0).getViewType() != 2) {
            z = false;
        }
        if (z2 && !z) {
            list.add(0, m9508d());
            return list;
        } else if (z2 || !z) {
            return null;
        } else {
            list.remove(m9508d());
            return list;
        }
    }

    /* renamed from: a */
    public void m9526a(C11444n nVar) {
        C15149k.m377b(nVar, "smsLog");
        this.f25665b = nVar;
        Context a = this.f25664a.mo9601a();
        if (a != null) {
            C12928g.m5000a().m4979c(a, nVar.m9624e(), "", 2).subscribeOn(Schedulers.m0io()).observeOn(AndroidSchedulers.mainThread()).subscribe(new C11498h(a));
        }
    }

    /* renamed from: a */
    public void m9520a(boolean z) {
        this.f25679p.mo9530a(m9505e(), Boolean.valueOf(z));
    }

    /* renamed from: a */
    public final boolean m9528a() {
        int e = m9505e();
        m9518b(C12810o.m5235j() ? e == -1 ? C12810o.m5238g() : e : -1);
        return e != m9505e();
    }

    /* renamed from: a */
    public boolean m9527a(int i) {
        switch (i) {
            case R$id.menu_add_to_wish /* 2131362819 */:
                m9492l();
                return true;
            case R$id.menu_block /* 2131362820 */:
                m9494j();
                return true;
            case R$id.menu_delete /* 2131362843 */:
                if (C12810o.m5232m()) {
                    m9493k();
                    return true;
                }
                m9512c(R$id.menu_delete);
                this.f25664a.mo9600a(1);
                return true;
            case R$id.menu_message /* 2131362858 */:
                m9491m();
                return true;
            case R$id.menu_number_detail /* 2131362861 */:
                m9490n();
                return true;
            case R$id.menu_report /* 2131362868 */:
                m9489o();
                return true;
            case R$id.menu_save /* 2131362871 */:
                m9488p();
                return true;
            default:
                return false;
        }
    }

    /* renamed from: b */
    public final int m9519b() {
        boolean b = C13915b3.m3059b("vas_first_scan");
        long d = C13915b3.m3049d("vas_last_scan_time");
        return b ? 0 : (d == 0 || System.currentTimeMillis() - d < NumberInfo.Whoscall.Spam.EXPIRE_INTERVAL) ? 1 : 2;
    }

    /* renamed from: b */
    public final List<AbstractC12391a> m9515b(List<C11444n> list) {
        ArrayList arrayList = new ArrayList(C15022n.m555a(list, 10));
        for (C11444n nVar : list) {
            arrayList.add(new C11439k(0, nVar, 1, null));
        }
        return C15029u.m526d((Collection) arrayList);
    }

    /* renamed from: b */
    public void m9518b(int i) {
        this.f25678o = i;
    }

    /* renamed from: b */
    public void m9514b(boolean z) {
        this.f25677n = z;
        this.f25671h.setValue(C14989s.f33022a);
    }

    /* renamed from: c */
    public final List<AbstractC12391a> m9509c(List<C11444n> list) {
        List<AbstractC12391a> b = m9515b(list);
        if (b.isEmpty()) {
            b.add(new C11423e(0, 1, null));
        }
        m9521a(b);
        return b;
    }

    /* renamed from: c */
    public void m9513c() {
        m9480x();
        AbstractC6207d dVar = this.f25668e;
        if (dVar != null) {
            dVar.mo23568b();
        }
        this.f25668e = null;
    }

    /* renamed from: c */
    public void m9512c(int i) {
        this.f25669f = i;
    }

    /* renamed from: d */
    public final C11419b m9508d() {
        AbstractC14974f fVar = this.f25670g;
        AbstractC14906i iVar = f25662q[0];
        return (C11419b) fVar.getValue();
    }

    /* renamed from: d */
    public void m9506d(List<C11444n> list) {
        C15149k.m377b(list, "logs");
        Context a = this.f25664a.mo9601a();
        if (a != null) {
            List<C11444n> list2 = list.isEmpty() ^ true ? list : null;
            if (list2 != null) {
                DialogC14618f.C14624f fVar = new DialogC14618f.C14624f(a);
                fVar.m979b(a.getString(R$string.delete_confirm_text));
                fVar.m977c(4);
                fVar.m978b(a.getString(R$string.okok), new DialogInterface$OnClickListenerC11496f(list2, a, this, list));
                fVar.m984a(a.getString(R$string.cancel), (DialogInterface.OnClickListener) null);
                this.f25667d = fVar.m989a();
                DialogC14618f fVar2 = this.f25667d;
                if (fVar2 != null) {
                    fVar2.show();
                }
            }
        }
    }

    /* renamed from: e */
    public int m9505e() {
        return this.f25678o;
    }

    /* renamed from: e */
    public final int m9503e(List<? extends AbstractC12391a> list) {
        int i = 0;
        int i2 = 0;
        if (list != null) {
            Iterator<T> it = list.iterator();
            while (true) {
                i = i2;
                if (!it.hasNext()) {
                    break;
                } else if (((AbstractC12391a) it.next()).getViewType() != 2) {
                    return i2;
                } else {
                    i2++;
                }
            }
        }
        return i;
    }

    /* renamed from: f */
    public LiveData<C14978j<Integer, Integer>> m9502f() {
        return this.f25672i;
    }

    /* renamed from: f */
    public void m9500f(List<? extends AbstractC12391a> list) {
        C15149k.m377b(list, "smsLogs");
        Single.fromCallable(new CallableC11500j(list)).subscribeOn(Schedulers.computation()).subscribe();
    }

    /* renamed from: g */
    public C11444n m9499g() {
        return this.f25665b;
    }

    /* renamed from: h */
    public LiveData<C14978j<List<AbstractC12391a>, Boolean>> m9497h() {
        return this.f25676m;
    }

    /* renamed from: i */
    public int m9495i() {
        return this.f25669f;
    }

    /* renamed from: j */
    public void m9494j() {
        C11444n nVar;
        String str;
        String str2;
        Context a = this.f25664a.mo9601a();
        if (a != null && (nVar = this.f25665b) != null) {
            if (this.f25666c) {
                C12928g.m4997a(a, nVar.m9624e(), 2, "", (View.OnClickListener) null, DataUserReport.Source.SMS);
                return;
            }
            RowInfo rowInfo = C11483t.f25654g.m9535a().get(nVar.m9624e());
            String e = nVar.m9624e();
            String f = nVar.m9623f();
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
            DataUserReport dataUserReport = new DataUserReport(e, f, str, str2, DataUserReport.Source.SMS);
            C14289m.m1909a(10, 1, nVar.m9623f());
            C12928g.m4989a(a, true, true, true, nVar.m9624e(), (HandlerC12947l) null, 2, dataUserReport);
        }
    }

    /* renamed from: k */
    public void m9493k() {
        C11444n nVar;
        String c;
        Context a = this.f25664a.mo9601a();
        if (a != null && (nVar = this.f25665b) != null && (c = nVar.m9626c()) != null) {
            DialogC14618f.C14624f fVar = new DialogC14618f.C14624f(a);
            fVar.m979b(a.getString(R$string.delete_confirm_text));
            fVar.m977c(4);
            fVar.m978b(a.getString(R$string.okok), new DialogInterface$OnClickListenerC11497g(c, a, this));
            fVar.m984a(a.getString(R$string.cancel), (DialogInterface.OnClickListener) null);
            fVar.m982b();
        }
    }

    /* renamed from: l */
    public void m9492l() {
        C11444n nVar;
        String e;
        Context a = this.f25664a.mo9601a();
        if (a != null && (nVar = this.f25665b) != null && (e = nVar.m9624e()) != null) {
            C12860e.m5132a(a, e, (String) null, false, f25663r, (HandlerC12947l) null);
        }
    }

    /* renamed from: m */
    public void m9491m() {
        C11444n nVar;
        Context a = this.f25664a.mo9601a();
        if (a != null && (nVar = this.f25665b) != null) {
            String e = nVar.m9624e();
            boolean z = false;
            if (!(e == null || e.length() == 0)) {
                String e2 = nVar.m9624e();
                if (e2 != null) {
                    C12810o.m5266a(a, 9, e2, null, false, m9505e(), 24, null);
                } else {
                    C15149k.m378b();
                    throw null;
                }
            } else {
                String c = nVar.m9626c();
                if (c == null || c.length() == 0) {
                    z = true;
                }
                if (!z) {
                    String c2 = nVar.m9626c();
                    if (c2 != null) {
                        C12810o.m5268a(a, 9, c2, m9505e());
                    } else {
                        C15149k.m378b();
                        throw null;
                    }
                }
            }
        }
    }

    /* renamed from: n */
    public void m9490n() {
        C11444n nVar;
        Context a = this.f25664a.mo9601a();
        if (a != null && (nVar = this.f25665b) != null) {
            Bundle bundle = new Bundle();
            bundle.putBoolean("show_history", true);
            C14217x3.m2156c(a, NumberDetailActivity.f12014n.m26841a(a, nVar.m9624e(), nVar.m9623f(), bundle, "FROM_Smslog"));
        }
    }

    /* renamed from: o */
    public void m9489o() {
        C11444n nVar;
        String str;
        String[] strArr;
        NumberInfo g;
        List<String> h;
        Context a = this.f25664a.mo9601a();
        if (a != null && (nVar = this.f25665b) != null) {
            RowInfo rowInfo = C11483t.f25654g.m9535a().get(nVar.m9624e());
            String e = nVar.m9624e();
            String f = nVar.m9623f();
            String str2 = "";
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
                str2 = g3.m28383M();
            }
            DataUserReport dataUserReport = new DataUserReport(e, f, str, str2, DataUserReport.Source.SMS);
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
            ReportDialogActivity.m28959a(a, dataUserReport, b, c, strArr, C14241a.EnumC14244c.SMSLogContextMenu, true);
        }
    }

    /* renamed from: p */
    public void m9488p() {
        C11444n nVar;
        String f;
        Context a = this.f25664a.mo9601a();
        if (a != null && (nVar = this.f25665b) != null && (f = nVar.m9623f()) != null) {
            if (nVar.m9627b() != null) {
                C14687h.m861a(a, C14206w4.m2225a((int) R$string.already_contact), 1).m858c();
                return;
            }
            NumberInfo d = C11052i.m10328e().m10329d(f);
            C11444n nVar2 = this.f25665b;
            C14217x3.m2178a(a, nVar2 != null ? nVar2.m9624e() : null, d);
        }
    }

    /* renamed from: q */
    public boolean m9487q() {
        return this.f25677n;
    }

    /* renamed from: r */
    public Boolean m9486r() {
        return Boolean.valueOf(this.f25666c);
    }

    /* renamed from: s */
    public LiveData<Boolean> m9485s() {
        return this.f25679p.isLoading();
    }

    /* renamed from: t */
    public void m9484t() {
        if (AdUtils.m28802g()) {
            this.f25664a.mo9569j();
            return;
        }
        AbstractC6207d dVar = this.f25668e;
        if (dVar != null) {
            C14247d.f31867v.m2037a(AdUnit.SMS_LOG_STICKY, C6262a.EnumC6267e.AD_EXIST.m23446a());
            this.f25664a.mo9589b(dVar);
            return;
        }
        C6192e a = C6192e.f15373p.m23592a(AdUnit.SMS_LOG_STICKY.m28821a());
        a.m23606a(AdUtils.m28803f());
        a.m23617a(EnumC6184a.AOTTER_TREK, false);
        a.m23617a(EnumC6184a.NATIVE, true);
        a.m23617a(EnumC6184a.BANNER, false);
        a.m23608a(new C11499i());
        a.m23619a(this.f25664a.mo9601a());
    }

    /* renamed from: u */
    public void m9483u() {
        C14217x3.m2194a(this.f25667d);
    }

    /* renamed from: v */
    public void m9482v() {
        this.f25669f = -1;
    }

    /* renamed from: w */
    public void m9481w() {
        Context a = this.f25664a.mo9601a();
        if (a != null && C14217x3.m2193a(a)) {
            Intent intent = new Intent(a, VasDetectionActivity.class);
            intent.putExtra("vas_gf_source", 0);
            a.startActivity(intent);
            C14289m.m1844k(m9519b());
            C14261f.m1991a();
        }
    }

    /* renamed from: x */
    public void m9480x() {
        C6192e.f15373p.m23592a(AdUnit.SMS_LOG_STICKY.m28821a()).m23594h();
    }

    /* renamed from: y */
    public void m9479y() {
        AbstractC6207d dVar = this.f25668e;
        if (dVar != null) {
            C14247d.f31867v.m2038a(AdUnit.SMS_LOG_STICKY, dVar);
        }
    }

    /* renamed from: z */
    public void m9478z() {
        this.f25671h.setValue(C14989s.f33022a);
    }
}
