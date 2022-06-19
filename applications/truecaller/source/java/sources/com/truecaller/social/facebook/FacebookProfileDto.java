package com.truecaller.social.facebook;

import android.text.TextUtils;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import e.m.e.d0.b;
import java.util.HashMap;
import java.util.Map;
import p193e.p194a.p434b5.C8652f;
/* loaded from: classes13-dex2jar.jar:com/truecaller/social/facebook/FacebookProfileDto.class */
public class FacebookProfileDto {
    @b(AnalyticsConstants.EMAIL)
    public String email;
    @b("first_name")
    public String firstName;
    @b("gender")
    public String gender;
    @b("id")

    /* renamed from: id */
    public String f14801id;
    @b("last_name")
    public String lastName;
    @b("location")
    public C4478a location;
    @b("picture")
    public C4479b picture;

    /* renamed from: com.truecaller.social.facebook.FacebookProfileDto$a */
    /* loaded from: classes13-dex2jar.jar:com/truecaller/social/facebook/FacebookProfileDto$a.class */
    public static class C4478a {
        @b(AnalyticsConstants.NAME)

        /* renamed from: a */
        public String f14802a;
    }

    /* renamed from: com.truecaller.social.facebook.FacebookProfileDto$b */
    /* loaded from: classes13-dex2jar.jar:com/truecaller/social/facebook/FacebookProfileDto$b.class */
    public static class C4479b {
        @b(RemoteMessageConst.DATA)

        /* renamed from: a */
        public C4480a f14803a;

        /* renamed from: com.truecaller.social.facebook.FacebookProfileDto$b$a */
        /* loaded from: classes13-dex2jar.jar:com/truecaller/social/facebook/FacebookProfileDto$b$a.class */
        public static class C4480a {
            @b("height")

            /* renamed from: a */
            public int f14804a;
            @b("width")

            /* renamed from: b */
            public int f14805b;
            @b("url")

            /* renamed from: c */
            public String f14806c;
            @b("is_silhouette")

            /* renamed from: d */
            public boolean f14807d;
        }
    }

    private static void putIfNotNull(Map<String, String> map, String str, String str2) {
        if (!TextUtils.isEmpty(str2)) {
            map.put(str, str2);
        }
    }

    public C8652f toSocialNetworkProfile() {
        C4479b.C4480a c4480a;
        HashMap hashMap = new HashMap();
        putIfNotNull(hashMap, "profileFacebook", this.f14801id);
        putIfNotNull(hashMap, "profileEmail", this.email);
        putIfNotNull(hashMap, "profileFirstName", this.firstName);
        putIfNotNull(hashMap, "profileLastName", this.lastName);
        String str = this.gender;
        if (str != null) {
            if (str.equals("female")) {
                hashMap.put("profileGender", "F");
            } else if (!str.equals("male")) {
                hashMap.put("profileGender", "N");
            } else {
                hashMap.put("profileGender", "M");
            }
        }
        C4478a c4478a = this.location;
        if (c4478a != null && !TextUtils.isEmpty(c4478a.f14802a)) {
            hashMap.put("profileCity", this.location.f14802a);
        }
        C4479b c4479b = this.picture;
        if (c4479b != null && (c4480a = c4479b.f14803a) != null && !c4480a.f14807d) {
            putIfNotNull(hashMap, "profileAvatar", c4480a.f14806c);
        }
        return new C8652f(hashMap, null);
    }
}
