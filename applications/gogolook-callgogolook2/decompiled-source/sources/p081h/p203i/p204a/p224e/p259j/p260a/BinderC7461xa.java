package p081h.p203i.p204a.p224e.p259j.p260a;

import android.os.Bundle;
import android.view.View;
import com.google.android.gms.ads.formats.NativeAd;
import com.google.android.gms.ads.mediation.NativeContentAdMapper;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import p081h.p203i.p204a.p224e.p252e.AbstractC7106b;
import p081h.p203i.p204a.p224e.p252e.BinderC7110d;
@AbstractC7354p0
/* renamed from: h.i.a.e.j.a.xa */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/xa.class */
public final class BinderC7461xa extends AbstractBinderC7364pa {

    /* renamed from: a */
    public final NativeContentAdMapper f17549a;

    public BinderC7461xa(NativeContentAdMapper nativeContentAdMapper) {
        this.f17549a = nativeContentAdMapper;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7352oa
    /* renamed from: A */
    public final boolean mo20530A() {
        return this.f17549a.getOverrideClickHandling();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7352oa
    /* renamed from: B */
    public final AbstractC7398s7 mo20529B() {
        NativeAd.Image logo = this.f17549a.getLogo();
        if (logo != null) {
            return new BinderC7337n7(logo.getDrawable(), logo.getUri(), logo.getScale());
        }
        return null;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7352oa
    /* renamed from: a */
    public final void mo20528a(AbstractC7106b bVar) {
        this.f17549a.handleClick((View) BinderC7110d.m21059A(bVar));
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7352oa
    /* renamed from: a */
    public final void mo20527a(AbstractC7106b bVar, AbstractC7106b bVar2, AbstractC7106b bVar3) {
        this.f17549a.trackViews((View) BinderC7110d.m21059A(bVar), (HashMap) BinderC7110d.m21059A(bVar2), (HashMap) BinderC7110d.m21059A(bVar3));
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7352oa
    /* renamed from: b */
    public final void mo20526b(AbstractC7106b bVar) {
        this.f17549a.untrackView((View) BinderC7110d.m21059A(bVar));
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7352oa
    /* renamed from: f */
    public final void mo20525f(AbstractC7106b bVar) {
        this.f17549a.trackView((View) BinderC7110d.m21059A(bVar));
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7352oa
    /* renamed from: g */
    public final AbstractC7361p7 mo20524g() {
        return null;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7352oa
    public final Bundle getExtras() {
        return this.f17549a.getExtras();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7352oa
    public final AbstractC7359p5 getVideoController() {
        if (this.f17549a.getVideoController() != null) {
            return this.f17549a.getVideoController().zzbb();
        }
        return null;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7352oa
    /* renamed from: h */
    public final String mo20523h() {
        return this.f17549a.getCallToAction();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7352oa
    /* renamed from: i */
    public final String mo20522i() {
        return this.f17549a.getHeadline();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7352oa
    /* renamed from: j */
    public final String mo20521j() {
        return this.f17549a.getBody();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7352oa
    /* renamed from: k */
    public final List mo20520k() {
        List<NativeAd.Image> images = this.f17549a.getImages();
        if (images == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (NativeAd.Image image : images) {
            arrayList.add(new BinderC7337n7(image.getDrawable(), image.getUri(), image.getScale()));
        }
        return arrayList;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7352oa
    /* renamed from: m */
    public final AbstractC7106b mo20519m() {
        return null;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7352oa
    /* renamed from: q */
    public final String mo20518q() {
        return this.f17549a.getAdvertiser();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7352oa
    public final void recordImpression() {
        this.f17549a.recordImpression();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7352oa
    /* renamed from: w */
    public final AbstractC7106b mo20517w() {
        View zzxr = this.f17549a.zzxr();
        if (zzxr == null) {
            return null;
        }
        return BinderC7110d.m21058a(zzxr);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7352oa
    /* renamed from: x */
    public final boolean mo20516x() {
        return this.f17549a.getOverrideImpressionRecording();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7352oa
    /* renamed from: y */
    public final AbstractC7106b mo20515y() {
        View adChoicesContent = this.f17549a.getAdChoicesContent();
        if (adChoicesContent == null) {
            return null;
        }
        return BinderC7110d.m21058a(adChoicesContent);
    }
}
