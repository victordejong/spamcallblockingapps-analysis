package gogolook.callgogolook2.p074ad;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.RelativeLayout;
import androidx.appcompat.app.AppCompatActivity;
import com.mopub.nativeads.BaseNativeAdRenderer;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.gson.CallAction;
import java.util.HashMap;
import kotlin.Metadata;
import p081h.p160h.p161a.p162h.AbstractC6207d;
import p081h.p160h.p161a.p163i.C6214a;
import p081h.p160h.p161a.p169o.C6262a;
import p459j.p460a.p582w0.p590x4.C14247d;
import p626l.C14989s;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018�� \u00122\u00020\u0001:\u0001\u0012B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0007\u001a\u00020\bH\u0016J\b\u0010\t\u001a\u00020\bH\u0016J\u0012\u0010\n\u001a\u00020\b2\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0014J\b\u0010\r\u001a\u00020\bH\u0014J\b\u0010\u000e\u001a\u00020\bH\u0014J\b\u0010\u000f\u001a\u00020\bH\u0014J\u0010\u0010\u0010\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u0006H\u0002J\b\u0010\u0011\u001a\u00020\bH\u0002R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082.¢\u0006\u0002\n��¨\u0006\u0013"}, m815d2 = {"Lgogolook/callgogolook2/ad/AdActivity;", "Landroidx/appcompat/app/AppCompatActivity;", "()V", "adObject", "Lcom/gogolook/adsdk/adobject/BaseAdObject;", "adUnit", "Lgogolook/callgogolook2/ad/AdUnit;", "finish", "", "onBackPressed", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "onDestroy", "onStart", "onStop", "showAd", "trackAdContent", "Companion", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: gogolook.callgogolook2.ad.AdActivity */
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/ad/AdActivity.class */
public final class AdActivity extends AppCompatActivity {
    public static final Companion Companion = new Companion(null);
    public static final String EXTRA_AD_UNIT_NAME = "gogolook.callgogolook2.ad.FUllAdActivity.extra_ad_unit_name";
    public static final String TAG = "AdActivity";
    public HashMap _$_findViewCache;
    public AbstractC6207d adObject;
    public AdUnit adUnit;

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0014\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��¨\u0006\u0006"}, m815d2 = {"Lgogolook/callgogolook2/ad/AdActivity$Companion;", "", "()V", "EXTRA_AD_UNIT_NAME", "", CallAction.DONE_TAG, "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
    /* renamed from: gogolook.callgogolook2.ad.AdActivity$Companion */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/ad/AdActivity$Companion.class */
    public static final class Companion {
        public Companion() {
        }

        public /* synthetic */ Companion(C15145g gVar) {
            this();
        }
    }

    /* renamed from: a */
    public static final /* synthetic */ AdUnit m28873a(AdActivity adActivity) {
        AdUnit adUnit = adActivity.adUnit;
        if (adUnit != null) {
            return adUnit;
        }
        C15149k.m373d("adUnit");
        throw null;
    }

    /* renamed from: D */
    public final void m28874D() {
        AbstractC6207d dVar = this.adObject;
        if (dVar != null) {
            C14247d.C14259l lVar = C14247d.f31867v;
            AdUnit adUnit = this.adUnit;
            if (adUnit != null) {
                lVar.m2038a(adUnit, dVar);
            } else {
                C15149k.m373d("adUnit");
                throw null;
            }
        }
    }

    /* renamed from: a */
    public final void m28872a(final AdUnit adUnit) {
        AbstractC6207d b = C6214a.m23564b(adUnit.m28821a());
        if (b != null) {
            this.adObject = b;
            m28874D();
            b.mo23569a(new AbstractC6207d.AbstractC6208a() { // from class: gogolook.callgogolook2.ad.AdActivity$showAd$$inlined$apply$lambda$1
                @Override // p081h.p160h.p161a.p162h.AbstractC6207d.AbstractC6208a
                /* renamed from: a */
                public void mo5002a() {
                    C14247d.f31867v.m2039a(adUnit, 0);
                    C14247d.f31867v.m2028c(adUnit);
                    AdActivity.this.finish();
                }

                @Override // p081h.p160h.p161a.p162h.AbstractC6207d.AbstractC6208a
                public void onAdImpression() {
                    C14247d.f31867v.m2025d(adUnit);
                }
            });
            b.mo23570a(new BaseNativeAdRenderer.AdCustomActionListener() { // from class: gogolook.callgogolook2.ad.AdActivity$showAd$$inlined$apply$lambda$2
                @Override // com.mopub.nativeads.BaseNativeAdRenderer.AdCustomActionListener
                public void onAdClosed() {
                    C14247d.f31867v.m2039a(adUnit, 1);
                    AdActivity.this.finish();
                }
            });
            b.mo23572a(this, (RelativeLayout) m28871e(R$id.rl_ad_container));
            AdUtils.m28812a(adUnit);
            if (b != null) {
                return;
            }
        }
        C14247d.f31867v.m2037a(adUnit, C6262a.EnumC6266d.ERROR_AD_CACHE_IS_EMPTY.name());
        finish();
        C14989s sVar = C14989s.f33022a;
    }

    /* renamed from: e */
    public View m28871e(int i) {
        if (this._$_findViewCache == null) {
            this._$_findViewCache = new HashMap();
        }
        View view = (View) this._$_findViewCache.get(Integer.valueOf(i));
        View view2 = view;
        if (view == null) {
            view2 = findViewById(i);
            this._$_findViewCache.put(Integer.valueOf(i), view2);
        }
        return view2;
    }

    @Override // android.app.Activity
    public void finish() {
        super.finish();
        overridePendingTransition(0, 17432577);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        AdUnit adUnit;
        setRequestedOrientation(3);
        super.onCreate(bundle);
        int i = 0;
        overridePendingTransition(17432576, 0);
        setContentView(R$layout.activity_ad);
        Intent intent = getIntent();
        if (intent != null) {
            if (!intent.hasExtra(EXTRA_AD_UNIT_NAME)) {
                intent = null;
            }
            if (intent != null) {
                String stringExtra = intent.getStringExtra(EXTRA_AD_UNIT_NAME);
                if (stringExtra != null) {
                    AdUnit[] values = AdUnit.values();
                    int length = values.length;
                    while (true) {
                        if (i >= length) {
                            adUnit = null;
                            break;
                        }
                        adUnit = values[i];
                        if (C15149k.m384a((Object) adUnit.m28821a(), (Object) stringExtra)) {
                            break;
                        }
                        i++;
                    }
                    if (adUnit != null) {
                        this.adUnit = adUnit;
                        C14247d.f31867v.m2040a(adUnit);
                        AdUnit adUnit2 = this.adUnit;
                        if (adUnit2 != null) {
                            m28872a(adUnit2);
                        } else {
                            C15149k.m373d("adUnit");
                            throw null;
                        }
                    }
                }
                if (intent != null) {
                    return;
                }
            }
        }
        finish();
        C14989s sVar = C14989s.f33022a;
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        AbstractC6207d dVar = this.adObject;
        if (dVar != null) {
            dVar.mo23568b();
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStart() {
        super.onStart();
        AdUnit adUnit = this.adUnit;
        if (adUnit != null) {
            C14247d.C14259l lVar = C14247d.f31867v;
            if (adUnit != null) {
                lVar.m2040a(adUnit);
                m28874D();
                return;
            }
            C15149k.m373d("adUnit");
            throw null;
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStop() {
        super.onStop();
        AdUnit adUnit = this.adUnit;
        if (adUnit != null) {
            C14247d.C14259l lVar = C14247d.f31867v;
            if (adUnit != null) {
                lVar.m2031b(adUnit);
            } else {
                C15149k.m373d("adUnit");
                throw null;
            }
        }
    }
}
