package com.mopub.network;

import android.net.Uri;
import com.mopub.common.ClientMetadata;
import com.mopub.common.MoPub;
import com.mopub.common.privacy.AdvertisingId;
import com.mopub.volley.toolbox.HurlStack;
/* loaded from: classes2-dex2jar.jar:com/mopub/network/PlayServicesUrlRewriter.class */
public class PlayServicesUrlRewriter implements HurlStack.UrlRewriter {
    public static final String DO_NOT_TRACK_TEMPLATE = "mp_tmpl_do_not_track";
    public static final String MOPUB_ID_TEMPLATE = "mp_tmpl_mopub_id";
    public static final String UDID_TEMPLATE = "mp_tmpl_advertising_id";

    @Override // com.mopub.volley.toolbox.HurlStack.UrlRewriter
    public String rewriteUrl(String str) {
        ClientMetadata instance;
        if ((str.contains("mp_tmpl_advertising_id") || str.contains("mp_tmpl_do_not_track")) && (instance = ClientMetadata.getInstance()) != null) {
            AdvertisingId advertisingInfo = instance.getMoPubIdentifier().getAdvertisingInfo();
            return str.replace("mp_tmpl_advertising_id", Uri.encode(advertisingInfo.getIdWithPrefix(MoPub.canCollectPersonalInformation()))).replace("mp_tmpl_do_not_track", advertisingInfo.isDoNotTrack() ? "1" : "0").replace(MOPUB_ID_TEMPLATE, Uri.encode(advertisingInfo.getIdentifier(false)));
        }
        return str;
    }
}
