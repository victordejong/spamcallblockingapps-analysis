package com.airbnb.lottie.animation.keyframe;

import android.graphics.Path;
import com.airbnb.lottie.model.content.Mask;
import com.airbnb.lottie.model.content.ShapeData;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/airbnb/lottie/animation/keyframe/MaskKeyframeAnimation.class */
public class MaskKeyframeAnimation {

    /* renamed from: a */
    private final List<BaseKeyframeAnimation<ShapeData, Path>> f6014a;

    /* renamed from: b */
    private final List<BaseKeyframeAnimation<Integer, Integer>> f6015b;

    /* renamed from: c */
    private final List<Mask> f6016c;

    public MaskKeyframeAnimation(List<Mask> list) {
        this.f6016c = list;
        this.f6014a = new ArrayList(list.size());
        this.f6015b = new ArrayList(list.size());
        for (int i = 0; i < list.size(); i++) {
            this.f6014a.add(list.get(i).m16029b().mo16063a());
            this.f6015b.add(list.get(i).m16028c().mo16063a());
        }
    }

    /* renamed from: a */
    public List<BaseKeyframeAnimation<ShapeData, Path>> m16136a() {
        return this.f6014a;
    }

    /* renamed from: b */
    public List<Mask> m16135b() {
        return this.f6016c;
    }

    /* renamed from: c */
    public List<BaseKeyframeAnimation<Integer, Integer>> m16134c() {
        return this.f6015b;
    }
}
