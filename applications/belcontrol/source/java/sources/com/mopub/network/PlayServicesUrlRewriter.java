package com.mopub.network;

import android.net.Uri;
import com.mopub.common.ClientMetadata;
import com.mopub.common.Constants;
import com.mopub.common.MoPub;
import com.mopub.common.privacy.AdvertisingId;
import com.mopub.volley.toolbox.HurlStack;
/* loaded from: classes3-dex2jar.jar:com/mopub/network/PlayServicesUrlRewriter.class */
public class PlayServicesUrlRewriter implements HurlStack.UrlRewriter {
    public static final String DO_NOT_TRACK_TEMPLATE = "mp_tmpl_do_not_track";
    public static final String IFA_TEMPLATE = "mp_tmpl_advertising_id";
    public static final String MOPUB_ID_TEMPLATE = "mp_tmpl_mopub_id";
    public static final String TAS_TEMPLATE = "mp_tmpl_tas";

    @Override // com.mopub.volley.toolbox.HurlStack.UrlRewriter
    public String rewriteUrl(String str) {
        ClientMetadata clientMetadata = ClientMetadata.getInstance();
        if (clientMetadata == null) {
            return str;
        }
        AdvertisingId advertisingInfo = clientMetadata.getMoPubIdentifier().getAdvertisingInfo();
        String replace = str.replace(DO_NOT_TRACK_TEMPLATE, advertisingInfo.isDoNotTrack() ? "1" : "0").replace(TAS_TEMPLATE, advertisingInfo.isDoNotTrack() ? Constants.TAS_DENIED : Constants.TAS_AUTHORIZED);
        return ((!MoPub.canCollectPersonalInformation() || advertisingInfo.isDoNotTrack()) ? replace.replace("&ifa=mp_tmpl_advertising_id", "") : replace.replace(IFA_TEMPLATE, Uri.encode(advertisingInfo.getIdentifier(true)))).replace(MOPUB_ID_TEMPLATE, Uri.encode(advertisingInfo.getIdentifier(false)));
    }
}
