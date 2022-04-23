package com.inmobi.rendering.p517a;

import com.mopub.nativeads.MoPubNativeAdPositioning;
import java.util.HashMap;
import java.util.Map;
import java.util.Random;
import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: com.inmobi.rendering.a.a */
/* loaded from: classes2-dex2jar.jar:com/inmobi/rendering/a/a.class */
public final class C8442a {

    /* renamed from: a */
    public int f32824a;

    /* renamed from: b */
    public String f32825b;

    /* renamed from: c */
    public Map<String, String> f32826c;

    /* renamed from: d */
    public long f32827d;

    /* renamed from: e */
    public long f32828e;

    /* renamed from: f */
    public int f32829f;

    /* renamed from: g */
    public AtomicBoolean f32830g;

    /* renamed from: h */
    public boolean f32831h;

    /* renamed from: i */
    public boolean f32832i;

    public C8442a(int i, String str, Map<String, String> map, boolean z, boolean z2, int i2, long j, long j2) {
        this.f32824a = i;
        this.f32825b = str;
        this.f32826c = map;
        this.f32827d = j;
        this.f32828e = j2;
        this.f32829f = i2;
        this.f32830g = new AtomicBoolean(false);
        this.f32832i = z;
        this.f32831h = z2;
    }

    public C8442a(String str, Map<String, String> map, boolean z, int i) {
        this(new Random().nextInt() & MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT, str, map, z, false, i, System.currentTimeMillis(), System.currentTimeMillis());
    }

    public C8442a(String str, boolean z, boolean z2, int i) {
        this(new Random().nextInt() & MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT, str, new HashMap(), z, z2, i, System.currentTimeMillis(), System.currentTimeMillis());
    }

    /* renamed from: a */
    public final boolean m5537a(long j) {
        return System.currentTimeMillis() - this.f32828e > j * 1000;
    }
}
