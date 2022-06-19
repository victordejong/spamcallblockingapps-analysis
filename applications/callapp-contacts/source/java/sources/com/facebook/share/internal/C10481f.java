package com.facebook.share.internal;

import android.os.Bundle;
import com.facebook.FacebookException;
import com.facebook.internal.C10213ae;
import com.facebook.share.model.ShareContent;
import com.facebook.share.model.ShareHashtag;
import com.facebook.share.model.ShareOpenGraphContent;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.facebook.share.internal.f */
/* loaded from: classes3-dex2jar.jar:com/facebook/share/internal/f.class */
public final class C10481f {
    /* renamed from: a */
    public static Bundle m22699a(ShareContent shareContent) {
        Bundle bundle = new Bundle();
        ShareHashtag shareHashtag = shareContent.getShareHashtag();
        if (shareHashtag != null) {
            C10213ae.m23243a(bundle, "hashtag", shareHashtag.getHashtag());
        }
        return bundle;
    }

    /* renamed from: a */
    public static Bundle m22698a(ShareOpenGraphContent shareOpenGraphContent) {
        Bundle m22699a = m22699a((ShareContent) shareOpenGraphContent);
        C10213ae.m23243a(m22699a, "action_type", shareOpenGraphContent.getAction().getActionType());
        try {
            JSONObject m22701a = C10480e.m22701a(C10480e.m22707a(shareOpenGraphContent), false);
            if (m22701a != null) {
                C10213ae.m23243a(m22699a, "action_properties", m22701a.toString());
            }
            return m22699a;
        } catch (JSONException e) {
            throw new FacebookException("Unable to serialize the ShareOpenGraphContent to JSON", e);
        }
    }
}
