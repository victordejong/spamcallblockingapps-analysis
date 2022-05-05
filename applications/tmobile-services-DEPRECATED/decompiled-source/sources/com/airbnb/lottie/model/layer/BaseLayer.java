package com.airbnb.lottie.model.layer;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.os.Build;
import androidx.annotation.CallSuper;
import androidx.annotation.FloatRange;
import androidx.annotation.Nullable;
import com.airbnb.lottie.C0611L;
import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.animation.LPaint;
import com.airbnb.lottie.animation.content.Content;
import com.airbnb.lottie.animation.content.DrawingContent;
import com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation;
import com.airbnb.lottie.animation.keyframe.FloatKeyframeAnimation;
import com.airbnb.lottie.animation.keyframe.MaskKeyframeAnimation;
import com.airbnb.lottie.animation.keyframe.TransformKeyframeAnimation;
import com.airbnb.lottie.model.KeyPath;
import com.airbnb.lottie.model.KeyPathElement;
import com.airbnb.lottie.model.content.Mask;
import com.airbnb.lottie.model.content.ShapeData;
import com.airbnb.lottie.model.layer.Layer;
import com.airbnb.lottie.utils.Logger;
import com.airbnb.lottie.utils.Utils;
import com.airbnb.lottie.value.LottieValueCallback;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/airbnb/lottie/model/layer/BaseLayer.class */
public abstract class BaseLayer implements DrawingContent, BaseKeyframeAnimation.AnimationListener, KeyPathElement {

    /* renamed from: l */
    private final String f6206l;

    /* renamed from: n */
    final LottieDrawable f6208n;

    /* renamed from: o */
    final Layer f6209o;
    @Nullable

    /* renamed from: p */
    private MaskKeyframeAnimation f6210p;
    @Nullable

    /* renamed from: q */
    private FloatKeyframeAnimation f6211q;
    @Nullable

    /* renamed from: r */
    private BaseLayer f6212r;
    @Nullable

    /* renamed from: s */
    private BaseLayer f6213s;

    /* renamed from: t */
    private List<BaseLayer> f6214t;

    /* renamed from: v */
    final TransformKeyframeAnimation f6216v;

    /* renamed from: a */
    private final Path f6195a = new Path();

    /* renamed from: b */
    private final Matrix f6196b = new Matrix();

    /* renamed from: c */
    private final Paint f6197c = new LPaint(1);

    /* renamed from: d */
    private final Paint f6198d = new LPaint(1, PorterDuff.Mode.DST_IN);

    /* renamed from: e */
    private final Paint f6199e = new LPaint(1, PorterDuff.Mode.DST_OUT);

    /* renamed from: f */
    private final Paint f6200f = new LPaint(1);

    /* renamed from: g */
    private final Paint f6201g = new LPaint(PorterDuff.Mode.CLEAR);

    /* renamed from: h */
    private final RectF f6202h = new RectF();

    /* renamed from: i */
    private final RectF f6203i = new RectF();

    /* renamed from: j */
    private final RectF f6204j = new RectF();

    /* renamed from: k */
    private final RectF f6205k = new RectF();

    /* renamed from: m */
    final Matrix f6207m = new Matrix();

    /* renamed from: u */
    private final List<BaseKeyframeAnimation<?, ?>> f6215u = new ArrayList();

    /* renamed from: w */
    private boolean f6217w = true;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.airbnb.lottie.model.layer.BaseLayer$2 */
    /* loaded from: classes-dex2jar.jar:com/airbnb/lottie/model/layer/BaseLayer$2.class */
    public static /* synthetic */ class C06612 {

        /* renamed from: a */
        static final /* synthetic */ int[] f6219a;

        /* renamed from: b */
        static final /* synthetic */ int[] f6220b;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x008e -> B:57:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x0092 -> B:51:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x0096 -> B:45:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x009a -> B:10:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:30:0x009e -> B:55:0x0049). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x00a2 -> B:49:0x0054). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:32:0x00a6 -> B:43:0x005f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:33:0x00aa -> B:37:0x006a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:34:0x00ae -> B:53:0x0075). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:35:0x00b2 -> B:47:0x0081). Please submit an issue!!! */
        static {
            int[] iArr = new int[Mask.MaskMode.values().length];
            f6220b = iArr;
            try {
                iArr[Mask.MaskMode.MASK_MODE_NONE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f6220b[Mask.MaskMode.MASK_MODE_SUBTRACT.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f6220b[Mask.MaskMode.MASK_MODE_INTERSECT.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f6220b[Mask.MaskMode.MASK_MODE_ADD.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            int[] iArr2 = new int[Layer.LayerType.values().length];
            f6219a = iArr2;
            try {
                iArr2[Layer.LayerType.SHAPE.ordinal()] = 1;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f6219a[Layer.LayerType.PRE_COMP.ordinal()] = 2;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f6219a[Layer.LayerType.SOLID.ordinal()] = 3;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f6219a[Layer.LayerType.IMAGE.ordinal()] = 4;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f6219a[Layer.LayerType.NULL.ordinal()] = 5;
            } catch (NoSuchFieldError e9) {
            }
            try {
                f6219a[Layer.LayerType.TEXT.ordinal()] = 6;
            } catch (NoSuchFieldError e10) {
            }
            try {
                f6219a[Layer.LayerType.UNKNOWN.ordinal()] = 7;
            } catch (NoSuchFieldError e11) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public BaseLayer(LottieDrawable lottieDrawable, Layer layer) {
        this.f6208n = lottieDrawable;
        this.f6209o = layer;
        this.f6206l = layer.m15932g() + "#draw";
        if (layer.m15933f() == Layer.MatteType.INVERT) {
            this.f6200f.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
        } else {
            this.f6200f.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_IN));
        }
        TransformKeyframeAnimation b = layer.m15918u().m16073b();
        this.f6216v = b;
        b.m16123b(this);
        if (layer.m15934e() != null && !layer.m15934e().isEmpty()) {
            MaskKeyframeAnimation maskKeyframeAnimation = new MaskKeyframeAnimation(layer.m15934e());
            this.f6210p = maskKeyframeAnimation;
            for (BaseKeyframeAnimation<ShapeData, Path> baseKeyframeAnimation : maskKeyframeAnimation.m16136a()) {
                baseKeyframeAnimation.m16161a(this);
            }
            for (BaseKeyframeAnimation<Integer, Integer> baseKeyframeAnimation2 : this.f6210p.m16134c()) {
                m15958i(baseKeyframeAnimation2);
                baseKeyframeAnimation2.m16161a(this);
            }
        }
        m15964I();
    }

    /* renamed from: A */
    private void m15970A() {
        this.f6208n.invalidateSelf();
    }

    /* renamed from: B */
    private void m15969B(float f) {
        this.f6208n.m16239m().m16334m().m16201a(this.f6209o.m15932g(), f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: H */
    public void m15965H(boolean z) {
        if (z != this.f6217w) {
            this.f6217w = z;
            m15970A();
        }
    }

    /* renamed from: I */
    private void m15964I() {
        boolean z = true;
        if (!this.f6209o.m15936c().isEmpty()) {
            FloatKeyframeAnimation floatKeyframeAnimation = new FloatKeyframeAnimation(this.f6209o.m15936c());
            this.f6211q = floatKeyframeAnimation;
            floatKeyframeAnimation.m16155k();
            this.f6211q.m16161a(new BaseKeyframeAnimation.AnimationListener() { // from class: com.airbnb.lottie.model.layer.BaseLayer.1
                @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation.AnimationListener
                /* renamed from: a */
                public void mo15941a() {
                    BaseLayer baseLayer = BaseLayer.this;
                    baseLayer.m15965H(baseLayer.f6211q.m16143o() == 1.0f);
                }
            });
            if (this.f6211q.mo16113h().floatValue() != 1.0f) {
                z = false;
            }
            m15965H(z);
            m15958i(this.f6211q);
            return;
        }
        m15965H(true);
    }

    /* renamed from: j */
    private void m15957j(Canvas canvas, Matrix matrix, Mask mask, BaseKeyframeAnimation<ShapeData, Path> baseKeyframeAnimation, BaseKeyframeAnimation<Integer, Integer> baseKeyframeAnimation2) {
        this.f6195a.set(baseKeyframeAnimation.mo16113h());
        this.f6195a.transform(matrix);
        this.f6197c.setAlpha((int) (baseKeyframeAnimation2.mo16113h().intValue() * 2.55f));
        canvas.drawPath(this.f6195a, this.f6197c);
    }

    /* renamed from: k */
    private void m15956k(Canvas canvas, Matrix matrix, Mask mask, BaseKeyframeAnimation<ShapeData, Path> baseKeyframeAnimation, BaseKeyframeAnimation<Integer, Integer> baseKeyframeAnimation2) {
        Utils.m15685m(canvas, this.f6202h, this.f6198d);
        this.f6195a.set(baseKeyframeAnimation.mo16113h());
        this.f6195a.transform(matrix);
        this.f6197c.setAlpha((int) (baseKeyframeAnimation2.mo16113h().intValue() * 2.55f));
        canvas.drawPath(this.f6195a, this.f6197c);
        canvas.restore();
    }

    /* renamed from: l */
    private void m15955l(Canvas canvas, Matrix matrix, Mask mask, BaseKeyframeAnimation<ShapeData, Path> baseKeyframeAnimation, BaseKeyframeAnimation<Integer, Integer> baseKeyframeAnimation2) {
        Utils.m15685m(canvas, this.f6202h, this.f6197c);
        canvas.drawRect(this.f6202h, this.f6197c);
        this.f6195a.set(baseKeyframeAnimation.mo16113h());
        this.f6195a.transform(matrix);
        this.f6197c.setAlpha((int) (baseKeyframeAnimation2.mo16113h().intValue() * 2.55f));
        canvas.drawPath(this.f6195a, this.f6199e);
        canvas.restore();
    }

    /* renamed from: m */
    private void m15954m(Canvas canvas, Matrix matrix, Mask mask, BaseKeyframeAnimation<ShapeData, Path> baseKeyframeAnimation, BaseKeyframeAnimation<Integer, Integer> baseKeyframeAnimation2) {
        Utils.m15685m(canvas, this.f6202h, this.f6198d);
        canvas.drawRect(this.f6202h, this.f6197c);
        this.f6199e.setAlpha((int) (baseKeyframeAnimation2.mo16113h().intValue() * 2.55f));
        this.f6195a.set(baseKeyframeAnimation.mo16113h());
        this.f6195a.transform(matrix);
        canvas.drawPath(this.f6195a, this.f6199e);
        canvas.restore();
    }

    /* renamed from: n */
    private void m15953n(Canvas canvas, Matrix matrix, Mask mask, BaseKeyframeAnimation<ShapeData, Path> baseKeyframeAnimation, BaseKeyframeAnimation<Integer, Integer> baseKeyframeAnimation2) {
        Utils.m15685m(canvas, this.f6202h, this.f6199e);
        canvas.drawRect(this.f6202h, this.f6197c);
        this.f6199e.setAlpha((int) (baseKeyframeAnimation2.mo16113h().intValue() * 2.55f));
        this.f6195a.set(baseKeyframeAnimation.mo16113h());
        this.f6195a.transform(matrix);
        canvas.drawPath(this.f6195a, this.f6199e);
        canvas.restore();
    }

    /* renamed from: o */
    private void m15952o(Canvas canvas, Matrix matrix) {
        C0611L.m16372a("Layer#saveLayer");
        Utils.m15684n(canvas, this.f6202h, this.f6198d, 19);
        if (Build.VERSION.SDK_INT < 28) {
            m15948s(canvas);
        }
        C0611L.m16371b("Layer#saveLayer");
        for (int i = 0; i < this.f6210p.m16135b().size(); i++) {
            Mask mask = this.f6210p.m16135b().get(i);
            BaseKeyframeAnimation<ShapeData, Path> baseKeyframeAnimation = this.f6210p.m16136a().get(i);
            BaseKeyframeAnimation<Integer, Integer> baseKeyframeAnimation2 = this.f6210p.m16134c().get(i);
            int i2 = C06612.f6220b[mask.m16030a().ordinal()];
            if (i2 != 1) {
                if (i2 == 2) {
                    if (i == 0) {
                        this.f6197c.setColor(-16777216);
                        this.f6197c.setAlpha(255);
                        canvas.drawRect(this.f6202h, this.f6197c);
                    }
                    if (mask.m16027d()) {
                        m15953n(canvas, matrix, mask, baseKeyframeAnimation, baseKeyframeAnimation2);
                    } else {
                        m15951p(canvas, matrix, mask, baseKeyframeAnimation, baseKeyframeAnimation2);
                    }
                } else if (i2 != 3) {
                    if (i2 == 4) {
                        if (mask.m16027d()) {
                            m15955l(canvas, matrix, mask, baseKeyframeAnimation, baseKeyframeAnimation2);
                        } else {
                            m15957j(canvas, matrix, mask, baseKeyframeAnimation, baseKeyframeAnimation2);
                        }
                    }
                } else if (mask.m16027d()) {
                    m15954m(canvas, matrix, mask, baseKeyframeAnimation, baseKeyframeAnimation2);
                } else {
                    m15956k(canvas, matrix, mask, baseKeyframeAnimation, baseKeyframeAnimation2);
                }
            } else if (m15950q()) {
                this.f6197c.setAlpha(255);
                canvas.drawRect(this.f6202h, this.f6197c);
            }
        }
        C0611L.m16372a("Layer#restoreLayer");
        canvas.restore();
        C0611L.m16371b("Layer#restoreLayer");
    }

    /* renamed from: p */
    private void m15951p(Canvas canvas, Matrix matrix, Mask mask, BaseKeyframeAnimation<ShapeData, Path> baseKeyframeAnimation, BaseKeyframeAnimation<Integer, Integer> baseKeyframeAnimation2) {
        this.f6195a.set(baseKeyframeAnimation.mo16113h());
        this.f6195a.transform(matrix);
        canvas.drawPath(this.f6195a, this.f6199e);
    }

    /* renamed from: q */
    private boolean m15950q() {
        if (this.f6210p.m16136a().isEmpty()) {
            return false;
        }
        for (int i = 0; i < this.f6210p.m16135b().size(); i++) {
            if (this.f6210p.m16135b().get(i).m16030a() != Mask.MaskMode.MASK_MODE_NONE) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: r */
    private void m15949r() {
        if (this.f6214t == null) {
            if (this.f6213s == null) {
                this.f6214t = Collections.emptyList();
                return;
            }
            this.f6214t = new ArrayList();
            for (BaseLayer baseLayer = this.f6213s; baseLayer != null; baseLayer = baseLayer.f6213s) {
                this.f6214t.add(baseLayer);
            }
        }
    }

    /* renamed from: s */
    private void m15948s(Canvas canvas) {
        C0611L.m16372a("Layer#clearLayer");
        RectF rectF = this.f6202h;
        canvas.drawRect(rectF.left - 1.0f, rectF.top - 1.0f, rectF.right + 1.0f, rectF.bottom + 1.0f, this.f6201g);
        C0611L.m16371b("Layer#clearLayer");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    /* renamed from: u */
    public static BaseLayer m15947u(Layer layer, LottieDrawable lottieDrawable, LottieComposition lottieComposition) {
        switch (C06612.f6219a[layer.m15935d().ordinal()]) {
            case 1:
                return new ShapeLayer(lottieDrawable, layer);
            case 2:
                return new CompositionLayer(lottieDrawable, layer, lottieComposition.m16333n(layer.m15928k()), lottieComposition);
            case 3:
                return new SolidLayer(lottieDrawable, layer);
            case 4:
                return new ImageLayer(lottieDrawable, layer);
            case 5:
                return new NullLayer(lottieDrawable, layer);
            case 6:
                return new TextLayer(lottieDrawable, layer);
            default:
                Logger.m15736c("Unknown layer type " + layer.m15935d());
                return null;
        }
    }

    /* renamed from: y */
    private void m15943y(RectF rectF, Matrix matrix) {
        this.f6203i.set(0.0f, 0.0f, 0.0f, 0.0f);
        if (m15945w()) {
            int size = this.f6210p.m16135b().size();
            for (int i = 0; i < size; i++) {
                Mask mask = this.f6210p.m16135b().get(i);
                this.f6195a.set(this.f6210p.m16136a().get(i).mo16113h());
                this.f6195a.transform(matrix);
                int i2 = C06612.f6220b[mask.m16030a().ordinal()];
                if (i2 != 1 && i2 != 2) {
                    if ((i2 != 3 && i2 != 4) || !mask.m16027d()) {
                        this.f6195a.computeBounds(this.f6205k, false);
                        if (i == 0) {
                            this.f6203i.set(this.f6205k);
                        } else {
                            RectF rectF2 = this.f6203i;
                            rectF2.set(Math.min(rectF2.left, this.f6205k.left), Math.min(this.f6203i.top, this.f6205k.top), Math.max(this.f6203i.right, this.f6205k.right), Math.max(this.f6203i.bottom, this.f6205k.bottom));
                        }
                    } else {
                        return;
                    }
                } else {
                    return;
                }
            }
            if (!rectF.intersect(this.f6203i)) {
                rectF.set(0.0f, 0.0f, 0.0f, 0.0f);
            }
        }
    }

    /* renamed from: z */
    private void m15942z(RectF rectF, Matrix matrix) {
        if (m15944x() && this.f6209o.m15933f() != Layer.MatteType.INVERT) {
            this.f6204j.set(0.0f, 0.0f, 0.0f, 0.0f);
            this.f6212r.mo15900d(this.f6204j, matrix, true);
            if (!rectF.intersect(this.f6204j)) {
                rectF.set(0.0f, 0.0f, 0.0f, 0.0f);
            }
        }
    }

    /* renamed from: C */
    public void m15968C(BaseKeyframeAnimation<?, ?> baseKeyframeAnimation) {
        this.f6215u.remove(baseKeyframeAnimation);
    }

    /* renamed from: D */
    void mo15915D(KeyPath keyPath, int i, List<KeyPath> list, KeyPath keyPath2) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: E */
    public void m15967E(@Nullable BaseLayer baseLayer) {
        this.f6212r = baseLayer;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: F */
    public void m15966F(@Nullable BaseLayer baseLayer) {
        this.f6213s = baseLayer;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: G */
    public void mo15940G(@FloatRange(from = 0.0d, to = 1.0d) float f) {
        this.f6216v.m16115j(f);
        if (this.f6210p != null) {
            for (int i = 0; i < this.f6210p.m16136a().size(); i++) {
                this.f6210p.m16136a().get(i).mo16110l(f);
            }
        }
        float f2 = f;
        if (this.f6209o.m15919t() != 0.0f) {
            f2 = f / this.f6209o.m15919t();
        }
        FloatKeyframeAnimation floatKeyframeAnimation = this.f6211q;
        if (floatKeyframeAnimation != null) {
            floatKeyframeAnimation.mo16110l(f2 / this.f6209o.m15919t());
        }
        BaseLayer baseLayer = this.f6212r;
        int i2 = 0;
        if (baseLayer != null) {
            this.f6212r.mo15940G(baseLayer.f6209o.m15919t() * f2);
            i2 = 0;
        }
        while (i2 < this.f6215u.size()) {
            this.f6215u.get(i2).mo16110l(f2);
            i2++;
        }
    }

    @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation.AnimationListener
    /* renamed from: a */
    public void mo15941a() {
        m15970A();
    }

    @Override // com.airbnb.lottie.animation.content.Content
    /* renamed from: b */
    public void mo15963b(List<Content> list, List<Content> list2) {
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
                mo15915D(keyPath, i + keyPath.m16085e(getName(), i), list, keyPath3);
            }
        }
    }

    @Override // com.airbnb.lottie.animation.content.DrawingContent
    @CallSuper
    /* renamed from: d */
    public void mo15900d(RectF rectF, Matrix matrix, boolean z) {
        this.f6202h.set(0.0f, 0.0f, 0.0f, 0.0f);
        m15949r();
        this.f6207m.set(matrix);
        if (z) {
            List<BaseLayer> list = this.f6214t;
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    this.f6207m.preConcat(this.f6214t.get(size).f6216v.m16119f());
                }
            } else {
                BaseLayer baseLayer = this.f6213s;
                if (baseLayer != null) {
                    this.f6207m.preConcat(baseLayer.f6216v.m16119f());
                }
            }
        }
        this.f6207m.preConcat(this.f6216v.m16119f());
    }

    @Override // com.airbnb.lottie.animation.content.DrawingContent
    /* renamed from: f */
    public void mo15960f(Canvas canvas, Matrix matrix, int i) {
        C0611L.m16372a(this.f6206l);
        if (!this.f6217w || this.f6209o.m15917v()) {
            C0611L.m16371b(this.f6206l);
            return;
        }
        m15949r();
        C0611L.m16372a("Layer#parentMatrix");
        this.f6196b.reset();
        this.f6196b.set(matrix);
        for (int size = this.f6214t.size() - 1; size >= 0; size--) {
            this.f6196b.preConcat(this.f6214t.get(size).f6216v.m16119f());
        }
        C0611L.m16371b("Layer#parentMatrix");
        int intValue = (int) ((((i / 255.0f) * (this.f6216v.m16117h() == null ? 100 : this.f6216v.m16117h().mo16113h().intValue())) / 100.0f) * 255.0f);
        if (m15944x() || m15945w()) {
            C0611L.m16372a("Layer#computeBounds");
            mo15900d(this.f6202h, this.f6196b, false);
            m15942z(this.f6202h, matrix);
            this.f6196b.preConcat(this.f6216v.m16119f());
            m15943y(this.f6202h, this.f6196b);
            if (!this.f6202h.intersect(0.0f, 0.0f, canvas.getWidth(), canvas.getHeight())) {
                this.f6202h.set(0.0f, 0.0f, 0.0f, 0.0f);
            }
            C0611L.m16371b("Layer#computeBounds");
            if (!this.f6202h.isEmpty()) {
                C0611L.m16372a("Layer#saveLayer");
                this.f6197c.setAlpha(255);
                Utils.m15685m(canvas, this.f6202h, this.f6197c);
                C0611L.m16371b("Layer#saveLayer");
                m15948s(canvas);
                C0611L.m16372a("Layer#drawLayer");
                mo15898t(canvas, this.f6196b, intValue);
                C0611L.m16371b("Layer#drawLayer");
                if (m15945w()) {
                    m15952o(canvas, this.f6196b);
                }
                if (m15944x()) {
                    C0611L.m16372a("Layer#drawMatte");
                    C0611L.m16372a("Layer#saveLayer");
                    Utils.m15684n(canvas, this.f6202h, this.f6200f, 19);
                    C0611L.m16371b("Layer#saveLayer");
                    m15948s(canvas);
                    this.f6212r.mo15960f(canvas, matrix, intValue);
                    C0611L.m16372a("Layer#restoreLayer");
                    canvas.restore();
                    C0611L.m16371b("Layer#restoreLayer");
                    C0611L.m16371b("Layer#drawMatte");
                }
                C0611L.m16372a("Layer#restoreLayer");
                canvas.restore();
                C0611L.m16371b("Layer#restoreLayer");
            }
            m15969B(C0611L.m16371b(this.f6206l));
            return;
        }
        this.f6196b.preConcat(this.f6216v.m16119f());
        C0611L.m16372a("Layer#drawLayer");
        mo15898t(canvas, this.f6196b, intValue);
        C0611L.m16371b("Layer#drawLayer");
        m15969B(C0611L.m16371b(this.f6206l));
    }

    @Override // com.airbnb.lottie.model.KeyPathElement
    @CallSuper
    /* renamed from: g */
    public <T> void mo15899g(T t, @Nullable LottieValueCallback<T> lottieValueCallback) {
        this.f6216v.m16122c(t, lottieValueCallback);
    }

    @Override // com.airbnb.lottie.animation.content.Content
    public String getName() {
        return this.f6209o.m15932g();
    }

    /* renamed from: i */
    public void m15958i(@Nullable BaseKeyframeAnimation<?, ?> baseKeyframeAnimation) {
        if (baseKeyframeAnimation != null) {
            this.f6215u.add(baseKeyframeAnimation);
        }
    }

    /* renamed from: t */
    abstract void mo15898t(Canvas canvas, Matrix matrix, int i);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: v */
    public Layer m15946v() {
        return this.f6209o;
    }

    /* renamed from: w */
    boolean m15945w() {
        MaskKeyframeAnimation maskKeyframeAnimation = this.f6210p;
        return maskKeyframeAnimation != null && !maskKeyframeAnimation.m16136a().isEmpty();
    }

    /* renamed from: x */
    boolean m15944x() {
        return this.f6212r != null;
    }
}
