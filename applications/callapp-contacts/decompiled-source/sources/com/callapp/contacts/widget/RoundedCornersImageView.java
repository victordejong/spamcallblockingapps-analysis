package com.callapp.contacts.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.RectF;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatImageView;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.R;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/RoundedCornersImageView.class */
public class RoundedCornersImageView extends AppCompatImageView {

    /* renamed from: a  reason: collision with root package name */
    private float f16582a;

    /* renamed from: b  reason: collision with root package name */
    private Path f16583b;

    public RoundedCornersImageView(Context context) {
        super(context);
        a(CallAppApplication.get().getResources().getDimensionPixelOffset(2131165559));
    }

    public RoundedCornersImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R.styleable.RoundedCornersImageView);
        int dimensionPixelOffset = obtainStyledAttributes.getDimensionPixelOffset(0, CallAppApplication.get().getResources().getDimensionPixelOffset(2131165559));
        obtainStyledAttributes.recycle();
        a(dimensionPixelOffset);
    }

    public RoundedCornersImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R.styleable.RoundedCornersImageView);
        int dimensionPixelOffset = obtainStyledAttributes.getDimensionPixelOffset(0, CallAppApplication.get().getResources().getDimensionPixelOffset(2131165559));
        obtainStyledAttributes.recycle();
        a(dimensionPixelOffset);
    }

    private void a(int i) {
        this.f16583b = new Path();
        this.f16582a = i;
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDraw(Canvas canvas) {
        RectF rectF = new RectF(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getWidth(), getHeight());
        Path path = this.f16583b;
        float f = this.f16582a;
        path.addRoundRect(rectF, f, f, Path.Direction.CW);
        canvas.clipPath(this.f16583b);
        super.onDraw(canvas);
    }
}
