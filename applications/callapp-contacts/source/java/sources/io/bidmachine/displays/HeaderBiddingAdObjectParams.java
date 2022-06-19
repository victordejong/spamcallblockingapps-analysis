package io.bidmachine.displays;

import com.explorestack.protobuf.adcom.C9813Ad;
import com.explorestack.protobuf.openrtb.Response;
import io.bidmachine.core.Logger;
import io.bidmachine.models.AdObjectParams;
import io.bidmachine.protobuf.headerbidding.HeaderBiddingAd;
import io.bidmachine.unified.UnifiedMediationParams;
/* loaded from: classes5-dex2jar.jar:io/bidmachine/displays/HeaderBiddingAdObjectParams.class */
public class HeaderBiddingAdObjectParams extends AdObjectParams {
    private final HeaderBiddingAd headerBiddingAd;
    private final C17852a mediationParams = new C17852a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: io.bidmachine.displays.HeaderBiddingAdObjectParams$a */
    /* loaded from: classes5-dex2jar.jar:io/bidmachine/displays/HeaderBiddingAdObjectParams$a.class */
    public final class C17852a extends UnifiedMediationParams {
        private C17852a() {
            HeaderBiddingAdObjectParams.this = r4;
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
        public final double getDouble(String str, double d) {
            String param = HeaderBiddingAdObjectParams.this.getParam(str);
            if (param != null) {
                try {
                    return Double.parseDouble(param);
                } catch (Exception e) {
                    Logger.log(e);
                }
            }
            return d;
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

    public HeaderBiddingAdObjectParams(Response.Seatbid seatbid, Response.Seatbid.Bid bid, C9813Ad c9813Ad, HeaderBiddingAd headerBiddingAd) {
        super(seatbid, bid, c9813Ad);
        this.headerBiddingAd = headerBiddingAd;
    }

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
