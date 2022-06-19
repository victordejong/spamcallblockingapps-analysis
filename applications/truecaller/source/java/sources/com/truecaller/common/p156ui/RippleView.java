package com.truecaller.common.p156ui;

import android.graphics.Canvas;
import android.view.View;
import androidx.annotation.Keep;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.huawei.hms.push.constant.RemoteMessageConst;
import java.util.Objects;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\f\u0018��2\u00020\u0001:\u0001 J/\u0010\b\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\b\u0010\tJ\u0017\u0010\u000b\u001a\u00020\u00072\b\b\u0001\u0010\n\u001a\u00020\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u0017\u0010\u000e\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u000e\u0010\fJ\u001f\u0010\u0010\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u00012\u0006\u0010\r\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u0007H\u0014¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u0007H\u0014¢\u0006\u0004\b\u0014\u0010\u0013J\u0017\u0010\u0017\u001a\u00020\u00072\u0006\u0010\u0016\u001a\u00020\u0015H\u0014¢\u0006\u0004\b\u0017\u0010\u0018R\u0016\u0010\u001b\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR\u0016\u0010\u001d\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001c\u0010\u001aR\u0016\u0010\u001f\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001e\u0010\u001a¨\u0006!"}, d2 = {"Lcom/truecaller/common/ui/RippleView;", "Landroid/view/View;", "", "w", "h", "oldW", "oldH", "Ls1/s;", "onSizeChanged", "(IIII)V", RemoteMessageConst.Notification.COLOR, "setRippleColor", "(I)V", RemoteMessageConst.Notification.VISIBILITY, "setVisibility", "changedView", "onVisibilityChanged", "(Landroid/view/View;I)V", "onAttachedToWindow", "()V", "onDetachedFromWindow", "Landroid/graphics/Canvas;", "canvas", "onDraw", "(Landroid/graphics/Canvas;)V", AbstractC2405c.f7629a, "I", "rippleRadius", "a", "centerX", C22021b.f61237c, "centerY", "Ripple", "common-ui_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.common.ui.RippleView */
/* loaded from: classes7-dex2jar.jar:com/truecaller/common/ui/RippleView.class */
public final class RippleView extends View {

    /* renamed from: d */
    public static final /* synthetic */ int f11049d = 0;

    /* renamed from: a */
    public int f11050a;

    /* renamed from: b */
    public int f11051b;

    /* renamed from: c */
    public int f11052c;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0016\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0082\u0004\u0018��2\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0007¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/truecaller/common/ui/RippleView$Ripple;", "", "", "time", "Ls1/s;", "setTime", "(I)V", "common-ui_release"}, k = 1, mv = {1, 4, 1})
    /* renamed from: com.truecaller.common.ui.RippleView$Ripple */
    /* loaded from: classes7-dex2jar.jar:com/truecaller/common/ui/RippleView$Ripple.class */
    public final class Ripple {

        /* renamed from: a */
        public final /* synthetic */ RippleView f11053a;

        @Keep
        public final void setTime(int i) {
            if (i > 2300) {
                this.f11053a.invalidate();
                return;
            }
            RippleView rippleView = this.f11053a;
            int i2 = RippleView.f11049d;
            Objects.requireNonNull(rippleView);
            throw null;
        }
    }

    @Override // android.view.View
    public void onAttachedToWindow() {
        throw null;
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        throw null;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        l.e(canvas, "canvas");
        super.onDraw(canvas);
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        int i5 = i / 2;
        this.f11052c = i5;
        this.f11050a = i5;
        this.f11051b = i2 / 2;
    }

    @Override // android.view.View
    public void onVisibilityChanged(View view, int i) {
        l.e(view, "changedView");
        super.onVisibilityChanged(view, i);
        if (C19286f.m13663p(this)) {
            throw null;
        }
        throw null;
    }

    public final void setRippleColor(int i) {
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        if (getVisibility() == i) {
            return;
        }
        super.setVisibility(i);
        if (!C19286f.m13663p(this)) {
            throw null;
        }
        throw null;
    }
}
