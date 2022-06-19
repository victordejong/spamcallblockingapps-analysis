package com.truecaller.callrecording.p154ui.onboarding;

import android.content.res.Resources;
import android.os.Bundle;
import androidx.fragment.app.FragmentManager;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.truecaller.callrecording.CallRecordingOnBoardingLaunchContext;
import com.truecaller.callrecording.p154ui.onboarding.CallRecordingOnBoardingMvp$Listener;
import com.truecaller.common.p156ui.dialogs.StartupXDialogState;
import com.truecaller.startup_dialogs.analytics.StartupDialogEvent;
import java.io.Serializable;
import java.util.Iterator;
import java.util.Map;
import javax.inject.Inject;
import kotlin.Metadata;
import n3.b.a.h;
import p1727n3.p1728a.p1730e.AbstractC25373a;
import p1727n3.p1728a.p1730e.AbstractC25374b;
import p1727n3.p1728a.p1730e.p1731d.C25378b;
import p1727n3.p1807k.p1808a.C26413b;
import p1727n3.p1859r.p1860a.AbstractC26914b0;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.AbstractC17399l2;
import p193e.p194a.C20399t1;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1066n.C18334g0;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p372b0.p373a.p374a.C8230h;
import p193e.p194a.p614c3.C10932f;
import p193e.p194a.p682e.C12864a2;
import p193e.p194a.p916i5.C15314a;
import p193e.p194a.p982k0.p989n.p993d.AbstractC16400a;
import p193e.p194a.p982k0.p989n.p993d.AbstractC16401b;
import p193e.p194a.p982k0.p989n.p993d.p994d.C16403a;
import p193e.p194a.p982k0.p989n.p993d.p994d.C16405c;
import p193e.p194a.p982k0.p989n.p993d.p994d.C16406d;
import p193e.p194a.p982k0.p989n.p993d.p994d.C16407e;
import p193e.p194a.p982k0.p989n.p993d.p994d.C16408f;
import s1.g;
import s1.s;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\t\u0018��2\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b7\u0010\tJ\u0019\u0010\u0006\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0014¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\b\u001a\u00020\u0005H\u0014¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\n\u001a\u00020\u0005H\u0014¢\u0006\u0004\b\n\u0010\tJ\u0017\u0010\r\u001a\u00020\u00052\u0006\u0010\f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u000f\u0010\tJ\u000f\u0010\u0010\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0010\u0010\tJ\u000f\u0010\u0011\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0011\u0010\tJ'\u0010\u0016\u001a\u00020\u00052\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0018\u0010\tJ\u000f\u0010\u0019\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0019\u0010\tJ\u000f\u0010\u001a\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u001a\u0010\tJ\u000f\u0010\u001b\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u001b\u0010\tJ\u001d\u0010\u001f\u001a\u00020\u00052\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u001d0\u001cH\u0016¢\u0006\u0004\b\u001f\u0010 J\u001d\u0010!\u001a\u00020\u00122\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u001d0\u001cH\u0016¢\u0006\u0004\b!\u0010\"J\u000f\u0010#\u001a\u00020\u0005H\u0016¢\u0006\u0004\b#\u0010\tJ\u000f\u0010$\u001a\u00020\u0005H\u0016¢\u0006\u0004\b$\u0010\tR\u001d\u0010)\u001a\u00020\u00128B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b%\u0010&\u001a\u0004\b'\u0010(RB\u0010.\u001a.\u0012*\u0012(\u0012\f\u0012\n +*\u0004\u0018\u00010\u001d0\u001d +*\u0014\u0012\u000e\b\u0001\u0012\n +*\u0004\u0018\u00010\u001d0\u001d\u0018\u00010\u001c0\u001c0*8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b,\u0010-R\"\u00106\u001a\u00020/8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b0\u00101\u001a\u0004\b2\u00103\"\u0004\b4\u00105¨\u00068"}, d2 = {"Lcom/truecaller/callrecording/ui/onboarding/CallRecordingOnBoardingActivity;", "Ln3/b/a/h;", "Le/a/k0/n/d/b;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "onResume", "()V", "onDestroy", "Lcom/truecaller/callrecording/ui/onboarding/CallRecordingOnBoardingMvp$Listener$Action;", "action", "p6", "(Lcom/truecaller/callrecording/ui/onboarding/CallRecordingOnBoardingMvp$Listener$Action;)V", "rd", "xg", "Qg", "", "hasAudioPermission", "hasStoragePermission", "needsAccessibility", "xi", "(ZZZ)V", "ce", "td", "cd", "ob", "", "", "requiredPermissions", "ic", "([Ljava/lang/String;)V", "Pe", "([Ljava/lang/String;)Z", "m0", "I0", "a", "Ls1/g;", "getShouldForceDarkTheme", "()Z", "shouldForceDarkTheme", "Ln3/a/e/b;", "kotlin.jvm.PlatformType", C22021b.f61237c, "Ln3/a/e/b;", "requestMultiplePermissions", "Le/a/k0/n/d/a;", AbstractC2405c.f7629a, "Le/a/k0/n/d/a;", "getPresenter", "()Le/a/k0/n/d/a;", "setPresenter", "(Le/a/k0/n/d/a;)V", "presenter", "<init>", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.callrecording.ui.onboarding.CallRecordingOnBoardingActivity */
/* loaded from: classes7-dex2jar.jar:com/truecaller/callrecording/ui/onboarding/CallRecordingOnBoardingActivity.class */
public final class CallRecordingOnBoardingActivity extends h implements AbstractC16401b {

    /* renamed from: a */
    public final g f10814a = C25225a.m3978P1(new C3640c());

    /* renamed from: b */
    public final AbstractC25374b<String[]> f10815b;
    @Inject

    /* renamed from: c */
    public AbstractC16400a f10816c;

    /* renamed from: com.truecaller.callrecording.ui.onboarding.CallRecordingOnBoardingActivity$a */
    /* loaded from: classes7-dex2jar.jar:com/truecaller/callrecording/ui/onboarding/CallRecordingOnBoardingActivity$a.class */
    public static final class C3638a implements AbstractC26914b0 {
        public C3638a() {
            CallRecordingOnBoardingActivity.this = r4;
        }

        @Override // p1727n3.p1859r.p1860a.AbstractC26914b0
        /* renamed from: a */
        public final void mo1168a(String str, Bundle bundle) {
            l.e(str, "<anonymous parameter 0>");
            l.e(bundle, "result");
            CallRecordingOnBoardingActivity.this.mo17435p6(CallRecordingOnBoardingMvp$Listener.Action.DEFAULT_DIALER_CONTINUE);
        }
    }

    /* renamed from: com.truecaller.callrecording.ui.onboarding.CallRecordingOnBoardingActivity$b */
    /* loaded from: classes7-dex2jar.jar:com/truecaller/callrecording/ui/onboarding/CallRecordingOnBoardingActivity$b.class */
    public static final class C3639b<O> implements AbstractC25373a<Map<String, Boolean>> {

        /* renamed from: a */
        public static final C3639b f10818a = new C3639b();

        @Override // p1727n3.p1728a.p1730e.AbstractC25373a
        /* renamed from: a */
        public void mo3695a(Map<String, Boolean> map) {
            Iterator<T> it = map.entrySet().iterator();
            while (it.hasNext()) {
                Map.Entry entry = (Map.Entry) it.next();
                String str = ((String) entry.getKey()) + " = " + ((Boolean) entry.getValue());
            }
        }
    }

    /* renamed from: com.truecaller.callrecording.ui.onboarding.CallRecordingOnBoardingActivity$c */
    /* loaded from: classes7-dex2jar.jar:com/truecaller/callrecording/ui/onboarding/CallRecordingOnBoardingActivity$c.class */
    public static final class C3640c extends m implements a<Boolean> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C3640c() {
            super(0);
            CallRecordingOnBoardingActivity.this = r4;
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [com.truecaller.callrecording.ui.onboarding.CallRecordingOnBoardingActivity, android.app.Activity] */
        public Object invoke() {
            return Boolean.valueOf(CallRecordingOnBoardingActivity.this.getIntent().getBooleanExtra("ARG_FORCE_DARK_THEME", false));
        }
    }

    /* renamed from: com.truecaller.callrecording.ui.onboarding.CallRecordingOnBoardingActivity$d */
    /* loaded from: classes7-dex2jar.jar:com/truecaller/callrecording/ui/onboarding/CallRecordingOnBoardingActivity$d.class */
    public static final class C3641d extends m implements a<s> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C3641d() {
            super(0);
            CallRecordingOnBoardingActivity.this = r4;
        }

        public Object invoke() {
            AbstractC16400a abstractC16400a = CallRecordingOnBoardingActivity.this.f10816c;
            if (abstractC16400a != null) {
                abstractC16400a.mo17435p6(CallRecordingOnBoardingMvp$Listener.Action.ENABLE_NOW);
                return s.a;
            }
            l.l("presenter");
            throw null;
        }
    }

    /* renamed from: com.truecaller.callrecording.ui.onboarding.CallRecordingOnBoardingActivity$e */
    /* loaded from: classes7-dex2jar.jar:com/truecaller/callrecording/ui/onboarding/CallRecordingOnBoardingActivity$e.class */
    public static final class C3642e extends m implements s1.z.b.l<StartupXDialogState, s> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C3642e() {
            super(1);
            CallRecordingOnBoardingActivity.this = r4;
        }

        /* renamed from: d */
        public Object m35732d(Object obj) {
            int ordinal;
            StartupXDialogState startupXDialogState = (StartupXDialogState) obj;
            if (startupXDialogState != null && ((ordinal = startupXDialogState.ordinal()) == 2 || ordinal == 3)) {
                CallRecordingOnBoardingActivity.this.mo17435p6(CallRecordingOnBoardingMvp$Listener.Action.DISMISSED);
            }
            return s.a;
        }
    }

    public CallRecordingOnBoardingActivity() {
        AbstractC25374b<String[]> registerForActivityResult = registerForActivityResult(new C25378b(), C3639b.f10818a);
        l.d(registerForActivityResult, "registerForActivityResul…${it.value}\") }\n        }");
        this.f10815b = registerForActivityResult;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p982k0.p989n.p993d.AbstractC16401b
    /* renamed from: I0 */
    public void mo17451I0() {
        C19291g.m13589S1(this, 2131888431, null, 1, 2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p982k0.p989n.p993d.AbstractC16401b
    /* renamed from: Pe */
    public boolean mo17450Pe(String[] strArr) {
        String str;
        l.e(strArr, "requiredPermissions");
        int length = strArr.length;
        boolean z = false;
        int i = 0;
        while (true) {
            if (i >= length) {
                str = null;
                break;
            }
            String str2 = strArr[i];
            int i2 = C26413b.f74031c;
            if (shouldShowRequestPermissionRationale(str2)) {
                str = str2;
                break;
            }
            i++;
        }
        if (str != null) {
            z = true;
        }
        return z;
    }

    @Override // p193e.p194a.p982k0.p989n.p993d.AbstractC16401b
    /* renamed from: Qg */
    public void mo17449Qg() {
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        l.d(supportFragmentManager, "supportFragmentManager");
        if (supportFragmentManager.m42929X()) {
            return;
        }
        FragmentManager supportFragmentManager2 = getSupportFragmentManager();
        l.d(supportFragmentManager2, "supportFragmentManager");
        l.e(supportFragmentManager2, "fragmentManager");
        new C16408f().show(supportFragmentManager2, C16408f.class.getSimpleName());
    }

    @Override // p193e.p194a.p982k0.p989n.p993d.AbstractC16401b
    /* renamed from: cd */
    public void mo17448cd() {
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        l.d(supportFragmentManager, "supportFragmentManager");
        if (supportFragmentManager.m42929X()) {
            return;
        }
        FragmentManager supportFragmentManager2 = getSupportFragmentManager();
        l.d(supportFragmentManager2, "supportFragmentManager");
        l.e(supportFragmentManager2, "fragmentManager");
        new C16407e().show(supportFragmentManager2, C16407e.class.getSimpleName());
    }

    @Override // p193e.p194a.p982k0.p989n.p993d.AbstractC16401b
    /* renamed from: ce */
    public void mo17447ce() {
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        l.d(supportFragmentManager, "supportFragmentManager");
        if (supportFragmentManager.m42929X()) {
            return;
        }
        C16403a c16403a = C16403a.f46115u;
        FragmentManager supportFragmentManager2 = getSupportFragmentManager();
        l.d(supportFragmentManager2, "supportFragmentManager");
        l.e(supportFragmentManager2, "fragmentManager");
        String str = C16403a.f46114t;
        if (supportFragmentManager2.m42942K(str) != null) {
            return;
        }
        new C16403a().show(supportFragmentManager2, str);
    }

    @Override // p193e.p194a.p982k0.p989n.p993d.AbstractC16401b
    /* renamed from: ic */
    public void mo17446ic(String[] strArr) {
        l.e(strArr, "requiredPermissions");
        this.f10815b.mo3694a(strArr, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p982k0.p989n.p993d.AbstractC16401b
    /* renamed from: m0 */
    public void mo17445m0() {
        C19291g.m13602O0(this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p982k0.p989n.p993d.AbstractC16401b
    /* renamed from: ob */
    public void mo17444ob() {
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        l.d(supportFragmentManager, "supportFragmentManager");
        if (supportFragmentManager.m42929X()) {
            return;
        }
        C8230h.C8233c c8233c = C8230h.f25388k;
        String string = getString(2131890012);
        l.d(string, "getString(R.string.start…recording_incallui_title)");
        String string2 = getString(2131890011);
        l.d(string2, "getString(R.string.start…ording_incallui_subtitle)");
        String string3 = getString(2131888466);
        l.d(string3, "getString(R.string.callrecording_enable_now)");
        C8230h.C8233c.m28762b(c8233c, this, string, string2, string3, getString(2131887909), null, new C3641d(), null, new C3642e(), false, null, 1696);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onCreate(Bundle bundle) {
        CallRecordingOnBoardingActivity.super.onCreate(bundle);
        if (C10932f.m25491a()) {
            C12864a2.m22569Y(this);
        }
        if (((Boolean) this.f10814a.getValue()).booleanValue()) {
            Resources.Theme theme = getTheme();
            C15314a c15314a = C15314a.f43582g;
            theme.applyStyle(C15314a.m18937b().f43588d, false);
        } else {
            Resources.Theme theme2 = getTheme();
            l.d(theme2, "theme");
            C17422k.m16067m(theme2, true);
        }
        this.f10816c = (AbstractC16400a) ((C20399t1.C20406e) AbstractC17399l2.f48744a.m16142a().mo11173k()).f57389q.get();
        Serializable serializableExtra = getIntent().getSerializableExtra("ARG_LAUNCH_CONTEXT");
        Serializable serializable = serializableExtra;
        if (!(serializableExtra instanceof CallRecordingOnBoardingLaunchContext)) {
            serializable = null;
        }
        CallRecordingOnBoardingLaunchContext callRecordingOnBoardingLaunchContext = (CallRecordingOnBoardingLaunchContext) serializable;
        if (callRecordingOnBoardingLaunchContext == null) {
            finish();
            return;
        }
        AbstractC16400a abstractC16400a = this.f10816c;
        if (abstractC16400a == null) {
            l.l("presenter");
            throw null;
        }
        abstractC16400a.mo9029Y0(this);
        AbstractC16400a abstractC16400a2 = this.f10816c;
        if (abstractC16400a2 == null) {
            l.l("presenter");
            throw null;
        }
        abstractC16400a2.mo17436gd(callRecordingOnBoardingLaunchContext);
        getSupportFragmentManager().m42895p0("REQUEST_DIALER_CONTINUE", this, new C3638a());
    }

    public void onDestroy() {
        CallRecordingOnBoardingActivity.super.onDestroy();
        AbstractC16400a abstractC16400a = this.f10816c;
        if (abstractC16400a != null) {
            abstractC16400a.mo9806c();
        } else {
            l.l("presenter");
            throw null;
        }
    }

    public void onResume() {
        CallRecordingOnBoardingActivity.super.onResume();
        AbstractC16400a abstractC16400a = this.f10816c;
        if (abstractC16400a != null) {
            abstractC16400a.onResume();
        } else {
            l.l("presenter");
            throw null;
        }
    }

    @Override // com.truecaller.callrecording.p154ui.onboarding.CallRecordingOnBoardingMvp$Listener
    /* renamed from: p6 */
    public void mo17435p6(CallRecordingOnBoardingMvp$Listener.Action action) {
        l.e(action, "action");
        AbstractC16400a abstractC16400a = this.f10816c;
        if (abstractC16400a != null) {
            abstractC16400a.mo17435p6(action);
        } else {
            l.l("presenter");
            throw null;
        }
    }

    @Override // p193e.p194a.p982k0.p989n.p993d.AbstractC16401b
    /* renamed from: rd */
    public void mo17443rd() {
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        l.d(supportFragmentManager, "supportFragmentManager");
        if (supportFragmentManager.m42929X()) {
            return;
        }
        FragmentManager supportFragmentManager2 = getSupportFragmentManager();
        l.d(supportFragmentManager2, "supportFragmentManager");
        StartupDialogEvent.Type type = StartupDialogEvent.Type.CallRecordingDefaultDialerPromo;
        l.e(supportFragmentManager2, "fragmentManager");
        l.e(type, "analyticsType");
        e.a.h.a.a aVar = new e.a.h.a.a();
        Bundle bundle = new Bundle();
        bundle.putSerializable("DefaultDialerAnalyticsContext", type);
        aVar.setArguments(bundle);
        aVar.show(supportFragmentManager2, e.a.h.a.a.class.getSimpleName());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p982k0.p989n.p993d.AbstractC16401b
    /* renamed from: td */
    public void mo17442td() {
        C18334g0.m15224i0(this);
    }

    @Override // p193e.p194a.p982k0.p989n.p993d.AbstractC16401b
    /* renamed from: xg */
    public void mo17441xg() {
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        l.d(supportFragmentManager, "supportFragmentManager");
        if (supportFragmentManager.m42929X()) {
            return;
        }
        FragmentManager supportFragmentManager2 = getSupportFragmentManager();
        l.d(supportFragmentManager2, "supportFragmentManager");
        l.e(supportFragmentManager2, "fragmentManager");
        new C16405c().show(supportFragmentManager2, C16405c.class.getSimpleName());
    }

    @Override // p193e.p194a.p982k0.p989n.p993d.AbstractC16401b
    /* renamed from: xi */
    public void mo17440xi(boolean z, boolean z2, boolean z3) {
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        l.d(supportFragmentManager, "supportFragmentManager");
        if (supportFragmentManager.m42929X()) {
            return;
        }
        FragmentManager supportFragmentManager2 = getSupportFragmentManager();
        l.d(supportFragmentManager2, "supportFragmentManager");
        l.e(supportFragmentManager2, "fragmentManager");
        C16406d c16406d = new C16406d();
        Bundle bundle = new Bundle();
        bundle.putBoolean("hasAudioPermission", z);
        bundle.putBoolean("hasStoragePermission", z2);
        bundle.putBoolean("needsAccessibility", z3);
        c16406d.setArguments(bundle);
        c16406d.show(supportFragmentManager2, C16406d.class.getSimpleName());
    }
}
