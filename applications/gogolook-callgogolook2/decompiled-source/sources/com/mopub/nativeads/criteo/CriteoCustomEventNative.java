package com.mopub.nativeads.criteo;

import android.app.Application;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import androidx.media2.exoplayer.external.util.MimeTypes;
import com.criteo.publisher.Criteo;
import com.criteo.publisher.CriteoErrorCode;
import com.criteo.publisher.CriteoInitException;
import com.criteo.publisher.advancednative.CriteoInternalMethodUtils;
import com.criteo.publisher.advancednative.CriteoMedia;
import com.criteo.publisher.advancednative.CriteoNativeAd;
import com.criteo.publisher.advancednative.CriteoNativeAdListener;
import com.criteo.publisher.advancednative.CriteoNativeLoader;
import com.criteo.publisher.advancednative.CriteoNativeRenderer;
import com.criteo.publisher.advancednative.RendererHelper;
import com.criteo.publisher.model.AdUnit;
import com.criteo.publisher.model.NativeAdUnit;
import com.mopub.common.MoPub;
import com.mopub.common.privacy.ConsentStatus;
import com.mopub.common.privacy.PersonalInfoManager;
import com.mopub.nativeads.BaseCustomEventNative;
import com.mopub.nativeads.CustomEventNative;
import com.mopub.nativeads.NativeErrorCode;
import com.mopub.nativeads.StaticNativeAd;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import p081h.p160h.p161a.p165k.C6219a;
import p081h.p160h.p161a.p168n.C6260a;
import p081h.p160h.p161a.p169o.C6262a;
import p626l.C14989s;
import p626l.p632u.C15020l;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010%\n\u0002\u0010��\n\u0002\b\u0006\u0018�� \u00152\u00020\u0001:\u0004\u0015\u0016\u0017\u0018B\u0005¢\u0006\u0002\u0010\u0002J&\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\nH\u0002J@\u0010\f\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0012\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\u00130\u00122\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\b0\u0012H\u0014¨\u0006\u0019"}, m815d2 = {"Lcom/mopub/nativeads/criteo/CriteoCustomEventNative;", "Lcom/mopub/nativeads/BaseCustomEventNative;", "()V", "initCriteo", "", MimeTypes.BASE_TYPE_APPLICATION, "Landroid/app/Application;", "criteoPublishId", "", "adUnits", "", "Lcom/criteo/publisher/model/AdUnit;", "loadNativeAd", "context", "Landroid/content/Context;", "customEventNativeListener", "Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;", "localExtras", "", "", "serverExtras", "Companion", "CriteoNativeAdEventListener", "CriteoStaticNativeAd", "NoOpNativeRenderer", "adsdk_whoscallRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/criteo/CriteoCustomEventNative.class */
public final class CriteoCustomEventNative extends BaseCustomEventNative {
    public static final Companion Companion = new Companion(null);

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0014\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��¨\u0006\u0006"}, m815d2 = {"Lcom/mopub/nativeads/criteo/CriteoCustomEventNative$Companion;", "", "()V", "ADUNIT_ID", "", "CRITEO_PUBLISHER_ID", "adsdk_whoscallRelease"}, m814k = 1, m813mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/criteo/CriteoCustomEventNative$Companion.class */
    public static final class Companion {
        public Companion() {
        }

        public /* synthetic */ Companion(C15145g gVar) {
            this();
        }
    }

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\b��\u0018��2\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\b\u0010\u000b\u001a\u00020\fH\u0016J\b\u0010\r\u001a\u00020\fH\u0016J\u0010\u0010\u000e\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\b\u0010\u0011\u001a\u00020\fH\u0016J\b\u0010\u0012\u001a\u00020\fH\u0016J\u0010\u0010\u0013\u001a\u00020\f2\u0006\u0010\u0014\u001a\u00020\u0015H\u0016R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0016"}, m815d2 = {"Lcom/mopub/nativeads/criteo/CriteoCustomEventNative$CriteoNativeAdEventListener;", "Lcom/criteo/publisher/advancednative/CriteoNativeAdListener;", "adUnitName", "", "adFetchLog", "Lcom/gogolook/adsdk/logs/AdFetchLog;", "customEventNativeListener", "Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;", "(Ljava/lang/String;Lcom/gogolook/adsdk/logs/AdFetchLog;Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;)V", "criteoStaticNativeAd", "Lcom/mopub/nativeads/criteo/CriteoCustomEventNative$CriteoStaticNativeAd;", "onAdClicked", "", "onAdClosed", "onAdFailedToReceive", "errorCode", "Lcom/criteo/publisher/CriteoErrorCode;", "onAdImpression", "onAdLeftApplication", "onAdReceived", "criteoNativeAd", "Lcom/criteo/publisher/advancednative/CriteoNativeAd;", "adsdk_whoscallRelease"}, m814k = 1, m813mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/criteo/CriteoCustomEventNative$CriteoNativeAdEventListener.class */
    public static final class CriteoNativeAdEventListener extends CriteoNativeAdListener {

        /* renamed from: a */
        public CriteoStaticNativeAd f9333a;

        /* renamed from: b */
        public final String f9334b;

        /* renamed from: c */
        public final C6260a f9335c;

        /* renamed from: d */
        public final CustomEventNative.CustomEventNativeListener f9336d;

        @Metadata(m817bv = {1, 0, 3}, m814k = 3, m813mv = {1, 1, 13})
        /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/criteo/CriteoCustomEventNative$CriteoNativeAdEventListener$WhenMappings.class */
        public final /* synthetic */ class WhenMappings {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0 = new int[CriteoErrorCode.values().length];

            static {
                $EnumSwitchMapping$0[CriteoErrorCode.ERROR_CODE_NO_FILL.ordinal()] = 1;
                $EnumSwitchMapping$0[CriteoErrorCode.ERROR_CODE_NETWORK_ERROR.ordinal()] = 2;
                $EnumSwitchMapping$0[CriteoErrorCode.ERROR_CODE_INVALID_REQUEST.ordinal()] = 3;
            }
        }

        public CriteoNativeAdEventListener(String str, C6260a aVar, CustomEventNative.CustomEventNativeListener customEventNativeListener) {
            C15149k.m377b(str, "adUnitName");
            C15149k.m377b(customEventNativeListener, "customEventNativeListener");
            this.f9334b = str;
            this.f9335c = aVar;
            this.f9336d = customEventNativeListener;
        }

        @Override // com.criteo.publisher.advancednative.CriteoNativeAdListener
        public void onAdClicked() {
            C6219a.m23541b("Criteo", this.f9334b, "CriteoNativeAdEventListener#onAdClicked()");
            CriteoStaticNativeAd criteoStaticNativeAd = this.f9333a;
            if (criteoStaticNativeAd != null) {
                criteoStaticNativeAd.onAdClicked$adsdk_whoscallRelease();
            }
        }

        @Override // com.criteo.publisher.advancednative.CriteoNativeAdListener
        public void onAdClosed() {
        }

        @Override // com.criteo.publisher.advancednative.CriteoNativeAdListener
        public void onAdFailedToReceive(CriteoErrorCode criteoErrorCode) {
            String str;
            C15149k.m377b(criteoErrorCode, "errorCode");
            int i = WhenMappings.$EnumSwitchMapping$0[criteoErrorCode.ordinal()];
            NativeErrorCode nativeErrorCode = i != 1 ? i != 2 ? i != 3 ? NativeErrorCode.UNSPECIFIED : NativeErrorCode.NETWORK_INVALID_REQUEST : NativeErrorCode.NETWORK_INVALID_STATE : NativeErrorCode.NETWORK_NO_FILL;
            C6260a aVar = this.f9335c;
            if (aVar != null) {
                if (nativeErrorCode == NativeErrorCode.UNSPECIFIED) {
                    str = C6260a.f15494k.m23452a(nativeErrorCode.name(), criteoErrorCode.name());
                } else {
                    str = nativeErrorCode.toString();
                    C15149k.m383a((Object) str, "moPubNativeErrorCode.toString()");
                }
                aVar.m23467b(str);
            }
            this.f9336d.onNativeAdFailed(nativeErrorCode);
        }

        @Override // com.criteo.publisher.advancednative.CriteoNativeAdListener
        public void onAdImpression() {
            C6219a.m23541b("Criteo", this.f9334b, "CriteoNativeAdEventListener#onAdImpressed()");
            CriteoStaticNativeAd criteoStaticNativeAd = this.f9333a;
            if (criteoStaticNativeAd != null) {
                criteoStaticNativeAd.onAdImpressed$adsdk_whoscallRelease();
            }
        }

        @Override // com.criteo.publisher.advancednative.CriteoNativeAdListener
        public void onAdLeftApplication() {
        }

        @Override // com.criteo.publisher.advancednative.CriteoNativeAdListener
        public void onAdReceived(CriteoNativeAd criteoNativeAd) {
            C15149k.m377b(criteoNativeAd, "criteoNativeAd");
            CriteoStaticNativeAd criteoStaticNativeAd = new CriteoStaticNativeAd(this.f9334b, criteoNativeAd, this);
            C6260a aVar = this.f9335c;
            if (aVar != null) {
                aVar.m23467b(C6262a.EnumC6263a.NETWORK_FILL.name());
            }
            this.f9336d.onNativeAdLoaded(criteoStaticNativeAd);
            this.f9333a = criteoStaticNativeAd;
        }
    }

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018��2\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\bJ\b\u0010\u000b\u001a\u00020\fH\u0016J\r\u0010\r\u001a\u00020\fH��¢\u0006\u0002\b\u000eJ\r\u0010\u000f\u001a\u00020\fH��¢\u0006\u0002\b\u0010J\u000e\u0010\u0011\u001a\u00020\f2\u0006\u0010\u0012\u001a\u00020\u0013J\u000e\u0010\u0014\u001a\u00020\f2\u0006\u0010\u0012\u001a\u00020\u0013R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n��\u001a\u0004\b\t\u0010\nR\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e¢\u0006\u0002\n��¨\u0006\u0015"}, m815d2 = {"Lcom/mopub/nativeads/criteo/CriteoCustomEventNative$CriteoStaticNativeAd;", "Lcom/mopub/nativeads/StaticNativeAd;", "adUnitName", "", "criteoNativeAd", "Lcom/criteo/publisher/advancednative/CriteoNativeAd;", "criteoNativeAdEventListener", "Lcom/criteo/publisher/advancednative/CriteoNativeAdListener;", "(Ljava/lang/String;Lcom/criteo/publisher/advancednative/CriteoNativeAd;Lcom/criteo/publisher/advancednative/CriteoNativeAdListener;)V", "getCriteoNativeAd", "()Lcom/criteo/publisher/advancednative/CriteoNativeAd;", "destroy", "", "onAdClicked", "onAdClicked$adsdk_whoscallRelease", "onAdImpressed", "onAdImpressed$adsdk_whoscallRelease", "renderNativeView", "view", "Landroid/view/View;", "setAdChoiceClickableView", "adsdk_whoscallRelease"}, m814k = 1, m813mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/criteo/CriteoCustomEventNative$CriteoStaticNativeAd.class */
    public static final class CriteoStaticNativeAd extends StaticNativeAd {

        /* renamed from: p */
        public final String f9337p;

        /* renamed from: q */
        public final CriteoNativeAd f9338q;

        /* renamed from: r */
        public CriteoNativeAdListener f9339r;

        public CriteoStaticNativeAd(String str, CriteoNativeAd criteoNativeAd, CriteoNativeAdListener criteoNativeAdListener) {
            C15149k.m377b(str, "adUnitName");
            C15149k.m377b(criteoNativeAd, "criteoNativeAd");
            this.f9337p = str;
            this.f9338q = criteoNativeAd;
            this.f9339r = criteoNativeAdListener;
            CriteoNativeAd criteoNativeAd2 = this.f9338q;
            setTitle(criteoNativeAd2.getTitle());
            setText(criteoNativeAd2.getDescription());
            setCallToAction(criteoNativeAd2.getCallToAction());
            CriteoInternalMethodUtils criteoInternalMethodUtils = CriteoInternalMethodUtils.INSTANCE;
            CriteoMedia productMedia = criteoNativeAd2.getProductMedia();
            C15149k.m383a((Object) productMedia, "productMedia");
            setMainImageUrl(criteoInternalMethodUtils.getMediaUrl(productMedia).toString());
            CriteoMedia advertiserLogoMedia = criteoNativeAd2.getAdvertiserLogoMedia();
            C15149k.m383a((Object) advertiserLogoMedia, "advertiserLogoMedia");
            setIconImageUrl(criteoInternalMethodUtils.getMediaUrl(advertiserLogoMedia).toString());
            setPrivacyInformationIconImageUrl(CriteoInternalMethodUtils.AD_CHOICE_ICON_URL);
        }

        @Override // com.mopub.nativeads.StaticNativeAd, com.mopub.nativeads.BaseNativeAd
        public void destroy() {
            super.destroy();
            CriteoNativeAdListener criteoNativeAdListener = this.f9339r;
            if (criteoNativeAdListener != null) {
                CriteoListenerManager.INSTANCE.clearCriteoNativeAdListener(criteoNativeAdListener);
            }
            this.f9339r = null;
        }

        public final CriteoNativeAd getCriteoNativeAd() {
            return this.f9338q;
        }

        public final void onAdClicked$adsdk_whoscallRelease() {
            C6219a.m23541b("Criteo", this.f9337p, "CriteoStaticNativeAd#onAdClicked");
            notifyAdClicked();
        }

        public final void onAdImpressed$adsdk_whoscallRelease() {
            C6219a.m23541b("Criteo", this.f9337p, "CriteoStaticNativeAd#onAdImpressed()");
            notifyAdImpressed();
        }

        public final void renderNativeView(View view) {
            C15149k.m377b(view, "view");
            this.f9338q.renderNativeView(view);
        }

        public final void setAdChoiceClickableView(View view) {
            C15149k.m377b(view, "view");
            CriteoInternalMethodUtils.INSTANCE.setAdChoiceClickableView(this.f9338q, view);
        }
    }

    /* renamed from: com.mopub.nativeads.criteo.CriteoCustomEventNative$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/criteo/CriteoCustomEventNative$a.class */
    public static final class C4023a implements CriteoNativeRenderer {
        @Override // com.criteo.publisher.advancednative.CriteoNativeRenderer
        public View createNativeView(Context context, ViewGroup viewGroup) {
            C15149k.m377b(context, "context");
            return new View(context);
        }

        @Override // com.criteo.publisher.advancednative.CriteoNativeRenderer
        public void renderNativeView(RendererHelper rendererHelper, View view, CriteoNativeAd criteoNativeAd) {
            C15149k.m377b(rendererHelper, "p0");
            C15149k.m377b(view, "p1");
            C15149k.m377b(criteoNativeAd, "p2");
        }
    }

    /* renamed from: a */
    public final void m30047a(Application application, String str, List<? extends AdUnit> list) {
        ConsentStatus personalInfoConsentStatus;
        Criteo.Builder adUnits = new Criteo.Builder(application, str).adUnits(list);
        PersonalInfoManager personalInformationManager = MoPub.getPersonalInformationManager();
        Criteo criteo = null;
        String name = (personalInformationManager == null || (personalInfoConsentStatus = personalInformationManager.getPersonalInfoConsentStatus()) == null) ? null : personalInfoConsentStatus.name();
        try {
            adUnits.mopubConsent(name);
            criteo = adUnits.init();
        } catch (CriteoInitException e) {
        }
        if (criteo != null) {
            criteo.setMopubConsent(name);
        }
    }

    @Override // com.mopub.nativeads.BaseCustomEventNative, com.mopub.nativeads.CustomEventNative
    public void loadNativeAd(Context context, CustomEventNative.CustomEventNativeListener customEventNativeListener, Map<String, Object> map, Map<String, String> map2) {
        C15149k.m377b(context, "context");
        C15149k.m377b(customEventNativeListener, "customEventNativeListener");
        C15149k.m377b(map, "localExtras");
        C15149k.m377b(map2, "serverExtras");
        super.loadNativeAd(context, customEventNativeListener, map, map2);
        C6260a aVar = this.f9009a;
        if (aVar != null) {
            String name = CriteoCustomEventNative.class.getName();
            C15149k.m383a((Object) name, "CriteoCustomEventNative::class.java.name");
            aVar.m23470a(name);
        }
        String str = map2.get("cpId");
        String str2 = map2.get("adUnitId");
        if (str == null || str2 == null) {
            C6260a aVar2 = this.f9009a;
            if (aVar2 != null) {
                String nativeErrorCode = NativeErrorCode.NATIVE_ADAPTER_CONFIGURATION_ERROR.toString();
                C15149k.m383a((Object) nativeErrorCode, "NativeErrorCode.NATIVE_A…GURATION_ERROR.toString()");
                aVar2.m23467b(nativeErrorCode);
            }
            customEventNativeListener.onNativeAdFailed(NativeErrorCode.NATIVE_ADAPTER_CONFIGURATION_ERROR);
            return;
        }
        Context applicationContext = context.getApplicationContext();
        boolean z = applicationContext instanceof Application;
        C14989s sVar = null;
        if (!z) {
            applicationContext = null;
        }
        Application application = (Application) applicationContext;
        if (application != null) {
            m30047a(application, str, C15020l.m567a(new NativeAdUnit(str2)));
            NativeAdUnit nativeAdUnit = new NativeAdUnit(str2);
            CriteoListenerManager criteoListenerManager = CriteoListenerManager.INSTANCE;
            String str3 = this.f9010b;
            C15149k.m383a((Object) str3, "mAdUnitName");
            new CriteoNativeLoader(nativeAdUnit, criteoListenerManager.createCriteoNativeAdListener(str3, this.f9009a, customEventNativeListener), new C4023a()).loadAd();
            C6260a aVar3 = this.f9009a;
            if (aVar3 != null) {
                aVar3.m23456j();
                sVar = C14989s.f33022a;
            }
            if (sVar != null) {
                return;
            }
        }
        C6260a aVar4 = this.f9009a;
        if (aVar4 != null) {
            String nativeErrorCode2 = NativeErrorCode.NATIVE_ADAPTER_CONFIGURATION_ERROR.toString();
            C15149k.m383a((Object) nativeErrorCode2, "NativeErrorCode.NATIVE_A…GURATION_ERROR.toString()");
            aVar4.m23467b(nativeErrorCode2);
        }
        customEventNativeListener.onNativeAdFailed(NativeErrorCode.NATIVE_ADAPTER_CONFIGURATION_ERROR);
        C14989s sVar2 = C14989s.f33022a;
    }
}
