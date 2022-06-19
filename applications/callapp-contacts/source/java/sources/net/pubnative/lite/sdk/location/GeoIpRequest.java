package net.pubnative.lite.sdk.location;

import android.content.Context;
import android.net.Uri;
import com.mopub.common.Constants;
import net.pubnative.lite.sdk.network.PNHttpClient;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/location/GeoIpRequest.class */
public class GeoIpRequest {

    /* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/location/GeoIpRequest$GeoIpRequestListener.class */
    public interface GeoIpRequestListener {
        void onFailure(Throwable th);

        void onSuccess(String str);
    }

    private String getEndpointUrl() {
        return new Uri.Builder().scheme(Constants.HTTPS).authority("pubnative.info").appendPath("country").build().toString();
    }

    public void fetchGeoIp(Context context, final GeoIpRequestListener geoIpRequestListener) {
        PNHttpClient.makeRequest(context, getEndpointUrl(), null, null, new PNHttpClient.Listener() { // from class: net.pubnative.lite.sdk.location.GeoIpRequest.1
            @Override // net.pubnative.lite.sdk.network.PNHttpClient.Listener
            public void onFailure(Throwable th) {
                GeoIpRequestListener geoIpRequestListener2 = geoIpRequestListener;
                if (geoIpRequestListener2 != null) {
                    geoIpRequestListener2.onFailure(th);
                }
            }

            @Override // net.pubnative.lite.sdk.network.PNHttpClient.Listener
            public void onSuccess(String str) {
                GeoIpRequestListener geoIpRequestListener2 = geoIpRequestListener;
                if (geoIpRequestListener2 != null) {
                    geoIpRequestListener2.onSuccess(str);
                }
            }
        });
    }
}
