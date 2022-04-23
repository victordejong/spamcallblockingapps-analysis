package com.facebook.share.p046d;

import android.os.Bundle;
import com.facebook.internal.C2408g0;
import com.facebook.share.internal.ShareFeedContent;
import com.facebook.share.model.ShareContent;
import com.facebook.share.model.ShareHashtag;
import com.facebook.share.model.ShareLinkContent;
import com.facebook.share.model.ShareOpenGraphContent;
import com.facebook.share.model.SharePhoto;
import com.facebook.share.model.SharePhotoContent;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;
import p081h.p154f.C6131k;
/* renamed from: com.facebook.share.d.u */
/* loaded from: classes-dex2jar.jar:com/facebook/share/d/u.class */
public class C2645u {

    /* renamed from: com.facebook.share.d.u$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/share/d/u$a.class */
    public static final class C2646a implements C2408g0.AbstractC2412d<SharePhoto, String> {
        /* renamed from: a */
        public String apply(SharePhoto sharePhoto) {
            return sharePhoto.m33852e().toString();
        }
    }

    /* renamed from: a */
    public static Bundle m34023a(ShareFeedContent shareFeedContent) {
        Bundle bundle = new Bundle();
        C2408g0.m34868a(bundle, "to", shareFeedContent.m33943m());
        C2408g0.m34868a(bundle, "link", shareFeedContent.m33949g());
        C2408g0.m34868a(bundle, "picture", shareFeedContent.m33944l());
        C2408g0.m34868a(bundle, "source", shareFeedContent.m33945k());
        C2408g0.m34868a(bundle, "name", shareFeedContent.m33946j());
        C2408g0.m34868a(bundle, "caption", shareFeedContent.m33948h());
        C2408g0.m34868a(bundle, "description", shareFeedContent.m33947i());
        return bundle;
    }

    /* renamed from: a */
    public static Bundle m34022a(ShareContent shareContent) {
        Bundle bundle = new Bundle();
        ShareHashtag f = shareContent.m33918f();
        if (f != null) {
            C2408g0.m34868a(bundle, "hashtag", f.m33904a());
        }
        return bundle;
    }

    /* renamed from: a */
    public static Bundle m34021a(ShareLinkContent shareLinkContent) {
        Bundle a = m34022a((ShareContent) shareLinkContent);
        C2408g0.m34870a(a, "href", shareLinkContent.m33924a());
        C2408g0.m34868a(a, "quote", shareLinkContent.m33895j());
        return a;
    }

    /* renamed from: a */
    public static Bundle m34020a(ShareOpenGraphContent shareOpenGraphContent) {
        Bundle a = m34022a((ShareContent) shareOpenGraphContent);
        C2408g0.m34868a(a, "action_type", shareOpenGraphContent.m33863g().m33868c());
        try {
            JSONObject a2 = C2633s.m34041a(C2633s.m34055a(shareOpenGraphContent), false);
            if (a2 != null) {
                C2408g0.m34868a(a, "action_properties", a2.toString());
            }
            return a;
        } catch (JSONException e) {
            throw new C6131k("Unable to serialize the ShareOpenGraphContent to JSON", e);
        }
    }

    /* renamed from: a */
    public static Bundle m34019a(SharePhotoContent sharePhotoContent) {
        Bundle a = m34022a((ShareContent) sharePhotoContent);
        String[] strArr = new String[sharePhotoContent.m33835g().size()];
        C2408g0.m34844a((List) sharePhotoContent.m33835g(), (C2408g0.AbstractC2412d) new C2646a()).toArray(strArr);
        a.putStringArray("media", strArr);
        return a;
    }

    /* renamed from: b */
    public static Bundle m34018b(ShareLinkContent shareLinkContent) {
        Bundle bundle = new Bundle();
        C2408g0.m34868a(bundle, "name", shareLinkContent.m33897h());
        C2408g0.m34868a(bundle, "description", shareLinkContent.m33898g());
        C2408g0.m34868a(bundle, "link", C2408g0.m34832b(shareLinkContent.m33924a()));
        C2408g0.m34868a(bundle, "picture", C2408g0.m34832b(shareLinkContent.m33896i()));
        C2408g0.m34868a(bundle, "quote", shareLinkContent.m33895j());
        if (shareLinkContent.m33918f() != null) {
            C2408g0.m34868a(bundle, "hashtag", shareLinkContent.m33918f().m33904a());
        }
        return bundle;
    }
}
