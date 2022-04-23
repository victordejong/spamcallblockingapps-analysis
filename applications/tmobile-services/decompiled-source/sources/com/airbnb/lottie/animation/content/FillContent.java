package com.airbnb.lottie.animation.content;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import androidx.annotation.Nullable;
import com.airbnb.lottie.C0611L;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.LottieProperty;
import com.airbnb.lottie.animation.LPaint;
import com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation;
import com.airbnb.lottie.animation.keyframe.ColorKeyframeAnimation;
import com.airbnb.lottie.animation.keyframe.ValueCallbackKeyframeAnimation;
import com.airbnb.lottie.model.KeyPath;
import com.airbnb.lottie.model.content.ShapeFill;
import com.airbnb.lottie.model.layer.BaseLayer;
import com.airbnb.lottie.utils.MiscUtils;
import com.airbnb.lottie.value.LottieValueCallback;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/airbnb/lottie/animation/content/FillContent.class */
public class FillContent implements DrawingContent, BaseKeyframeAnimation.AnimationListener, KeyPathElementContent {

    /* renamed from: c */
    private final BaseLayer f5901c;

    /* renamed from: d */
    private final String f5902d;

    /* renamed from: e */
    private final boolean f5903e;

    /* renamed from: g */
    private final BaseKeyframeAnimation<Integer, Integer> f5905g;

    /* renamed from: h */
    private final BaseKeyframeAnimation<Integer, Integer> f5906h;
    @Nullable

    /* renamed from: i */
    private BaseKeyframeAnimation<ColorFilter, ColorFilter> f5907i;

    /* renamed from: j */
    private final LottieDrawable f5908j;

    /* renamed from: a */
    private final Path f5899a = new Path();

    /* renamed from: b */
    private final Paint f5900b = new LPaint(1);

    /* renamed from: f */
    private final List<PathContent> f5904f = new ArrayList();

    public FillContent(LottieDrawable lottieDrawable, BaseLayer baseLayer, ShapeFill shapeFill) {
        this.f5901c = baseLayer;
        this.f5902d = shapeFill.m15996d();
        this.f5903e = shapeFill.m15994f();
        this.f5908j = lottieDrawable;
        if (shapeFill.m15998b() == null || shapeFill.m15995e() == null) {
            this.f5905g = null;
            this.f5906h = null;
            return;
        }
        this.f5899a.setFillType(shapeFill.m15997c());
        BaseKeyframeAnimation<Integer, Integer> a = shapeFill.m15998b().mo16063a();
        this.f5905g = a;
        a.m16161a(this);
        baseLayer.m15958i(this.f5905g);
        BaseKeyframeAnimation<Integer, Integer> a2 = shapeFill.m15995e().mo16063a();
        this.f5906h = a2;
        a2.m16161a(this);
        baseLayer.m15958i(this.f5906h);
    }

    @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation.AnimationListener
    /* renamed from: a */
    public void mo15941a() {
        this.f5908j.invalidateSelf();
    }

    @Override // com.airbnb.lottie.animation.content.Content
    /* renamed from: b */
    public void mo15963b(List<Content> list, List<Content> list2) {
        for (int i = 0; i < list2.size(); i++) {
            Content content = list2.get(i);
            if (content instanceof PathContent) {
                this.f5904f.add((PathContent) content);
            }
        }
    }

    @Override // com.airbnb.lottie.model.KeyPathElement
    /* renamed from: c */
    public void mo15962c(KeyPath keyPath, int i, List<KeyPath> list, KeyPath keyPath2) {
        MiscUtils.m15698m(keyPath, i, list, keyPath2, this);
    }

    @Override // com.airbnb.lottie.animation.content.DrawingContent
    /* renamed from: d */
    public void mo15900d(RectF rectF, Matrix matrix, boolean z) {
        this.f5899a.reset();
        for (int i = 0; i < this.f5904f.size(); i++) {
            this.f5899a.addPath(this.f5904f.get(i).getPath(), matrix);
        }
        this.f5899a.computeBounds(rectF, false);
        rectF.set(rectF.left - 1.0f, rectF.top - 1.0f, rectF.right + 1.0f, rectF.bottom + 1.0f);
    }

    @Override // com.airbnb.lottie.animation.content.DrawingContent
    /* renamed from: f */
    public void mo15960f(Canvas canvas, Matrix matrix, int i) {
        if (!this.f5903e) {
            C0611L.m16372a("FillContent#draw");
            this.f5900b.setColor(((ColorKeyframeAnimation) this.f5905g).m16146o());
            int intValue = (int) ((((i / 255.0f) * this.f5906h.mo16113h().intValue()) / 100.0f) * 255.0f);
            this.f5900b.setAlpha(MiscUtils.m15707d(intValue, 0, 255));
            BaseKeyframeAnimation<ColorFilter, ColorFilter> baseKeyframeAnimation = this.f5907i;
            if (baseKeyframeAnimation != null) {
                this.f5900b.setColorFilter(baseKeyframeAnimation.mo16113h());
            }
            this.f5899a.reset();
            for (int i2 = 0; i2 < this.f5904f.size(); i2++) {
                this.f5899a.addPath(this.f5904f.get(i2).getPath(), matrix);
            }
            canvas.drawPath(this.f5899a, this.f5900b);
            C0611L.m16371b("FillContent#draw");
        }
    }

    @Override // com.airbnb.lottie.model.KeyPathElement
    /* renamed from: g */
    public <T> void mo15899g(T t, @Nullable LottieValueCallback<T> lottieValueCallback) {
        if (t == LottieProperty.f5822a) {
            this.f5905g.m16154m(lottieValueCallback);
        } else if (t == LottieProperty.f5825d) {
            this.f5906h.m16154m(lottieValueCallback);
        } else if (t == LottieProperty.f5820C) {
            BaseKeyframeAnimation<ColorFilter, ColorFilter> baseKeyframeAnimation = this.f5907i;
            if (baseKeyframeAnimation != null) {
                this.f5901c.m15968C(baseKeyframeAnimation);
            }
            if (lottieValueCallback == null) {
                this.f5907i = null;
                return;
            }
            ValueCallbackKeyframeAnimation valueCallbackKeyframeAnimation = new ValueCallbackKeyframeAnimation(lottieValueCallback);
            this.f5907i = valueCallbackKeyframeAnimation;
            valueCallbackKeyframeAnimation.m16161a(this);
            this.f5901c.m15958i(this.f5907i);
        }
    }

    @Override // com.airbnb.lottie.animation.content.Content
    public String getName() {
        return this.f5902d;
    }
}
