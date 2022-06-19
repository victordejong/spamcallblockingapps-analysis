package com.truecaller.android.truemoji;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatImageView;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.razorpay.AnalyticsConstants;
import kotlin.Metadata;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0007\u0018��2\u00020\u0001J\u0019\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0006R\u0018\u0010\t\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\bR\u0016\u0010\r\u001a\u00020\n8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\fR\u0016\u0010\u000f\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000e\u0010\f¨\u0006\u0010"}, d2 = {"Lcom/truecaller/android/truemoji/PlaceholderImageView;", "Landroidx/appcompat/widget/AppCompatImageView;", "Landroid/graphics/drawable/Drawable;", "drawable", "Ls1/s;", "setImageDrawable", "(Landroid/graphics/drawable/Drawable;)V", "d", "Landroid/graphics/drawable/Drawable;", "placeholder", "Landroid/widget/ImageView$ScaleType;", "e", "Landroid/widget/ImageView$ScaleType;", "placeholderScaleType", AbstractC2405c.f7629a, "actualScaleType", "truemoji_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes5-dex2jar.jar:com/truecaller/android/truemoji/PlaceholderImageView.class */
public final class PlaceholderImageView extends AppCompatImageView {

    /* renamed from: c */
    public ImageView.ScaleType f10031c;

    /* renamed from: d */
    public final Drawable f10032d;

    /* renamed from: e */
    public final ImageView.ScaleType f10033e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PlaceholderImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        ImageView.ScaleType scaleType;
        l.e(context, AnalyticsConstants.CONTEXT);
        ImageView.ScaleType scaleType2 = getScaleType();
        l.d(scaleType2, "scaleType");
        this.f10031c = scaleType2;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C2886R.styleable.PlaceholderImageView, 0, 0);
        try {
            Drawable drawable = obtainStyledAttributes.getDrawable(C2886R.styleable.PlaceholderImageView_placeholderImage);
            this.f10032d = drawable;
            int i = obtainStyledAttributes.getInt(C2886R.styleable.PlaceholderImageView_placeholderScaleType, -1);
            if (i != -1) {
                switch (i) {
                    case 0:
                        scaleType = ImageView.ScaleType.MATRIX;
                        break;
                    case 1:
                        scaleType = ImageView.ScaleType.FIT_XY;
                        break;
                    case 2:
                        scaleType = ImageView.ScaleType.FIT_START;
                        break;
                    case 3:
                        scaleType = ImageView.ScaleType.FIT_CENTER;
                        break;
                    case 4:
                        scaleType = ImageView.ScaleType.FIT_END;
                        break;
                    case 5:
                        scaleType = ImageView.ScaleType.CENTER;
                        break;
                    case 6:
                        scaleType = ImageView.ScaleType.CENTER_CROP;
                        break;
                    default:
                        scaleType = ImageView.ScaleType.CENTER_INSIDE;
                        break;
                }
            } else {
                scaleType = ImageView.ScaleType.CENTER_INSIDE;
            }
            this.f10033e = scaleType;
            if (getDrawable() == null) {
                setScaleType(scaleType);
                super.setImageDrawable(drawable);
            }
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    @Override // androidx.appcompat.widget.AppCompatImageView, android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        if (drawable != null) {
            setScaleType(this.f10031c);
            super.setImageDrawable(drawable);
            return;
        }
        setScaleType(this.f10033e);
        super.setImageDrawable(this.f10032d);
    }
}
