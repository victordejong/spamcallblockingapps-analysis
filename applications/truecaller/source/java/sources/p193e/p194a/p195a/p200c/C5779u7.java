package p193e.p194a.p195a.p200c;

import com.truecaller.C2752R;
import java.util.Objects;
import p193e.p194a.p195a.p200c.p201a.C5011a;
import p193e.p194a.p195a.p200c.p201a.C5036k;
import p193e.p194a.p195a.p200c.p201a.C5053t;
import p193e.p194a.p195a.p200c.p216n8.C5589a;
import p193e.p194a.p195a.p200c.p221r8.AbstractC5702d;
import p193e.p194a.p195a.p200c.p221r8.C5700b;
import p193e.p194a.p195a.p200c.p221r8.C5701c;
import s1.z.c.l;
/* renamed from: e.a.a.c.u7 */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/u7.class */
public final class C5779u7 implements AbstractC5769t7 {

    /* renamed from: a */
    public final C5700b f19362a;

    public C5779u7(C5700b c5700b) {
        l.e(c5700b, "viewCacher");
        this.f19362a = c5700b;
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5769t7
    /* renamed from: a */
    public C5053t mo32617a() {
        return (C5053t) this.f19362a.m32780a(101);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5769t7
    /* renamed from: b */
    public void mo32616b(C5701c c5701c) {
        Objects.requireNonNull(this.f19362a);
        AbstractC5702d abstractC5702d = (AbstractC5702d) c5701c.f19150a.getTag(C2752R.C2754id.tag_cacher);
        if (abstractC5702d != null) {
            abstractC5702d.m32777f(c5701c);
        }
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5769t7
    /* renamed from: c */
    public C5036k mo32615c() {
        return (C5036k) this.f19362a.m32780a(97);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5769t7
    /* renamed from: d */
    public C5701c mo32614d(boolean z) {
        C5701c m32780a = this.f19362a.m32780a(z ? 1 : 2);
        l.d(m32780a, "viewCacher.acquireFor(\n …TYPE_IMAGE_INCOMING\n    )");
        return m32780a;
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5769t7
    /* renamed from: e */
    public C5701c mo32613e(boolean z) {
        C5701c m32780a = this.f19362a.m32780a(z ? 4 : 5);
        l.d(m32780a, "viewCacher.acquireFor(\n …TYPE_EMOJI_INCOMING\n    )");
        return m32780a;
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5769t7
    /* renamed from: f */
    public C5701c mo32612f(boolean z) {
        C5701c m32780a = this.f19362a.m32780a(z ? 6 : 7);
        l.d(m32780a, "viewCacher.acquireFor(\n …VOICE_CLIP_INCOMING\n    )");
        return m32780a;
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5769t7
    /* renamed from: g */
    public C5701c mo32611g(boolean z) {
        C5701c m32780a = this.f19362a.m32780a(z ? 98 : 99);
        l.d(m32780a, "viewCacher.acquireFor(\n …ATTACHMENT_INCOMING\n    )");
        return m32780a;
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5769t7
    /* renamed from: h */
    public C5701c mo32610h(boolean z) {
        C5701c m32780a = this.f19362a.m32780a(z ? 103 : 102);
        l.d(m32780a, "viewCacher.acquireFor(\n …ATED_EMOJI_INCOMING\n    )");
        return m32780a;
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5769t7
    /* renamed from: i */
    public C5011a mo32609i() {
        return (C5011a) this.f19362a.m32780a(100);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5769t7
    /* renamed from: j */
    public C5589a mo32608j() {
        return (C5589a) this.f19362a.m32780a(104);
    }
}
