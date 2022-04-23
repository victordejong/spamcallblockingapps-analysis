package gogolook.callgogolook2.intro.iap;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import androidx.appcompat.app.AppCompatActivity;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import kotlin.Metadata;
import p459j.p460a.p582w0.p585b5.C13929c;
import p459j.p460a.p582w0.p585b5.C13930d;
import p459j.p460a.p582w0.p587d5.C13978e;
import p459j.p460a.p596x.p597k.C14388e;
import p459j.p460a.p596x.p597k.C14390g;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018�� \u00122\u00020\u00012\u00020\u0002:\u0001\u0012B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\b\u001a\u00020\tH\u0002J\b\u0010\n\u001a\u00020\tH\u0002J\u0012\u0010\u000b\u001a\u00020\t2\b\u0010\f\u001a\u0004\u0018\u00010\rH\u0014J\b\u0010\u000e\u001a\u00020\tH\u0014J\b\u0010\u000f\u001a\u00020\tH\u0016J\b\u0010\u0010\u001a\u00020\tH\u0016J\b\u0010\u0011\u001a\u00020\tH\u0014R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0013"}, m815d2 = {"Lgogolook/callgogolook2/intro/iap/IapPromoActivity;", "Landroidx/appcompat/app/AppCompatActivity;", "Lgogolook/callgogolook2/util/debug/TimeProbe$ProbeListener;", "()V", "source", "", "timeProbe", "Lgogolook/callgogolook2/util/debug/PageVisibilityTimeProbe;", "handleIntent", "", "init", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "onPause", "onProbeStarted", "onProbeStopped", "onResume", "Companion", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/intro/iap/IapPromoActivity.class */
public final class IapPromoActivity extends AppCompatActivity implements C13930d.AbstractC13931a {

    /* renamed from: c */
    public static final C4516a f10880c = new C4516a(null);

    /* renamed from: a */
    public final C13929c f10881a = new C13929c(this, false);

    /* renamed from: b */
    public String f10882b = "onboarding_v2";

    /* renamed from: gogolook.callgogolook2.intro.iap.IapPromoActivity$a */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/intro/iap/IapPromoActivity$a.class */
    public static final class C4516a {
        public C4516a() {
        }

        public /* synthetic */ C4516a(C15145g gVar) {
            this();
        }

        /* renamed from: a */
        public final Intent m28042a(Context context, String str) {
            C15149k.m377b(context, "context");
            Intent intent = new Intent(context, IapPromoActivity.class);
            if (str != null) {
                intent.putExtra("source", str);
            }
            return intent;
        }
    }

    /* renamed from: a */
    public static final Intent m28043a(Context context, String str) {
        return f10880c.m28042a(context, str);
    }

    /* renamed from: D */
    public final void m28045D() {
        String stringExtra;
        Intent intent = getIntent();
        if (intent != null && (stringExtra = intent.getStringExtra("source")) != null) {
            this.f10882b = stringExtra;
            if (C15149k.m384a((Object) "onboarding_v2", (Object) this.f10882b) || C15149k.m384a((Object) "open_app_v2", (Object) this.f10882b)) {
                C13978e.f31386a.m9459a("show_iap_open_app_promo_page_time", (String) Long.valueOf(System.currentTimeMillis()));
            }
        }
    }

    /* renamed from: E */
    public final void m28044E() {
        if (getSupportFragmentManager().findFragmentById(R$id.fragment_container) == null) {
            getSupportFragmentManager().beginTransaction().add(R$id.fragment_container, C14390g.f32223l.m1404a(this.f10882b)).commit();
        }
    }

    @Override // p459j.p460a.p582w0.p585b5.C13930d.AbstractC13931a
    /* renamed from: g */
    public void mo3016g() {
        C14388e.m1425a(this.f10882b);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R$layout.activity_intro_iap_promo);
        m28045D();
        m28044E();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        this.f10881a.m3029c(false);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        this.f10881a.m3029c(true);
    }

    @Override // p459j.p460a.p582w0.p585b5.C13930d.AbstractC13931a
    /* renamed from: r */
    public void mo3015r() {
        C14388e.m1423b(this.f10881a.m3022b());
        C14388e.m1424b();
    }
}
