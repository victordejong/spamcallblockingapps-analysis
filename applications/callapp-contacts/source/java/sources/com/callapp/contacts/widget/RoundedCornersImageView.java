package com.callapp.contacts.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.RectF;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatImageView;
import com.callapp.contacts.C5563R;
import com.callapp.contacts.CallAppApplication;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/RoundedCornersImageView.class */
public class RoundedCornersImageView extends AppCompatImageView {

    /* renamed from: a */
    private float f28870a;

    /* renamed from: b */
    private Path f28871b;

    public RoundedCornersImageView(Context context) {
        super(context);
        m26650a(CallAppApplication.get().getResources().getDimensionPixelOffset(2131165559));
    }

    public RoundedCornersImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, C5563R.styleable.RoundedCornersImageView);
        int dimensionPixelOffset = obtainStyledAttributes.getDimensionPixelOffset(0, CallAppApplication.get().getResources().getDimensionPixelOffset(2131165559));
        obtainStyledAttributes.recycle();
        m26650a(dimensionPixelOffset);
    }

    public RoundedCornersImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, C5563R.styleable.RoundedCornersImageView);
        int dimensionPixelOffset = obtainStyledAttributes.getDimensionPixelOffset(0, CallAppApplication.get().getResources().getDimensionPixelOffset(2131165559));
        obtainStyledAttributes.recycle();
        m26650a(dimensionPixelOffset);
    }

    /* renamed from: a */
    private void m26650a(int i) {
        this.f28871b = new Path();
        this.f28870a = i;
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDraw(Canvas canvas) {
        RectF rectF = new RectF(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getWidth(), getHeight());
        Path path = this.f28871b;
        float f = this.f28870a;
        path.addRoundRect(rectF, f, f, Path.Direction.CW);
        canvas.clipPath(this.f28871b);
        super.onDraw(canvas);
    }
}
