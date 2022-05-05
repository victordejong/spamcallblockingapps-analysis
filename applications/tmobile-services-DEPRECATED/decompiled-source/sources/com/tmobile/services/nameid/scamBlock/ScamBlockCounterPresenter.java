package com.tmobile.services.nameid.scamBlock;

import com.tmobile.services.nameid.model.activity.ActivityItem;
import com.tmobile.services.nameid.scamBlock.ScamBlock;
import com.tmobile.services.nameid.scamBlock.ScamBlockCounter;
import com.tmobile.services.nameid.utility.DateUtils;
import com.tmobile.services.nameid.utility.LogUtil;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.functions.Consumer;
import io.reactivex.schedulers.Schedulers;
import java.lang.ref.WeakReference;
import java.util.Date;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��2\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018��2\u00020\u0001B\u0017\u0012\u0006\u0010\u0017\u001a\u00020\u0013\u0012\u0006\u0010\u000e\u001a\u00020\r¢\u0006\u0004\b\u0018\u0010\u0019J\u000f\u0010\u0003\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\b\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\b\u0010\u0007J\u000f\u0010\t\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\t\u0010\u0007R\u0016\u0010\u000b\u001a\u00020\n8\u0002@\u0002X\u0082D¢\u0006\u0006\n\u0004\b\u000b\u0010\fR\u0019\u0010\u000e\u001a\u00020\r8\u0006@\u0006¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011R$\u0010\u0015\u001a\u0010\u0012\f\u0012\n \u0014*\u0004\u0018\u00010\u00130\u00130\u00128\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016¨\u0006\u001a"}, d2 = {"Lcom/tmobile/services/nameid/scamBlock/ScamBlockCounterPresenter;", "com/tmobile/services/nameid/scamBlock/ScamBlockCounter$Presenter", "Ljava/util/Date;", "getCutoffDate", "()Ljava/util/Date;", "", "refresh", "()V", "refreshBlocked", "refreshReceived", "", "LOG_TAG", "Ljava/lang/String;", "Lcom/tmobile/services/nameid/scamBlock/ScamBlockCounter$Model;", "model", "Lcom/tmobile/services/nameid/scamBlock/ScamBlockCounter$Model;", "getModel", "()Lcom/tmobile/services/nameid/scamBlock/ScamBlockCounter$Model;", "Ljava/lang/ref/WeakReference;", "Lcom/tmobile/services/nameid/scamBlock/ScamBlockCounter$View;", "kotlin.jvm.PlatformType", "viewRef", "Ljava/lang/ref/WeakReference;", "view", "<init>", "(Lcom/tmobile/services/nameid/scamBlock/ScamBlockCounter$View;Lcom/tmobile/services/nameid/scamBlock/ScamBlockCounter$Model;)V", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/scamBlock/ScamBlockCounterPresenter.class */
public final class ScamBlockCounterPresenter implements ScamBlockCounter.Presenter {

    /* renamed from: a */
    private final String f13788a = "ScamBlockCtrPres#";

    /* renamed from: b */
    private final WeakReference<ScamBlockCounter.View> f13789b;
    @NotNull

    /* renamed from: c */
    private final ScamBlockCounter.Model f13790c;

    @Metadata(bv = {1, 0, 3}, d1 = {}, d2 = {}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/scamBlock/ScamBlockCounterPresenter$WhenMappings.class */
    public final /* synthetic */ class WhenMappings {

        /* renamed from: a */
        public static final /* synthetic */ int[] f13791a;

        static {
            int[] iArr = new int[ScamBlock.State.values().length];
            f13791a = iArr;
            iArr[ScamBlock.State.ON.ordinal()] = 1;
            f13791a[ScamBlock.State.OFF.ordinal()] = 2;
            f13791a[ScamBlock.State.PENDING_ON.ordinal()] = 3;
            f13791a[ScamBlock.State.PENDING_OFF.ordinal()] = 4;
            f13791a[ScamBlock.State.FAKE_ON.ordinal()] = 5;
            f13791a[ScamBlock.State.FAKE_OFF.ordinal()] = 6;
        }
    }

    public ScamBlockCounterPresenter(@NotNull ScamBlockCounter.View view, @NotNull ScamBlockCounter.Model model) {
        Intrinsics.m1830e(view, "view");
        Intrinsics.m1830e(model, "model");
        this.f13790c = model;
        this.f13789b = new WeakReference<>(view);
        m6313d();
    }

    /* renamed from: c */
    private final Date m6314c() {
        return new Date(System.currentTimeMillis() - (DateUtils.f14255d.longValue() * 30));
    }

    /* renamed from: d */
    private final void m6313d() {
        String str = this.f13788a;
        LogUtil.m5639h(str, "Refresh, state = " + this.f13790c.getState());
        switch (WhenMappings.f13791a[this.f13790c.getState().ordinal()]) {
            case 1:
                m6312e();
                return;
            case 2:
                m6311f();
                return;
            case 3:
                m6312e();
                return;
            case 4:
                m6311f();
                return;
            case 5:
                m6312e();
                return;
            case 6:
                m6311f();
                return;
            default:
                return;
        }
    }

    /* renamed from: e */
    private final void m6312e() {
        LogUtil.m5643d(this.f13788a, "refreshBlocked");
        ScamBlockCounter.View view = this.f13789b.get();
        if (view != null) {
            view.mo6326E();
        }
        ScamBlockCounter.View view2 = this.f13789b.get();
        if (view2 != null) {
            view2.mo6319a(this.f13790c.mo6329b(m6314c()));
        }
        Intrinsics.m1831d(this.f13790c.mo6327f(m6314c()).m4463l(Schedulers.m3239b()).m4466h(AndroidSchedulers.m4448c()).m4464j(new Consumer<List<? extends ActivityItem>>() { // from class: com.tmobile.services.nameid.scamBlock.ScamBlockCounterPresenter$refreshBlocked$d$1
            /* renamed from: a */
            public final void accept(List<? extends ActivityItem> it) {
                String str;
                WeakReference weakReference;
                str = ScamBlockCounterPresenter.this.f13788a;
                LogUtil.m5643d(str, "Fetched " + it.size() + " items.");
                weakReference = ScamBlockCounterPresenter.this.f13789b;
                ScamBlockCounter.View view3 = (ScamBlockCounter.View) weakReference.get();
                if (view3 != null) {
                    Intrinsics.m1831d(it, "it");
                    view3.mo6318f(it);
                }
            }
        }, new Consumer<Throwable>() { // from class: com.tmobile.services.nameid.scamBlock.ScamBlockCounterPresenter$refreshBlocked$d$2
            /* renamed from: a */
            public final void accept(Throwable th) {
                String str;
                str = ScamBlockCounterPresenter.this.f13788a;
                LogUtil.m5631p(str, "Error fetching blocked calls from Realm: " + th);
            }
        }), "model.getBlockedCalls(ge… $it\")\n                })");
    }

    /* renamed from: f */
    private final void m6311f() {
        LogUtil.m5643d(this.f13788a, "refreshReceived");
        ScamBlockCounter.View view = this.f13789b.get();
        if (view != null) {
            view.mo6317g0();
        }
        ScamBlockCounter.View view2 = this.f13789b.get();
        if (view2 != null) {
            view2.mo6319a(this.f13790c.mo6330a(m6314c()));
        }
        Intrinsics.m1831d(this.f13790c.mo6328d(m6314c()).m4463l(Schedulers.m3239b()).m4466h(AndroidSchedulers.m4448c()).m4464j(new Consumer<List<? extends ActivityItem>>() { // from class: com.tmobile.services.nameid.scamBlock.ScamBlockCounterPresenter$refreshReceived$d$1
            /* renamed from: a */
            public final void accept(List<? extends ActivityItem> it) {
                String str;
                WeakReference weakReference;
                str = ScamBlockCounterPresenter.this.f13788a;
                LogUtil.m5643d(str, "Fetched " + it.size() + " items.");
                weakReference = ScamBlockCounterPresenter.this.f13789b;
                ScamBlockCounter.View view3 = (ScamBlockCounter.View) weakReference.get();
                if (view3 != null) {
                    Intrinsics.m1831d(it, "it");
                    view3.mo6318f(it);
                }
            }
        }, new Consumer<Throwable>() { // from class: com.tmobile.services.nameid.scamBlock.ScamBlockCounterPresenter$refreshReceived$d$2
            /* renamed from: a */
            public final void accept(Throwable th) {
                String str;
                str = ScamBlockCounterPresenter.this.f13788a;
                LogUtil.m5631p(str, "Error fetching received calls from Realm: " + th);
            }
        }), "model.getReceivedCalls(g… $it\")\n                })");
    }
}
