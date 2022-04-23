package com.facebook.share.internal;

import android.os.Bundle;
import com.facebook.FacebookException;
import com.facebook.internal.ae;
import com.facebook.share.model.ShareContent;
import com.facebook.share.model.ShareHashtag;
import com.facebook.share.model.ShareOpenGraphContent;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/facebook/share/internal/f.class */
public final class f {
    public static Bundle a(ShareContent shareContent) {
        Bundle bundle = new Bundle();
        ShareHashtag shareHashtag = shareContent.getShareHashtag();
        if (shareHashtag != null) {
            ae.a(bundle, "hashtag", shareHashtag.getHashtag());
        }
        return bundle;
    }

    public static Bundle a(ShareOpenGraphContent shareOpenGraphContent) {
        Bundle a2 = a((ShareContent) shareOpenGraphContent);
        ae.a(a2, "action_type", shareOpenGraphContent.getAction().getActionType());
        try {
            JSONObject a3 = e.a(e.a(shareOpenGraphContent), false);
            if (a3 != null) {
                ae.a(a2, "action_properties", a3.toString());
            }
            return a2;
        } catch (JSONException e) {
            throw new FacebookException("Unable to serialize the ShareOpenGraphContent to JSON", e);
        }
    }
}
