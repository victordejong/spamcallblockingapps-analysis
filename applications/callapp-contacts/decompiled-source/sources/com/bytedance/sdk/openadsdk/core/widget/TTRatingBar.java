package com.bytedance.sdk.openadsdk.core.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.bytedance.sdk.openadsdk.utils.ag;
import com.bytedance.sdk.openadsdk.utils.x;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/widget/TTRatingBar.class */
public class TTRatingBar extends LinearLayout {

    /* renamed from: a  reason: collision with root package name */
    private int f9302a = 5;

    /* renamed from: b  reason: collision with root package name */
    private int f9303b = 0;

    /* renamed from: c  reason: collision with root package name */
    private int f9304c = 0;

    /* renamed from: d  reason: collision with root package name */
    private float f9305d;
    private float e;
    private float f;
    private Drawable g;
    private Drawable h;
    private Drawable i;

    public TTRatingBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setOrientation(0);
        this.g = x.c(context, "tt_star_empty_bg");
        this.h = x.c(context, "tt_star_full_bg");
        this.i = x.c(context, "tt_star_empty_bg");
        this.f9305d = ag.c(context, 15.0f);
        this.e = ag.c(context, 15.0f);
        this.f = ag.c(context, 5.0f);
    }

    private ImageView getStarImageView() {
        ImageView imageView = new ImageView(getContext());
        imageView.setLayoutParams(new ViewGroup.LayoutParams(Math.round(this.f9305d), Math.round(this.e)));
        imageView.setPadding(0, 0, Math.round(this.f), 0);
        return imageView;
    }

    public void a() {
        removeAllViews();
        for (int i = 0; i < getStarFillNum(); i++) {
            ImageView starImageView = getStarImageView();
            starImageView.setImageDrawable(getStarFillDrawable());
            addView(starImageView);
        }
        for (int i2 = 0; i2 < getStarHalfNum(); i2++) {
            ImageView starImageView2 = getStarImageView();
            starImageView2.setImageDrawable(getStarHalfDrawable());
            addView(starImageView2);
        }
        for (int i3 = 0; i3 < getStarEmptyNum(); i3++) {
            ImageView starImageView3 = getStarImageView();
            starImageView3.setImageDrawable(getStarEmptyDrawable());
            addView(starImageView3);
        }
    }

    public Drawable getStarEmptyDrawable() {
        return this.g;
    }

    public int getStarEmptyNum() {
        return this.f9304c;
    }

    public Drawable getStarFillDrawable() {
        return this.h;
    }

    public int getStarFillNum() {
        return this.f9302a;
    }

    public Drawable getStarHalfDrawable() {
        return this.i;
    }

    public int getStarHalfNum() {
        return this.f9303b;
    }

    public float getStarImageHeight() {
        return this.e;
    }

    public float getStarImagePadding() {
        return this.f;
    }

    public float getStarImageWidth() {
        return this.f9305d;
    }

    public void setStarEmptyDrawable(Drawable drawable) {
        this.g = drawable;
    }

    public void setStarEmptyNum(int i) {
        this.f9304c = i;
    }

    public void setStarFillDrawable(Drawable drawable) {
        this.h = drawable;
    }

    public void setStarFillNum(int i) {
        this.f9302a = i;
    }

    public void setStarHalfDrawable(Drawable drawable) {
        this.i = drawable;
    }

    public void setStarHalfNum(int i) {
        this.f9303b = i;
    }

    public void setStarImageHeight(float f) {
        this.e = f;
    }

    public void setStarImagePadding(float f) {
        this.f = f;
    }

    public void setStarImageWidth(float f) {
        this.f9305d = f;
    }
}
