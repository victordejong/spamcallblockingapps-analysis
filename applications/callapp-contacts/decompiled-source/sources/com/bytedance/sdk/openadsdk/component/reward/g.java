package com.bytedance.sdk.openadsdk.component.reward;

import android.content.Context;
import android.view.ViewGroup;
import com.bytedance.sdk.openadsdk.core.e.i;
import com.bytedance.sdk.openadsdk.core.video.c.a;
import com.bytedance.sdk.openadsdk.d.e;
import com.bytedance.sdk.openadsdk.utils.af;
import com.mopub.common.AdType;
import com.mopub.mobileads.VastIconXmlManager;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/component/reward/g.class */
public class g extends a {
    public g(Context context, ViewGroup viewGroup, i iVar) {
        super(context, viewGroup, iVar);
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.c.a
    public int a() {
        return 1;
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.c.a
    public void a(int i, int i2) {
        if (this.f9174b != null) {
            String str = this.h ? "play_error" : "play_start_error";
            Map<String, Object> a2 = af.a(this.f9174b, i, i2, u());
            a2.put("play_type", Integer.valueOf(af.a(this, this.g)));
            if (this.h) {
                a2.put(VastIconXmlManager.DURATION, Long.valueOf(p()));
                a2.put("percent", Integer.valueOf(r()));
                a2.put("buffers_time", Long.valueOf(o()));
            }
            e.c(this.f9173a.get(), this.f9174b, AdType.REWARDED_VIDEO, str, a2);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.c.a
    public void b() {
        Map<String, Object> C = C();
        C.put("play_type", Integer.valueOf(af.a(this, this.g)));
        e.a(this.f9173a.get(), this.f9174b, AdType.REWARDED_VIDEO, "feed_over", this.f9175c, 100, C);
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.c.a
    public void c() {
        Map<String, Object> C = C();
        C.put("play_type", Integer.valueOf(af.a(this, this.g)));
        e.a(this.f9173a.get(), this.f9174b, AdType.REWARDED_VIDEO, "play_pause", p(), r(), C);
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.c.a
    public void d() {
        Map<String, Object> C = C();
        C.put("play_type", Integer.valueOf(af.a(this, this.g)));
        e.a(this.f9173a.get(), this.f9174b, AdType.REWARDED_VIDEO, "continue_play", this.i, r(), C);
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.c.a
    public void e() {
        Map<String, Object> B = B();
        B.put("play_type", Integer.valueOf(af.a(this, this.g)));
        e.b(this.f9173a.get(), this.f9174b, AdType.REWARDED_VIDEO, "feed_play", B);
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.c.a
    public void f() {
        Map<String, Object> B = B();
        B.put("play_type", Integer.valueOf(af.a(this, this.g)));
        e.b(this.f9173a.get(), this.f9174b, AdType.REWARDED_VIDEO, "play_start", B);
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.c.a
    public void g() {
        Map<String, Object> B = B();
        B.put("play_type", Integer.valueOf(af.a(this, this.g)));
        e.b(this.f9173a.get(), this.f9174b, AdType.REWARDED_VIDEO, "feed_play", B);
    }
}
