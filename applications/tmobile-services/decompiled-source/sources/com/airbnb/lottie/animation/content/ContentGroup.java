package com.airbnb.lottie.animation.content;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import androidx.annotation.Nullable;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.animation.LPaint;
import com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation;
import com.airbnb.lottie.animation.keyframe.TransformKeyframeAnimation;
import com.airbnb.lottie.model.KeyPath;
import com.airbnb.lottie.model.KeyPathElement;
import com.airbnb.lottie.model.animatable.AnimatableTransform;
import com.airbnb.lottie.model.content.ContentModel;
import com.airbnb.lottie.model.content.ShapeGroup;
import com.airbnb.lottie.model.layer.BaseLayer;
import com.airbnb.lottie.utils.Utils;
import com.airbnb.lottie.value.LottieValueCallback;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/airbnb/lottie/animation/content/ContentGroup.class */
public class ContentGroup implements DrawingContent, PathContent, BaseKeyframeAnimation.AnimationListener, KeyPathElement {

    /* renamed from: a */
    private Paint f5880a;

    /* renamed from: b */
    private RectF f5881b;

    /* renamed from: c */
    private final Matrix f5882c;

    /* renamed from: d */
    private final Path f5883d;

    /* renamed from: e */
    private final RectF f5884e;

    /* renamed from: f */
    private final String f5885f;

    /* renamed from: g */
    private final boolean f5886g;

    /* renamed from: h */
    private final List<Content> f5887h;

    /* renamed from: i */
    private final LottieDrawable f5888i;
    @Nullable

    /* renamed from: j */
    private List<PathContent> f5889j;
    @Nullable

    /* renamed from: k */
    private TransformKeyframeAnimation f5890k;

    public ContentGroup(LottieDrawable lottieDrawable, BaseLayer baseLayer, ShapeGroup shapeGroup) {
        this(lottieDrawable, baseLayer, shapeGroup.m15992c(), shapeGroup.m15991d(), m16189e(lottieDrawable, baseLayer, shapeGroup.m15993b()), m16188h(shapeGroup.m15993b()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ContentGroup(LottieDrawable lottieDrawable, BaseLayer baseLayer, String str, boolean z, List<Content> list, @Nullable AnimatableTransform animatableTransform) {
        this.f5880a = new LPaint();
        this.f5881b = new RectF();
        this.f5882c = new Matrix();
        this.f5883d = new Path();
        this.f5884e = new RectF();
        this.f5885f = str;
        this.f5888i = lottieDrawable;
        this.f5886g = z;
        this.f5887h = list;
        if (animatableTransform != null) {
            TransformKeyframeAnimation b = animatableTransform.m16073b();
            this.f5890k = b;
            b.m16124a(baseLayer);
            this.f5890k.m16123b(this);
        }
        ArrayList arrayList = new ArrayList();
        for (int size = list.size() - 1; size >= 0; size--) {
            Content content = list.get(size);
            if (content instanceof GreedyContent) {
                arrayList.add((GreedyContent) content);
            }
        }
        for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
            ((GreedyContent) arrayList.get(size2)).mo16169e(list.listIterator(list.size()));
        }
    }

    /* renamed from: e */
    private static List<Content> m16189e(LottieDrawable lottieDrawable, BaseLayer baseLayer, List<ContentModel> list) {
        ArrayList arrayList = new ArrayList(list.size());
        for (int i = 0; i < list.size(); i++) {
            Content a = list.get(i).mo15977a(lottieDrawable, baseLayer);
            if (a != null) {
                arrayList.add(a);
            }
        }
        return arrayList;
    }

    @Nullable
    /* renamed from: h */
    static AnimatableTransform m16188h(List<ContentModel> list) {
        for (int i = 0; i < list.size(); i++) {
            ContentModel contentModel = list.get(i);
            if (contentModel instanceof AnimatableTransform) {
                return (AnimatableTransform) contentModel;
            }
        }
        return null;
    }

    /* renamed from: k */
    private boolean m16185k() {
        int i = 0;
        for (int i2 = 0; i2 < this.f5887h.size(); i2++) {
            i = i;
            if (this.f5887h.get(i2) instanceof DrawingContent) {
                int i3 = i + 1;
                i = i3;
                if (i3 >= 2) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation.AnimationListener
    /* renamed from: a */
    public void mo15941a() {
        this.f5888i.invalidateSelf();
    }

    @Override // com.airbnb.lottie.animation.content.Content
    /* renamed from: b */
    public void mo15963b(List<Content> list, List<Content> list2) {
        ArrayList arrayList = new ArrayList(list.size() + this.f5887h.size());
        arrayList.addAll(list);
        for (int size = this.f5887h.size() - 1; size >= 0; size--) {
            Content content = this.f5887h.get(size);
            content.mo15963b(arrayList, this.f5887h.subList(0, size));
            arrayList.add(content);
        }
    }

    @Override // com.airbnb.lottie.model.KeyPathElement
    /* renamed from: c */
    public void mo15962c(KeyPath keyPath, int i, List<KeyPath> list, KeyPath keyPath2) {
        if (keyPath.m16083g(getName(), i)) {
            KeyPath keyPath3 = keyPath2;
            if (!"__container".equals(getName())) {
                KeyPath a = keyPath2.m16089a(getName());
                keyPath3 = a;
                if (keyPath.m16087c(getName(), i)) {
                    list.add(a.m16081i(this));
                    keyPath3 = a;
                }
            }
            if (keyPath.m16082h(getName(), i)) {
                int e = keyPath.m16085e(getName(), i);
                for (int i2 = 0; i2 < this.f5887h.size(); i2++) {
                    Content content = this.f5887h.get(i2);
                    if (content instanceof KeyPathElement) {
                        ((KeyPathElement) content).mo15962c(keyPath, i + e, list, keyPath3);
                    }
                }
            }
        }
    }

    @Override // com.airbnb.lottie.animation.content.DrawingContent
    /* renamed from: d */
    public void mo15900d(RectF rectF, Matrix matrix, boolean z) {
        this.f5882c.set(matrix);
        TransformKeyframeAnimation transformKeyframeAnimation = this.f5890k;
        if (transformKeyframeAnimation != null) {
            this.f5882c.preConcat(transformKeyframeAnimation.m16119f());
        }
        this.f5884e.set(0.0f, 0.0f, 0.0f, 0.0f);
        for (int size = this.f5887h.size() - 1; size >= 0; size--) {
            Content content = this.f5887h.get(size);
            if (content instanceof DrawingContent) {
                ((DrawingContent) content).mo15900d(this.f5884e, this.f5882c, z);
                rectF.union(this.f5884e);
            }
        }
    }

    @Override // com.airbnb.lottie.animation.content.DrawingContent
    /* renamed from: f */
    public void mo15960f(Canvas canvas, Matrix matrix, int i) {
        if (!this.f5886g) {
            this.f5882c.set(matrix);
            TransformKeyframeAnimation transformKeyframeAnimation = this.f5890k;
            int i2 = i;
            if (transformKeyframeAnimation != null) {
                this.f5882c.preConcat(transformKeyframeAnimation.m16119f());
                i2 = (int) (((((this.f5890k.m16117h() == null ? 100 : this.f5890k.m16117h().mo16113h().intValue()) / 100.0f) * i) / 255.0f) * 255.0f);
            }
            boolean z = this.f5888i.m16284F() && m16185k() && i2 != 255;
            if (z) {
                this.f5881b.set(0.0f, 0.0f, 0.0f, 0.0f);
                mo15900d(this.f5881b, this.f5882c, true);
                this.f5880a.setAlpha(i2);
                Utils.m15685m(canvas, this.f5881b, this.f5880a);
            }
            if (z) {
                i2 = 255;
            }
            for (int size = this.f5887h.size() - 1; size >= 0; size--) {
                Content content = this.f5887h.get(size);
                if (content instanceof DrawingContent) {
                    ((DrawingContent) content).mo15960f(canvas, this.f5882c, i2);
                }
            }
            if (z) {
                canvas.restore();
            }
        }
    }

    @Override // com.airbnb.lottie.model.KeyPathElement
    /* renamed from: g */
    public <T> void mo15899g(T t, @Nullable LottieValueCallback<T> lottieValueCallback) {
        TransformKeyframeAnimation transformKeyframeAnimation = this.f5890k;
        if (transformKeyframeAnimation != null) {
            transformKeyframeAnimation.m16122c(t, lottieValueCallback);
        }
    }

    @Override // com.airbnb.lottie.animation.content.Content
    public String getName() {
        return this.f5885f;
    }

    @Override // com.airbnb.lottie.animation.content.PathContent
    public Path getPath() {
        this.f5882c.reset();
        TransformKeyframeAnimation transformKeyframeAnimation = this.f5890k;
        if (transformKeyframeAnimation != null) {
            this.f5882c.set(transformKeyframeAnimation.m16119f());
        }
        this.f5883d.reset();
        if (this.f5886g) {
            return this.f5883d;
        }
        for (int size = this.f5887h.size() - 1; size >= 0; size--) {
            Content content = this.f5887h.get(size);
            if (content instanceof PathContent) {
                this.f5883d.addPath(((PathContent) content).getPath(), this.f5882c);
            }
        }
        return this.f5883d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: i */
    public List<PathContent> m16187i() {
        if (this.f5889j == null) {
            this.f5889j = new ArrayList();
            for (int i = 0; i < this.f5887h.size(); i++) {
                Content content = this.f5887h.get(i);
                if (content instanceof PathContent) {
                    this.f5889j.add((PathContent) content);
                }
            }
        }
        return this.f5889j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j */
    public Matrix m16186j() {
        TransformKeyframeAnimation transformKeyframeAnimation = this.f5890k;
        if (transformKeyframeAnimation != null) {
            return transformKeyframeAnimation.m16119f();
        }
        this.f5882c.reset();
        return this.f5882c;
    }
}
