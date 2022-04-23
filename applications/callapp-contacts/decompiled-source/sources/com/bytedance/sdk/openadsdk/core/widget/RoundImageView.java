package com.bytedance.sdk.openadsdk.core.widget;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.NinePatchDrawable;
import android.util.AttributeSet;
import android.widget.ImageView;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/widget/RoundImageView.class */
public class RoundImageView extends ImageView {

    /* renamed from: a  reason: collision with root package name */
    private int f9285a = 0;

    /* renamed from: b  reason: collision with root package name */
    private int f9286b = 0;

    public RoundImageView(Context context) {
        super(context);
    }

    public RoundImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public RoundImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x005f, code lost:
        if (r8.getHeight() != r0) goto L_0x0062;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private android.graphics.Bitmap a(android.graphics.Bitmap r8, int r9) {
        /*
            Method dump skipped, instructions count: 253
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.core.widget.RoundImageView.a(android.graphics.Bitmap, int):android.graphics.Bitmap");
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDraw(Canvas canvas) {
        Bitmap bitmap;
        Bitmap bitmap2;
        Bitmap bitmap3;
        Drawable drawable = getDrawable();
        if (drawable != null && getWidth() != 0 && getHeight() != 0) {
            measure(0, 0);
            if (drawable.getClass() != NinePatchDrawable.class && (bitmap = ((BitmapDrawable) drawable).getBitmap()) != null) {
                try {
                    bitmap2 = bitmap.copy(Bitmap.Config.ARGB_8888, true);
                } catch (Throwable th) {
                    bitmap2 = null;
                }
                if (bitmap2 == null) {
                    super.onDraw(canvas);
                    return;
                }
                if (this.f9285a == 0) {
                    this.f9285a = getWidth();
                }
                if (this.f9286b == 0) {
                    this.f9286b = getHeight();
                }
                int i = this.f9285a;
                int i2 = this.f9286b;
                if (i >= i2) {
                    i = i2;
                }
                int i3 = i / 2;
                try {
                    bitmap3 = a(bitmap2, i3);
                } catch (Throwable th2) {
                    bitmap3 = null;
                }
                if (bitmap3 == null) {
                    super.onDraw(canvas);
                } else {
                    canvas.drawBitmap(bitmap3, (this.f9285a / 2) - i3, (this.f9286b / 2) - i3, (Paint) null);
                }
            }
        }
    }
}
