package com.facebook.share.p046d;

import android.os.Bundle;
import com.facebook.internal.C2408g0;
import com.facebook.internal.C2416h0;
import com.facebook.share.model.ShareContent;
import com.facebook.share.model.ShareLinkContent;
import com.facebook.share.model.ShareOpenGraphContent;
import com.facebook.share.model.SharePhotoContent;
import com.facebook.share.model.ShareVideoContent;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import org.json.JSONException;
import org.json.JSONObject;
import p081h.p154f.C6131k;
/* renamed from: com.facebook.share.d.c */
/* loaded from: classes-dex2jar.jar:com/facebook/share/d/c.class */
public class C2576c {
    /* renamed from: a */
    public static Bundle m34273a(ShareContent shareContent, boolean z) {
        Bundle bundle = new Bundle();
        C2408g0.m34870a(bundle, "com.facebook.platform.extra.LINK", shareContent.m33924a());
        C2408g0.m34868a(bundle, "com.facebook.platform.extra.PLACE", shareContent.m33920d());
        C2408g0.m34868a(bundle, "com.facebook.platform.extra.REF", shareContent.m33919e());
        bundle.putBoolean("com.facebook.platform.extra.DATA_FAILURES_FATAL", z);
        List<String> c = shareContent.m33921c();
        if (!C2408g0.m34845a(c)) {
            bundle.putStringArrayList("com.facebook.platform.extra.FRIENDS", new ArrayList<>(c));
        }
        return bundle;
    }

    /* renamed from: a */
    public static Bundle m34272a(ShareLinkContent shareLinkContent, boolean z) {
        Bundle a = m34273a((ShareContent) shareLinkContent, z);
        C2408g0.m34868a(a, "com.facebook.platform.extra.TITLE", shareLinkContent.m33897h());
        C2408g0.m34868a(a, "com.facebook.platform.extra.DESCRIPTION", shareLinkContent.m33898g());
        C2408g0.m34870a(a, "com.facebook.platform.extra.IMAGE", shareLinkContent.m33896i());
        return a;
    }

    /* renamed from: a */
    public static Bundle m34271a(ShareOpenGraphContent shareOpenGraphContent, JSONObject jSONObject, boolean z) {
        Bundle a = m34273a(shareOpenGraphContent, z);
        C2408g0.m34868a(a, "com.facebook.platform.extra.PREVIEW_PROPERTY_NAME", shareOpenGraphContent.m33862h());
        C2408g0.m34868a(a, "com.facebook.platform.extra.ACTION_TYPE", shareOpenGraphContent.m33863g().m33868c());
        C2408g0.m34868a(a, "com.facebook.platform.extra.ACTION", jSONObject.toString());
        return a;
    }

    /* renamed from: a */
    public static Bundle m34270a(SharePhotoContent sharePhotoContent, List<String> list, boolean z) {
        Bundle a = m34273a(sharePhotoContent, z);
        a.putStringArrayList("com.facebook.platform.extra.PHOTOS", new ArrayList<>(list));
        return a;
    }

    /* renamed from: a */
    public static Bundle m34269a(ShareVideoContent shareVideoContent, boolean z) {
        return null;
    }

    /* renamed from: a */
    public static Bundle m34268a(UUID uuid, ShareContent shareContent, boolean z) {
        Bundle bundle;
        C2416h0.m34791a(shareContent, "shareContent");
        C2416h0.m34791a(uuid, "callId");
        if (shareContent instanceof ShareLinkContent) {
            bundle = m34272a((ShareLinkContent) shareContent, z);
        } else if (shareContent instanceof SharePhotoContent) {
            SharePhotoContent sharePhotoContent = (SharePhotoContent) shareContent;
            bundle = m34270a(sharePhotoContent, C2633s.m34054a(sharePhotoContent, uuid), z);
        } else if (shareContent instanceof ShareVideoContent) {
            bundle = m34269a((ShareVideoContent) shareContent, z);
        } else if (shareContent instanceof ShareOpenGraphContent) {
            ShareOpenGraphContent shareOpenGraphContent = (ShareOpenGraphContent) shareContent;
            try {
                bundle = m34271a(shareOpenGraphContent, C2633s.m34043a(uuid, shareOpenGraphContent), z);
            } catch (JSONException e) {
                throw new C6131k("Unable to create a JSON Object from the provided ShareOpenGraphContent: " + e.getMessage());
            }
        } else {
            bundle = null;
        }
        return bundle;
    }
}
