package com.tmobile.services.nameid.Settings.callerIdPrefs;

import com.tmobile.services.nameid.Settings.callerIdPrefs.CallerIdPrefs;
import com.tmobile.services.nameid.utility.LogUtil;
import java.lang.ref.WeakReference;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��,\n\u0002\u0018\u0002\n��\n��\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018��2\u00020\u00012\u00020\u0002B\u0017\u0012\u0006\u0010\u0019\u001a\u00020\u0015\u0012\u0006\u0010\u0010\u001a\u00020\u000f¢\u0006\u0004\b\u001a\u0010\u001bJ\u000f\u0010\u0004\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\u0004\u0010\u0005J\u0017\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\n\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\f\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\f\u0010\u000bR\u0016\u0010\r\u001a\u00020\u00038\u0002@\u0002X\u0082D¢\u0006\u0006\n\u0004\b\r\u0010\u000eR\u0019\u0010\u0010\u001a\u00020\u000f8\u0006@\u0006¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013R$\u0010\u0017\u001a\u0010\u0012\f\u0012\n \u0016*\u0004\u0018\u00010\u00150\u00150\u00148\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018¨\u0006\u001c"}, d2 = {"Lcom/tmobile/services/nameid/Settings/callerIdPrefs/CallerIdPrefsPresenter;", "com/tmobile/services/nameid/Settings/callerIdPrefs/CallerIdPrefs$Presenter", "com/tmobile/services/nameid/Settings/callerIdPrefs/CallerIdPrefs$OutboundCnamListener", "", "getOutboundCallerName", "()Ljava/lang/String;", "name", "", "onCnamUpdate", "(Ljava/lang/String;)V", "onCreateView", "()V", "onDestroyView", "LOG_TAG", "Ljava/lang/String;", "Lcom/tmobile/services/nameid/Settings/callerIdPrefs/CallerIdPrefs$Model;", "model", "Lcom/tmobile/services/nameid/Settings/callerIdPrefs/CallerIdPrefs$Model;", "getModel", "()Lcom/tmobile/services/nameid/Settings/callerIdPrefs/CallerIdPrefs$Model;", "Ljava/lang/ref/WeakReference;", "Lcom/tmobile/services/nameid/Settings/callerIdPrefs/CallerIdPrefs$View;", "kotlin.jvm.PlatformType", "viewRef", "Ljava/lang/ref/WeakReference;", "view", "<init>", "(Lcom/tmobile/services/nameid/Settings/callerIdPrefs/CallerIdPrefs$View;Lcom/tmobile/services/nameid/Settings/callerIdPrefs/CallerIdPrefs$Model;)V", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/Settings/callerIdPrefs/CallerIdPrefsPresenter.class */
public final class CallerIdPrefsPresenter implements CallerIdPrefs.Presenter, CallerIdPrefs.OutboundCnamListener {

    /* renamed from: a */
    private final String f12857a = "CallerIdPrefsPres#";

    /* renamed from: b */
    private final WeakReference<CallerIdPrefs.View> f12858b;
    @NotNull

    /* renamed from: c */
    private final CallerIdPrefs.Model f12859c;

    @Metadata(bv = {1, 0, 3}, d1 = {}, d2 = {}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/Settings/callerIdPrefs/CallerIdPrefsPresenter$WhenMappings.class */
    public final /* synthetic */ class WhenMappings {

        /* renamed from: a */
        public static final /* synthetic */ int[] f12860a;

        static {
            int[] iArr = new int[CallerIdPrefs.CnamEligibility.values().length];
            f12860a = iArr;
            iArr[CallerIdPrefs.CnamEligibility.Eligible.ordinal()] = 1;
            f12860a[CallerIdPrefs.CnamEligibility.Ineligible.ordinal()] = 2;
            f12860a[CallerIdPrefs.CnamEligibility.Business.ordinal()] = 3;
            f12860a[CallerIdPrefs.CnamEligibility.Unknown.ordinal()] = 4;
        }
    }

    public CallerIdPrefsPresenter(@NotNull CallerIdPrefs.View view, @NotNull CallerIdPrefs.Model model) {
        Intrinsics.m1830e(view, "view");
        Intrinsics.m1830e(model, "model");
        this.f12859c = model;
        this.f12858b = new WeakReference<>(view);
    }

    @Override // com.tmobile.services.nameid.Settings.callerIdPrefs.CallerIdPrefs.Presenter
    @NotNull
    /* renamed from: a */
    public String mo7340a() {
        boolean p;
        String a = this.f12859c.mo7336a();
        String str = a;
        p = StringsKt__StringsJVMKt.m1487p(a, "Not found", true);
        if (p) {
            str = "";
        }
        return str;
    }

    @Override // com.tmobile.services.nameid.Settings.callerIdPrefs.CallerIdPrefs.Presenter
    /* renamed from: b */
    public void mo7339b() {
        CallerIdPrefs.View view;
        CallerIdPrefs.CnamEligibility b = this.f12859c.mo7335b();
        String str = this.f12857a;
        LogUtil.m5643d(str, "onCreateView - cnamEligibility: " + b);
        int i = WhenMappings.f12860a[b.ordinal()];
        if (i == 1) {
            CallerIdPrefs.View view2 = this.f12858b.get();
            if (view2 != null) {
                view2.mo7347y();
            }
        } else if (i == 2) {
            CallerIdPrefs.View view3 = this.f12858b.get();
            if (view3 != null) {
                view3.mo7348q0();
            }
        } else if (i == 3) {
            CallerIdPrefs.View view4 = this.f12858b.get();
            if (view4 != null) {
                view4.mo7371D();
            }
        } else if (i == 4 && (view = this.f12858b.get()) != null) {
            view.mo7371D();
        }
        boolean e = this.f12859c.mo7332e();
        CallerIdPrefs.View view5 = this.f12858b.get();
        if (view5 != null) {
            view5.mo7372C0(e);
        }
        this.f12859c.mo7334c(this);
    }

    @Override // com.tmobile.services.nameid.Settings.callerIdPrefs.CallerIdPrefs.Presenter
    /* renamed from: c */
    public void mo7338c() {
        this.f12859c.mo7333d(this);
    }

    @Override // com.tmobile.services.nameid.Settings.callerIdPrefs.CallerIdPrefs.OutboundCnamListener
    /* renamed from: d */
    public void mo7337d(@NotNull String name) {
        boolean p;
        Intrinsics.m1830e(name, "name");
        String str = name;
        p = StringsKt__StringsJVMKt.m1487p(name, "Not found", true);
        if (p) {
            str = "";
        }
        CallerIdPrefs.View view = this.f12858b.get();
        if (view != null) {
            view.mo7346z0(str);
        }
    }
}
