package gogolook.callgogolook2.intro.registration;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Intent;
import android.graphics.Outline;
import android.os.Bundle;
import android.view.View;
import android.view.ViewOutlineProvider;
import butterknife.BindView;
import butterknife.ButterKnife;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.app.WhoscallActivity;
import p081h.p154f.AbstractC6128h;
import p081h.p154f.C6131k;
import p459j.p460a.p582w0.C13956d2;
import p459j.p460a.p582w0.C14017g4;
import p459j.p460a.p582w0.C14092n3;
import p459j.p460a.p582w0.C14217x3;
import p459j.p460a.p582w0.p583a5.C13891a;
import p459j.p460a.p582w0.p590x4.C14261f;
import p459j.p460a.p596x.C14376j;
import p459j.p460a.p596x.p598l.AbstractC14418f;
import p459j.p460a.p596x.p598l.C14409c;
import p459j.p460a.p596x.p598l.C14416d;
import p459j.p460a.p613z0.p617p.C14687h;
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/intro/registration/RegistrationActivity.class */
public class RegistrationActivity extends WhoscallActivity {

    /* renamed from: e */
    public Activity f10883e;

    /* renamed from: f */
    public C13956d2 f10884f;

    /* renamed from: g */
    public AbstractC14418f f10885g = null;

    /* renamed from: h */
    public String f10886h = EnumC4523g.UNKNOWN.name();

    /* renamed from: i */
    public AbstractC6128h f10887i = new C4517a();
    @BindView(R$id.btn_facebook)
    public View mBtnFbLogin;
    @BindView(R$id.btn_google)
    public View mBtnGoogleLogin;
    @BindView(R$id.btn_skip)
    public View mBtnSkip;

    /* renamed from: gogolook.callgogolook2.intro.registration.RegistrationActivity$a */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/intro/registration/RegistrationActivity$a.class */
    public class C4517a implements AbstractC6128h {
        public C4517a() {
        }

        @Override // p081h.p154f.AbstractC6128h
        /* renamed from: a */
        public void mo2982a(C6131k kVar) {
            C14261f.m1977a(C14261f.EnumC14267f.facebook, RegistrationActivity.this.f10886h, C14261f.EnumC14268g.fail);
        }

        @Override // p081h.p154f.AbstractC6128h
        /* renamed from: a */
        public void mo2981a(Object obj) {
            C14261f.m1977a(C14261f.EnumC14267f.facebook, RegistrationActivity.this.f10886h, C14261f.EnumC14268g.success);
        }

        @Override // p081h.p154f.AbstractC6128h
        public void onCancel() {
            C14261f.m1977a(C14261f.EnumC14267f.facebook, RegistrationActivity.this.f10886h, C14261f.EnumC14268g.fail);
        }
    }

    /* renamed from: gogolook.callgogolook2.intro.registration.RegistrationActivity$b */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/intro/registration/RegistrationActivity$b.class */
    public class View$OnClickListenerC4518b implements View.OnClickListener {
        public View$OnClickListenerC4518b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            C14376j.m1454b(RegistrationActivity.this.f10883e);
            C14261f.m1963d(RegistrationActivity.this.f10886h);
        }
    }

    /* renamed from: gogolook.callgogolook2.intro.registration.RegistrationActivity$c */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/intro/registration/RegistrationActivity$c.class */
    public class C4519c extends ViewOutlineProvider {
        public C4519c(RegistrationActivity registrationActivity) {
        }

        @Override // android.view.ViewOutlineProvider
        @TargetApi(21)
        public void getOutline(View view, Outline outline) {
            outline.setRoundRect(0, 0, view.getWidth(), view.getHeight(), C14217x3.m2201a(5.0f));
        }
    }

    /* renamed from: gogolook.callgogolook2.intro.registration.RegistrationActivity$d */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/intro/registration/RegistrationActivity$d.class */
    public class View$OnClickListenerC4520d implements View.OnClickListener {
        public View$OnClickListenerC4520d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            C14261f.m1978a(C14261f.EnumC14267f.facebook, RegistrationActivity.this.f10886h);
            if (!C14217x3.m2137h(RegistrationActivity.this.f10883e)) {
                C14261f.m1977a(C14261f.EnumC14267f.facebook, RegistrationActivity.this.f10886h, C14261f.EnumC14268g.no_network);
                C14687h.m861a(RegistrationActivity.this.f10883e, WhoscallActivity.m28686b(R$string.error_code_nointernet), 1).m858c();
                return;
            }
            RegistrationActivity.this.f10884f.m2995a(RegistrationActivity.this.f10883e, RegistrationActivity.this.f10887i, true);
        }
    }

    /* renamed from: gogolook.callgogolook2.intro.registration.RegistrationActivity$e */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/intro/registration/RegistrationActivity$e.class */
    public class View$OnClickListenerC4521e implements View.OnClickListener {
        public View$OnClickListenerC4521e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            C14261f.m1978a(C14261f.EnumC14267f.google, RegistrationActivity.this.f10886h);
            if (!C14217x3.m2137h(RegistrationActivity.this.f10883e)) {
                C14261f.m1977a(C14261f.EnumC14267f.google, RegistrationActivity.this.f10886h, C14261f.EnumC14268g.no_network);
                C14687h.m861a(RegistrationActivity.this.f10883e, WhoscallActivity.m28686b(R$string.error_code_nointernet), 1).m858c();
            } else if (RegistrationActivity.this.f10885g != null) {
                RegistrationActivity.this.f10885g.mo1372a();
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.intro.registration.RegistrationActivity$f */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/intro/registration/RegistrationActivity$f.class */
    public static /* synthetic */ class C4522f {

        /* renamed from: a */
        public static final /* synthetic */ int[] f10892a = new int[EnumC4523g.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x004d -> B:31:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x0051 -> B:27:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0055 -> B:25:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x0059 -> B:21:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x005d -> B:29:0x0040). Please submit an issue!!! */
        static {
            try {
                f10892a[EnumC4523g.WHOSCALL_CARD.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f10892a[EnumC4523g.WHOSCALL_CARD_CHANGE_NUMBER.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f10892a[EnumC4523g.SPAM_HAMMER.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f10892a[EnumC4523g.INTRO.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f10892a[EnumC4523g.IAP.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f10892a[EnumC4523g.OFFLINE_DB.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.intro.registration.RegistrationActivity$g */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/intro/registration/RegistrationActivity$g.class */
    public enum EnumC4523g {
        WHOSCALL_CARD,
        WHOSCALL_CARD_CHANGE_NUMBER,
        SPAM_HAMMER,
        INTRO,
        IAP,
        OFFLINE_DB,
        UNKNOWN
    }

    /* renamed from: o */
    public final void m28037o() {
        if (getIntent() != null) {
            EnumC4523g gVar = EnumC4523g.UNKNOWN;
            if (getIntent().getSerializableExtra("USER_FROM") instanceof EnumC4523g) {
                gVar = (EnumC4523g) getIntent().getSerializableExtra("USER_FROM");
            }
            switch (C4522f.f10892a[gVar.ordinal()]) {
                case 1:
                case 2:
                    this.f10886h = "whoscall_card";
                    break;
                case 3:
                    this.f10886h = "spamhammer";
                    break;
                case 4:
                    this.f10886h = "intro";
                    break;
                case 5:
                    this.f10886h = "iap_ad_free";
                    break;
                case 6:
                    this.f10886h = "offline_db";
                    break;
                default:
                    this.f10886h = "unknown";
                    break;
            }
            C14261f.m1966c(this.f10886h);
        }
    }

    @Override // android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        this.f10884f.m2997a(i, i2, intent);
        AbstractC14418f fVar = this.f10885g;
        if (fVar != null && fVar.mo1381a(i, i2, intent)) {
            C14261f.m1977a(C14261f.EnumC14267f.google, this.f10886h, i2 == -1 ? C14261f.EnumC14268g.success : C14261f.EnumC14268g.fail);
        }
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        super.onBackPressed();
    }

    @Override // gogolook.callgogolook2.app.WhoscallActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        m28683i().m6031d();
        setContentView(R$layout.activity_registration);
        ButterKnife.bind(this);
        this.f10883e = this;
        this.f10884f = new C13956d2();
        this.f10885g = new C14409c(new C14416d(this, this));
        m28037o();
        m28036p();
    }

    @Override // android.app.Activity
    public void onDestroy() {
        super.onDestroy();
    }

    /* renamed from: p */
    public final void m28036p() {
        C14092n3.m2583b("gmailAccount", "");
        if (C14217x3.m2107z() || C13891a.m3161c(C14017g4.m2810n())) {
            this.mBtnSkip.setVisibility(4);
        } else {
            this.mBtnSkip.setVisibility(0);
            this.mBtnSkip.setOnClickListener(new View$OnClickListenerC4518b());
        }
        if (C14017g4.m2805s()) {
            this.mBtnFbLogin.setOutlineProvider(new C4519c(this));
        }
        this.mBtnFbLogin.setOnClickListener(new View$OnClickListenerC4520d());
        this.mBtnGoogleLogin.setOnClickListener(new View$OnClickListenerC4521e());
        if (getIntent().getBooleanExtra("INTENT_SHOW_DIALOG", false)) {
            m28678n();
        }
    }
}
