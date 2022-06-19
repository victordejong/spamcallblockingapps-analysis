package com.truecaller.consentrefresh;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.amazon.device.ads.DTBMetricsConfiguration;
import com.amazon.device.ads.MraidCloseCommand;
import com.razorpay.AnalyticsConstants;
import com.truecaller.p183ui.TruecallerInit;
import kotlin.Metadata;
import p1727n3.p1859r.p1860a.C26907a;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1052m.AbstractC17867g;
import p193e.p194a.p1052m.AbstractC17878r;
import p193e.p194a.p1052m.AbstractC17886y;
import p193e.p194a.p1052m.C17844a;
import p193e.p194a.p1052m.C17861d;
import p193e.p194a.p682e.C12864a2;
import p193e.p194a.p682e.ProgressDialogC13310s0;
import s1.z.c.f;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0007\u0018�� \u00172\u00020\u00012\u00020\u00022\u00020\u0003:\u0001\u0018B\u0007¢\u0006\u0004\b\u0016\u0010\nJ\u0019\u0010\u0007\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0014¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\t\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\t\u0010\nJ\u0017\u0010\r\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u000f\u0010\nJ\u000f\u0010\u0010\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0010\u0010\nJ\u000f\u0010\u0011\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0011\u0010\nJ\u0017\u0010\u0014\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u0012H\u0002¢\u0006\u0004\b\u0014\u0010\u0015¨\u0006\u0019"}, d2 = {"Lcom/truecaller/consentrefresh/ConsentRefreshActivity;", "Ln3/b/a/h;", "Le/a/m/r;", "Le/a/m/g;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "l1", "()V", "", "url", C22021b.f61237c, "(Ljava/lang/String;)V", "h0", "C3", MraidCloseCommand.NAME, "Lcom/truecaller/consentrefresh/AdsChoicesFragmentConfig;", DTBMetricsConfiguration.CONFIG_DIR, "pa", "(Lcom/truecaller/consentrefresh/AdsChoicesFragmentConfig;)V", "<init>", "d", "a", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes7-dex2jar.jar:com/truecaller/consentrefresh/ConsentRefreshActivity.class */
public final class ConsentRefreshActivity extends AbstractC17886y implements AbstractC17878r, AbstractC17867g {

    /* renamed from: d */
    public static final C3743a f11306d = new C3743a(null);

    /* renamed from: com.truecaller.consentrefresh.ConsentRefreshActivity$a */
    /* loaded from: classes7-dex2jar.jar:com/truecaller/consentrefresh/ConsentRefreshActivity$a.class */
    public static final class C3743a {
        public C3743a(f fVar) {
        }

        /* renamed from: a */
        public final void m35615a(Context context, boolean z) {
            Intent m8581q0 = C22128a.m8581q0(context, AnalyticsConstants.CONTEXT, context, ConsentRefreshActivity.class);
            if (z) {
                m8581q0.putExtra("SettingsAdsChoices", true);
            }
            context.startActivity(m8581q0);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p1052m.AbstractC17878r
    /* renamed from: C3 */
    public void mo15741C3() {
        new ProgressDialogC13310s0(this).show();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p1052m.AbstractC17878r
    /* renamed from: b */
    public void mo15740b(String str) {
        l.e(str, "url");
        C12864a2.m22575S(this, str, false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p1052m.AbstractC17878r, p193e.p194a.p1052m.AbstractC17867g
    public void close() {
        finish();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p1052m.AbstractC17878r, p193e.p194a.p1052m.AbstractC17867g
    /* renamed from: h0 */
    public void mo15739h0() {
        TruecallerInit.m34568Ua(this, null);
    }

    @Override // p193e.p194a.p1052m.AbstractC17878r
    /* renamed from: l1 */
    public void mo15738l1() {
        m35616pa(AdsChoicesFragmentConfig.CONSENT_REFRESH);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onCreate(Bundle bundle) {
        ConsentRefreshActivity.super.onCreate(bundle);
        Intent intent = getIntent();
        if (C12864a2.m22540r(intent != null ? Boolean.valueOf(intent.hasExtra("SettingsAdsChoices")) : null)) {
            m35616pa(AdsChoicesFragmentConfig.SETTINGS);
            return;
        }
        C26907a c26907a = new C26907a(getSupportFragmentManager());
        c26907a.mo1122k(16908290, new C17844a(), null, 1);
        c26907a.m1123j();
        c26907a.mo1127f();
    }

    /* renamed from: pa */
    public final void m35616pa(AdsChoicesFragmentConfig adsChoicesFragmentConfig) {
        C26907a c26907a = new C26907a(getSupportFragmentManager());
        l.e(adsChoicesFragmentConfig, DTBMetricsConfiguration.CONFIG_DIR);
        Bundle bundle = new Bundle();
        bundle.putInt(DTBMetricsConfiguration.CONFIG_DIR, adsChoicesFragmentConfig.getValue());
        C17861d c17861d = new C17861d();
        c17861d.setArguments(bundle);
        c26907a.mo1122k(16908290, c17861d, null, 1);
        c26907a.mo1127f();
    }
}
