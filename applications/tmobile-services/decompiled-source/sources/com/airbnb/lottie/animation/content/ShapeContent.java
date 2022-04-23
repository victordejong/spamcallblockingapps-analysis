package com.airbnb.lottie.animation.content;

import android.graphics.Path;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation;
import com.airbnb.lottie.model.content.ShapeData;
import com.airbnb.lottie.model.content.ShapePath;
import com.airbnb.lottie.model.content.ShapeTrimPath;
import com.airbnb.lottie.model.layer.BaseLayer;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/airbnb/lottie/animation/content/ShapeContent.class */
public class ShapeContent implements PathContent, BaseKeyframeAnimation.AnimationListener {

    /* renamed from: b */
    private final String f5981b;

    /* renamed from: c */
    private final boolean f5982c;

    /* renamed from: d */
    private final LottieDrawable f5983d;

    /* renamed from: e */
    private final BaseKeyframeAnimation<?, Path> f5984e;

    /* renamed from: f */
    private boolean f5985f;

    /* renamed from: a */
    private final Path f5980a = new Path();

    /* renamed from: g */
    private CompoundTrimPathContent f5986g = new CompoundTrimPathContent();

    public ShapeContent(LottieDrawable lottieDrawable, BaseLayer baseLayer, ShapePath shapePath) {
        this.f5981b = shapePath.m15990b();
        this.f5982c = shapePath.m15988d();
        this.f5983d = lottieDrawable;
        BaseKeyframeAnimation<ShapeData, Path> a = shapePath.m15989c().mo16063a();
        this.f5984e = a;
        baseLayer.m15958i(a);
        this.f5984e.m16161a(this);
    }

    /* renamed from: c */
    private void m16168c() {
        this.f5985f = false;
        this.f5983d.invalidateSelf();
    }

    @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation.AnimationListener
    /* renamed from: a */
    public void mo15941a() {
        m16168c();
    }

    @Override // com.airbnb.lottie.animation.content.Content
    /* renamed from: b */
    public void mo15963b(List<Content> list, List<Content> list2) {
        for (int i = 0; i < list.size(); i++) {
            Content content = list.get(i);
            if (content instanceof TrimPathContent) {
                TrimPathContent trimPathContent = (TrimPathContent) content;
                if (trimPathContent.m16163i() == ShapeTrimPath.Type.SIMULTANEOUSLY) {
                    this.f5986g.m16191a(trimPathContent);
                    trimPathContent.m16167c(this);
                }
            }
        }
    }

    @Override // com.airbnb.lottie.animation.content.Content
    public String getName() {
        return this.f5981b;
    }

    @Override // com.airbnb.lottie.animation.content.PathContent
    public Path getPath() {
        if (this.f5985f) {
            return this.f5980a;
        }
        this.f5980a.reset();
        if (this.f5982c) {
            this.f5985f = true;
            return this.f5980a;
        }
        this.f5980a.set(this.f5984e.mo16113h());
        this.f5980a.setFillType(Path.FillType.EVEN_ODD);
        this.f5986g.m16190b(this.f5980a);
        this.f5985f = true;
        return this.f5980a;
    }
}
