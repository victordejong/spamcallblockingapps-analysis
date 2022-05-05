package com.airbnb.lottie.model.layer;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.RectF;
import androidx.annotation.NonNull;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.animation.content.ContentGroup;
import com.airbnb.lottie.model.KeyPath;
import com.airbnb.lottie.model.content.ShapeGroup;
import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/airbnb/lottie/model/layer/ShapeLayer.class */
public class ShapeLayer extends BaseLayer {

    /* renamed from: x */
    private final ContentGroup f6253x;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ShapeLayer(LottieDrawable lottieDrawable, Layer layer) {
        super(lottieDrawable, layer);
        ContentGroup contentGroup = new ContentGroup(lottieDrawable, this, new ShapeGroup("__container", layer.m15927l(), false));
        this.f6253x = contentGroup;
        contentGroup.mo15963b(Collections.emptyList(), Collections.emptyList());
    }

    @Override // com.airbnb.lottie.model.layer.BaseLayer
    /* renamed from: D */
    protected void mo15915D(KeyPath keyPath, int i, List<KeyPath> list, KeyPath keyPath2) {
        this.f6253x.mo15962c(keyPath, i, list, keyPath2);
    }

    @Override // com.airbnb.lottie.model.layer.BaseLayer, com.airbnb.lottie.animation.content.DrawingContent
    /* renamed from: d */
    public void mo15900d(RectF rectF, Matrix matrix, boolean z) {
        super.mo15900d(rectF, matrix, z);
        this.f6253x.mo15900d(rectF, this.f6207m, z);
    }

    @Override // com.airbnb.lottie.model.layer.BaseLayer
    /* renamed from: t */
    void mo15898t(@NonNull Canvas canvas, Matrix matrix, int i) {
        this.f6253x.mo15960f(canvas, matrix, i);
    }
}
