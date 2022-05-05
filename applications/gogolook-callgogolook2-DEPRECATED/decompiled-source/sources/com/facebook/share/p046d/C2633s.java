package com.facebook.share.p046d;

import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.os.ParcelFileDescriptor;
import android.util.Pair;
import androidx.annotation.Nullable;
import com.aotter.net.trek.model.Entity;
import com.aotter.net.trek.model.Payload;
import com.facebook.AccessToken;
import com.facebook.GraphRequest;
import com.facebook.appevents.C2283m;
import com.facebook.internal.C2371a;
import com.facebook.internal.C2372a0;
import com.facebook.internal.C2398d;
import com.facebook.internal.C2408g0;
import com.facebook.internal.C2504z;
import com.facebook.share.AbstractC2568c;
import com.facebook.share.model.CameraEffectTextures;
import com.facebook.share.model.ShareCameraEffectContent;
import com.facebook.share.model.ShareMedia;
import com.facebook.share.model.ShareMediaContent;
import com.facebook.share.model.ShareOpenGraphAction;
import com.facebook.share.model.ShareOpenGraphContent;
import com.facebook.share.model.SharePhoto;
import com.facebook.share.model.SharePhotoContent;
import com.facebook.share.model.ShareStoryContent;
import com.facebook.share.model.ShareVideo;
import com.facebook.share.model.ShareVideoContent;
import com.facebook.share.p046d.C2624o;
import com.facebook.share.widget.LikeView;
import java.io.File;
import java.io.FileNotFoundException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.UUID;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p081h.p154f.AbstractC6128h;
import p081h.p154f.C6131k;
import p081h.p154f.C6134m;
import p081h.p154f.C6135n;
import p081h.p154f.EnumC6149t;
/* renamed from: com.facebook.share.d.s */
/* loaded from: classes-dex2jar.jar:com/facebook/share/d/s.class */
public final class C2633s {

    /* renamed from: com.facebook.share.d.s$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/share/d/s$a.class */
    public static final class C2634a implements C2408g0.AbstractC2412d<C2504z.C2506b, Bundle> {
        /* renamed from: a */
        public Bundle apply(C2504z.C2506b bVar) {
            Bundle bundle = new Bundle();
            bundle.putString("uri", bVar.m34535a());
            String a = C2633s.m34061a(bVar.m34533b());
            if (a != null) {
                C2408g0.m34868a(bundle, "extension", a);
            }
            return bundle;
        }
    }

    /* renamed from: com.facebook.share.d.s$b */
    /* loaded from: classes-dex2jar.jar:com/facebook/share/d/s$b.class */
    public static final class C2635b implements C2408g0.AbstractC2412d<ShareMedia, Bundle> {

        /* renamed from: a */
        public final /* synthetic */ UUID f3562a;

        /* renamed from: b */
        public final /* synthetic */ List f3563b;

        public C2635b(UUID uuid, List list) {
            this.f3562a = uuid;
            this.f3563b = list;
        }

        /* renamed from: a */
        public Bundle apply(ShareMedia shareMedia) {
            C2504z.C2506b b = C2633s.m34037b(this.f3562a, shareMedia);
            this.f3563b.add(b);
            Bundle bundle = new Bundle();
            bundle.putString("type", shareMedia.mo33823a().name());
            bundle.putString("uri", b.m34535a());
            String a = C2633s.m34061a(b.m34533b());
            if (a != null) {
                C2408g0.m34868a(bundle, "extension", a);
            }
            return bundle;
        }
    }

    /* renamed from: com.facebook.share.d.s$c */
    /* loaded from: classes-dex2jar.jar:com/facebook/share/d/s$c.class */
    public static final class C2636c extends AbstractC2626p {

        /* renamed from: a */
        public final /* synthetic */ AbstractC6128h f3564a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C2636c(AbstractC6128h hVar, AbstractC6128h hVar2) {
            super(hVar);
            this.f3564a = hVar2;
        }

        @Override // com.facebook.share.p046d.AbstractC2626p
        /* renamed from: a */
        public void mo34034a(C2371a aVar) {
            C2633s.m34038b(this.f3564a);
        }

        @Override // com.facebook.share.p046d.AbstractC2626p
        /* renamed from: a */
        public void mo34033a(C2371a aVar, Bundle bundle) {
            if (bundle != null) {
                String a = C2633s.m34060a(bundle);
                if (a == null || "post".equalsIgnoreCase(a)) {
                    C2633s.m34048a(this.f3564a, C2633s.m34040b(bundle));
                } else if ("cancel".equalsIgnoreCase(a)) {
                    C2633s.m34038b(this.f3564a);
                } else {
                    C2633s.m34049a(this.f3564a, new C6131k("UnknownError"));
                }
            }
        }

        @Override // com.facebook.share.p046d.AbstractC2626p
        /* renamed from: a */
        public void mo34032a(C2371a aVar, C6131k kVar) {
            C2633s.m34049a(this.f3564a, kVar);
        }
    }

    /* renamed from: com.facebook.share.d.s$d */
    /* loaded from: classes-dex2jar.jar:com/facebook/share/d/s$d.class */
    public static final class C2637d implements C2398d.AbstractC2399a {

        /* renamed from: a */
        public final /* synthetic */ int f3565a;

        public C2637d(int i) {
            this.f3565a = i;
        }

        @Override // com.facebook.internal.C2398d.AbstractC2399a
        /* renamed from: a */
        public boolean mo34031a(int i, Intent intent) {
            return C2633s.m34062a(this.f3565a, i, intent, C2633s.m34050a((AbstractC6128h<AbstractC2568c.C2569a>) null));
        }
    }

    /* renamed from: com.facebook.share.d.s$e */
    /* loaded from: classes-dex2jar.jar:com/facebook/share/d/s$e.class */
    public static final class C2638e implements C2408g0.AbstractC2412d<SharePhoto, C2504z.C2506b> {

        /* renamed from: a */
        public final /* synthetic */ UUID f3566a;

        public C2638e(UUID uuid) {
            this.f3566a = uuid;
        }

        /* renamed from: a */
        public C2504z.C2506b apply(SharePhoto sharePhoto) {
            return C2633s.m34037b(this.f3566a, sharePhoto);
        }
    }

    /* renamed from: com.facebook.share.d.s$f */
    /* loaded from: classes-dex2jar.jar:com/facebook/share/d/s$f.class */
    public static final class C2639f implements C2408g0.AbstractC2412d<C2504z.C2506b, String> {
        /* renamed from: a */
        public String apply(C2504z.C2506b bVar) {
            return bVar.m34535a();
        }
    }

    /* renamed from: com.facebook.share.d.s$g */
    /* loaded from: classes-dex2jar.jar:com/facebook/share/d/s$g.class */
    public static final class C2640g implements C2408g0.AbstractC2412d<ShareMedia, Bundle> {

        /* renamed from: a */
        public final /* synthetic */ UUID f3567a;

        /* renamed from: b */
        public final /* synthetic */ List f3568b;

        public C2640g(UUID uuid, List list) {
            this.f3567a = uuid;
            this.f3568b = list;
        }

        /* renamed from: a */
        public Bundle apply(ShareMedia shareMedia) {
            C2504z.C2506b b = C2633s.m34037b(this.f3567a, shareMedia);
            this.f3568b.add(b);
            Bundle bundle = new Bundle();
            bundle.putString("type", shareMedia.mo33823a().name());
            bundle.putString("uri", b.m34535a());
            return bundle;
        }
    }

    /* renamed from: com.facebook.share.d.s$h */
    /* loaded from: classes-dex2jar.jar:com/facebook/share/d/s$h.class */
    public static final class C2641h implements C2624o.AbstractC2625a {

        /* renamed from: a */
        public final /* synthetic */ UUID f3569a;

        /* renamed from: b */
        public final /* synthetic */ ArrayList f3570b;

        public C2641h(UUID uuid, ArrayList arrayList) {
            this.f3569a = uuid;
            this.f3570b = arrayList;
        }

        @Override // com.facebook.share.p046d.C2624o.AbstractC2625a
        /* renamed from: a */
        public JSONObject mo34027a(SharePhoto sharePhoto) {
            C2504z.C2506b b = C2633s.m34037b(this.f3569a, sharePhoto);
            if (b == null) {
                return null;
            }
            this.f3570b.add(b);
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("url", b.m34535a());
                if (sharePhoto.m33851f()) {
                    jSONObject.put("user_generated", true);
                }
                return jSONObject;
            } catch (JSONException e) {
                throw new C6131k("Unable to attach images", e);
            }
        }
    }

    /* renamed from: com.facebook.share.d.s$i */
    /* loaded from: classes-dex2jar.jar:com/facebook/share/d/s$i.class */
    public static final class C2642i implements C2624o.AbstractC2625a {
        @Override // com.facebook.share.p046d.C2624o.AbstractC2625a
        /* renamed from: a */
        public JSONObject mo34027a(SharePhoto sharePhoto) {
            Uri e = sharePhoto.m33852e();
            if (C2408g0.m34813e(e)) {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("url", e.toString());
                    return jSONObject;
                } catch (JSONException e2) {
                    throw new C6131k("Unable to attach images", e2);
                }
            } else {
                throw new C6131k("Only web images may be used in OG objects shared via the web dialog");
            }
        }
    }

    /* renamed from: com.facebook.share.d.s$j */
    /* loaded from: classes-dex2jar.jar:com/facebook/share/d/s$j.class */
    public static final class C2643j implements C2408g0.AbstractC2412d<SharePhoto, C2504z.C2506b> {

        /* renamed from: a */
        public final /* synthetic */ UUID f3571a;

        public C2643j(UUID uuid) {
            this.f3571a = uuid;
        }

        /* renamed from: a */
        public C2504z.C2506b apply(SharePhoto sharePhoto) {
            return C2633s.m34037b(this.f3571a, sharePhoto);
        }
    }

    /* renamed from: a */
    public static Bundle m34057a(ShareCameraEffectContent shareCameraEffectContent, UUID uuid) {
        CameraEffectTextures i;
        if (shareCameraEffectContent == null || (i = shareCameraEffectContent.m33925i()) == null) {
            return null;
        }
        Bundle bundle = new Bundle();
        ArrayList arrayList = new ArrayList();
        for (String str : i.m33935a()) {
            C2504z.C2506b a = m34045a(uuid, i.m33932b(str), i.m33933a(str));
            arrayList.add(a);
            bundle.putString(str, a.m34535a());
        }
        C2504z.m34544a(arrayList);
        return bundle;
    }

    @Nullable
    /* renamed from: a */
    public static Bundle m34053a(ShareStoryContent shareStoryContent, UUID uuid) {
        if (shareStoryContent == null || shareStoryContent.m33826h() == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(shareStoryContent.m33826h());
        ArrayList arrayList2 = new ArrayList();
        List a = C2408g0.m34844a((List) arrayList, (C2408g0.AbstractC2412d) new C2635b(uuid, arrayList2));
        C2504z.m34544a(arrayList2);
        return (Bundle) a.get(0);
    }

    /* renamed from: a */
    public static Pair<String, String> m34047a(String str) {
        String str2;
        String str3;
        int i;
        int indexOf = str.indexOf(58);
        if (indexOf == -1 || str.length() <= (i = indexOf + 1)) {
            str3 = null;
            str2 = str;
        } else {
            str3 = str.substring(0, indexOf);
            str2 = str.substring(i);
        }
        return new Pair<>(str3, str2);
    }

    /* renamed from: a */
    public static GraphRequest m34059a(AccessToken accessToken, Uri uri, GraphRequest.AbstractC2230f fVar) throws FileNotFoundException {
        if (C2408g0.m34817d(uri)) {
            return m34058a(accessToken, new File(uri.getPath()), fVar);
        }
        if (C2408g0.m34823c(uri)) {
            GraphRequest.ParcelableResourceWithMimeType parcelableResourceWithMimeType = new GraphRequest.ParcelableResourceWithMimeType(uri, "image/png");
            Bundle bundle = new Bundle(1);
            bundle.putParcelable("file", parcelableResourceWithMimeType);
            return new GraphRequest(accessToken, "me/staging_resources", bundle, EnumC6149t.POST, fVar);
        }
        throw new C6131k("The image Uri must be either a file:// or content:// Uri");
    }

    /* renamed from: a */
    public static GraphRequest m34058a(AccessToken accessToken, File file, GraphRequest.AbstractC2230f fVar) throws FileNotFoundException {
        GraphRequest.ParcelableResourceWithMimeType parcelableResourceWithMimeType = new GraphRequest.ParcelableResourceWithMimeType(ParcelFileDescriptor.open(file, 268435456), "image/png");
        Bundle bundle = new Bundle(1);
        bundle.putParcelable("file", parcelableResourceWithMimeType);
        return new GraphRequest(accessToken, "me/staging_resources", bundle, EnumC6149t.POST, fVar);
    }

    /* renamed from: a */
    public static C2371a m34063a(int i, int i2, Intent intent) {
        UUID b = C2372a0.m34954b(intent);
        if (b == null) {
            return null;
        }
        return C2371a.m34979a(b, i);
    }

    /* renamed from: a */
    public static C2504z.C2506b m34045a(UUID uuid, Uri uri, Bitmap bitmap) {
        return bitmap != null ? C2504z.m34542a(uuid, bitmap) : uri != null ? C2504z.m34541a(uuid, uri) : null;
    }

    /* renamed from: a */
    public static AbstractC2626p m34050a(AbstractC6128h<AbstractC2568c.C2569a> hVar) {
        return new C2636c(hVar, hVar);
    }

    @Nullable
    /* renamed from: a */
    public static LikeView.EnumC2719g m34051a(LikeView.EnumC2719g gVar, LikeView.EnumC2719g gVar2) {
        if (gVar == gVar2) {
            return gVar;
        }
        LikeView.EnumC2719g gVar3 = LikeView.EnumC2719g.UNKNOWN;
        if (gVar == gVar3) {
            return gVar2;
        }
        if (gVar2 == gVar3) {
            return gVar;
        }
        return null;
    }

    @Nullable
    /* renamed from: a */
    public static String m34061a(Uri uri) {
        String uri2;
        int lastIndexOf;
        if (uri == null || (lastIndexOf = (uri2 = uri.toString()).lastIndexOf(46)) == -1) {
            return null;
        }
        return uri2.substring(lastIndexOf);
    }

    /* renamed from: a */
    public static String m34060a(Bundle bundle) {
        return bundle.containsKey("completionGesture") ? bundle.getString("completionGesture") : bundle.getString("com.facebook.platform.extra.COMPLETION_GESTURE");
    }

    /* renamed from: a */
    public static String m34052a(ShareVideoContent shareVideoContent, UUID uuid) {
        if (shareVideoContent == null || shareVideoContent.m33813j() == null) {
            return null;
        }
        C2504z.C2506b a = C2504z.m34541a(uuid, shareVideoContent.m33813j().m33822c());
        ArrayList arrayList = new ArrayList(1);
        arrayList.add(a);
        C2504z.m34544a(arrayList);
        return a.m34535a();
    }

    /* renamed from: a */
    public static List<Bundle> m34056a(ShareMediaContent shareMediaContent, UUID uuid) {
        List<ShareMedia> g;
        if (shareMediaContent == null || (g = shareMediaContent.m33889g()) == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        List<Bundle> a = C2408g0.m34844a((List) g, (C2408g0.AbstractC2412d) new C2640g(uuid, arrayList));
        C2504z.m34544a(arrayList);
        return a;
    }

    /* renamed from: a */
    public static List<String> m34054a(SharePhotoContent sharePhotoContent, UUID uuid) {
        List<SharePhoto> g;
        if (sharePhotoContent == null || (g = sharePhotoContent.m33835g()) == null) {
            return null;
        }
        List a = C2408g0.m34844a((List) g, (C2408g0.AbstractC2412d) new C2638e(uuid));
        List<String> a2 = C2408g0.m34844a(a, (C2408g0.AbstractC2412d) new C2639f());
        C2504z.m34544a(a);
        return a2;
    }

    /* renamed from: a */
    public static JSONArray m34042a(JSONArray jSONArray, boolean z) throws JSONException {
        Object obj;
        JSONArray jSONArray2 = new JSONArray();
        for (int i = 0; i < jSONArray.length(); i++) {
            Object obj2 = jSONArray.get(i);
            if (obj2 instanceof JSONArray) {
                obj = m34042a((JSONArray) obj2, z);
            } else {
                obj = obj2;
                if (obj2 instanceof JSONObject) {
                    obj = m34041a((JSONObject) obj2, z);
                }
            }
            jSONArray2.put(obj);
        }
        return jSONArray2;
    }

    /* renamed from: a */
    public static JSONObject m34055a(ShareOpenGraphContent shareOpenGraphContent) throws JSONException {
        return C2624o.m34132a(shareOpenGraphContent.m33863g(), (C2624o.AbstractC2625a) new C2642i());
    }

    /* renamed from: a */
    public static JSONObject m34043a(UUID uuid, ShareOpenGraphContent shareOpenGraphContent) throws JSONException {
        ShareOpenGraphAction g = shareOpenGraphContent.m33863g();
        ArrayList arrayList = new ArrayList();
        JSONObject a = C2624o.m34132a(g, (C2624o.AbstractC2625a) new C2641h(uuid, arrayList));
        C2504z.m34544a(arrayList);
        if (shareOpenGraphContent.m33920d() != null && C2408g0.m34816d(a.optString(Payload.PAYLOAD_PLACE_KEY))) {
            a.put(Payload.PAYLOAD_PLACE_KEY, shareOpenGraphContent.m33920d());
        }
        if (shareOpenGraphContent.m33921c() != null) {
            JSONArray optJSONArray = a.optJSONArray(Entity.ENTITY_TAG_KEY);
            Set hashSet = optJSONArray == null ? new HashSet() : C2408g0.m34842a(optJSONArray);
            for (String str : shareOpenGraphContent.m33921c()) {
                hashSet.add(str);
            }
            a.put(Entity.ENTITY_TAG_KEY, new JSONArray((Collection) hashSet));
        }
        return a;
    }

    /* renamed from: a */
    public static JSONObject m34041a(JSONObject jSONObject, boolean z) {
        Object obj;
        if (jSONObject == null) {
            return null;
        }
        try {
            JSONObject jSONObject2 = new JSONObject();
            JSONObject jSONObject3 = new JSONObject();
            JSONArray names = jSONObject.names();
            for (int i = 0; i < names.length(); i++) {
                String string = names.getString(i);
                Object obj2 = jSONObject.get(string);
                if (obj2 instanceof JSONObject) {
                    obj = m34041a((JSONObject) obj2, true);
                } else {
                    obj = obj2;
                    if (obj2 instanceof JSONArray) {
                        obj = m34042a((JSONArray) obj2, true);
                    }
                }
                Pair<String, String> a = m34047a(string);
                String str = (String) a.first;
                String str2 = (String) a.second;
                if (z) {
                    if (str == null || !str.equals("fbsdk")) {
                        if (str != null && !str.equals("og")) {
                            jSONObject3.put(str2, obj);
                        }
                        jSONObject2.put(str2, obj);
                    } else {
                        jSONObject2.put(string, obj);
                    }
                } else if (str == null || !str.equals("fb")) {
                    jSONObject2.put(str2, obj);
                } else {
                    jSONObject2.put(string, obj);
                }
            }
            if (jSONObject3.length() > 0) {
                jSONObject2.put("data", jSONObject3);
            }
            return jSONObject2;
        } catch (JSONException e) {
            throw new C6131k("Failed to create json object from share content");
        }
    }

    /* renamed from: a */
    public static void m34064a(int i) {
        C2398d.m34901b(i, new C2637d(i));
    }

    /* renamed from: a */
    public static void m34049a(AbstractC6128h<AbstractC2568c.C2569a> hVar, C6131k kVar) {
        m34046a("error", kVar.getMessage());
        if (hVar != null) {
            hVar.mo2982a(kVar);
        }
    }

    /* renamed from: a */
    public static void m34048a(AbstractC6128h<AbstractC2568c.C2569a> hVar, String str) {
        m34046a("succeeded", (String) null);
        if (hVar != null) {
            hVar.mo2981a((AbstractC6128h<AbstractC2568c.C2569a>) new AbstractC2568c.C2569a(str));
        }
    }

    /* renamed from: a */
    public static void m34046a(String str, String str2) {
        C2283m mVar = new C2283m(C6135n.m23746e());
        Bundle bundle = new Bundle();
        bundle.putString("fb_share_dialog_outcome", str);
        if (str2 != null) {
            bundle.putString("error_message", str2);
        }
        mVar.m35293b("fb_share_dialog_result", bundle);
    }

    /* renamed from: a */
    public static boolean m34062a(int i, int i2, Intent intent, AbstractC2626p pVar) {
        C2371a a = m34063a(i, i2, intent);
        if (a == null) {
            return false;
        }
        C2504z.m34543a(a.m34982a());
        if (pVar == null) {
            return true;
        }
        C6131k a2 = C2372a0.m34965a(C2372a0.m34951c(intent));
        if (a2 == null) {
            pVar.mo34033a(a, C2372a0.m34944f(intent));
            return true;
        } else if (a2 instanceof C6134m) {
            pVar.mo34034a(a);
            return true;
        } else {
            pVar.mo34032a(a, a2);
            return true;
        }
    }

    @Nullable
    /* renamed from: b */
    public static Bundle m34039b(ShareStoryContent shareStoryContent, UUID uuid) {
        if (shareStoryContent == null || shareStoryContent.m33824j() == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(shareStoryContent.m33824j());
        List a = C2408g0.m34844a((List) arrayList, (C2408g0.AbstractC2412d) new C2643j(uuid));
        List a2 = C2408g0.m34844a(a, (C2408g0.AbstractC2412d) new C2634a());
        C2504z.m34544a(a);
        return (Bundle) a2.get(0);
    }

    /* renamed from: b */
    public static C2504z.C2506b m34037b(UUID uuid, ShareMedia shareMedia) {
        Uri uri;
        Bitmap bitmap = null;
        if (shareMedia instanceof SharePhoto) {
            SharePhoto sharePhoto = (SharePhoto) shareMedia;
            bitmap = sharePhoto.m33854c();
            uri = sharePhoto.m33852e();
        } else {
            uri = shareMedia instanceof ShareVideo ? ((ShareVideo) shareMedia).m33822c() : null;
        }
        return m34045a(uuid, uri, bitmap);
    }

    /* renamed from: b */
    public static String m34040b(Bundle bundle) {
        return bundle.containsKey("postId") ? bundle.getString("postId") : bundle.containsKey("com.facebook.platform.extra.POST_ID") ? bundle.getString("com.facebook.platform.extra.POST_ID") : bundle.getString("post_id");
    }

    /* renamed from: b */
    public static void m34038b(AbstractC6128h<AbstractC2568c.C2569a> hVar) {
        m34046a("cancelled", (String) null);
        if (hVar != null) {
            hVar.onCancel();
        }
    }
}
