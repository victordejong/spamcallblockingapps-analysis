package com.bytedance.sdk.openadsdk.component.reward;

import android.content.Context;
import android.view.ViewGroup;
import com.bytedance.sdk.openadsdk.core.p154e.C4557i;
import com.bytedance.sdk.openadsdk.core.video.p160c.AbstractC4680a;
import com.bytedance.sdk.openadsdk.p164d.C4811e;
import com.bytedance.sdk.openadsdk.utils.C5438af;
import com.mopub.common.AdType;
import com.mopub.mobileads.VastIconXmlManager;
import java.util.Map;
/* renamed from: com.bytedance.sdk.openadsdk.component.reward.g */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/component/reward/g.class */
public class C4430g extends AbstractC4680a {
    public C4430g(Context context, ViewGroup viewGroup, C4557i c4557i) {
        super(context, viewGroup, c4557i);
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.p160c.AbstractC4680a
    /* renamed from: a */
    public int mo34537a() {
        return 1;
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.p160c.AbstractC4680a
    /* renamed from: a */
    public void mo34534a(int i, int i2) {
        if (this.f17107b == null) {
            return;
        }
        String str = this.f17113h ? "play_error" : "play_start_error";
        Map<String, Object> m32305a = C5438af.m32305a(this.f17107b, i, i2, mo34249u());
        m32305a.put("play_type", Integer.valueOf(C5438af.m32301a(this, this.f17112g)));
        if (this.f17113h) {
            m32305a.put(VastIconXmlManager.DURATION, Long.valueOf(mo34254p()));
            m32305a.put("percent", Integer.valueOf(mo34252r()));
            m32305a.put("buffers_time", Long.valueOf(mo34255o()));
        }
        C4811e.m33866c(this.f17106a.get(), this.f17107b, AdType.REWARDED_VIDEO, str, m32305a);
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.p160c.AbstractC4680a
    /* renamed from: b */
    public void mo34524b() {
        Map<String, Object> C = m34549C();
        C.put("play_type", Integer.valueOf(C5438af.m32301a(this, this.f17112g)));
        C4811e.m33880a(this.f17106a.get(), this.f17107b, AdType.REWARDED_VIDEO, "feed_over", this.f17108c, 100, C);
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.p160c.AbstractC4680a
    /* renamed from: c */
    public void mo34518c() {
        Map<String, Object> C = m34549C();
        C.put("play_type", Integer.valueOf(C5438af.m32301a(this, this.f17112g)));
        C4811e.m33880a(this.f17106a.get(), this.f17107b, AdType.REWARDED_VIDEO, "play_pause", mo34254p(), mo34252r(), C);
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.p160c.AbstractC4680a
    /* renamed from: d */
    public void mo34515d() {
        Map<String, Object> C = m34549C();
        C.put("play_type", Integer.valueOf(C5438af.m32301a(this, this.f17112g)));
        C4811e.m33880a(this.f17106a.get(), this.f17107b, AdType.REWARDED_VIDEO, "continue_play", this.f17114i, mo34252r(), C);
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.p160c.AbstractC4680a
    /* renamed from: e */
    public void mo34511e() {
        Map<String, Object> B = m34550B();
        B.put("play_type", Integer.valueOf(C5438af.m32301a(this, this.f17112g)));
        C4811e.m33868b(this.f17106a.get(), this.f17107b, AdType.REWARDED_VIDEO, "feed_play", B);
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.p160c.AbstractC4680a
    /* renamed from: f */
    public void mo34509f() {
        Map<String, Object> B = m34550B();
        B.put("play_type", Integer.valueOf(C5438af.m32301a(this, this.f17112g)));
        C4811e.m33868b(this.f17106a.get(), this.f17107b, AdType.REWARDED_VIDEO, "play_start", B);
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.p160c.AbstractC4680a
    /* renamed from: g */
    public void mo34507g() {
        Map<String, Object> B = m34550B();
        B.put("play_type", Integer.valueOf(C5438af.m32301a(this, this.f17112g)));
        C4811e.m33868b(this.f17106a.get(), this.f17107b, AdType.REWARDED_VIDEO, "feed_play", B);
    }
}
