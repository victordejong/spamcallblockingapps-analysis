package com.mopub.nativeads;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.media2.exoplayer.external.text.ttml.TtmlNode;
import com.adbert.AdbertNativeAD;
import com.adbert.AdbertNativeADListener;
import com.appsflyer.AppsFlyerProperties;
import com.mopub.nativeads.CustomEventNative;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
import p081h.p160h.p161a.p165k.C6219a;
import p081h.p160h.p161a.p168n.C6260a;
import p081h.p160h.p161a.p169o.C6262a;
/* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/AdbertCustomEventNative.class */
public class AdbertCustomEventNative extends BaseCustomEventNative {

    /* renamed from: e */
    public static final String f8965e = "AdbertCustomEventNative";

    /* renamed from: com.mopub.nativeads.AdbertCustomEventNative$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/AdbertCustomEventNative$a.class */
    public class C3926a extends AdbertNativeADListener {

        /* renamed from: a */
        public final /* synthetic */ CustomEventNative.CustomEventNativeListener f8966a;

        /* renamed from: b */
        public final /* synthetic */ Context f8967b;

        /* renamed from: c */
        public final /* synthetic */ AdbertNativeAD f8968c;

        public C3926a(CustomEventNative.CustomEventNativeListener customEventNativeListener, Context context, AdbertNativeAD adbertNativeAD) {
            this.f8966a = customEventNativeListener;
            this.f8967b = context;
            this.f8968c = adbertNativeAD;
        }

        @Override // com.adbert.AdbertNativeADListener
        public void onFailReceived(String str) {
            C6260a aVar = AdbertCustomEventNative.this.f9009a;
            if (aVar != null) {
                String name = NativeErrorCode.NETWORK_NO_FILL.name();
                aVar.m23467b(C6260a.m23469a(name, "errorMessage: " + str));
            }
            String str2 = AdbertCustomEventNative.f8965e;
            AdbertCustomEventNative adbertCustomEventNative = AdbertCustomEventNative.this;
            C6219a.m23549a(str2, adbertCustomEventNative.f9010b, adbertCustomEventNative.f9011c, C6260a.m23469a(NativeErrorCode.NETWORK_NO_FILL.toString(), str));
            this.f8966a.onNativeAdFailed(NativeErrorCode.NETWORK_NO_FILL);
        }

        @Override // com.adbert.AdbertNativeADListener
        public void onReceived(String str) {
            C6260a aVar = AdbertCustomEventNative.this.f9009a;
            if (aVar != null) {
                aVar.m23467b(C6262a.EnumC6263a.NETWORK_FILL.name());
            }
            this.f8966a.onNativeAdLoaded(new C3927b(this.f8967b, this.f8968c));
        }
    }

    /* renamed from: com.mopub.nativeads.AdbertCustomEventNative$b */
    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/AdbertCustomEventNative$b.class */
    public static class C3927b extends StaticNativeAd {

        /* renamed from: p */
        public AdbertNativeAD f8970p;

        /* renamed from: q */
        public ImpressionTracker f8971q;

        /* renamed from: r */
        public View f8972r;

        public C3927b(@NonNull Context context, @NonNull AdbertNativeAD adbertNativeAD) {
            this.f8970p = null;
            this.f8971q = null;
            this.f8971q = new ImpressionTracker(context);
            if (adbertNativeAD.isReady()) {
                this.f8970p = adbertNativeAD;
                JSONObject data = adbertNativeAD.getData();
                try {
                    setTitle(data.getString("headline"));
                    setText(data.getString("desc"));
                    setMainImageUrl(data.getString(TtmlNode.TAG_IMAGE));
                    setIconImageUrl(data.getString("icon"));
                    addExtra("company", data.getString("companyName"));
                } catch (JSONException e) {
                    e.printStackTrace();
                }
            }
        }

        @Override // com.mopub.nativeads.StaticNativeAd, com.mopub.nativeads.BaseNativeAd
        public void destroy() {
            super.destroy();
            ImpressionTracker impressionTracker = this.f8971q;
            if (impressionTracker != null) {
                impressionTracker.removeView(this.f8972r);
            }
            this.f8970p.unregisterView(this.f8972r);
        }

        @Override // com.mopub.nativeads.StaticNativeAd, com.mopub.nativeads.ClickInterface
        public void handleClick(@NonNull View view) {
            super.handleClick(view);
            notifyAdClicked();
        }

        @Override // com.mopub.nativeads.StaticNativeAd, com.mopub.nativeads.BaseNativeAd
        public void prepare(@NonNull View view) {
            super.prepare(view);
            this.f8972r = view;
            ImpressionTracker impressionTracker = this.f8971q;
            if (impressionTracker != null) {
                impressionTracker.addView(this.f8972r, this);
            }
            this.f8970p.registerView(view);
        }

        @Override // com.mopub.nativeads.StaticNativeAd, com.mopub.nativeads.ImpressionInterface
        public void recordImpression(@NonNull View view) {
            super.recordImpression(view);
            notifyAdImpressed();
        }
    }

    @Override // com.mopub.nativeads.BaseCustomEventNative, com.mopub.nativeads.CustomEventNative
    public void loadNativeAd(@NonNull Context context, @NonNull CustomEventNative.CustomEventNativeListener customEventNativeListener, Map<String, Object> map, @NonNull Map<String, String> map2) {
        super.loadNativeAd(context, customEventNativeListener, map, map2);
        C6260a aVar = this.f9009a;
        if (aVar != null) {
            aVar.m23470a(AdbertCustomEventNative.class.getName());
        }
        String str = map2.get(AppsFlyerProperties.APP_ID);
        String str2 = map2.get("appkey");
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            AdbertNativeAD adbertNativeAD = new AdbertNativeAD(context, str, str2);
            if (isValidUsingTestAdSource(map2)) {
                adbertNativeAD.setTestMode();
            }
            adbertNativeAD.setListener(new C3926a(customEventNativeListener, context, adbertNativeAD));
            C6260a aVar2 = this.f9009a;
            if (aVar2 != null) {
                aVar2.m23456j();
            }
            adbertNativeAD.loadAD();
        }
    }
}
