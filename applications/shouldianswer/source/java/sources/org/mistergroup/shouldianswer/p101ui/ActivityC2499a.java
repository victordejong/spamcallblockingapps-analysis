package org.mistergroup.shouldianswer.p101ui;

import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import androidx.appcompat.app.ActivityC0092e;
import java.lang.ref.WeakReference;
import kotlin.p081e.p083b.C1691e;
import kotlin.p081e.p083b.C1694h;
import org.mistergroup.shouldianswer.MyApp;
import org.mistergroup.shouldianswer.utils.C3074a;
import org.mistergroup.shouldianswer.utils.C3104j;
/* renamed from: org.mistergroup.shouldianswer.ui.a */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/a.class */
public class ActivityC2499a extends ActivityC0092e {

    /* renamed from: k */
    public static final C2500a f7362k = new C2500a(null);

    /* renamed from: m */
    private static boolean f7363m;

    /* renamed from: l */
    private WeakReference<AbstractC2510b> f7364l = new WeakReference<>(null);

    /* renamed from: org.mistergroup.shouldianswer.ui.a$a */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/a$a.class */
    public static final class C2500a {
        private C2500a() {
        }

        public /* synthetic */ C2500a(C1691e c1691e) {
            this();
        }

        /* renamed from: a */
        public final void m863a(boolean z) {
            ActivityC2499a.f7363m = z;
        }

        /* renamed from: a */
        public final boolean m864a() {
            return ActivityC2499a.f7363m;
        }
    }

    /* renamed from: a */
    public final void m867a(WeakReference<AbstractC2510b> weakReference) {
        C1694h.m3117b(weakReference, "<set-?>");
        this.f7364l = weakReference;
    }

    @Override // android.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    public Resources.Theme getTheme() {
        Resources.Theme theme = super.getTheme();
        C1694h.m3122a((Object) theme, "theme");
        return theme;
    }

    /* renamed from: k */
    public void mo242k() {
        MyApp.f5480c.m1802a().m1806a(this);
    }

    @Override // androidx.appcompat.app.ActivityC0092e, androidx.fragment.app.ActivityC0711c, androidx.activity.ActivityC0046b, androidx.core.app.ActivityC0438d, android.app.Activity
    public void onCreate(Bundle bundle) {
        mo242k();
        super.onCreate(bundle);
        C3104j c3104j = C3104j.f9124a;
        C3104j.m157a(c3104j, "ACTIVITY:CREATE: " + getClass().getSimpleName(), (String) null, 2, (Object) null);
    }

    @Override // androidx.appcompat.app.ActivityC0092e, androidx.fragment.app.ActivityC0711c, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        C3104j c3104j = C3104j.f9124a;
        C3104j.m157a(c3104j, "ACTIVITY:DESTROY: " + getClass().getSimpleName(), (String) null, 2, (Object) null);
    }

    @Override // androidx.fragment.app.ActivityC0711c, android.app.Activity
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        C3104j c3104j = C3104j.f9124a;
        C3104j.m157a(c3104j, "ACTIVITY:NEW_INTENT: " + getClass().getSimpleName(), (String) null, 2, (Object) null);
        AbstractC2510b abstractC2510b = this.f7364l.get();
        if (abstractC2510b != null) {
            setIntent(intent);
            abstractC2510b.mo240a(this, null);
        }
    }

    @Override // androidx.fragment.app.ActivityC0711c, android.app.Activity
    public void onPause() {
        super.onPause();
        C3104j c3104j = C3104j.f9124a;
        C3104j.m157a(c3104j, "ACTIVITY:PAUSE: " + getClass().getSimpleName(), (String) null, 2, (Object) null);
    }

    @Override // androidx.fragment.app.ActivityC0711c, android.app.Activity
    public void onResume() {
        if (!f7363m) {
            C3074a c3074a = C3074a.f8976a;
            String simpleName = getClass().getSimpleName();
            C1694h.m3122a((Object) simpleName, "javaClass.simpleName");
            c3074a.m229a(simpleName, "activity", "");
        }
        super.onResume();
        C3104j c3104j = C3104j.f9124a;
        C3104j.m157a(c3104j, "ACTIVITY:RESUME: " + getClass().getSimpleName(), (String) null, 2, (Object) null);
    }

    @Override // androidx.appcompat.app.ActivityC0092e, androidx.fragment.app.ActivityC0711c, android.app.Activity
    public void onStart() {
        super.onStart();
        C3104j c3104j = C3104j.f9124a;
        C3104j.m157a(c3104j, "ACTIVITY:START: " + getClass().getSimpleName(), (String) null, 2, (Object) null);
    }

    @Override // androidx.appcompat.app.ActivityC0092e, androidx.fragment.app.ActivityC0711c, android.app.Activity
    public void onStop() {
        super.onStop();
        C3104j c3104j = C3104j.f9124a;
        C3104j.m157a(c3104j, "ACTIVITY:STOP: " + getClass().getSimpleName(), (String) null, 2, (Object) null);
    }
}
