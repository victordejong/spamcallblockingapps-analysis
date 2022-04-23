package com.facebook.share.internal;

import com.facebook.FacebookException;
import com.facebook.internal.y;
import com.facebook.share.internal.OpenGraphJSONUtility;
import com.facebook.share.model.SharePhoto;
import java.util.ArrayList;
import java.util.UUID;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/facebook/share/internal/ShareInternalUtility$7.class */
final class ShareInternalUtility$7 implements OpenGraphJSONUtility.PhotoJSONProcessor {
    final /* synthetic */ ArrayList val$attachments;
    final /* synthetic */ UUID val$callId;

    ShareInternalUtility$7(UUID uuid, ArrayList arrayList) {
        this.val$callId = uuid;
        this.val$attachments = arrayList;
    }

    @Override // com.facebook.share.internal.OpenGraphJSONUtility.PhotoJSONProcessor
    public final JSONObject toJSONObject(SharePhoto sharePhoto) {
        y.a a2 = e.a(this.val$callId, sharePhoto);
        if (a2 == null) {
            return null;
        }
        this.val$attachments.add(a2);
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("url", a2.f20021a);
            if (sharePhoto.getUserGenerated()) {
                jSONObject.put("user_generated", true);
            }
            return jSONObject;
        } catch (JSONException e) {
            throw new FacebookException("Unable to attach images", e);
        }
    }
}
