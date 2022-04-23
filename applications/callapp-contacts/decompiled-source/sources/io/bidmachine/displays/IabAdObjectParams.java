package io.bidmachine.displays;

import android.graphics.Color;
import android.text.TextUtils;
import com.explorestack.iab.utils.h;
import com.explorestack.protobuf.adcom.Ad;
import com.explorestack.protobuf.openrtb.Response;
import io.bidmachine.models.AdObjectParams;
import io.bidmachine.protobuf.AdExtension;
import io.bidmachine.unified.UnifiedMediationParams;
import io.bidmachine.utils.IabUtils;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes5-dex2jar.jar:io/bidmachine/displays/IabAdObjectParams.class */
abstract class IabAdObjectParams extends AdObjectParams implements UnifiedMediationParams.MappedUnifiedMediationParams.DataProvider {
    private UnifiedMediationParams mediationParams = new UnifiedMediationParams.MappedUnifiedMediationParams(this);
    private Map<String, Object> params;

    /* JADX INFO: Access modifiers changed from: package-private */
    public IabAdObjectParams(Response.Seatbid seatbid, Response.Seatbid.Bid bid, Ad ad) {
        super(seatbid, bid, ad);
        getData().put(IabUtils.KEY_CREATIVE_ID, ad.getId());
    }

    @Override // io.bidmachine.unified.UnifiedMediationParams.MappedUnifiedMediationParams.DataProvider
    public Map<String, Object> getData() {
        if (this.params == null) {
            this.params = new HashMap();
        }
        return this.params;
    }

    @Override // io.bidmachine.models.AdObjectParams
    public boolean isValid() {
        Object obj = this.params.get(IabUtils.KEY_CREATIVE_ADM);
        return (obj instanceof String) && !TextUtils.isEmpty((CharSequence) obj);
    }

    Integer parseColor(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            return Integer.valueOf(Color.parseColor(str));
        } catch (Exception e) {
            return null;
        }
    }

    Integer parseHorizontalPosition(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        str.hashCode();
        char c2 = 65535;
        switch (str.hashCode()) {
            case -1364013995:
                if (str.equals("center")) {
                    c2 = 0;
                    break;
                }
                break;
            case 3317767:
                if (str.equals("left")) {
                    c2 = 1;
                    break;
                }
                break;
            case 108511772:
                if (str.equals("right")) {
                    c2 = 2;
                    break;
                }
                break;
        }
        switch (c2) {
            case 0:
                return 1;
            case 1:
                return 3;
            case 2:
                return 5;
            default:
                return null;
        }
    }

    Integer parseVerticalPosition(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        str.hashCode();
        char c2 = 65535;
        switch (str.hashCode()) {
            case -1383228885:
                if (str.equals("bottom")) {
                    c2 = 0;
                    break;
                }
                break;
            case -1364013995:
                if (str.equals("center")) {
                    c2 = 1;
                    break;
                }
                break;
            case 115029:
                if (str.equals("top")) {
                    c2 = 2;
                    break;
                }
                break;
        }
        switch (c2) {
            case 0:
                return 80;
            case 1:
                return 16;
            case 2:
                return 48;
            default:
                return null;
        }
    }

    @Override // io.bidmachine.models.AdObjectParams
    public void prepareExtensions(Response.Seatbid seatbid, Response.Seatbid.Bid bid, AdExtension adExtension) {
        super.prepareExtensions(seatbid, bid, adExtension);
        getData().put(IabUtils.KEY_PRELOAD, Boolean.valueOf(adExtension.getPreload()));
        getData().put(IabUtils.KEY_LOAD_SKIP_OFFSET, Integer.valueOf(adExtension.getLoadSkipoffset()));
        getData().put(IabUtils.KEY_USE_NATIVE_CLOSE, Boolean.valueOf(adExtension.getUseNativeClose()));
        getData().put(IabUtils.KEY_SKIP_OFFSET, Integer.valueOf(adExtension.getSkipoffset()));
        getData().put(IabUtils.KEY_COMPANION_SKIP_OFFSET, Integer.valueOf(adExtension.getCompanionSkipoffset()));
        getData().put(IabUtils.KEY_R1, Boolean.valueOf(adExtension.getR1()));
        getData().put(IabUtils.KEY_R2, Boolean.valueOf(adExtension.getR2()));
        getData().put(IabUtils.KEY_IGNORE_SAFE_AREA_LAYOUT_GUIDE, Boolean.valueOf(adExtension.getIgnoresSafeAreaLayoutGuide()));
        getData().put(IabUtils.KEY_STORE_URL, adExtension.getStoreUrl());
        getData().put(IabUtils.KEY_PROGRESS_DURATION, Integer.valueOf(adExtension.getProgressDuration()));
        h transform = transform(adExtension.getCloseButton());
        if (transform != null) {
            getData().put(IabUtils.KEY_CLOSABLE_VIEW_STYLE, transform);
        }
        h transform2 = transform(adExtension.getCountdown());
        if (transform2 != null) {
            getData().put(IabUtils.KEY_COUNTDOWN_STYLE, transform2);
        }
        h transform3 = transform(adExtension.getProgress());
        if (transform3 != null) {
            getData().put(IabUtils.KEY_PROGRESS_STYLE, transform3);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setCreativeAdm(String str) {
        getData().put(IabUtils.KEY_CREATIVE_ADM, str);
    }

    public void setHeight(int i) {
        getData().put("height", Integer.valueOf(i));
    }

    public void setWidth(int i) {
        getData().put("width", Integer.valueOf(i));
    }

    @Override // io.bidmachine.models.AdObjectParams
    public UnifiedMediationParams toMediationParams() {
        return this.mediationParams;
    }

    h transform(AdExtension.ControlAsset controlAsset) {
        if (controlAsset == null) {
            return null;
        }
        try {
            h hVar = new h();
            hVar.b(controlAsset.getMargin());
            hVar.a(controlAsset.getPadding());
            hVar.j = controlAsset.getContent();
            hVar.f19185b = parseColor(controlAsset.getFill());
            hVar.n = Integer.valueOf(controlAsset.getFontStyle());
            hVar.a(Integer.valueOf(controlAsset.getWidth()));
            hVar.b(Integer.valueOf(controlAsset.getHeight()));
            hVar.i = Float.valueOf(controlAsset.getHideafter());
            hVar.e = parseHorizontalPosition(controlAsset.getX());
            hVar.f = parseVerticalPosition(controlAsset.getY());
            hVar.h = Float.valueOf(controlAsset.getOpacity());
            hVar.f19186c = Boolean.valueOf(controlAsset.getOutlined());
            hVar.f19184a = parseColor(controlAsset.getStroke());
            hVar.k = Float.valueOf(controlAsset.getStrokeWidth());
            hVar.g = controlAsset.getStyle();
            hVar.f19187d = Boolean.valueOf(controlAsset.getVisible());
            return hVar;
        } catch (Exception e) {
            return null;
        }
    }
}
