package io.bidmachine.displays;

import com.explorestack.protobuf.adcom.Ad;
import com.explorestack.protobuf.openrtb.Response;
import io.bidmachine.core.Logger;
import io.bidmachine.models.AdObjectParams;
import io.bidmachine.protobuf.headerbidding.HeaderBiddingAd;
import io.bidmachine.unified.UnifiedMediationParams;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5-dex2jar.jar:io/bidmachine/displays/HeaderBiddingAdObjectParams.class */
public class HeaderBiddingAdObjectParams extends AdObjectParams {
    private final HeaderBiddingAd headerBiddingAd;
    private final a mediationParams = new a();

    /* loaded from: classes5-dex2jar.jar:io/bidmachine/displays/HeaderBiddingAdObjectParams$a.class */
    final class a extends UnifiedMediationParams {
        private a() {
        }

        @Override // io.bidmachine.unified.UnifiedMediationParams
        public final boolean contains(String str) {
            if (str != null) {
                return HeaderBiddingAdObjectParams.this.headerBiddingAd.containsServerParams(str) || HeaderBiddingAdObjectParams.this.headerBiddingAd.containsClientParams(str);
            }
            return false;
        }

        @Override // io.bidmachine.unified.UnifiedMediationParams
        public final boolean getBool(String str, boolean z) {
            String param = HeaderBiddingAdObjectParams.this.getParam(str);
            if (param != null) {
                try {
                    return Boolean.parseBoolean(param);
                } catch (Exception e) {
                    Logger.log(e);
                }
            }
            return z;
        }

        @Override // io.bidmachine.unified.UnifiedMediationParams
        public final double getDouble(String str, double d2) {
            String param = HeaderBiddingAdObjectParams.this.getParam(str);
            if (param != null) {
                try {
                    return Double.parseDouble(param);
                } catch (Exception e) {
                    Logger.log(e);
                }
            }
            return d2;
        }

        @Override // io.bidmachine.unified.UnifiedMediationParams
        public final float getFloat(String str, float f) {
            String param = HeaderBiddingAdObjectParams.this.getParam(str);
            if (param != null) {
                try {
                    return Float.parseFloat(param);
                } catch (Exception e) {
                    Logger.log(e);
                }
            }
            return f;
        }

        @Override // io.bidmachine.unified.UnifiedMediationParams
        public final int getInt(String str, int i) {
            String param = HeaderBiddingAdObjectParams.this.getParam(str);
            if (param != null) {
                try {
                    return Integer.parseInt(param);
                } catch (Exception e) {
                    Logger.log(e);
                }
            }
            return i;
        }

        @Override // io.bidmachine.unified.UnifiedMediationParams
        public final Integer getInteger(String str, Integer num) {
            String param = HeaderBiddingAdObjectParams.this.getParam(str);
            if (param != null) {
                try {
                    return Integer.valueOf(Integer.parseInt(param));
                } catch (Exception e) {
                    Logger.log(e);
                }
            }
            return num;
        }

        @Override // io.bidmachine.unified.UnifiedMediationParams
        public final String getString(String str, String str2) {
            String param = HeaderBiddingAdObjectParams.this.getParam(str);
            return param != null ? param : str2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public HeaderBiddingAdObjectParams(Response.Seatbid seatbid, Response.Seatbid.Bid bid, Ad ad, HeaderBiddingAd headerBiddingAd) {
        super(seatbid, bid, ad);
        this.headerBiddingAd = headerBiddingAd;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getParam(String str) {
        if (str == null) {
            return null;
        }
        String serverParamsOrDefault = this.headerBiddingAd.getServerParamsOrDefault(str, null);
        String str2 = serverParamsOrDefault;
        if (serverParamsOrDefault == null) {
            str2 = this.headerBiddingAd.getClientParamsOrDefault(str, null);
        }
        return str2;
    }

    @Override // io.bidmachine.models.AdObjectParams
    public boolean isValid() {
        return true;
    }

    @Override // io.bidmachine.models.AdObjectParams
    public UnifiedMediationParams toMediationParams() {
        return this.mediationParams;
    }
}
