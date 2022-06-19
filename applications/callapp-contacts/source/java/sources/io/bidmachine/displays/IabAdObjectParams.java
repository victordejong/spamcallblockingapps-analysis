package io.bidmachine.displays;

import android.graphics.Color;
import android.text.TextUtils;
import com.explorestack.iab.utils.C9593h;
import com.explorestack.protobuf.adcom.C9813Ad;
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

    public IabAdObjectParams(Response.Seatbid seatbid, Response.Seatbid.Bid bid, C9813Ad c9813Ad) {
        super(seatbid, bid, c9813Ad);
        getData().put(IabUtils.KEY_CREATIVE_ID, c9813Ad.getId());
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
        boolean z = true;
        switch (str.hashCode()) {
            case -1364013995:
                if (str.equals("center")) {
                    z = false;
                    break;
                }
                break;
            case 3317767:
                if (str.equals("left")) {
                    z = true;
                    break;
                }
                break;
            case 108511772:
                if (str.equals("right")) {
                    z = true;
                    break;
                }
                break;
        }
        switch (z) {
            case false:
                return 1;
            case true:
                return 3;
            case true:
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
        boolean z = true;
        switch (str.hashCode()) {
            case -1383228885:
                if (str.equals("bottom")) {
                    z = false;
                    break;
                }
                break;
            case -1364013995:
                if (str.equals("center")) {
                    z = true;
                    break;
                }
                break;
            case 115029:
                if (str.equals("top")) {
                    z = true;
                    break;
                }
                break;
        }
        switch (z) {
            case false:
                return 80;
            case true:
                return 16;
            case true:
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
        C9593h transform = transform(adExtension.getCloseButton());
        if (transform != null) {
            getData().put(IabUtils.KEY_CLOSABLE_VIEW_STYLE, transform);
        }
        C9593h transform2 = transform(adExtension.getCountdown());
        if (transform2 != null) {
            getData().put(IabUtils.KEY_COUNTDOWN_STYLE, transform2);
        }
        C9593h transform3 = transform(adExtension.getProgress());
        if (transform3 != null) {
            getData().put(IabUtils.KEY_PROGRESS_STYLE, transform3);
        }
    }

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

    C9593h transform(AdExtension.ControlAsset controlAsset) {
        if (controlAsset == null) {
            return null;
        }
        try {
            C9593h c9593h = new C9593h();
            c9593h.m24059b(controlAsset.getMargin());
            c9593h.m24065a(controlAsset.getPadding());
            c9593h.f32592j = controlAsset.getContent();
            c9593h.f32584b = parseColor(controlAsset.getFill());
            c9593h.f32596n = Integer.valueOf(controlAsset.getFontStyle());
            c9593h.m24066a(Integer.valueOf(controlAsset.getWidth()));
            c9593h.m24060b(Integer.valueOf(controlAsset.getHeight()));
            c9593h.f32591i = Float.valueOf(controlAsset.getHideafter());
            c9593h.f32587e = parseHorizontalPosition(controlAsset.getX());
            c9593h.f32588f = parseVerticalPosition(controlAsset.getY());
            c9593h.f32590h = Float.valueOf(controlAsset.getOpacity());
            c9593h.f32585c = Boolean.valueOf(controlAsset.getOutlined());
            c9593h.f32583a = parseColor(controlAsset.getStroke());
            c9593h.f32593k = Float.valueOf(controlAsset.getStrokeWidth());
            c9593h.f32589g = controlAsset.getStyle();
            c9593h.f32586d = Boolean.valueOf(controlAsset.getVisible());
            return c9593h;
        } catch (Exception e) {
            return null;
        }
    }
}
