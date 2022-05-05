package gogolook.callgogolook2.p074ad;

import androidx.core.app.NotificationCompatJellybean;
import com.mopub.nativeads.AotterTrekCustomEvent;
import com.mopub.nativeads.BaseNativeAd;
import com.mopub.nativeads.NativeAd;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import java.util.Iterator;
import java.util.Set;
import kotlin.Metadata;
import p081h.p160h.p161a.p162h.AbstractC6207d;
import p081h.p160h.p161a.p163i.C6214a;
import p081h.p160h.p161a.p171q.C6289b;
import p626l.AbstractC14974f;
import p626l.C14975g;
import p626l.p629c0.AbstractC14906i;
import p626l.p641z.p643d.C15131a0;
import p626l.p641z.p643d.C15149k;
import p626l.p641z.p643d.C15157s;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��8\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\"\n\u0002\b\u000b\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0014\u0010\u0013\u001a\u0004\u0018\u00010\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0007J\u0010\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u0004H\u0007J\u0012\u0010\u001a\u001a\u0004\u0018\u00010\u001b2\u0006\u0010\u001c\u001a\u00020\u0004H\u0007R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n��R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n��R\u0010\u0010\u0006\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n��R!\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00040\b8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u000b\u0010\f\u001a\u0004\b\t\u0010\nR!\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00040\b8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u000f\u0010\f\u001a\u0004\b\u000e\u0010\nR!\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00040\b8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0012\u0010\f\u001a\u0004\b\u0011\u0010\n¨\u0006\u001d"}, m815d2 = {"Lgogolook/callgogolook2/ad/AotterTrekUtils;", "", "()V", "PLACE_NAME_CALL_END_BANNER", "", "PLACE_NAME_CALL_END_FULL", "PLACE_NAME_SMS", "callEndBannerAdSupportedLabel", "", "getCallEndBannerAdSupportedLabel", "()Ljava/util/Set;", "callEndBannerAdSupportedLabel$delegate", "Lkotlin/Lazy;", "callEndFullAdSupportedLabel", "getCallEndFullAdSupportedLabel", "callEndFullAdSupportedLabel$delegate", "smsAdSupportedLabel", "getSmsAdSupportedLabel", "smsAdSupportedLabel$delegate", "asAotterTrekStaticAd", "Lcom/mopub/nativeads/AotterTrekCustomEvent$AotterTrekStaticAd;", "adObject", "Lcom/gogolook/adsdk/adobject/BaseAdObject;", "canShowAds", "", "adUnit", "getAdViewBinder", "Lcom/gogolook/adsdk/view/ViewBinder;", NotificationCompatJellybean.KEY_LABEL, "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: gogolook.callgogolook2.ad.AotterTrekUtils */
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/ad/AotterTrekUtils.class */
public final class AotterTrekUtils {
    public static final /* synthetic */ AbstractC14906i[] $$delegatedProperties;
    public static final AotterTrekUtils INSTANCE = new AotterTrekUtils();
    public static final String PLACE_NAME_CALL_END_FULL = AdUnit.CALL_END_FULL.m28821a();
    public static final String PLACE_NAME_CALL_END_BANNER = AdUnit.CALL_END_BANNER.m28821a();
    public static final String PLACE_NAME_SMS = AdUnit.SMS.m28821a();
    public static final AbstractC14974f callEndFullAdSupportedLabel$delegate = C14975g.m662a(AotterTrekUtils$callEndFullAdSupportedLabel$2.INSTANCE);
    public static final AbstractC14974f callEndBannerAdSupportedLabel$delegate = C14975g.m662a(AotterTrekUtils$callEndBannerAdSupportedLabel$2.INSTANCE);
    public static final AbstractC14974f smsAdSupportedLabel$delegate = C14975g.m662a(AotterTrekUtils$smsAdSupportedLabel$2.INSTANCE);

    static {
        C15157s sVar = new C15157s(C15131a0.m419a(AotterTrekUtils.class), "callEndFullAdSupportedLabel", "getCallEndFullAdSupportedLabel()Ljava/util/Set;");
        C15131a0.m412a(sVar);
        C15157s sVar2 = new C15157s(C15131a0.m419a(AotterTrekUtils.class), "callEndBannerAdSupportedLabel", "getCallEndBannerAdSupportedLabel()Ljava/util/Set;");
        C15131a0.m412a(sVar2);
        C15157s sVar3 = new C15157s(C15131a0.m419a(AotterTrekUtils.class), "smsAdSupportedLabel", "getSmsAdSupportedLabel()Ljava/util/Set;");
        C15131a0.m412a(sVar3);
        $$delegatedProperties = new AbstractC14906i[]{sVar, sVar2, sVar3};
    }

    /* renamed from: a */
    public static final AotterTrekCustomEvent.AotterTrekStaticAd m28798a(AbstractC6207d dVar) {
        NativeAd e;
        BaseNativeAd baseNativeAd = (dVar == null || (e = dVar.m23575e()) == null) ? null : e.getBaseNativeAd();
        BaseNativeAd baseNativeAd2 = baseNativeAd;
        if (!(baseNativeAd instanceof AotterTrekCustomEvent.AotterTrekStaticAd)) {
            baseNativeAd2 = null;
        }
        return (AotterTrekCustomEvent.AotterTrekStaticAd) baseNativeAd2;
    }

    /* renamed from: a */
    public static final boolean m28797a(String str) {
        C15149k.m377b(str, "adUnit");
        AbstractC6207d b = C6214a.m23564b(str);
        boolean z = false;
        if (b != null) {
            AotterTrekCustomEvent.AotterTrekStaticAd a = m28798a(b);
            Object obj = null;
            String str2 = null;
            if (a != null) {
                Set<String> b2 = C15149k.m384a((Object) str, (Object) PLACE_NAME_CALL_END_FULL) ? INSTANCE.m28796b() : C15149k.m384a((Object) str, (Object) PLACE_NAME_CALL_END_BANNER) ? INSTANCE.m28799a() : C15149k.m384a((Object) str, (Object) PLACE_NAME_SMS) ? INSTANCE.m28794c() : null;
                str2 = null;
                if (b2 != null) {
                    Iterator it = b2.iterator();
                    while (it.hasNext()) {
                        obj = it.next();
                        if (C15149k.m384a((Object) a.getLabel(), (Object) ((String) obj))) {
                            break;
                        }
                    }
                    str2 = (String) obj;
                }
            }
            C6214a.m23565a(str, b);
            z = false;
            if (str2 != null) {
                z = false;
                if (str2.length() > 0) {
                    z = true;
                }
            }
        }
        return z;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* renamed from: b */
    public static final C6289b m28795b(String str) {
        C6289b bVar;
        C15149k.m377b(str, NotificationCompatJellybean.KEY_LABEL);
        switch (str.hashCode()) {
            case -2093837530:
                if (str.equals(AotterTrekCustomEvent.AotterTrekStaticAd.LABEL_CED_DISPLAY_BANNER)) {
                    C6289b.C6290a aVar = new C6289b.C6290a(R$layout.aottertrek_callend_display_banner_ads);
                    aVar.m23394d(R$id.iv_ad);
                    aVar.m23396c(R$id.iv_ad_inner_close);
                    aVar.m23392e(R$id.iv_ad_outer_close);
                    bVar = aVar.m23401a();
                    break;
                }
                bVar = null;
                break;
            case -2057711414:
                if (str.equals(AotterTrekCustomEvent.AotterTrekStaticAd.LABEL_CED_DISPLAY_CIRCLE)) {
                    C6289b.C6290a aVar2 = new C6289b.C6290a(R$layout.aottertrek_display_common_ads);
                    aVar2.m23394d(R$id.iv_ad);
                    aVar2.m23396c(R$id.iv_ad_inner_close);
                    aVar2.m23392e(R$id.iv_ad_outer_close);
                    bVar = aVar2.m23401a();
                    break;
                }
                bVar = null;
                break;
            case -1993628369:
                if (str.equals(AotterTrekCustomEvent.AotterTrekStaticAd.LABEL_SMS_DISPLAY_BANNER)) {
                    C6289b.C6290a aVar3 = new C6289b.C6290a(R$layout.aottertrek_sms_display_ads);
                    aVar3.m23394d(R$id.iv_ad);
                    aVar3.m23396c(R$id.iv_ad_inner_close);
                    aVar3.m23392e(R$id.iv_ad_outer_close);
                    bVar = aVar3.m23401a();
                    break;
                }
                bVar = null;
                break;
            case -721985618:
                if (str.equals(AotterTrekCustomEvent.AotterTrekStaticAd.LABEL_SMS_NATIVE_BANNER)) {
                    C6289b.C6290a aVar4 = new C6289b.C6290a(R$layout.sms_native_ad_content_field);
                    aVar4.m23394d(R$id.iv_ad_icon);
                    aVar4.m23390f(R$id.iv_privacy);
                    aVar4.m23386h(R$id.tv_title);
                    aVar4.m23388g(R$id.tv_content);
                    aVar4.m23400a(R$id.tv_cta_btn);
                    bVar = aVar4.m23401a();
                    break;
                }
                bVar = null;
                break;
            case 753265929:
                if (str.equals(AotterTrekCustomEvent.AotterTrekStaticAd.LABEL_CED_DISPLAY_FULL)) {
                    C6289b.C6290a aVar5 = new C6289b.C6290a(R$layout.aottertrek_callend_display_full_ads);
                    aVar5.m23394d(R$id.iv_ad);
                    aVar5.m23396c(R$id.iv_ad_inner_close);
                    aVar5.m23392e(R$id.iv_ad_outer_close);
                    bVar = aVar5.m23401a();
                    break;
                }
                bVar = null;
                break;
            case 1722935546:
                if (str.equals(AotterTrekCustomEvent.AotterTrekStaticAd.LABEL_CED_NATIVE_FULL)) {
                    C6289b.C6290a aVar6 = new C6289b.C6290a(R$layout.callend_native_full_ads_aottertrek);
                    aVar6.m23394d(R$id.iv_ad);
                    aVar6.m23398b(R$id.iv_ad_icon);
                    aVar6.m23390f(R$id.iv_privacy);
                    aVar6.m23386h(R$id.tv_title);
                    aVar6.m23388g(R$id.tv_content);
                    aVar6.m23400a(R$id.tv_cta_btn);
                    aVar6.m23396c(R$id.iv_ad_inner_close);
                    aVar6.m23392e(R$id.iv_ad_outer_close);
                    bVar = aVar6.m23401a();
                    break;
                }
                bVar = null;
                break;
            default:
                bVar = null;
                break;
        }
        return bVar;
    }

    /* renamed from: a */
    public final Set<String> m28799a() {
        AbstractC14974f fVar = callEndBannerAdSupportedLabel$delegate;
        AbstractC14906i iVar = $$delegatedProperties[1];
        return (Set) fVar.getValue();
    }

    /* renamed from: b */
    public final Set<String> m28796b() {
        AbstractC14974f fVar = callEndFullAdSupportedLabel$delegate;
        AbstractC14906i iVar = $$delegatedProperties[0];
        return (Set) fVar.getValue();
    }

    /* renamed from: c */
    public final Set<String> m28794c() {
        AbstractC14974f fVar = smsAdSupportedLabel$delegate;
        AbstractC14906i iVar = $$delegatedProperties[2];
        return (Set) fVar.getValue();
    }
}
