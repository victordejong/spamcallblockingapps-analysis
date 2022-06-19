package com.applovin.impl.p035a;

import com.applovin.impl.sdk.C1408l;
import com.applovin.impl.sdk.p053ad.EnumC1282b;
import com.applovin.impl.sdk.utils.C1539q;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.Utils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.json.JSONObject;
/* renamed from: com.applovin.impl.a.e */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/a/e.class */
public class C0883e {

    /* renamed from: c */
    private static final List<String> f3304c = Arrays.asList("video/mp4", "video/webm", "video/3gpp", "video/x-matroska");

    /* renamed from: b */
    private final C1408l f3306b;

    /* renamed from: d */
    private final JSONObject f3307d;

    /* renamed from: e */
    private final JSONObject f3308e;

    /* renamed from: f */
    private final EnumC1282b f3309f;

    /* renamed from: a */
    public List<C1539q> f3305a = new ArrayList();

    /* renamed from: g */
    private final long f3310g = System.currentTimeMillis();

    public C0883e(JSONObject jSONObject, JSONObject jSONObject2, EnumC1282b enumC1282b, C1408l c1408l) {
        this.f3306b = c1408l;
        this.f3307d = jSONObject;
        this.f3308e = jSONObject2;
        this.f3309f = enumC1282b;
    }

    /* renamed from: a */
    public int m7149a() {
        return this.f3305a.size();
    }

    /* renamed from: b */
    public List<C1539q> m7148b() {
        return this.f3305a;
    }

    /* renamed from: c */
    public JSONObject m7147c() {
        return this.f3307d;
    }

    /* renamed from: d */
    public JSONObject m7146d() {
        return this.f3308e;
    }

    /* renamed from: e */
    public EnumC1282b m7145e() {
        return this.f3309f;
    }

    /* renamed from: f */
    public long m7144f() {
        return this.f3310g;
    }

    /* renamed from: g */
    public List<String> m7143g() {
        List<String> explode = CollectionUtils.explode(JsonUtils.getString(this.f3307d, "vast_preferred_video_types", null));
        if (explode.isEmpty()) {
            explode = f3304c;
        }
        return explode;
    }

    /* renamed from: h */
    public int m7142h() {
        return Utils.getVideoCompletionPercent(this.f3307d);
    }
}
