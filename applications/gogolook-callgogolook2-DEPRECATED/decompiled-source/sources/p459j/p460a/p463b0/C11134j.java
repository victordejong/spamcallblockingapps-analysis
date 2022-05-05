package p459j.p460a.p463b0;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.Intent;
import gogolook.callgogolook2.util.control.VersionManager;
import p459j.p460a.p463b0.DialogC11125g;
import p459j.p460a.p521j0.p522u.p523d.C12612g0;
import p459j.p460a.p569u0.DialogC13661d;
import p459j.p460a.p582w0.C13878a3;
import p459j.p460a.p582w0.C13915b3;
import p459j.p460a.p582w0.C13938c4;
import p459j.p460a.p582w0.C13963d3;
import p459j.p460a.p582w0.C13984e1;
import p459j.p460a.p582w0.C14037j3;
import p459j.p460a.p582w0.C14191v;
import p459j.p460a.p582w0.C14217x3;
import p459j.p460a.p582w0.C14320y3;
import p459j.p460a.p582w0.p583a5.C13892b;
import p459j.p460a.p582w0.p590x4.C14299q;
/* renamed from: j.a.b0.j */
/* loaded from: classes2-dex2jar.jar:j/a/b0/j.class */
public class C11134j {

    /* renamed from: a */
    public Activity f25009a;

    /* renamed from: c */
    public boolean f25011c = false;

    /* renamed from: b */
    public DialogInterface.OnDismissListener f25010b = new DialogInterface.OnDismissListener() { // from class: j.a.b0.b
        @Override // android.content.DialogInterface.OnDismissListener
        public final void onDismiss(DialogInterface dialogInterface) {
            C11134j.this.m10240a(dialogInterface);
        }
    };

    /* renamed from: j.a.b0.j$a */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/j$a.class */
    public class C11135a implements DialogC11125g.AbstractC11127b {
        public C11135a() {
        }

        @Override // p459j.p460a.p463b0.DialogC11125g.AbstractC11127b
        /* renamed from: a */
        public void mo5752a(String str) {
            C13915b3.m3044e("DDDSetting", str);
            C13915b3.m3055b("HasInputDDD", true);
            C14299q.m1773N();
            C11134j.this.f25011c = false;
        }
    }

    public C11134j(Activity activity) {
        this.f25009a = activity;
    }

    /* renamed from: a */
    public void m10241a() {
    }

    /* renamed from: a */
    public /* synthetic */ void m10240a(DialogInterface dialogInterface) {
        this.f25011c = false;
    }

    /* renamed from: a */
    public final void m10239a(Intent intent, boolean z) {
        if (z) {
            m10228e("OnSetView");
            m10230c("OnSetView");
            m10237a("OnSetView", intent);
            m10238a("OnSetView");
            m10229d("OnSetView");
            m10232b("OnSetView");
            return;
        }
        m10234b();
    }

    /* renamed from: a */
    public final void m10238a(String str) {
        if (!this.f25011c && C12612g0.m5758s()) {
            C12612g0.m5777c(this.f25009a);
            m10235a(str, "Call confirm set default phone dialog showing");
        }
    }

    /* renamed from: a */
    public final void m10237a(String str, Intent intent) {
        if (!this.f25011c && intent != null && intent.getBooleanExtra("forceShowNumberTransmissionAccepted", false)) {
            DialogC11112c cVar = new DialogC11112c(this.f25009a);
            cVar.setOnDismissListener(this.f25010b);
            cVar.show();
            m10235a(str, "MainTipDialog: force showing");
            C13915b3.m3055b("HasShownMainIntroTutorial", true);
        } else if (!this.f25011c && C13892b.m3132c("onboarding_tutorial") && C13915b3.m3059b("isNumberTransmissionAccepted") && C13938c4.m3009a(this.f25009a, "onboarding_tutorial", (DialogInterface.OnClickListener) null, (DialogInterface.OnKeyListener) null)) {
            m10235a(str, "dialog for special device showing");
        }
    }

    /* renamed from: a */
    public /* synthetic */ void m10236a(String str, DialogC13661d dVar) {
        if (C14191v.m2262a(this.f25009a) && !dVar.m3733b()) {
            dVar.setOnDismissListener(this.f25010b);
            dVar.show();
            m10235a(str, "InAppDialog showing");
        }
        m10234b();
    }

    /* renamed from: a */
    public final void m10235a(String str, String str2) {
        this.f25011c = true;
    }

    /* renamed from: b */
    public final void m10234b() {
        C14037j3.m2731a().mo2704a(new C13984e1(this.f25011c));
    }

    /* renamed from: b */
    public void m10233b(Intent intent, boolean z) {
        m10239a(intent, z);
    }

    /* renamed from: b */
    public final void m10232b(final String str) {
        if (!this.f25011c) {
            new DialogC13661d(this.f25009a, new DialogC13661d.AbstractC13665d() { // from class: j.a.b0.a
                @Override // p459j.p460a.p569u0.DialogC13661d.AbstractC13665d
                /* renamed from: a */
                public final void mo3707a(DialogC13661d dVar) {
                    C11134j.this.m10236a(str, dVar);
                }
            });
        } else {
            m10234b();
        }
    }

    /* renamed from: c */
    public void m10231c(Intent intent, boolean z) {
        if (!this.f25011c && C13915b3.m3066a("showSearchTipTimes", 0) < 2) {
            C13915b3.m3048d("showSearchTipTimes", C13915b3.m3066a("showSearchTipTimes", 0) + 1);
        }
        if (C13878a3.m3203o() && !C13915b3.m3062a("has_granted_location_permission_before", false)) {
            C13915b3.m3055b("has_granted_location_permission_before", true);
        }
        m10239a(intent, z);
    }

    /* renamed from: c */
    public final void m10230c(String str) {
        if (!this.f25011c && C12612g0.m5760q()) {
            boolean z = C14320y3.m1585k() && C14217x3.m2207A();
            DialogC11125g gVar = new DialogC11125g(this.f25009a);
            gVar.setCancelable(false);
            gVar.m10247a(new C11135a());
            gVar.show();
            m10235a(str, "BR ddd dialog");
            C14299q.m1771O();
            if (!z) {
                C13915b3.m3055b("HasInputDDD", true);
            }
        }
    }

    /* renamed from: d */
    public final void m10229d(String str) {
        if (!this.f25011c && VersionManager.m25989f(2)) {
            VersionManager.m25997b(this.f25009a);
            m10235a(str, "Suggest update dialog showing");
        }
    }

    /* renamed from: e */
    public final void m10228e(String str) {
        if (!this.f25011c && C13963d3.m2958m()) {
            C13963d3.m2974a(this.f25009a);
            m10235a(str, "Terms of service and Privacy policy dialog showing");
        }
    }
}
