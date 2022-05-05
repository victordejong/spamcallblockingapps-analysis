package com.tmobile.services.nameid.p007ui.animation;

import android.view.View;
import android.view.animation.Animation;
import android.view.animation.Transformation;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��-\n��\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003*\u0001��\b\n\u0018��2\u00020\u0001J\u001f\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0014¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"com/tmobile/services/nameid/ui/animation/AnimUtils$expand$a$1", "Landroid/view/animation/Animation;", "", "interpolatedTime", "Landroid/view/animation/Transformation;", "t", "", "applyTransformation", "(FLandroid/view/animation/Transformation;)V", "", "getDuration", "()J", "", "willChangeBounds", "()Z", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* renamed from: com.tmobile.services.nameid.ui.animation.AnimUtils$expand$a$1 */
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/ui/animation/AnimUtils$expand$a$1.class */
public final class AnimUtils$expand$a$1 extends Animation {

    /* renamed from: f */
    final /* synthetic */ long f13865f;

    /* renamed from: g */
    final /* synthetic */ View f13866g;

    /* renamed from: h */
    final /* synthetic */ int f13867h;

    @Override // android.view.animation.Animation
    protected void applyTransformation(float f, @NotNull Transformation t) {
        Intrinsics.m1830e(t, "t");
        this.f13866g.getLayoutParams().height = f == 1.0f ? -2 : (int) (this.f13867h * f);
        this.f13866g.requestLayout();
    }

    @Override // android.view.animation.Animation
    public long getDuration() {
        return this.f13865f;
    }

    @Override // android.view.animation.Animation
    public boolean willChangeBounds() {
        return true;
    }
}
