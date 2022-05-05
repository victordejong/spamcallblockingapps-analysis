package com.criteo.publisher.advancednative;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.annotation.Keep;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
@Keep
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/advancednative/CriteoMediaView.class */
public class CriteoMediaView extends FrameLayout {
    @NonNull
    public final ImageView imageView;
    @Nullable
    public Drawable placeholder;

    public CriteoMediaView(Context context) {
        super(context);
        this.imageView = initImageView(context);
    }

    public CriteoMediaView(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public CriteoMediaView(Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.imageView = initImageView(context, attributeSet, i, 0);
    }

    @RequiresApi(api = 21)
    public CriteoMediaView(Context context, @Nullable AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.imageView = initImageView(context, attributeSet, i, i2);
    }

    private ImageView initImageView(Context context) {
        ImageView imageView = new ImageView(context);
        addView(imageView);
        return imageView;
    }

    private ImageView initImageView(Context context, @Nullable AttributeSet attributeSet, int i, int i2) {
        ImageView initImageView = initImageView(context);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, new int[]{16843033}, i, i2);
        try {
            Drawable drawable = obtainStyledAttributes.getDrawable(0);
            if (drawable != null) {
                initImageView.setImageDrawable(drawable);
                this.placeholder = drawable;
            }
            return initImageView;
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    @NonNull
    public ImageView getImageView() {
        return this.imageView;
    }

    @Nullable
    public Drawable getPlaceholder() {
        return this.placeholder;
    }

    public void setPlaceholder(@NonNull Drawable drawable) {
        this.placeholder = drawable;
    }
}
