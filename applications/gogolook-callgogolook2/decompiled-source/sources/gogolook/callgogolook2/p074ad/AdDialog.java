package gogolook.callgogolook2.p074ad;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.widget.RelativeLayout;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleObserver;
import androidx.lifecycle.OnLifecycleEvent;
import com.mopub.nativeads.BaseNativeAdRenderer;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.gson.CallAction;
import kotlin.Metadata;
import p081h.p160h.p161a.p162h.AbstractC6207d;
import p081h.p160h.p161a.p163i.C6214a;
import p081h.p160h.p161a.p169o.C6262a;
import p459j.p460a.p582w0.p590x4.C14247d;
import p626l.C14989s;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��2\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018�� \u00142\u00020\u00012\u00020\u0002:\u0001\u0014B\u0015\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\b\u0010\n\u001a\u00020\u000bH\u0007J\b\u0010\f\u001a\u00020\u000bH\u0007J\u0012\u0010\r\u001a\u00020\u000b2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0014J\b\u0010\u0010\u001a\u00020\u000bH\u0014J\b\u0010\u0011\u001a\u00020\u000bH\u0002J\b\u0010\u0012\u001a\u00020\u000bH\u0002J\b\u0010\u0013\u001a\u00020\u000bH\u0002R\u0010\u0010\b\u001a\u0004\u0018\u00010\tX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0015"}, m815d2 = {"Lgogolook/callgogolook2/ad/AdDialog;", "Landroid/app/Dialog;", "Landroidx/lifecycle/LifecycleObserver;", "context", "Landroid/content/Context;", "adUnit", "Lgogolook/callgogolook2/ad/AdUnit;", "(Landroid/content/Context;Lgogolook/callgogolook2/ad/AdUnit;)V", "adObject", "Lcom/gogolook/adsdk/adobject/BaseAdObject;", "onActivityStart", "", "onActivityStop", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "onStop", "setup", "showAd", "trackAdContent", "Companion", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: gogolook.callgogolook2.ad.AdDialog */
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/ad/AdDialog.class */
public final class AdDialog extends Dialog implements LifecycleObserver {
    public static final Companion Companion = new Companion(null);
    public static final String TAG = "AdDialog";
    public AbstractC6207d adObject;
    public final AdUnit adUnit;

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��¨\u0006\u0005"}, m815d2 = {"Lgogolook/callgogolook2/ad/AdDialog$Companion;", "", "()V", CallAction.DONE_TAG, "", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
    /* renamed from: gogolook.callgogolook2.ad.AdDialog$Companion */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/ad/AdDialog$Companion.class */
    public static final class Companion {
        public Companion() {
        }

        public /* synthetic */ Companion(C15145g gVar) {
            this();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AdDialog(Context context, AdUnit adUnit) {
        super(context, 16973840);
        C15149k.m377b(context, "context");
        C15149k.m377b(adUnit, "adUnit");
        this.adUnit = adUnit;
    }

    /* renamed from: a */
    public final void m28863a() {
        setContentView(R$layout.dialog_ad);
        setCancelable(false);
        C14247d.f31867v.m2040a(this.adUnit);
        m28861b();
    }

    /* renamed from: b */
    public final void m28861b() {
        AbstractC6207d b = C6214a.m23564b(this.adUnit.m28821a());
        if (b != null) {
            this.adObject = b;
            m28860c();
            b.mo23569a(new AbstractC6207d.AbstractC6208a() { // from class: gogolook.callgogolook2.ad.AdDialog$showAd$$inlined$apply$lambda$1
                @Override // p081h.p160h.p161a.p162h.AbstractC6207d.AbstractC6208a
                /* renamed from: a */
                public void mo5002a() {
                    AdUnit adUnit;
                    AdUnit adUnit2;
                    C14247d.C14259l lVar = C14247d.f31867v;
                    adUnit = AdDialog.this.adUnit;
                    lVar.m2039a(adUnit, 0);
                    C14247d.C14259l lVar2 = C14247d.f31867v;
                    adUnit2 = AdDialog.this.adUnit;
                    lVar2.m2028c(adUnit2);
                    AdDialog.this.dismiss();
                }

                @Override // p081h.p160h.p161a.p162h.AbstractC6207d.AbstractC6208a
                public void onAdImpression() {
                    AdUnit adUnit;
                    C14247d.C14259l lVar = C14247d.f31867v;
                    adUnit = AdDialog.this.adUnit;
                    lVar.m2025d(adUnit);
                }
            });
            b.mo23570a(new BaseNativeAdRenderer.AdCustomActionListener() { // from class: gogolook.callgogolook2.ad.AdDialog$showAd$$inlined$apply$lambda$2
                @Override // com.mopub.nativeads.BaseNativeAdRenderer.AdCustomActionListener
                public void onAdClosed() {
                    AdUnit adUnit;
                    C14247d.C14259l lVar = C14247d.f31867v;
                    adUnit = AdDialog.this.adUnit;
                    lVar.m2039a(adUnit, 1);
                    AdDialog.this.dismiss();
                }
            });
            b.mo23572a(getContext(), (RelativeLayout) findViewById(R$id.rl_ad_container));
            AdUtils.m28812a(this.adUnit);
            if (b != null) {
                return;
            }
        }
        C14247d.f31867v.m2037a(this.adUnit, C6262a.EnumC6266d.ERROR_AD_CACHE_IS_EMPTY.name());
        dismiss();
        C14989s sVar = C14989s.f33022a;
    }

    /* renamed from: c */
    public final void m28860c() {
        AbstractC6207d dVar = this.adObject;
        if (dVar != null) {
            C14247d.f31867v.m2038a(this.adUnit, dVar);
        }
    }

    @OnLifecycleEvent(Lifecycle.Event.ON_START)
    public final void onActivityStart() {
        C14247d.f31867v.m2040a(this.adUnit);
        m28860c();
    }

    @OnLifecycleEvent(Lifecycle.Event.ON_STOP)
    public final void onActivityStop() {
        C14247d.f31867v.m2031b(this.adUnit);
    }

    @Override // android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        m28863a();
    }

    @Override // android.app.Dialog
    public void onStop() {
        super.onStop();
        C14247d.f31867v.m2031b(this.adUnit);
        AbstractC6207d dVar = this.adObject;
        if (dVar != null) {
            dVar.mo23568b();
        }
    }
}
