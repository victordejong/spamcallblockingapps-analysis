package gogolook.callgogolook2.view;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/view/ResizableImageView.class */
public class ResizableImageView extends RecycleSafeImageView {
    public ResizableImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.widget.ImageView, android.view.View
    public void onMeasure(int i, int i2) {
        Drawable drawable = getDrawable();
        if (drawable != null) {
            int size = View.MeasureSpec.getSize(i);
            setMeasuredDimension(size, (int) Math.ceil((size * drawable.getIntrinsicHeight()) / drawable.getIntrinsicWidth()));
            return;
        }
        super.onMeasure(i, i2);
    }
}
