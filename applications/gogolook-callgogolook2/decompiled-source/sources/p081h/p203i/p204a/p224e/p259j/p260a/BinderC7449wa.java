package p081h.p203i.p204a.p224e.p259j.p260a;

import android.os.Bundle;
import android.view.View;
import com.google.android.gms.ads.formats.NativeAd;
import com.google.android.gms.ads.mediation.NativeAppInstallAdMapper;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import p081h.p203i.p204a.p224e.p252e.AbstractC7106b;
import p081h.p203i.p204a.p224e.p252e.BinderC7110d;
@AbstractC7354p0
/* renamed from: h.i.a.e.j.a.wa */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/wa.class */
public final class BinderC7449wa extends AbstractBinderC7340na {

    /* renamed from: a */
    public final NativeAppInstallAdMapper f17530a;

    public BinderC7449wa(NativeAppInstallAdMapper nativeAppInstallAdMapper) {
        this.f17530a = nativeAppInstallAdMapper;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7328ma
    /* renamed from: A */
    public final boolean mo20593A() {
        return this.f17530a.getOverrideClickHandling();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7328ma
    /* renamed from: a */
    public final void mo20592a(AbstractC7106b bVar) {
        this.f17530a.handleClick((View) BinderC7110d.m21059A(bVar));
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7328ma
    /* renamed from: a */
    public final void mo20591a(AbstractC7106b bVar, AbstractC7106b bVar2, AbstractC7106b bVar3) {
        this.f17530a.trackViews((View) BinderC7110d.m21059A(bVar), (HashMap) BinderC7110d.m21059A(bVar2), (HashMap) BinderC7110d.m21059A(bVar3));
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7328ma
    /* renamed from: b */
    public final void mo20590b(AbstractC7106b bVar) {
        this.f17530a.untrackView((View) BinderC7110d.m21059A(bVar));
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7328ma
    /* renamed from: f */
    public final void mo20589f(AbstractC7106b bVar) {
        this.f17530a.trackView((View) BinderC7110d.m21059A(bVar));
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7328ma
    /* renamed from: g */
    public final AbstractC7361p7 mo20588g() {
        return null;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7328ma
    public final Bundle getExtras() {
        return this.f17530a.getExtras();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7328ma
    public final AbstractC7359p5 getVideoController() {
        if (this.f17530a.getVideoController() != null) {
            return this.f17530a.getVideoController().zzbb();
        }
        return null;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7328ma
    /* renamed from: h */
    public final String mo20587h() {
        return this.f17530a.getCallToAction();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7328ma
    /* renamed from: i */
    public final String mo20586i() {
        return this.f17530a.getHeadline();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7328ma
    /* renamed from: j */
    public final String mo20585j() {
        return this.f17530a.getBody();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7328ma
    /* renamed from: k */
    public final List mo20584k() {
        List<NativeAd.Image> images = this.f17530a.getImages();
        if (images == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (NativeAd.Image image : images) {
            arrayList.add(new BinderC7337n7(image.getDrawable(), image.getUri(), image.getScale()));
        }
        return arrayList;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7328ma
    /* renamed from: m */
    public final AbstractC7106b mo20583m() {
        return null;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7328ma
    /* renamed from: n */
    public final String mo20582n() {
        return this.f17530a.getPrice();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7328ma
    /* renamed from: o */
    public final AbstractC7398s7 mo20581o() {
        NativeAd.Image icon = this.f17530a.getIcon();
        if (icon != null) {
            return new BinderC7337n7(icon.getDrawable(), icon.getUri(), icon.getScale());
        }
        return null;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7328ma
    /* renamed from: p */
    public final double mo20580p() {
        return this.f17530a.getStarRating();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7328ma
    /* renamed from: r */
    public final String mo20579r() {
        return this.f17530a.getStore();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7328ma
    public final void recordImpression() {
        this.f17530a.recordImpression();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7328ma
    /* renamed from: w */
    public final AbstractC7106b mo20578w() {
        View zzxr = this.f17530a.zzxr();
        if (zzxr == null) {
            return null;
        }
        return BinderC7110d.m21058a(zzxr);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7328ma
    /* renamed from: x */
    public final boolean mo20577x() {
        return this.f17530a.getOverrideImpressionRecording();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7328ma
    /* renamed from: y */
    public final AbstractC7106b mo20576y() {
        View adChoicesContent = this.f17530a.getAdChoicesContent();
        if (adChoicesContent == null) {
            return null;
        }
        return BinderC7110d.m21058a(adChoicesContent);
    }
}
