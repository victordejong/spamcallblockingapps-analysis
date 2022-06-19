package p000;

import android.os.Bundle;
import com.facebook.share.internal.ShareFeedContent;
import com.facebook.share.model.ShareContent;
import com.facebook.share.model.ShareHashtag;
import com.facebook.share.model.ShareLinkContent;
import com.facebook.share.model.ShareOpenGraphContent;
import com.facebook.share.model.SharePhotoContent;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: cp0 */
/* loaded from: classes-dex2jar.jar:cp0.class */
public class cp0 {
    /* renamed from: a */
    public static Bundle m3016a(ShareLinkContent shareLinkContent) {
        Bundle m3013d = m3013d(shareLinkContent);
        fn0.f0(m3013d, "href", shareLinkContent.m4963a());
        fn0.e0(m3013d, "quote", shareLinkContent.k());
        return m3013d;
    }

    /* renamed from: b */
    public static Bundle m3015b(ShareOpenGraphContent shareOpenGraphContent) {
        Bundle m3013d = m3013d(shareOpenGraphContent);
        fn0.e0(m3013d, "action_type", shareOpenGraphContent.h().e());
        try {
            JSONObject m5847z = ap0.m5847z(ap0.m5873B(shareOpenGraphContent), false);
            if (m5847z != null) {
                fn0.e0(m3013d, "action_properties", m5847z.toString());
            }
            return m3013d;
        } catch (JSONException e) {
            throw new ri0("Unable to serialize the ShareOpenGraphContent to JSON", e);
        }
    }

    /* renamed from: c */
    public static Bundle m3014c(SharePhotoContent sharePhotoContent) {
        Bundle m3013d = m3013d(sharePhotoContent);
        String[] strArr = new String[sharePhotoContent.h().size()];
        fn0.Y(sharePhotoContent.h(), new a()).toArray(strArr);
        m3013d.putStringArray("media", strArr);
        return m3013d;
    }

    /* renamed from: d */
    public static Bundle m3013d(ShareContent shareContent) {
        Bundle bundle = new Bundle();
        ShareHashtag m4958f = shareContent.m4958f();
        if (m4958f != null) {
            fn0.e0(bundle, "hashtag", m4958f.m4943a());
        }
        return bundle;
    }

    /* renamed from: e */
    public static Bundle m3012e(ShareFeedContent shareFeedContent) {
        Bundle bundle = new Bundle();
        fn0.e0(bundle, "to", shareFeedContent.n());
        fn0.e0(bundle, "link", shareFeedContent.h());
        fn0.e0(bundle, "picture", shareFeedContent.m());
        fn0.e0(bundle, "source", shareFeedContent.l());
        fn0.e0(bundle, "name", shareFeedContent.k());
        fn0.e0(bundle, "caption", shareFeedContent.i());
        fn0.e0(bundle, "description", shareFeedContent.j());
        return bundle;
    }

    /* renamed from: f */
    public static Bundle m3011f(ShareLinkContent shareLinkContent) {
        Bundle bundle = new Bundle();
        fn0.e0(bundle, "name", shareLinkContent.i());
        fn0.e0(bundle, "description", shareLinkContent.h());
        fn0.e0(bundle, "link", fn0.E(shareLinkContent.m4963a()));
        fn0.e0(bundle, "picture", fn0.E(shareLinkContent.j()));
        fn0.e0(bundle, "quote", shareLinkContent.k());
        if (shareLinkContent.m4958f() != null) {
            fn0.e0(bundle, "hashtag", shareLinkContent.m4958f().m4943a());
        }
        return bundle;
    }
}
