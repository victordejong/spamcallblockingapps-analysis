package com.clevertap.android.sdk.customviews;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.util.TypedValue;
import androidx.appcompat.widget.AppCompatImageView;
/* loaded from: classes-dex2jar.jar:com/clevertap/android/sdk/customviews/CloseImageView.class */
public final class CloseImageView extends AppCompatImageView {

    /* renamed from: c */
    public final int f2282c = (int) TypedValue.applyDimension(1, 40, getResources().getDisplayMetrics());

    public CloseImageView(Context context) {
        super(context, null);
        setId(199272);
    }

    public CloseImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setId(199272);
    }

    @Override // android.widget.ImageView, android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        try {
            Context context = getContext();
            Bitmap decodeResource = BitmapFactory.decodeResource(context.getResources(), context.getResources().getIdentifier("ct_close", "drawable", context.getPackageName()), null);
            if (decodeResource == null) {
                return;
            }
            int i = this.f2282c;
            canvas.drawBitmap(Bitmap.createScaledBitmap(decodeResource, i, i, true), 0.0f, 0.0f, new Paint());
        } catch (Throwable th) {
        }
    }

    @Override // android.widget.ImageView, android.view.View
    public void onMeasure(int i, int i2) {
        int i3 = this.f2282c;
        setMeasuredDimension(i3, i3);
    }
}
