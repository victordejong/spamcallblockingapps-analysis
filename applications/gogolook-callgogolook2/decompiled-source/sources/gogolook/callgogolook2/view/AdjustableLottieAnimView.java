package gogolook.callgogolook2.view;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import com.airbnb.lottie.LottieAnimationView;
import kotlin.Metadata;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0005\u0018��2\u00020\u0001B%\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\b\u0010\u000f\u001a\u00020\nH\u0002J\u0018\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u0007H\u0014J\u0010\u0010\u0014\u001a\u00020\u00112\u0006\u0010\u0015\u001a\u00020\nH\u0016R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000e¨\u0006\u0016"}, m815d2 = {"Lgogolook/callgogolook2/view/AdjustableLottieAnimView;", "Lcom/airbnb/lottie/LottieAnimationView;", "context", "Landroid/content/Context;", "attrs", "Landroid/util/AttributeSet;", "defStyleAttr", "", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "adjustViewBound", "", "getAdjustViewBound", "()Z", "setAdjustViewBound", "(Z)V", "isInScrollingContainer", "onMeasure", "", "widthMeasureSpec", "heightMeasureSpec", "setAdjustViewBounds", "adjustViewBounds", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/view/AdjustableLottieAnimView.class */
public final class AdjustableLottieAnimView extends LottieAnimationView {

    /* renamed from: j */
    public boolean f13012j;

    public AdjustableLottieAnimView(Context context) {
        this(context, null, 0, 6, null);
    }

    public AdjustableLottieAnimView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AdjustableLottieAnimView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        C15149k.m377b(context, "context");
    }

    public /* synthetic */ AdjustableLottieAnimView(Context context, AttributeSet attributeSet, int i, int i2, C15145g gVar) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    /* renamed from: c */
    public final void m25939c(boolean z) {
        this.f13012j = z;
    }

    /* renamed from: i */
    public final boolean m25938i() {
        for (ViewParent parent = getParent(); parent != null && (parent instanceof ViewGroup); parent = parent.getParent()) {
            if (((ViewGroup) parent).shouldDelayChildPressedState() && Build.VERSION.SDK_INT >= 14) {
                return true;
            }
        }
        return false;
    }

    @Override // android.widget.ImageView, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        Drawable drawable = getDrawable();
        if (drawable == null) {
            super.onMeasure(i, i2);
        } else if (this.f13012j) {
            int intrinsicWidth = drawable.getIntrinsicWidth();
            int intrinsicHeight = drawable.getIntrinsicHeight();
            int size = View.MeasureSpec.getSize(i2);
            int size2 = View.MeasureSpec.getSize(i);
            int mode = View.MeasureSpec.getMode(i2);
            int mode2 = View.MeasureSpec.getMode(i);
            if (mode == 1073741824 && mode2 != 1073741824) {
                int i3 = (intrinsicWidth * size) / intrinsicHeight;
                if (m25938i()) {
                    setMeasuredDimension(i3, size);
                } else {
                    setMeasuredDimension(Math.min(i3, size2), Math.min(size, size));
                }
            } else if (mode2 != 1073741824 || mode == 1073741824) {
                super.onMeasure(i, i2);
            } else {
                int i4 = (intrinsicHeight * size2) / intrinsicWidth;
                if (m25938i()) {
                    setMeasuredDimension(size2, i4);
                } else {
                    setMeasuredDimension(Math.min(size2, size2), Math.min(i4, size));
                }
            }
        } else {
            super.onMeasure(i, i2);
        }
    }

    @Override // android.widget.ImageView
    public void setAdjustViewBounds(boolean z) {
        this.f13012j = z;
        super.setAdjustViewBounds(z);
    }
}
