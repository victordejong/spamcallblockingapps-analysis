package com.airbnb.lottie.model.animatable;

import com.airbnb.lottie.value.Keyframe;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/airbnb/lottie/model/animatable/BaseAnimatableValue.class */
public abstract class BaseAnimatableValue<V, O> implements AnimatableValue<V, O> {

    /* renamed from: a */
    final List<Keyframe<V>> f6105a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public BaseAnimatableValue(V v) {
        this(Collections.singletonList(new Keyframe(v)));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public BaseAnimatableValue(List<Keyframe<V>> list) {
        this.f6105a = list;
    }

    @Override // com.airbnb.lottie.model.animatable.AnimatableValue
    /* renamed from: b */
    public List<Keyframe<V>> mo16062b() {
        return this.f6105a;
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0031, code lost:
        if (r3.f6105a.get(0).m15672h() != false) goto L_0x0034;
     */
    @Override // com.airbnb.lottie.model.animatable.AnimatableValue
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean mo16061c() {
        /*
            r3 = this;
            r0 = r3
            java.util.List<com.airbnb.lottie.value.Keyframe<V>> r0 = r0.f6105a
            boolean r0 = r0.isEmpty()
            r4 = r0
            r0 = 0
            r5 = r0
            r0 = r4
            if (r0 != 0) goto L_0x0034
            r0 = r5
            r4 = r0
            r0 = r3
            java.util.List<com.airbnb.lottie.value.Keyframe<V>> r0 = r0.f6105a
            int r0 = r0.size()
            r1 = 1
            if (r0 != r1) goto L_0x0036
            r0 = r5
            r4 = r0
            r0 = r3
            java.util.List<com.airbnb.lottie.value.Keyframe<V>> r0 = r0.f6105a
            r1 = 0
            java.lang.Object r0 = r0.get(r1)
            com.airbnb.lottie.value.Keyframe r0 = (com.airbnb.lottie.value.Keyframe) r0
            boolean r0 = r0.m15672h()
            if (r0 == 0) goto L_0x0036
        L_0x0034:
            r0 = 1
            r4 = r0
        L_0x0036:
            r0 = r4
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.airbnb.lottie.model.animatable.BaseAnimatableValue.mo16061c():boolean");
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        if (!this.f6105a.isEmpty()) {
            sb.append("values=");
            sb.append(Arrays.toString(this.f6105a.toArray()));
        }
        return sb.toString();
    }
}
