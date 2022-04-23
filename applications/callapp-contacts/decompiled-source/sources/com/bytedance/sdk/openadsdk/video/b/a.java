package com.bytedance.sdk.openadsdk.video.b;

import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.video.d.b;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/video/b/a.class */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private String f10344a;

    /* renamed from: b  reason: collision with root package name */
    private String f10345b;

    /* renamed from: c  reason: collision with root package name */
    private int f10346c = 204800;

    public String a() {
        return this.f10344a;
    }

    public void a(int i) {
        this.f10346c = i;
    }

    public void a(String str) {
        this.f10344a = str;
    }

    public String b() {
        if (TextUtils.isEmpty(this.f10345b)) {
            this.f10345b = b.a(this.f10344a);
        }
        return this.f10345b;
    }

    public void b(String str) {
        this.f10345b = str;
    }

    public int c() {
        return this.f10346c;
    }
}
