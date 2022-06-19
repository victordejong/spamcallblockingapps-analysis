package com.bytedance.sdk.openadsdk.video.p231b;

import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.video.p233d.C5504b;
/* renamed from: com.bytedance.sdk.openadsdk.video.b.a */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/video/b/a.class */
public class C5500a {

    /* renamed from: a */
    private String f19064a;

    /* renamed from: b */
    private String f19065b;

    /* renamed from: c */
    private int f19066c = 204800;

    /* renamed from: a */
    public String m31991a() {
        return this.f19064a;
    }

    /* renamed from: a */
    public void m31990a(int i) {
        this.f19066c = i;
    }

    /* renamed from: a */
    public void m31989a(String str) {
        this.f19064a = str;
    }

    /* renamed from: b */
    public String m31988b() {
        if (TextUtils.isEmpty(this.f19065b)) {
            this.f19065b = C5504b.m31966a(this.f19064a);
        }
        return this.f19065b;
    }

    /* renamed from: b */
    public void m31987b(String str) {
        this.f19065b = str;
    }

    /* renamed from: c */
    public int m31986c() {
        return this.f19066c;
    }
}
