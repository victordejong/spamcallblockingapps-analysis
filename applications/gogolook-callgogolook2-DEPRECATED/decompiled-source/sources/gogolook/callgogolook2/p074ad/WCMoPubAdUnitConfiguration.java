package gogolook.callgogolook2.p074ad;

import com.mopub.nativeads.AfterDbUpdateMoPubNativeAdRenderer;
import com.mopub.nativeads.BlockMoPubNativeAdRender;
import com.mopub.nativeads.CallEndBannerMoPubNativeAdRenderer;
import com.mopub.nativeads.CallEndDialogMoPubNativeRenderer;
import com.mopub.nativeads.CallEndFullMoPubNativeAdRenderer;
import com.mopub.nativeads.CallLogStickyMoPubNativeAdRenderer;
import com.mopub.nativeads.EnterMoPubNativeAdRenderer;
import com.mopub.nativeads.MoPubAdRenderer;
import com.mopub.nativeads.NDPMoPubNativeAdRender;
import com.mopub.nativeads.NativeAdTemplate2Renderer;
import com.mopub.nativeads.OfflineDBNativeAdRenderer;
import com.mopub.nativeads.OfflineDbMainPageAdMoPubNativeAdRender;
import com.mopub.nativeads.RequestParameters;
import com.mopub.nativeads.SMSMoPubNativeAdRender;
import com.mopub.nativeads.ScanningPageNativeAdRenderer;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import java.util.EnumSet;
import java.util.Map;
import kotlin.Metadata;
import p081h.p160h.p161a.EnumC6184a;
import p081h.p160h.p161a.p164j.AbstractC6218c;
import p081h.p160h.p161a.p164j.C6216a;
import p081h.p160h.p161a.p165k.C6232c;
import p081h.p160h.p161a.p170p.C6272d;
import p081h.p160h.p161a.p171q.C6289b;
import p459j.p460a.p541n0.C13032a;
import p626l.AbstractC14974f;
import p626l.C14975g;
import p626l.C14986p;
import p626l.p629c0.AbstractC14906i;
import p626l.p641z.p643d.C15131a0;
import p626l.p641z.p643d.C15149k;
import p626l.p641z.p643d.C15157s;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\bw\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0010$\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010��\n��\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J$\u0010{\u001a\u0004\u0018\u00010|2\u0006\u0010}\u001a\u00020\u00042\u0006\u0010~\u001a\u00020\u007f2\b\u0010\u0080\u0001\u001a\u00030\u0081\u0001H\u0002J#\u0010\u0082\u0001\u001a\u00020|2\u0006\u0010}\u001a\u00020\u00042\u0006\u0010~\u001a\u00020\u007f2\b\u0010\u0080\u0001\u001a\u00030\u0081\u0001H\u0016J\u001b\u0010\u0083\u0001\u001a\u0004\u0018\u00010|2\u0006\u0010}\u001a\u00020\u00042\u0006\u0010~\u001a\u00020\u007fH\u0002J\u0012\u0010\u0084\u0001\u001a\u00030\u0085\u00012\u0006\u0010}\u001a\u00020\u0004H\u0002J\t\u0010\u0086\u0001\u001a\u00020\u0004H\u0016J \u0010\u0087\u0001\u001a\u00030\u0088\u00012\u0014\u0010\u0089\u0001\u001a\u000f\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u008a\u0001H\u0002J\u0011\u0010\u008b\u0001\u001a\n\u0012\u0005\u0012\u00030\u008d\u00010\u008c\u0001H\u0002J7\u0010\u008e\u0001\u001a\u00030\u0088\u00012\u0015\u0010\u008f\u0001\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0005\u0012\u00030\u0090\u00010\u008a\u00012\u0014\u0010\u0089\u0001\u001a\u000f\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u008a\u0001H\u0016R\u001b\u0010\u0003\u001a\u00020\u00048BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\u0005\u0010\u0006R\u001b\u0010\t\u001a\u00020\u00048BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000b\u0010\b\u001a\u0004\b\n\u0010\u0006R\u001b\u0010\f\u001a\u00020\u00048BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000e\u0010\b\u001a\u0004\b\r\u0010\u0006R\u001b\u0010\u000f\u001a\u00020\u00048BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0011\u0010\b\u001a\u0004\b\u0010\u0010\u0006R\u001b\u0010\u0012\u001a\u00020\u00048BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0014\u0010\b\u001a\u0004\b\u0013\u0010\u0006R\u001b\u0010\u0015\u001a\u00020\u00048BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0017\u0010\b\u001a\u0004\b\u0016\u0010\u0006R\u001b\u0010\u0018\u001a\u00020\u00048BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001a\u0010\b\u001a\u0004\b\u0019\u0010\u0006R\u001b\u0010\u001b\u001a\u00020\u00048BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001d\u0010\b\u001a\u0004\b\u001c\u0010\u0006R\u001b\u0010\u001e\u001a\u00020\u00048BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b \u0010\b\u001a\u0004\b\u001f\u0010\u0006R\u001b\u0010!\u001a\u00020\u00048BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b#\u0010\b\u001a\u0004\b\"\u0010\u0006R\u001b\u0010$\u001a\u00020\u00048BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b&\u0010\b\u001a\u0004\b%\u0010\u0006R\u000e\u0010'\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010(\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010)\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010*\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010+\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010,\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010-\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010.\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010/\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u00100\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u00101\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u00102\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u00103\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u00104\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u001b\u00105\u001a\u00020\u00048BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b7\u0010\b\u001a\u0004\b6\u0010\u0006R\u001b\u00108\u001a\u00020\u00048BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b:\u0010\b\u001a\u0004\b9\u0010\u0006R\u001b\u0010;\u001a\u00020\u00048BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b=\u0010\b\u001a\u0004\b<\u0010\u0006R\u001b\u0010>\u001a\u00020\u00048BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b@\u0010\b\u001a\u0004\b?\u0010\u0006R\u001b\u0010A\u001a\u00020\u00048BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bC\u0010\b\u001a\u0004\bB\u0010\u0006R\u001b\u0010D\u001a\u00020\u00048BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bF\u0010\b\u001a\u0004\bE\u0010\u0006R\u001b\u0010G\u001a\u00020\u00048BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bI\u0010\b\u001a\u0004\bH\u0010\u0006R!\u0010J\u001a\u00020\u00048BX\u0083\u0084\u0002¢\u0006\u0012\n\u0004\bM\u0010\b\u0012\u0004\bK\u0010\u0002\u001a\u0004\bL\u0010\u0006R\u001b\u0010N\u001a\u00020\u00048BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bP\u0010\b\u001a\u0004\bO\u0010\u0006R\u001b\u0010Q\u001a\u00020\u00048BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bS\u0010\b\u001a\u0004\bR\u0010\u0006R\u001b\u0010T\u001a\u00020\u00048BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bV\u0010\b\u001a\u0004\bU\u0010\u0006R\u001b\u0010W\u001a\u00020\u00048BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bY\u0010\b\u001a\u0004\bX\u0010\u0006R\u001b\u0010Z\u001a\u00020\u00048BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\\\u0010\b\u001a\u0004\b[\u0010\u0006R\u001b\u0010]\u001a\u00020\u00048BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b_\u0010\b\u001a\u0004\b^\u0010\u0006R\u001b\u0010`\u001a\u00020\u00048BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bb\u0010\b\u001a\u0004\ba\u0010\u0006R\u001b\u0010c\u001a\u00020\u00048BX\u0082\u0084\u0002¢\u0006\f\n\u0004\be\u0010\b\u001a\u0004\bd\u0010\u0006R\u001b\u0010f\u001a\u00020\u00048BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bh\u0010\b\u001a\u0004\bg\u0010\u0006R\u001b\u0010i\u001a\u00020\u00048BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bk\u0010\b\u001a\u0004\bj\u0010\u0006R\u001b\u0010l\u001a\u00020\u00048BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bn\u0010\b\u001a\u0004\bm\u0010\u0006R\u001b\u0010o\u001a\u00020\u00048BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bq\u0010\b\u001a\u0004\bp\u0010\u0006R\u001b\u0010r\u001a\u00020\u00048BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bt\u0010\b\u001a\u0004\bs\u0010\u0006R,\u0010v\u001a\u00020\u00042\u0006\u0010u\u001a\u00020\u00048\u0006@FX\u0087\u000e¢\u0006\u0014\n��\u0012\u0004\bw\u0010\u0002\u001a\u0004\bx\u0010\u0006\"\u0004\by\u0010z¨\u0006\u0091\u0001"}, m815d2 = {"Lgogolook/callgogolook2/ad/WCMoPubAdUnitConfiguration;", "Lcom/gogolook/adsdk/config/IMoPubAdUnitConfiguration;", "()V", "DEV_MOPUB", "", "getDEV_MOPUB", "()Ljava/lang/String;", "DEV_MOPUB$delegate", "Lkotlin/Lazy;", "DEV_MOPUB_ADBERT", "getDEV_MOPUB_ADBERT", "DEV_MOPUB_ADBERT$delegate", "DEV_MOPUB_ADMOB", "getDEV_MOPUB_ADMOB", "DEV_MOPUB_ADMOB$delegate", "DEV_MOPUB_AOTTER", "getDEV_MOPUB_AOTTER", "DEV_MOPUB_AOTTER$delegate", "DEV_MOPUB_APPIER", "getDEV_MOPUB_APPIER", "DEV_MOPUB_APPIER$delegate", "DEV_MOPUB_CRITEO", "getDEV_MOPUB_CRITEO", "DEV_MOPUB_CRITEO$delegate", "DEV_MOPUB_FACEBOOK", "getDEV_MOPUB_FACEBOOK", "DEV_MOPUB_FACEBOOK$delegate", "DEV_MOPUB_FLURRY", "getDEV_MOPUB_FLURRY", "DEV_MOPUB_FLURRY$delegate", "DEV_MOPUB_LINE_ITEM", "getDEV_MOPUB_LINE_ITEM", "DEV_MOPUB_LINE_ITEM$delegate", "DEV_MOPUB_NONE", "getDEV_MOPUB_NONE", "DEV_MOPUB_NONE$delegate", "DEV_MOPUB_TAMEDIA", "getDEV_MOPUB_TAMEDIA", "DEV_MOPUB_TAMEDIA$delegate", "KEY_AFTER_DB_UPDATE_CLOSE_BTN_PADDING", "KEY_AFTER_DB_UPDATE_CLOSE_BTN_TYPE", "KEY_CED_CLOSE_BTN_PADDING", "KEY_CED_CLOSE_BTN_TYPE", "KEY_CLOSE_BTN_PADDING", "KEY_CLOSE_BTN_TYPE", "KEY_DB_UPDATE_CLOSE_BTN_PADDING", "KEY_ENTER_CLOSE_BTN_PADDING", "KEY_ENTER_CLOSE_BTN_TYPE", "KEY_NDP_CLOSE_BTN_PADDING", "KEY_SMS_AD_PADDING", "KEY_SMS_CLOSE_BTN_PADDING", "KEY_SMS_CLOSE_BTN_TYPE", "KEY_SMS_SCANNING_PAGE_CLOSE_BTN_PADDING", "MOPUB_AFTER_DB_UPDATE_AD", "getMOPUB_AFTER_DB_UPDATE_AD", "MOPUB_AFTER_DB_UPDATE_AD$delegate", "MOPUB_BLOCK_STICKY_AD_UNIT_ID", "getMOPUB_BLOCK_STICKY_AD_UNIT_ID", "MOPUB_BLOCK_STICKY_AD_UNIT_ID$delegate", "MOPUB_CALL_END_BANNER", "getMOPUB_CALL_END_BANNER", "MOPUB_CALL_END_BANNER$delegate", "MOPUB_CALL_END_BANNER_AOTTER_TREK", "getMOPUB_CALL_END_BANNER_AOTTER_TREK", "MOPUB_CALL_END_BANNER_AOTTER_TREK$delegate", "MOPUB_CALL_END_DIALOG", "getMOPUB_CALL_END_DIALOG", "MOPUB_CALL_END_DIALOG$delegate", "MOPUB_CALL_END_FULL", "getMOPUB_CALL_END_FULL", "MOPUB_CALL_END_FULL$delegate", "MOPUB_CALL_END_FULL_AOTTER_TREK", "getMOPUB_CALL_END_FULL_AOTTER_TREK", "MOPUB_CALL_END_FULL_AOTTER_TREK$delegate", "MOPUB_CALL_END_NDP", "MOPUB_CALL_END_NDP$annotations", "getMOPUB_CALL_END_NDP", "MOPUB_CALL_END_NDP$delegate", "MOPUB_CALL_LOG_CONTENT_FEED", "getMOPUB_CALL_LOG_CONTENT_FEED", "MOPUB_CALL_LOG_CONTENT_FEED$delegate", "MOPUB_CALL_LOG_STICKY_AD", "getMOPUB_CALL_LOG_STICKY_AD", "MOPUB_CALL_LOG_STICKY_AD$delegate", "MOPUB_ENTER_AD", "getMOPUB_ENTER_AD", "MOPUB_ENTER_AD$delegate", "MOPUB_NDP_AD", "getMOPUB_NDP_AD", "MOPUB_NDP_AD$delegate", "MOPUB_OFFLINE_DB_MAIN_PAGE_AD", "getMOPUB_OFFLINE_DB_MAIN_PAGE_AD", "MOPUB_OFFLINE_DB_MAIN_PAGE_AD$delegate", "MOPUB_OFFLINE_DB_UPDATE_AD", "getMOPUB_OFFLINE_DB_UPDATE_AD", "MOPUB_OFFLINE_DB_UPDATE_AD$delegate", "MOPUB_PROTECTION_PAGE_AD", "getMOPUB_PROTECTION_PAGE_AD", "MOPUB_PROTECTION_PAGE_AD$delegate", "MOPUB_SMS_AD", "getMOPUB_SMS_AD", "MOPUB_SMS_AD$delegate", "MOPUB_SMS_AD_AOTTER_TREK", "getMOPUB_SMS_AD_AOTTER_TREK", "MOPUB_SMS_AD_AOTTER_TREK$delegate", "MOPUB_SMS_AD_NEW_LAYOUT", "getMOPUB_SMS_AD_NEW_LAYOUT", "MOPUB_SMS_AD_NEW_LAYOUT$delegate", "MOPUB_SMS_LOG_STICKY_AD", "getMOPUB_SMS_LOG_STICKY_AD", "MOPUB_SMS_LOG_STICKY_AD$delegate", "MOPUB_SMS_SCANNING_PAGE", "getMOPUB_SMS_SCANNING_PAGE", "MOPUB_SMS_SCANNING_PAGE$delegate", "MOPUB_SMS_SCAN_RESULT_STICKY", "getMOPUB_SMS_SCAN_RESULT_STICKY", "MOPUB_SMS_SCAN_RESULT_STICKY$delegate", C13032a.f29462d, "currentDevSource", "currentDevSource$annotations", "getCurrentDevSource", "setCurrentDevSource", "(Ljava/lang/String;)V", "getAdNetworkNativeAdUnitConfig", "Lcom/gogolook/adsdk/config/AdUnitConfig;", "adUnitName", "adSource", "Lcom/gogolook/adsdk/Definition$AdSource;", "isDebug", "", "getAdUnitConfig", "getAotterTrekAdUnitConfig", "getLayoutType", "", "getValidMoPubAdUnitId", "implementAdCloseBtnPaddingByAdUnit", "", "serverExtras", "", "moPubNativeDesiredAssetsFactory", "Ljava/util/EnumSet;", "Lcom/mopub/nativeads/RequestParameters$NativeAdAsset;", "setupCustomEventData", "localExtras", "", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: gogolook.callgogolook2.ad.WCMoPubAdUnitConfiguration */
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/ad/WCMoPubAdUnitConfiguration.class */
public final class WCMoPubAdUnitConfiguration implements AbstractC6218c {
    public static final /* synthetic */ AbstractC14906i[] $$delegatedProperties;
    public static final WCMoPubAdUnitConfiguration INSTANCE;
    public static final String KEY_AFTER_DB_UPDATE_CLOSE_BTN_PADDING = "AfterDbUpdateCloseBtnPadding";
    public static final String KEY_AFTER_DB_UPDATE_CLOSE_BTN_TYPE = "AfterDbUpdateCloseBtnType";
    public static final String KEY_CED_CLOSE_BTN_PADDING = "CedCloseBtnPadding";
    public static final String KEY_CED_CLOSE_BTN_TYPE = "CedCloseBtnType";
    public static final String KEY_CLOSE_BTN_PADDING = "CloseBtnPadding";
    public static final String KEY_CLOSE_BTN_TYPE = "CloseBtnType";
    public static final String KEY_DB_UPDATE_CLOSE_BTN_PADDING = "DbUpdateCloseBtnPadding";
    public static final String KEY_ENTER_CLOSE_BTN_PADDING = "EnterCloseBtnPadding";
    public static final String KEY_ENTER_CLOSE_BTN_TYPE = "EnterCloseBtnType";
    public static final String KEY_NDP_CLOSE_BTN_PADDING = "NdpCloseBtnPadding";
    public static final String KEY_SMS_AD_PADDING = "SmsAdPadding";
    public static final String KEY_SMS_CLOSE_BTN_PADDING = "SmsCloseBtnPadding";
    public static final String KEY_SMS_CLOSE_BTN_TYPE = "SmsCloseBtnType";
    public static final String KEY_SMS_SCANNING_PAGE_CLOSE_BTN_PADDING = "SmsScanningCloseBtnPadding";
    public static String currentDevSource;
    public static final AbstractC14974f DEV_MOPUB_FACEBOOK$delegate = C14975g.m662a(WCMoPubAdUnitConfiguration$DEV_MOPUB_FACEBOOK$2.INSTANCE);
    public static final AbstractC14974f DEV_MOPUB_ADMOB$delegate = C14975g.m662a(WCMoPubAdUnitConfiguration$DEV_MOPUB_ADMOB$2.INSTANCE);
    public static final AbstractC14974f DEV_MOPUB_ADBERT$delegate = C14975g.m662a(WCMoPubAdUnitConfiguration$DEV_MOPUB_ADBERT$2.INSTANCE);
    public static final AbstractC14974f DEV_MOPUB_AOTTER$delegate = C14975g.m662a(WCMoPubAdUnitConfiguration$DEV_MOPUB_AOTTER$2.INSTANCE);
    public static final AbstractC14974f DEV_MOPUB_FLURRY$delegate = C14975g.m662a(WCMoPubAdUnitConfiguration$DEV_MOPUB_FLURRY$2.INSTANCE);
    public static final AbstractC14974f DEV_MOPUB_TAMEDIA$delegate = C14975g.m662a(WCMoPubAdUnitConfiguration$DEV_MOPUB_TAMEDIA$2.INSTANCE);
    public static final AbstractC14974f DEV_MOPUB_NONE$delegate = C14975g.m662a(WCMoPubAdUnitConfiguration$DEV_MOPUB_NONE$2.INSTANCE);
    public static final AbstractC14974f DEV_MOPUB_APPIER$delegate = C14975g.m662a(WCMoPubAdUnitConfiguration$DEV_MOPUB_APPIER$2.INSTANCE);
    public static final AbstractC14974f DEV_MOPUB$delegate = C14975g.m662a(WCMoPubAdUnitConfiguration$DEV_MOPUB$2.INSTANCE);
    public static final AbstractC14974f DEV_MOPUB_LINE_ITEM$delegate = C14975g.m662a(WCMoPubAdUnitConfiguration$DEV_MOPUB_LINE_ITEM$2.INSTANCE);
    public static final AbstractC14974f DEV_MOPUB_CRITEO$delegate = C14975g.m662a(WCMoPubAdUnitConfiguration$DEV_MOPUB_CRITEO$2.INSTANCE);
    public static final AbstractC14974f MOPUB_BLOCK_STICKY_AD_UNIT_ID$delegate = C14975g.m662a(WCMoPubAdUnitConfiguration$MOPUB_BLOCK_STICKY_AD_UNIT_ID$2.INSTANCE);
    public static final AbstractC14974f MOPUB_OFFLINE_DB_MAIN_PAGE_AD$delegate = C14975g.m662a(WCMoPubAdUnitConfiguration$MOPUB_OFFLINE_DB_MAIN_PAGE_AD$2.INSTANCE);
    public static final AbstractC14974f MOPUB_CALL_LOG_STICKY_AD$delegate = C14975g.m662a(WCMoPubAdUnitConfiguration$MOPUB_CALL_LOG_STICKY_AD$2.INSTANCE);
    public static final AbstractC14974f MOPUB_SMS_LOG_STICKY_AD$delegate = C14975g.m662a(WCMoPubAdUnitConfiguration$MOPUB_SMS_LOG_STICKY_AD$2.INSTANCE);
    public static final AbstractC14974f MOPUB_NDP_AD$delegate = C14975g.m662a(WCMoPubAdUnitConfiguration$MOPUB_NDP_AD$2.INSTANCE);
    public static final AbstractC14974f MOPUB_OFFLINE_DB_UPDATE_AD$delegate = C14975g.m662a(WCMoPubAdUnitConfiguration$MOPUB_OFFLINE_DB_UPDATE_AD$2.INSTANCE);
    public static final AbstractC14974f MOPUB_SMS_AD$delegate = C14975g.m662a(WCMoPubAdUnitConfiguration$MOPUB_SMS_AD$2.INSTANCE);
    public static final AbstractC14974f MOPUB_SMS_AD_NEW_LAYOUT$delegate = C14975g.m662a(WCMoPubAdUnitConfiguration$MOPUB_SMS_AD_NEW_LAYOUT$2.INSTANCE);
    public static final AbstractC14974f MOPUB_CALL_END_FULL$delegate = C14975g.m662a(WCMoPubAdUnitConfiguration$MOPUB_CALL_END_FULL$2.INSTANCE);
    public static final AbstractC14974f MOPUB_CALL_END_BANNER$delegate = C14975g.m662a(WCMoPubAdUnitConfiguration$MOPUB_CALL_END_BANNER$2.INSTANCE);
    public static final AbstractC14974f MOPUB_CALL_END_DIALOG$delegate = C14975g.m662a(WCMoPubAdUnitConfiguration$MOPUB_CALL_END_DIALOG$2.INSTANCE);
    public static final AbstractC14974f MOPUB_CALL_END_FULL_AOTTER_TREK$delegate = C14975g.m662a(WCMoPubAdUnitConfiguration$MOPUB_CALL_END_FULL_AOTTER_TREK$2.INSTANCE);
    public static final AbstractC14974f MOPUB_CALL_END_BANNER_AOTTER_TREK$delegate = C14975g.m662a(WCMoPubAdUnitConfiguration$MOPUB_CALL_END_BANNER_AOTTER_TREK$2.INSTANCE);
    public static final AbstractC14974f MOPUB_SMS_AD_AOTTER_TREK$delegate = C14975g.m662a(WCMoPubAdUnitConfiguration$MOPUB_SMS_AD_AOTTER_TREK$2.INSTANCE);
    public static final AbstractC14974f MOPUB_AFTER_DB_UPDATE_AD$delegate = C14975g.m662a(WCMoPubAdUnitConfiguration$MOPUB_AFTER_DB_UPDATE_AD$2.INSTANCE);
    public static final AbstractC14974f MOPUB_ENTER_AD$delegate = C14975g.m662a(WCMoPubAdUnitConfiguration$MOPUB_ENTER_AD$2.INSTANCE);
    public static final AbstractC14974f MOPUB_CALL_END_NDP$delegate = C14975g.m662a(WCMoPubAdUnitConfiguration$MOPUB_CALL_END_NDP$2.INSTANCE);
    public static final AbstractC14974f MOPUB_CALL_LOG_CONTENT_FEED$delegate = C14975g.m662a(WCMoPubAdUnitConfiguration$MOPUB_CALL_LOG_CONTENT_FEED$2.INSTANCE);
    public static final AbstractC14974f MOPUB_PROTECTION_PAGE_AD$delegate = C14975g.m662a(WCMoPubAdUnitConfiguration$MOPUB_PROTECTION_PAGE_AD$2.INSTANCE);
    public static final AbstractC14974f MOPUB_SMS_SCANNING_PAGE$delegate = C14975g.m662a(WCMoPubAdUnitConfiguration$MOPUB_SMS_SCANNING_PAGE$2.INSTANCE);
    public static final AbstractC14974f MOPUB_SMS_SCAN_RESULT_STICKY$delegate = C14975g.m662a(WCMoPubAdUnitConfiguration$MOPUB_SMS_SCAN_RESULT_STICKY$2.INSTANCE);

    @Metadata(m817bv = {1, 0, 3}, m814k = 3, m813mv = {1, 1, 13})
    /* renamed from: gogolook.callgogolook2.ad.WCMoPubAdUnitConfiguration$WhenMappings */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/ad/WCMoPubAdUnitConfiguration$WhenMappings.class */
    public final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0 = new int[EnumC6184a.values().length];

        static {
            $EnumSwitchMapping$0[EnumC6184a.AOTTER_TREK.ordinal()] = 1;
            $EnumSwitchMapping$0[EnumC6184a.NATIVE.ordinal()] = 2;
        }
    }

    static {
        C15157s sVar = new C15157s(C15131a0.m419a(WCMoPubAdUnitConfiguration.class), "DEV_MOPUB_FACEBOOK", "getDEV_MOPUB_FACEBOOK()Ljava/lang/String;");
        C15131a0.m412a(sVar);
        C15157s sVar2 = new C15157s(C15131a0.m419a(WCMoPubAdUnitConfiguration.class), "DEV_MOPUB_ADMOB", "getDEV_MOPUB_ADMOB()Ljava/lang/String;");
        C15131a0.m412a(sVar2);
        C15157s sVar3 = new C15157s(C15131a0.m419a(WCMoPubAdUnitConfiguration.class), "DEV_MOPUB_ADBERT", "getDEV_MOPUB_ADBERT()Ljava/lang/String;");
        C15131a0.m412a(sVar3);
        C15157s sVar4 = new C15157s(C15131a0.m419a(WCMoPubAdUnitConfiguration.class), "DEV_MOPUB_AOTTER", "getDEV_MOPUB_AOTTER()Ljava/lang/String;");
        C15131a0.m412a(sVar4);
        C15157s sVar5 = new C15157s(C15131a0.m419a(WCMoPubAdUnitConfiguration.class), "DEV_MOPUB_FLURRY", "getDEV_MOPUB_FLURRY()Ljava/lang/String;");
        C15131a0.m412a(sVar5);
        C15157s sVar6 = new C15157s(C15131a0.m419a(WCMoPubAdUnitConfiguration.class), "DEV_MOPUB_TAMEDIA", "getDEV_MOPUB_TAMEDIA()Ljava/lang/String;");
        C15131a0.m412a(sVar6);
        C15157s sVar7 = new C15157s(C15131a0.m419a(WCMoPubAdUnitConfiguration.class), "DEV_MOPUB_NONE", "getDEV_MOPUB_NONE()Ljava/lang/String;");
        C15131a0.m412a(sVar7);
        C15157s sVar8 = new C15157s(C15131a0.m419a(WCMoPubAdUnitConfiguration.class), "DEV_MOPUB_APPIER", "getDEV_MOPUB_APPIER()Ljava/lang/String;");
        C15131a0.m412a(sVar8);
        C15157s sVar9 = new C15157s(C15131a0.m419a(WCMoPubAdUnitConfiguration.class), "DEV_MOPUB", "getDEV_MOPUB()Ljava/lang/String;");
        C15131a0.m412a(sVar9);
        C15157s sVar10 = new C15157s(C15131a0.m419a(WCMoPubAdUnitConfiguration.class), "DEV_MOPUB_LINE_ITEM", "getDEV_MOPUB_LINE_ITEM()Ljava/lang/String;");
        C15131a0.m412a(sVar10);
        C15157s sVar11 = new C15157s(C15131a0.m419a(WCMoPubAdUnitConfiguration.class), "DEV_MOPUB_CRITEO", "getDEV_MOPUB_CRITEO()Ljava/lang/String;");
        C15131a0.m412a(sVar11);
        C15157s sVar12 = new C15157s(C15131a0.m419a(WCMoPubAdUnitConfiguration.class), "MOPUB_BLOCK_STICKY_AD_UNIT_ID", "getMOPUB_BLOCK_STICKY_AD_UNIT_ID()Ljava/lang/String;");
        C15131a0.m412a(sVar12);
        C15157s sVar13 = new C15157s(C15131a0.m419a(WCMoPubAdUnitConfiguration.class), "MOPUB_OFFLINE_DB_MAIN_PAGE_AD", "getMOPUB_OFFLINE_DB_MAIN_PAGE_AD()Ljava/lang/String;");
        C15131a0.m412a(sVar13);
        C15157s sVar14 = new C15157s(C15131a0.m419a(WCMoPubAdUnitConfiguration.class), "MOPUB_CALL_LOG_STICKY_AD", "getMOPUB_CALL_LOG_STICKY_AD()Ljava/lang/String;");
        C15131a0.m412a(sVar14);
        C15157s sVar15 = new C15157s(C15131a0.m419a(WCMoPubAdUnitConfiguration.class), "MOPUB_SMS_LOG_STICKY_AD", "getMOPUB_SMS_LOG_STICKY_AD()Ljava/lang/String;");
        C15131a0.m412a(sVar15);
        C15157s sVar16 = new C15157s(C15131a0.m419a(WCMoPubAdUnitConfiguration.class), "MOPUB_NDP_AD", "getMOPUB_NDP_AD()Ljava/lang/String;");
        C15131a0.m412a(sVar16);
        C15157s sVar17 = new C15157s(C15131a0.m419a(WCMoPubAdUnitConfiguration.class), "MOPUB_OFFLINE_DB_UPDATE_AD", "getMOPUB_OFFLINE_DB_UPDATE_AD()Ljava/lang/String;");
        C15131a0.m412a(sVar17);
        C15157s sVar18 = new C15157s(C15131a0.m419a(WCMoPubAdUnitConfiguration.class), "MOPUB_SMS_AD", "getMOPUB_SMS_AD()Ljava/lang/String;");
        C15131a0.m412a(sVar18);
        C15157s sVar19 = new C15157s(C15131a0.m419a(WCMoPubAdUnitConfiguration.class), "MOPUB_SMS_AD_NEW_LAYOUT", "getMOPUB_SMS_AD_NEW_LAYOUT()Ljava/lang/String;");
        C15131a0.m412a(sVar19);
        C15157s sVar20 = new C15157s(C15131a0.m419a(WCMoPubAdUnitConfiguration.class), "MOPUB_CALL_END_FULL", "getMOPUB_CALL_END_FULL()Ljava/lang/String;");
        C15131a0.m412a(sVar20);
        C15157s sVar21 = new C15157s(C15131a0.m419a(WCMoPubAdUnitConfiguration.class), "MOPUB_CALL_END_BANNER", "getMOPUB_CALL_END_BANNER()Ljava/lang/String;");
        C15131a0.m412a(sVar21);
        C15157s sVar22 = new C15157s(C15131a0.m419a(WCMoPubAdUnitConfiguration.class), "MOPUB_CALL_END_DIALOG", "getMOPUB_CALL_END_DIALOG()Ljava/lang/String;");
        C15131a0.m412a(sVar22);
        C15157s sVar23 = new C15157s(C15131a0.m419a(WCMoPubAdUnitConfiguration.class), "MOPUB_CALL_END_FULL_AOTTER_TREK", "getMOPUB_CALL_END_FULL_AOTTER_TREK()Ljava/lang/String;");
        C15131a0.m412a(sVar23);
        C15157s sVar24 = new C15157s(C15131a0.m419a(WCMoPubAdUnitConfiguration.class), "MOPUB_CALL_END_BANNER_AOTTER_TREK", "getMOPUB_CALL_END_BANNER_AOTTER_TREK()Ljava/lang/String;");
        C15131a0.m412a(sVar24);
        C15157s sVar25 = new C15157s(C15131a0.m419a(WCMoPubAdUnitConfiguration.class), "MOPUB_SMS_AD_AOTTER_TREK", "getMOPUB_SMS_AD_AOTTER_TREK()Ljava/lang/String;");
        C15131a0.m412a(sVar25);
        C15157s sVar26 = new C15157s(C15131a0.m419a(WCMoPubAdUnitConfiguration.class), "MOPUB_AFTER_DB_UPDATE_AD", "getMOPUB_AFTER_DB_UPDATE_AD()Ljava/lang/String;");
        C15131a0.m412a(sVar26);
        C15157s sVar27 = new C15157s(C15131a0.m419a(WCMoPubAdUnitConfiguration.class), "MOPUB_ENTER_AD", "getMOPUB_ENTER_AD()Ljava/lang/String;");
        C15131a0.m412a(sVar27);
        C15157s sVar28 = new C15157s(C15131a0.m419a(WCMoPubAdUnitConfiguration.class), "MOPUB_CALL_END_NDP", "getMOPUB_CALL_END_NDP()Ljava/lang/String;");
        C15131a0.m412a(sVar28);
        C15157s sVar29 = new C15157s(C15131a0.m419a(WCMoPubAdUnitConfiguration.class), "MOPUB_CALL_LOG_CONTENT_FEED", "getMOPUB_CALL_LOG_CONTENT_FEED()Ljava/lang/String;");
        C15131a0.m412a(sVar29);
        C15157s sVar30 = new C15157s(C15131a0.m419a(WCMoPubAdUnitConfiguration.class), "MOPUB_PROTECTION_PAGE_AD", "getMOPUB_PROTECTION_PAGE_AD()Ljava/lang/String;");
        C15131a0.m412a(sVar30);
        C15157s sVar31 = new C15157s(C15131a0.m419a(WCMoPubAdUnitConfiguration.class), "MOPUB_SMS_SCANNING_PAGE", "getMOPUB_SMS_SCANNING_PAGE()Ljava/lang/String;");
        C15131a0.m412a(sVar31);
        C15157s sVar32 = new C15157s(C15131a0.m419a(WCMoPubAdUnitConfiguration.class), "MOPUB_SMS_SCAN_RESULT_STICKY", "getMOPUB_SMS_SCAN_RESULT_STICKY()Ljava/lang/String;");
        C15131a0.m412a(sVar32);
        $$delegatedProperties = new AbstractC14906i[]{sVar, sVar2, sVar3, sVar4, sVar5, sVar6, sVar7, sVar8, sVar9, sVar10, sVar11, sVar12, sVar13, sVar14, sVar15, sVar16, sVar17, sVar18, sVar19, sVar20, sVar21, sVar22, sVar23, sVar24, sVar25, sVar26, sVar27, sVar28, sVar29, sVar30, sVar31, sVar32};
        WCMoPubAdUnitConfiguration wCMoPubAdUnitConfiguration = new WCMoPubAdUnitConfiguration();
        INSTANCE = wCMoPubAdUnitConfiguration;
        currentDevSource = wCMoPubAdUnitConfiguration.m28708k();
    }

    /* renamed from: b */
    public static final void m28718b(String str) {
        C15149k.m377b(str, C13032a.f29462d);
        currentDevSource = C15149k.m384a((Object) str, (Object) C6232c.m23507e()) ? INSTANCE.m28711h() : C15149k.m384a((Object) str, (Object) C6232c.m23511b()) ? INSTANCE.m28715d() : C15149k.m384a((Object) str, (Object) C6232c.m23519a()) ? INSTANCE.m28716c() : C15149k.m384a((Object) str, (Object) C6232c.m23509c()) ? INSTANCE.m28714e() : C15149k.m384a((Object) str, (Object) C6232c.m23506f()) ? INSTANCE.m28710i() : C15149k.m384a((Object) str, (Object) C6232c.m23501k()) ? INSTANCE.m28707l() : C15149k.m384a((Object) str, (Object) C6232c.m23508d()) ? INSTANCE.m28713f() : C15149k.m384a((Object) str, (Object) C6232c.m23505g()) ? INSTANCE.m28719b() : C15149k.m384a((Object) str, (Object) C6232c.m23503i()) ? INSTANCE.m28709j() : C15149k.m384a((Object) str, (Object) C6232c.m23504h()) ? INSTANCE.m28712g() : C15149k.m384a((Object) str, (Object) C6232c.m23502j()) ? INSTANCE.m28708k() : INSTANCE.m28708k();
    }

    /* renamed from: A */
    public final String m28730A() {
        AbstractC14974f fVar = MOPUB_PROTECTION_PAGE_AD$delegate;
        AbstractC14906i iVar = $$delegatedProperties[29];
        return (String) fVar.getValue();
    }

    /* renamed from: B */
    public final String m28729B() {
        AbstractC14974f fVar = MOPUB_SMS_AD$delegate;
        AbstractC14906i iVar = $$delegatedProperties[17];
        return (String) fVar.getValue();
    }

    /* renamed from: C */
    public final String m28728C() {
        AbstractC14974f fVar = MOPUB_SMS_AD_AOTTER_TREK$delegate;
        AbstractC14906i iVar = $$delegatedProperties[24];
        return (String) fVar.getValue();
    }

    /* renamed from: D */
    public final String m28727D() {
        AbstractC14974f fVar = MOPUB_SMS_AD_NEW_LAYOUT$delegate;
        AbstractC14906i iVar = $$delegatedProperties[18];
        return (String) fVar.getValue();
    }

    /* renamed from: E */
    public final String m28726E() {
        AbstractC14974f fVar = MOPUB_SMS_LOG_STICKY_AD$delegate;
        AbstractC14906i iVar = $$delegatedProperties[14];
        return (String) fVar.getValue();
    }

    /* renamed from: F */
    public final String m28725F() {
        AbstractC14974f fVar = MOPUB_SMS_SCANNING_PAGE$delegate;
        AbstractC14906i iVar = $$delegatedProperties[30];
        return (String) fVar.getValue();
    }

    /* renamed from: G */
    public final String m28724G() {
        AbstractC14974f fVar = MOPUB_SMS_SCAN_RESULT_STICKY$delegate;
        AbstractC14906i iVar = $$delegatedProperties[31];
        return (String) fVar.getValue();
    }

    /* renamed from: H */
    public final EnumSet<RequestParameters.NativeAdAsset> m28723H() {
        EnumSet<RequestParameters.NativeAdAsset> of = EnumSet.of(RequestParameters.NativeAdAsset.TITLE, RequestParameters.NativeAdAsset.TEXT, RequestParameters.NativeAdAsset.MAIN_IMAGE, RequestParameters.NativeAdAsset.ICON_IMAGE, RequestParameters.NativeAdAsset.CALL_TO_ACTION_TEXT);
        C15149k.m383a((Object) of, "EnumSet.of<RequestParame…sset.CALL_TO_ACTION_TEXT)");
        return of;
    }

    /* renamed from: a */
    public final int m28722a(String str) {
        return AppAdsSettingsUtils.m28783b(str);
    }

    /* renamed from: a */
    public final C6216a m28721a(String str, EnumC6184a aVar) {
        C6216a aVar2;
        C6216a aVar3 = null;
        if (C15149k.m384a((Object) str, (Object) AdUnit.SMS.m28821a())) {
            String C = m28728C();
            C6289b.C6290a aVar4 = new C6289b.C6290a(R$layout.sms_native_ad_content_layout);
            aVar4.m23398b(R$id.iv_ad_icon);
            aVar4.m23386h(R$id.tv_title);
            aVar4.m23388g(R$id.tv_content);
            aVar4.m23400a(R$id.tv_cta_btn);
            aVar4.m23390f(R$id.iv_privacy);
            aVar2 = new C6216a(str, aVar, C, new SMSMoPubNativeAdRender(aVar4.m23401a()), new RequestParameters.Builder().desiredAssets(m28723H()).build());
        } else if (C15149k.m384a((Object) str, (Object) AdUnit.CALL_END_FULL.m28821a())) {
            String s = m28700s();
            C6289b.C6290a aVar5 = new C6289b.C6290a(R$layout.callend_native_full_ads);
            aVar5.m23394d(R$id.iv_ad);
            aVar5.m23398b(R$id.iv_ad_icon);
            aVar5.m23386h(R$id.tv_title);
            aVar5.m23388g(R$id.tv_content);
            aVar5.m23400a(R$id.tv_cta_btn);
            aVar5.m23390f(R$id.iv_privacy);
            aVar5.m23396c(R$id.iv_ad_inner_close);
            aVar5.m23392e(R$id.iv_ad_outer_close);
            aVar2 = new C6216a(str, aVar, s, new CallEndFullMoPubNativeAdRenderer(aVar5.m23401a()), new RequestParameters.Builder().desiredAssets(m28723H()).build());
        } else if (C15149k.m384a((Object) str, (Object) AdUnit.CALL_END_BANNER.m28821a())) {
            String p = m28703p();
            C6289b.C6290a aVar6 = new C6289b.C6290a(R$layout.callend_native_banner_ads_content);
            aVar6.m23394d(R$id.iv_ad);
            aVar6.m23398b(R$id.iv_ad_icon);
            aVar6.m23386h(R$id.tv_title);
            aVar6.m23388g(R$id.tv_content);
            aVar6.m23400a(R$id.tv_cta_btn);
            aVar6.m23390f(R$id.iv_privacy);
            aVar2 = new C6216a(str, aVar, p, new CallEndBannerMoPubNativeAdRenderer(aVar6.m23401a()), new RequestParameters.Builder().desiredAssets(m28723H()).build());
        } else {
            aVar2 = null;
        }
        if (aVar2 != null) {
            aVar2.m23561a(WCAotterTrekConfiguration.INSTANCE);
            aVar3 = aVar2;
        }
        return aVar3;
    }

    @Override // p081h.p160h.p161a.p164j.AbstractC6218c
    /* renamed from: a */
    public C6216a mo23554a(String str, EnumC6184a aVar, boolean z) {
        C15149k.m377b(str, "adUnitName");
        C15149k.m377b(aVar, "adSource");
        int i = WhenMappings.$EnumSwitchMapping$0[aVar.ordinal()];
        C6216a b = i != 1 ? i != 2 ? null : m28717b(str, aVar, z) : m28721a(str, aVar);
        if (b == null) {
            b = new C6216a(str, aVar, "", null, null);
        }
        return b;
    }

    @Override // p081h.p160h.p161a.p164j.AbstractC6218c
    /* renamed from: a */
    public String mo23555a() {
        return AdUtils.m28810a(false) ? "" : m28701r();
    }

    /* renamed from: a */
    public final void m28720a(Map<String, String> map) {
        C6272d dVar = C6272d.f15553n;
        C6272d.m23423a(AdUnit.CALL_END_FULL.m28821a(), map.get(KEY_CED_CLOSE_BTN_PADDING), true);
        C6272d.m23424a(AdUnit.CALL_END_FULL.m28821a(), map.get(KEY_CED_CLOSE_BTN_TYPE));
        C6272d.m23423a(AdUnit.NDP.m28821a(), map.get(KEY_NDP_CLOSE_BTN_PADDING), true);
        C6272d.m23424a(AdUnit.NDP.m28821a(), String.valueOf(C6272d.f15547h));
        C6272d.m23423a(AdUnit.OFFLINE_DB_UPDATE.m28821a(), map.get(KEY_DB_UPDATE_CLOSE_BTN_PADDING), true);
        C6272d.m23424a(AdUnit.OFFLINE_DB_UPDATE.m28821a(), String.valueOf(C6272d.f15547h));
        C6272d.m23423a(AdUnit.SMS.m28821a(), map.get(KEY_SMS_CLOSE_BTN_PADDING), true);
        C6272d.m23424a(AdUnit.SMS.m28821a(), map.get(KEY_SMS_CLOSE_BTN_TYPE));
        C6272d.m23419c(map.get(KEY_SMS_AD_PADDING));
        C6272d.m23423a(AdUnit.ENTER.m28821a(), map.get(KEY_ENTER_CLOSE_BTN_PADDING), true);
        C6272d.m23424a(AdUnit.ENTER.m28821a(), map.get(KEY_ENTER_CLOSE_BTN_TYPE));
        C6272d.m23423a(AdUnit.AFTER_DB_UPDATE.m28821a(), map.get(KEY_AFTER_DB_UPDATE_CLOSE_BTN_PADDING), true);
        C6272d.m23424a(AdUnit.AFTER_DB_UPDATE.m28821a(), map.get(KEY_AFTER_DB_UPDATE_CLOSE_BTN_TYPE));
        C6272d.m23423a(AdUnit.CALL_END_NDP.m28821a(), map.get(KEY_NDP_CLOSE_BTN_PADDING), true);
        C6272d.m23424a(AdUnit.CALL_END_NDP.m28821a(), String.valueOf(C6272d.f15547h));
        C6272d.m23423a(AdUnit.SMS_SCANNING_PAGE.m28821a(), map.get(KEY_SMS_SCANNING_PAGE_CLOSE_BTN_PADDING), true);
        C6272d.m23424a(AdUnit.SMS_SCANNING_PAGE.m28821a(), String.valueOf(C6272d.f15547h));
    }

    @Override // p081h.p160h.p161a.p164j.AbstractC6218c
    /* renamed from: a */
    public void mo23553a(Map<String, ? extends Object> map, Map<String, String> map2) {
        C15149k.m377b(map, "localExtras");
        C15149k.m377b(map2, "serverExtras");
        if (!map2.containsKey(KEY_CLOSE_BTN_PADDING) || !map.containsKey("com.gogolook.adsdk.fetcher.AdUnitName") || !(map.get("com.gogolook.adsdk.fetcher.AdUnitName") instanceof String)) {
            m28720a(map2);
            return;
        }
        Object obj = map.get("com.gogolook.adsdk.fetcher.AdUnitName");
        if (obj != null) {
            String str = (String) obj;
            C6272d dVar = C6272d.f15553n;
            C6272d.m23423a(str, map2.get(KEY_CLOSE_BTN_PADDING), false);
            C6272d.m23424a(str, map2.get(KEY_CLOSE_BTN_TYPE));
            C6272d.m23419c(map2.get(KEY_SMS_AD_PADDING));
            return;
        }
        throw new C14986p("null cannot be cast to non-null type kotlin.String");
    }

    /* renamed from: b */
    public final C6216a m28717b(String str, EnumC6184a aVar, boolean z) {
        C6216a aVar2;
        MoPubAdRenderer moPubAdRenderer;
        if (C15149k.m384a((Object) str, (Object) AdUnit.BLOCK.m28821a())) {
            String n = z ? currentDevSource : m28705n();
            C6289b.C6290a aVar3 = new C6289b.C6290a(R$layout.block_ad_content_layout);
            aVar3.m23398b(R$id.iv_ad);
            aVar3.m23386h(R$id.tv_title);
            aVar3.m23388g(R$id.tv_content);
            aVar3.m23400a(R$id.tv_cta_btn);
            aVar3.m23390f(R$id.iv_privacy);
            aVar2 = new C6216a(str, aVar, n, new BlockMoPubNativeAdRender(aVar3.m23401a()), new RequestParameters.Builder().desiredAssets(m28723H()).build());
        } else if (C15149k.m384a((Object) str, (Object) AdUnit.OFFLINE_DB_MAIN_PAGE.m28821a())) {
            String y = z ? currentDevSource : m28694y();
            C6289b.C6290a aVar4 = new C6289b.C6290a(R$layout.offline_db_main_page_ad_content_layout);
            aVar4.m23394d(R$id.iv_ad);
            aVar4.m23386h(R$id.tv_title);
            aVar4.m23388g(R$id.tv_content);
            aVar4.m23400a(R$id.tv_cta_btn);
            aVar4.m23390f(R$id.iv_privacy);
            aVar2 = new C6216a(str, aVar, y, new OfflineDbMainPageAdMoPubNativeAdRender(aVar4.m23401a()), new RequestParameters.Builder().desiredAssets(m28723H()).build());
        } else if (C15149k.m384a((Object) str, (Object) AdUnit.CALL_LOG_STICKY.m28821a())) {
            String v = z ? currentDevSource : m28697v();
            C6289b.C6290a aVar5 = new C6289b.C6290a(R$layout.call_log_sticky_ad_layout);
            aVar5.m23398b(R$id.iv_ad);
            aVar5.m23386h(R$id.tv_title);
            aVar5.m23388g(R$id.tv_content);
            aVar5.m23400a(R$id.tv_cta_btn);
            aVar5.m23390f(R$id.iv_privacy);
            aVar2 = new C6216a(str, aVar, v, new CallLogStickyMoPubNativeAdRenderer(aVar5.m23401a()), new RequestParameters.Builder().desiredAssets(m28723H()).build());
        } else if (C15149k.m384a((Object) str, (Object) AdUnit.SMS_LOG_STICKY.m28821a())) {
            String E = z ? currentDevSource : m28726E();
            C6289b.C6290a aVar6 = new C6289b.C6290a(R$layout.call_log_sticky_ad_layout);
            aVar6.m23398b(R$id.iv_ad);
            aVar6.m23386h(R$id.tv_title);
            aVar6.m23388g(R$id.tv_content);
            aVar6.m23400a(R$id.tv_cta_btn);
            aVar6.m23390f(R$id.iv_privacy);
            aVar2 = new C6216a(str, aVar, E, new CallLogStickyMoPubNativeAdRenderer(aVar6.m23401a()), new RequestParameters.Builder().desiredAssets(m28723H()).build());
        } else if (C15149k.m384a((Object) str, (Object) AdUnit.NDP.m28821a())) {
            String x = z ? currentDevSource : m28695x();
            C6289b.C6290a aVar7 = new C6289b.C6290a(R$layout.ndp_native_ads);
            aVar7.m23394d(R$id.iv_ad);
            aVar7.m23386h(R$id.tv_title);
            aVar7.m23388g(R$id.tv_content);
            aVar7.m23400a(R$id.tv_cta_btn);
            aVar7.m23390f(R$id.iv_privacy);
            aVar7.m23396c(R$id.iv_ad_inner_close);
            aVar2 = new C6216a(str, aVar, x, new NDPMoPubNativeAdRender(aVar7.m23401a(), str), new RequestParameters.Builder().desiredAssets(m28723H()).build());
        } else if (C15149k.m384a((Object) str, (Object) AdUnit.SMS.m28821a())) {
            int a = m28722a(str);
            String B = z ? currentDevSource : a != 2 ? m28729B() : m28727D();
            if (a != 2) {
                C6289b.C6290a aVar8 = new C6289b.C6290a(R$layout.sms_native_ad_content_layout);
                aVar8.m23398b(R$id.iv_ad_icon);
                aVar8.m23386h(R$id.tv_title);
                aVar8.m23388g(R$id.tv_content);
                aVar8.m23400a(R$id.tv_cta_btn);
                aVar8.m23390f(R$id.iv_privacy);
                moPubAdRenderer = new SMSMoPubNativeAdRender(aVar8.m23401a());
            } else {
                C6289b.C6290a aVar9 = new C6289b.C6290a(R$layout.native_ad_template_2_container);
                aVar9.m23394d(R$id.iv_ad);
                aVar9.m23398b(R$id.iv_ad_icon);
                aVar9.m23386h(R$id.tv_title);
                aVar9.m23388g(R$id.tv_content);
                aVar9.m23400a(R$id.tv_cta_btn);
                aVar9.m23390f(R$id.iv_privacy);
                aVar9.m23396c(R$id.iv_ad_inner_close);
                aVar9.m23392e(R$id.iv_ad_outer_close);
                moPubAdRenderer = new NativeAdTemplate2Renderer(aVar9.m23401a(), str);
            }
            aVar2 = new C6216a(str, aVar, B, moPubAdRenderer, new RequestParameters.Builder().desiredAssets(m28723H()).build());
        } else if (C15149k.m384a((Object) str, (Object) AdUnit.OFFLINE_DB_UPDATE.m28821a())) {
            String z2 = z ? currentDevSource : m28693z();
            C6289b.C6290a aVar10 = new C6289b.C6290a(R$layout.offline_db_native_ads);
            aVar10.m23394d(R$id.iv_ad);
            aVar10.m23386h(R$id.tv_title);
            aVar10.m23388g(R$id.tv_content);
            aVar10.m23400a(R$id.tv_cta_btn);
            aVar10.m23390f(R$id.iv_privacy);
            aVar10.m23396c(R$id.iv_ad_inner_close);
            aVar2 = new C6216a(str, aVar, z2, new OfflineDBNativeAdRenderer(aVar10.m23401a(), str), new RequestParameters.Builder().desiredAssets(m28723H()).build());
        } else if (C15149k.m384a((Object) str, (Object) AdUnit.CALL_END_FULL.m28821a())) {
            String r = z ? currentDevSource : m28701r();
            C6289b.C6290a aVar11 = new C6289b.C6290a(R$layout.callend_native_full_ads);
            aVar11.m23394d(R$id.iv_ad);
            aVar11.m23398b(R$id.iv_ad_icon);
            aVar11.m23386h(R$id.tv_title);
            aVar11.m23388g(R$id.tv_content);
            aVar11.m23400a(R$id.tv_cta_btn);
            aVar11.m23390f(R$id.iv_privacy);
            aVar11.m23396c(R$id.iv_ad_inner_close);
            aVar11.m23392e(R$id.iv_ad_outer_close);
            aVar2 = new C6216a(str, aVar, r, new CallEndFullMoPubNativeAdRenderer(aVar11.m23401a()), new RequestParameters.Builder().desiredAssets(m28723H()).build());
        } else if (C15149k.m384a((Object) str, (Object) AdUnit.CALL_END_BANNER.m28821a())) {
            String o = z ? currentDevSource : m28704o();
            C6289b.C6290a aVar12 = new C6289b.C6290a(R$layout.callend_native_banner_ads_content);
            aVar12.m23394d(R$id.iv_ad);
            aVar12.m23398b(R$id.iv_ad_icon);
            aVar12.m23386h(R$id.tv_title);
            aVar12.m23388g(R$id.tv_content);
            aVar12.m23400a(R$id.tv_cta_btn);
            aVar12.m23390f(R$id.iv_privacy);
            aVar2 = new C6216a(str, aVar, o, new CallEndBannerMoPubNativeAdRenderer(aVar12.m23401a()), new RequestParameters.Builder().desiredAssets(m28723H()).build());
        } else if (C15149k.m384a((Object) str, (Object) AdUnit.CALL_END_DIALOG.m28821a())) {
            String q = z ? currentDevSource : m28702q();
            C6289b.C6290a aVar13 = new C6289b.C6290a(R$layout.native_ad_template_2_container);
            aVar13.m23394d(R$id.iv_ad);
            aVar13.m23398b(R$id.iv_ad_icon);
            aVar13.m23386h(R$id.tv_title);
            aVar13.m23388g(R$id.tv_content);
            aVar13.m23400a(R$id.tv_cta_btn);
            aVar13.m23390f(R$id.iv_privacy);
            aVar13.m23396c(R$id.iv_ad_inner_close);
            aVar13.m23392e(R$id.iv_ad_outer_close);
            aVar2 = new C6216a(str, aVar, q, new CallEndDialogMoPubNativeRenderer(aVar13.m23401a(), str), new RequestParameters.Builder().desiredAssets(m28723H()).build());
        } else if (C15149k.m384a((Object) str, (Object) AdUnit.ENTER.m28821a())) {
            String w = z ? currentDevSource : m28696w();
            C6289b.C6290a aVar14 = new C6289b.C6290a(R$layout.native_ad_template_1_container);
            aVar14.m23394d(R$id.iv_ad);
            aVar14.m23398b(R$id.iv_ad_icon);
            aVar14.m23386h(R$id.tv_title);
            aVar14.m23388g(R$id.tv_content);
            aVar14.m23400a(R$id.tv_cta_btn);
            aVar14.m23390f(R$id.iv_privacy);
            aVar14.m23396c(R$id.iv_ad_inner_close);
            aVar14.m23392e(R$id.iv_ad_outer_close);
            aVar2 = new C6216a(str, aVar, w, new EnterMoPubNativeAdRenderer(aVar14.m23401a(), str), new RequestParameters.Builder().desiredAssets(m28723H()).build());
        } else if (C15149k.m384a((Object) str, (Object) AdUnit.AFTER_DB_UPDATE.m28821a())) {
            String m = z ? currentDevSource : m28706m();
            C6289b.C6290a aVar15 = new C6289b.C6290a(R$layout.native_ad_template_1_container);
            aVar15.m23394d(R$id.iv_ad);
            aVar15.m23398b(R$id.iv_ad_icon);
            aVar15.m23386h(R$id.tv_title);
            aVar15.m23388g(R$id.tv_content);
            aVar15.m23400a(R$id.tv_cta_btn);
            aVar15.m23390f(R$id.iv_privacy);
            aVar15.m23396c(R$id.iv_ad_inner_close);
            aVar15.m23392e(R$id.iv_ad_outer_close);
            aVar2 = new C6216a(str, aVar, m, new AfterDbUpdateMoPubNativeAdRenderer(aVar15.m23401a(), str), new RequestParameters.Builder().desiredAssets(m28723H()).build());
        } else if (C15149k.m384a((Object) str, (Object) AdUnit.CALL_END_NDP.m28821a())) {
            String t = z ? currentDevSource : m28699t();
            C6289b.C6290a aVar16 = new C6289b.C6290a(R$layout.ndp_native_ads);
            aVar16.m23394d(R$id.iv_ad);
            aVar16.m23386h(R$id.tv_title);
            aVar16.m23388g(R$id.tv_content);
            aVar16.m23400a(R$id.tv_cta_btn);
            aVar16.m23390f(R$id.iv_privacy);
            aVar16.m23396c(R$id.iv_ad_inner_close);
            aVar2 = new C6216a(str, aVar, t, new NDPMoPubNativeAdRender(aVar16.m23401a(), str), new RequestParameters.Builder().desiredAssets(m28723H()).build());
        } else if (C15149k.m384a((Object) str, (Object) AdUnit.CALL_LOG_CONTENT_FEED.m28821a())) {
            String u = z ? currentDevSource : m28698u();
            C6289b.C6290a aVar17 = new C6289b.C6290a(R$layout.call_log_sticky_ad_layout);
            aVar17.m23398b(R$id.iv_ad);
            aVar17.m23386h(R$id.tv_title);
            aVar17.m23388g(R$id.tv_content);
            aVar17.m23400a(R$id.tv_cta_btn);
            aVar17.m23390f(R$id.iv_privacy);
            aVar2 = new C6216a(str, aVar, u, new CallLogStickyMoPubNativeAdRenderer(aVar17.m23401a()), new RequestParameters.Builder().desiredAssets(m28723H()).build());
        } else if (C15149k.m384a((Object) str, (Object) AdUnit.PROTECTION_PAGE.m28821a())) {
            String A = z ? currentDevSource : m28730A();
            C6289b.C6290a aVar18 = new C6289b.C6290a(R$layout.offline_db_main_page_ad_content_layout);
            aVar18.m23394d(R$id.iv_ad);
            aVar18.m23386h(R$id.tv_title);
            aVar18.m23388g(R$id.tv_content);
            aVar18.m23400a(R$id.tv_cta_btn);
            aVar18.m23390f(R$id.iv_privacy);
            aVar2 = new C6216a(str, aVar, A, new OfflineDbMainPageAdMoPubNativeAdRender(aVar18.m23401a()), new RequestParameters.Builder().desiredAssets(m28723H()).build());
        } else if (C15149k.m384a((Object) str, (Object) AdUnit.SMS_SCANNING_PAGE.m28821a())) {
            String F = z ? currentDevSource : m28725F();
            C6289b.C6290a aVar19 = new C6289b.C6290a(R$layout.ndp_native_ads);
            aVar19.m23394d(R$id.iv_ad);
            aVar19.m23386h(R$id.tv_title);
            aVar19.m23388g(R$id.tv_content);
            aVar19.m23400a(R$id.tv_cta_btn);
            aVar19.m23390f(R$id.iv_privacy);
            aVar19.m23396c(R$id.iv_ad_inner_close);
            aVar2 = new C6216a(str, aVar, F, new ScanningPageNativeAdRenderer(aVar19.m23401a(), str), new RequestParameters.Builder().desiredAssets(m28723H()).build());
        } else if (C15149k.m384a((Object) str, (Object) AdUnit.SMS_SCAN_RESULT_STICKY.m28821a())) {
            String G = z ? currentDevSource : m28724G();
            C6289b.C6290a aVar20 = new C6289b.C6290a(R$layout.call_log_sticky_ad_layout);
            aVar20.m23398b(R$id.iv_ad);
            aVar20.m23386h(R$id.tv_title);
            aVar20.m23388g(R$id.tv_content);
            aVar20.m23400a(R$id.tv_cta_btn);
            aVar20.m23390f(R$id.iv_privacy);
            aVar2 = new C6216a(str, aVar, G, new CallLogStickyMoPubNativeAdRenderer(aVar20.m23401a()), new RequestParameters.Builder().desiredAssets(m28723H()).build());
        } else {
            aVar2 = null;
        }
        return aVar2;
    }

    /* renamed from: b */
    public final String m28719b() {
        AbstractC14974f fVar = DEV_MOPUB$delegate;
        AbstractC14906i iVar = $$delegatedProperties[8];
        return (String) fVar.getValue();
    }

    /* renamed from: c */
    public final String m28716c() {
        AbstractC14974f fVar = DEV_MOPUB_ADBERT$delegate;
        AbstractC14906i iVar = $$delegatedProperties[2];
        return (String) fVar.getValue();
    }

    /* renamed from: d */
    public final String m28715d() {
        AbstractC14974f fVar = DEV_MOPUB_ADMOB$delegate;
        AbstractC14906i iVar = $$delegatedProperties[1];
        return (String) fVar.getValue();
    }

    /* renamed from: e */
    public final String m28714e() {
        AbstractC14974f fVar = DEV_MOPUB_AOTTER$delegate;
        AbstractC14906i iVar = $$delegatedProperties[3];
        return (String) fVar.getValue();
    }

    /* renamed from: f */
    public final String m28713f() {
        AbstractC14974f fVar = DEV_MOPUB_APPIER$delegate;
        AbstractC14906i iVar = $$delegatedProperties[7];
        return (String) fVar.getValue();
    }

    /* renamed from: g */
    public final String m28712g() {
        AbstractC14974f fVar = DEV_MOPUB_CRITEO$delegate;
        AbstractC14906i iVar = $$delegatedProperties[10];
        return (String) fVar.getValue();
    }

    /* renamed from: h */
    public final String m28711h() {
        AbstractC14974f fVar = DEV_MOPUB_FACEBOOK$delegate;
        AbstractC14906i iVar = $$delegatedProperties[0];
        return (String) fVar.getValue();
    }

    /* renamed from: i */
    public final String m28710i() {
        AbstractC14974f fVar = DEV_MOPUB_FLURRY$delegate;
        AbstractC14906i iVar = $$delegatedProperties[4];
        return (String) fVar.getValue();
    }

    /* renamed from: j */
    public final String m28709j() {
        AbstractC14974f fVar = DEV_MOPUB_LINE_ITEM$delegate;
        AbstractC14906i iVar = $$delegatedProperties[9];
        return (String) fVar.getValue();
    }

    /* renamed from: k */
    public final String m28708k() {
        AbstractC14974f fVar = DEV_MOPUB_NONE$delegate;
        AbstractC14906i iVar = $$delegatedProperties[6];
        return (String) fVar.getValue();
    }

    /* renamed from: l */
    public final String m28707l() {
        AbstractC14974f fVar = DEV_MOPUB_TAMEDIA$delegate;
        AbstractC14906i iVar = $$delegatedProperties[5];
        return (String) fVar.getValue();
    }

    /* renamed from: m */
    public final String m28706m() {
        AbstractC14974f fVar = MOPUB_AFTER_DB_UPDATE_AD$delegate;
        AbstractC14906i iVar = $$delegatedProperties[25];
        return (String) fVar.getValue();
    }

    /* renamed from: n */
    public final String m28705n() {
        AbstractC14974f fVar = MOPUB_BLOCK_STICKY_AD_UNIT_ID$delegate;
        AbstractC14906i iVar = $$delegatedProperties[11];
        return (String) fVar.getValue();
    }

    /* renamed from: o */
    public final String m28704o() {
        AbstractC14974f fVar = MOPUB_CALL_END_BANNER$delegate;
        AbstractC14906i iVar = $$delegatedProperties[20];
        return (String) fVar.getValue();
    }

    /* renamed from: p */
    public final String m28703p() {
        AbstractC14974f fVar = MOPUB_CALL_END_BANNER_AOTTER_TREK$delegate;
        AbstractC14906i iVar = $$delegatedProperties[23];
        return (String) fVar.getValue();
    }

    /* renamed from: q */
    public final String m28702q() {
        AbstractC14974f fVar = MOPUB_CALL_END_DIALOG$delegate;
        AbstractC14906i iVar = $$delegatedProperties[21];
        return (String) fVar.getValue();
    }

    /* renamed from: r */
    public final String m28701r() {
        AbstractC14974f fVar = MOPUB_CALL_END_FULL$delegate;
        AbstractC14906i iVar = $$delegatedProperties[19];
        return (String) fVar.getValue();
    }

    /* renamed from: s */
    public final String m28700s() {
        AbstractC14974f fVar = MOPUB_CALL_END_FULL_AOTTER_TREK$delegate;
        AbstractC14906i iVar = $$delegatedProperties[22];
        return (String) fVar.getValue();
    }

    /* renamed from: t */
    public final String m28699t() {
        AbstractC14974f fVar = MOPUB_CALL_END_NDP$delegate;
        AbstractC14906i iVar = $$delegatedProperties[27];
        return (String) fVar.getValue();
    }

    /* renamed from: u */
    public final String m28698u() {
        AbstractC14974f fVar = MOPUB_CALL_LOG_CONTENT_FEED$delegate;
        AbstractC14906i iVar = $$delegatedProperties[28];
        return (String) fVar.getValue();
    }

    /* renamed from: v */
    public final String m28697v() {
        AbstractC14974f fVar = MOPUB_CALL_LOG_STICKY_AD$delegate;
        AbstractC14906i iVar = $$delegatedProperties[13];
        return (String) fVar.getValue();
    }

    /* renamed from: w */
    public final String m28696w() {
        AbstractC14974f fVar = MOPUB_ENTER_AD$delegate;
        AbstractC14906i iVar = $$delegatedProperties[26];
        return (String) fVar.getValue();
    }

    /* renamed from: x */
    public final String m28695x() {
        AbstractC14974f fVar = MOPUB_NDP_AD$delegate;
        AbstractC14906i iVar = $$delegatedProperties[15];
        return (String) fVar.getValue();
    }

    /* renamed from: y */
    public final String m28694y() {
        AbstractC14974f fVar = MOPUB_OFFLINE_DB_MAIN_PAGE_AD$delegate;
        AbstractC14906i iVar = $$delegatedProperties[12];
        return (String) fVar.getValue();
    }

    /* renamed from: z */
    public final String m28693z() {
        AbstractC14974f fVar = MOPUB_OFFLINE_DB_UPDATE_AD$delegate;
        AbstractC14906i iVar = $$delegatedProperties[16];
        return (String) fVar.getValue();
    }
}
