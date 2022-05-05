package com.facebook.share.p046d;

import android.os.Bundle;
import androidx.annotation.Nullable;
import com.facebook.internal.C2408g0;
import com.facebook.internal.C2416h0;
import com.facebook.share.model.ShareCameraEffectContent;
import com.facebook.share.model.ShareContent;
import com.facebook.share.model.ShareHashtag;
import com.facebook.share.model.ShareLinkContent;
import com.facebook.share.model.ShareMediaContent;
import com.facebook.share.model.ShareMessengerGenericTemplateContent;
import com.facebook.share.model.ShareMessengerMediaTemplateContent;
import com.facebook.share.model.ShareMessengerOpenGraphMusicTemplateContent;
import com.facebook.share.model.ShareOpenGraphContent;
import com.facebook.share.model.SharePhotoContent;
import com.facebook.share.model.ShareStoryContent;
import com.facebook.share.model.ShareVideoContent;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import org.json.JSONException;
import org.json.JSONObject;
import p081h.p154f.C6131k;
/* renamed from: com.facebook.share.d.m */
/* loaded from: classes-dex2jar.jar:com/facebook/share/d/m.class */
public class C2622m {
    /* renamed from: a */
    public static Bundle m34144a(ShareCameraEffectContent shareCameraEffectContent, Bundle bundle, boolean z) {
        Bundle a = m34143a(shareCameraEffectContent, z);
        C2408g0.m34868a(a, "effect_id", shareCameraEffectContent.m33926h());
        if (bundle != null) {
            a.putBundle("effect_textures", bundle);
        }
        try {
            JSONObject a2 = C2571b.m34275a(shareCameraEffectContent.m33927g());
            if (a2 != null) {
                C2408g0.m34868a(a, "effect_arguments", a2.toString());
            }
            return a;
        } catch (JSONException e) {
            throw new C6131k("Unable to create a JSON Object from the provided CameraEffectArguments: " + e.getMessage());
        }
    }

    /* renamed from: a */
    public static Bundle m34143a(ShareContent shareContent, boolean z) {
        Bundle bundle = new Bundle();
        C2408g0.m34870a(bundle, "LINK", shareContent.m33924a());
        C2408g0.m34868a(bundle, "PLACE", shareContent.m33920d());
        C2408g0.m34868a(bundle, "PAGE", shareContent.m33922b());
        C2408g0.m34868a(bundle, "REF", shareContent.m33919e());
        bundle.putBoolean("DATA_FAILURES_FATAL", z);
        List<String> c = shareContent.m33921c();
        if (!C2408g0.m34845a(c)) {
            bundle.putStringArrayList("FRIENDS", new ArrayList<>(c));
        }
        ShareHashtag f = shareContent.m33918f();
        if (f != null) {
            C2408g0.m34868a(bundle, "HASHTAG", f.m33904a());
        }
        return bundle;
    }

    /* renamed from: a */
    public static Bundle m34142a(ShareLinkContent shareLinkContent, boolean z) {
        Bundle a = m34143a((ShareContent) shareLinkContent, z);
        C2408g0.m34868a(a, "TITLE", shareLinkContent.m33897h());
        C2408g0.m34868a(a, "DESCRIPTION", shareLinkContent.m33898g());
        C2408g0.m34870a(a, "IMAGE", shareLinkContent.m33896i());
        C2408g0.m34868a(a, "QUOTE", shareLinkContent.m33895j());
        C2408g0.m34870a(a, "MESSENGER_LINK", shareLinkContent.m33924a());
        C2408g0.m34870a(a, "TARGET_DISPLAY", shareLinkContent.m33924a());
        return a;
    }

    /* renamed from: a */
    public static Bundle m34141a(ShareMediaContent shareMediaContent, List<Bundle> list, boolean z) {
        Bundle a = m34143a(shareMediaContent, z);
        a.putParcelableArrayList("MEDIA", new ArrayList<>(list));
        return a;
    }

    /* renamed from: a */
    public static Bundle m34140a(ShareMessengerGenericTemplateContent shareMessengerGenericTemplateContent, boolean z) {
        Bundle a = m34143a((ShareContent) shareMessengerGenericTemplateContent, z);
        try {
            C2620l.m34164a(a, shareMessengerGenericTemplateContent);
            return a;
        } catch (JSONException e) {
            throw new C6131k("Unable to create a JSON Object from the provided ShareMessengerGenericTemplateContent: " + e.getMessage());
        }
    }

    /* renamed from: a */
    public static Bundle m34139a(ShareMessengerMediaTemplateContent shareMessengerMediaTemplateContent, boolean z) {
        Bundle a = m34143a((ShareContent) shareMessengerMediaTemplateContent, z);
        try {
            C2620l.m34162a(a, shareMessengerMediaTemplateContent);
            return a;
        } catch (JSONException e) {
            throw new C6131k("Unable to create a JSON Object from the provided ShareMessengerMediaTemplateContent: " + e.getMessage());
        }
    }

    /* renamed from: a */
    public static Bundle m34138a(ShareMessengerOpenGraphMusicTemplateContent shareMessengerOpenGraphMusicTemplateContent, boolean z) {
        Bundle a = m34143a((ShareContent) shareMessengerOpenGraphMusicTemplateContent, z);
        try {
            C2620l.m34161a(a, shareMessengerOpenGraphMusicTemplateContent);
            return a;
        } catch (JSONException e) {
            throw new C6131k("Unable to create a JSON Object from the provided ShareMessengerOpenGraphMusicTemplateContent: " + e.getMessage());
        }
    }

    /* renamed from: a */
    public static Bundle m34137a(ShareOpenGraphContent shareOpenGraphContent, JSONObject jSONObject, boolean z) {
        Bundle a = m34143a(shareOpenGraphContent, z);
        C2408g0.m34868a(a, "PREVIEW_PROPERTY_NAME", (String) C2633s.m34047a(shareOpenGraphContent.m33862h()).second);
        C2408g0.m34868a(a, "ACTION_TYPE", shareOpenGraphContent.m33863g().m33868c());
        C2408g0.m34868a(a, "ACTION", jSONObject.toString());
        return a;
    }

    /* renamed from: a */
    public static Bundle m34136a(SharePhotoContent sharePhotoContent, List<String> list, boolean z) {
        Bundle a = m34143a(sharePhotoContent, z);
        a.putStringArrayList("PHOTOS", new ArrayList<>(list));
        return a;
    }

    /* renamed from: a */
    public static Bundle m34135a(ShareStoryContent shareStoryContent, @Nullable Bundle bundle, @Nullable Bundle bundle2, boolean z) {
        Bundle a = m34143a(shareStoryContent, z);
        if (bundle != null) {
            a.putParcelable("bg_asset", bundle);
        }
        if (bundle2 != null) {
            a.putParcelable("interactive_asset_uri", bundle2);
        }
        List<String> i = shareStoryContent.m33825i();
        if (!C2408g0.m34845a(i)) {
            a.putStringArrayList("top_background_color_list", new ArrayList<>(i));
        }
        C2408g0.m34868a(a, "content_url", shareStoryContent.m33827g());
        return a;
    }

    /* renamed from: a */
    public static Bundle m34134a(ShareVideoContent shareVideoContent, String str, boolean z) {
        Bundle a = m34143a(shareVideoContent, z);
        C2408g0.m34868a(a, "TITLE", shareVideoContent.m33815h());
        C2408g0.m34868a(a, "DESCRIPTION", shareVideoContent.m33816g());
        C2408g0.m34868a(a, "VIDEO", str);
        return a;
    }

    /* renamed from: a */
    public static Bundle m34133a(UUID uuid, ShareContent shareContent, boolean z) {
        Bundle bundle;
        C2416h0.m34791a(shareContent, "shareContent");
        C2416h0.m34791a(uuid, "callId");
        if (shareContent instanceof ShareLinkContent) {
            bundle = m34142a((ShareLinkContent) shareContent, z);
        } else if (shareContent instanceof SharePhotoContent) {
            SharePhotoContent sharePhotoContent = (SharePhotoContent) shareContent;
            bundle = m34136a(sharePhotoContent, C2633s.m34054a(sharePhotoContent, uuid), z);
        } else if (shareContent instanceof ShareVideoContent) {
            ShareVideoContent shareVideoContent = (ShareVideoContent) shareContent;
            bundle = m34134a(shareVideoContent, C2633s.m34052a(shareVideoContent, uuid), z);
        } else if (shareContent instanceof ShareOpenGraphContent) {
            ShareOpenGraphContent shareOpenGraphContent = (ShareOpenGraphContent) shareContent;
            try {
                bundle = m34137a(shareOpenGraphContent, C2633s.m34041a(C2633s.m34043a(uuid, shareOpenGraphContent), false), z);
            } catch (JSONException e) {
                throw new C6131k("Unable to create a JSON Object from the provided ShareOpenGraphContent: " + e.getMessage());
            }
        } else if (shareContent instanceof ShareMediaContent) {
            ShareMediaContent shareMediaContent = (ShareMediaContent) shareContent;
            bundle = m34141a(shareMediaContent, C2633s.m34056a(shareMediaContent, uuid), z);
        } else if (shareContent instanceof ShareCameraEffectContent) {
            ShareCameraEffectContent shareCameraEffectContent = (ShareCameraEffectContent) shareContent;
            bundle = m34144a(shareCameraEffectContent, C2633s.m34057a(shareCameraEffectContent, uuid), z);
        } else if (shareContent instanceof ShareMessengerGenericTemplateContent) {
            bundle = m34140a((ShareMessengerGenericTemplateContent) shareContent, z);
        } else if (shareContent instanceof ShareMessengerOpenGraphMusicTemplateContent) {
            bundle = m34138a((ShareMessengerOpenGraphMusicTemplateContent) shareContent, z);
        } else if (shareContent instanceof ShareMessengerMediaTemplateContent) {
            bundle = m34139a((ShareMessengerMediaTemplateContent) shareContent, z);
        } else if (shareContent instanceof ShareStoryContent) {
            ShareStoryContent shareStoryContent = (ShareStoryContent) shareContent;
            bundle = m34135a(shareStoryContent, C2633s.m34053a(shareStoryContent, uuid), C2633s.m34039b(shareStoryContent, uuid), z);
        } else {
            bundle = null;
        }
        return bundle;
    }
}
