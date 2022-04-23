package com.facebook;

import android.net.Uri;
import com.facebook.share.internal.OpenGraphJSONUtility;
import com.facebook.share.model.SharePhoto;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/facebook/ShareGraphRequest$1.class */
final class ShareGraphRequest$1 implements OpenGraphJSONUtility.PhotoJSONProcessor {
    ShareGraphRequest$1() {
    }

    @Override // com.facebook.share.internal.OpenGraphJSONUtility.PhotoJSONProcessor
    public final JSONObject toJSONObject(SharePhoto sharePhoto) {
        Uri imageUrl = sharePhoto.getImageUrl();
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("url", imageUrl.toString());
            return jSONObject;
        } catch (Exception e) {
            throw new FacebookException("Unable to attach images", e);
        }
    }
}
