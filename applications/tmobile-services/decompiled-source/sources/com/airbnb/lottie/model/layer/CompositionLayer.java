package com.airbnb.lottie.model.layer;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.RectF;
import androidx.annotation.FloatRange;
import androidx.annotation.Nullable;
import androidx.collection.LongSparseArray;
import com.airbnb.lottie.C0611L;
import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.LottieProperty;
import com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation;
import com.airbnb.lottie.animation.keyframe.ValueCallbackKeyframeAnimation;
import com.airbnb.lottie.model.KeyPath;
import com.airbnb.lottie.model.animatable.AnimatableFloatValue;
import com.airbnb.lottie.model.layer.Layer;
import com.airbnb.lottie.utils.Utils;
import com.airbnb.lottie.value.LottieValueCallback;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/airbnb/lottie/model/layer/CompositionLayer.class */
public class CompositionLayer extends BaseLayer {
    @Nullable

    /* renamed from: x */
    private BaseKeyframeAnimation<Float, Float> f6223x;

    /* renamed from: y */
    private final List<BaseLayer> f6224y = new ArrayList();

    /* renamed from: z */
    private final RectF f6225z = new RectF();

    /* renamed from: A */
    private final RectF f6221A = new RectF();

    /* renamed from: B */
    private Paint f6222B = new Paint();

    /* renamed from: com.airbnb.lottie.model.layer.CompositionLayer$1 */
    /* loaded from: classes-dex2jar.jar:com/airbnb/lottie/model/layer/CompositionLayer$1.class */
    static /* synthetic */ class C06621 {

        /* renamed from: a */
        static final /* synthetic */ int[] f6226a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[Layer.MatteType.values().length];
            f6226a = iArr;
            try {
                iArr[Layer.MatteType.ADD.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f6226a[Layer.MatteType.INVERT.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    public CompositionLayer(LottieDrawable lottieDrawable, Layer layer, List<Layer> list, LottieComposition lottieComposition) {
        super(lottieDrawable, layer);
        int i;
        BaseLayer baseLayer;
        AnimatableFloatValue s = layer.m15920s();
        if (s != null) {
            BaseKeyframeAnimation<Float, Float> a = s.mo16063a();
            this.f6223x = a;
            m15958i(a);
            this.f6223x.m16161a(this);
        } else {
            this.f6223x = null;
        }
        LongSparseArray longSparseArray = new LongSparseArray(lottieComposition.m16337j().size());
        int size = list.size() - 1;
        BaseLayer baseLayer2 = null;
        while (true) {
            if (size >= 0) {
                Layer layer2 = list.get(size);
                BaseLayer u = BaseLayer.m15947u(layer2, lottieDrawable, lottieComposition);
                if (u != null) {
                    longSparseArray.m21040n(u.m15946v().m15937b(), u);
                    if (baseLayer2 != null) {
                        baseLayer2.m15967E(u);
                        baseLayer2 = null;
                    } else {
                        this.f6224y.add(0, u);
                        int i2 = C06621.f6226a[layer2.m15933f().ordinal()];
                        if (i2 == 1 || i2 == 2) {
                            baseLayer2 = u;
                        }
                    }
                }
                size--;
            }
        }
        for (i = 0; i < longSparseArray.m21037q(); i++) {
            BaseLayer baseLayer3 = (BaseLayer) longSparseArray.m21045g(longSparseArray.m21041m(i));
            if (!(baseLayer3 == null || (baseLayer = (BaseLayer) longSparseArray.m21045g(baseLayer3.m15946v().m15931h())) == null)) {
                baseLayer3.m15966F(baseLayer);
            }
        }
    }

    @Override // com.airbnb.lottie.model.layer.BaseLayer
    /* renamed from: D */
    protected void mo15915D(KeyPath keyPath, int i, List<KeyPath> list, KeyPath keyPath2) {
        for (int i2 = 0; i2 < this.f6224y.size(); i2++) {
            this.f6224y.get(i2).mo15962c(keyPath, i, list, keyPath2);
        }
    }

    @Override // com.airbnb.lottie.model.layer.BaseLayer
    /* renamed from: G */
    public void mo15940G(@FloatRange(from = 0.0d, to = 1.0d) float f) {
        super.mo15940G(f);
        float f2 = f;
        if (this.f6223x != null) {
            f2 = ((this.f6223x.mo16113h().floatValue() * this.f6209o.m15938a().m16339h()) - this.f6209o.m15938a().m16332o()) / (this.f6208n.m16239m().m16342e() + 0.01f);
        }
        float f3 = f2;
        if (this.f6223x == null) {
            f3 = f2 - this.f6209o.m15923p();
        }
        float f4 = f3;
        if (this.f6209o.m15919t() != 0.0f) {
            f4 = f3 / this.f6209o.m15919t();
        }
        for (int size = this.f6224y.size() - 1; size >= 0; size--) {
            this.f6224y.get(size).mo15940G(f4);
        }
    }

    @Override // com.airbnb.lottie.model.layer.BaseLayer, com.airbnb.lottie.animation.content.DrawingContent
    /* renamed from: d */
    public void mo15900d(RectF rectF, Matrix matrix, boolean z) {
        super.mo15900d(rectF, matrix, z);
        for (int size = this.f6224y.size() - 1; size >= 0; size--) {
            this.f6225z.set(0.0f, 0.0f, 0.0f, 0.0f);
            this.f6224y.get(size).mo15900d(this.f6225z, this.f6207m, true);
            rectF.union(this.f6225z);
        }
    }

    @Override // com.airbnb.lottie.model.layer.BaseLayer, com.airbnb.lottie.model.KeyPathElement
    /* renamed from: g */
    public <T> void mo15899g(T t, @Nullable LottieValueCallback<T> lottieValueCallback) {
        super.mo15899g(t, lottieValueCallback);
        if (t != LottieProperty.f5818A) {
            return;
        }
        if (lottieValueCallback == null) {
            BaseKeyframeAnimation<Float, Float> baseKeyframeAnimation = this.f6223x;
            if (baseKeyframeAnimation != null) {
                baseKeyframeAnimation.m16154m(null);
                return;
            }
            return;
        }
        ValueCallbackKeyframeAnimation valueCallbackKeyframeAnimation = new ValueCallbackKeyframeAnimation(lottieValueCallback);
        this.f6223x = valueCallbackKeyframeAnimation;
        valueCallbackKeyframeAnimation.m16161a(this);
        m15958i(this.f6223x);
    }

    @Override // com.airbnb.lottie.model.layer.BaseLayer
    /* renamed from: t */
    void mo15898t(Canvas canvas, Matrix matrix, int i) {
        C0611L.m16372a("CompositionLayer#draw");
        this.f6221A.set(0.0f, 0.0f, this.f6209o.m15929j(), this.f6209o.m15930i());
        matrix.mapRect(this.f6221A);
        boolean z = this.f6208n.m16284F() && this.f6224y.size() > 1 && i != 255;
        if (z) {
            this.f6222B.setAlpha(i);
            Utils.m15685m(canvas, this.f6221A, this.f6222B);
        } else {
            canvas.save();
        }
        if (z) {
            i = 255;
        }
        for (int size = this.f6224y.size() - 1; size >= 0; size--) {
            if (!this.f6221A.isEmpty() ? canvas.clipRect(this.f6221A) : true) {
                this.f6224y.get(size).mo15960f(canvas, matrix, i);
            }
        }
        canvas.restore();
        C0611L.m16371b("CompositionLayer#draw");
    }
}
