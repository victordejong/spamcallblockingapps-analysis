package com.bytedance.sdk.openadsdk.core.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.bytedance.sdk.openadsdk.utils.C5443ag;
import com.bytedance.sdk.openadsdk.utils.C5486x;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/widget/TTRatingBar.class */
public class TTRatingBar extends LinearLayout {

    /* renamed from: a */
    private int f17497a = 5;

    /* renamed from: b */
    private int f17498b = 0;

    /* renamed from: c */
    private int f17499c = 0;

    /* renamed from: d */
    private float f17500d;

    /* renamed from: e */
    private float f17501e;

    /* renamed from: f */
    private float f17502f;

    /* renamed from: g */
    private Drawable f17503g;

    /* renamed from: h */
    private Drawable f17504h;

    /* renamed from: i */
    private Drawable f17505i;

    public TTRatingBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setOrientation(0);
        this.f17503g = C5486x.m32068c(context, "tt_star_empty_bg");
        this.f17504h = C5486x.m32068c(context, "tt_star_full_bg");
        this.f17505i = C5486x.m32068c(context, "tt_star_empty_bg");
        this.f17500d = C5443ag.m32217c(context, 15.0f);
        this.f17501e = C5443ag.m32217c(context, 15.0f);
        this.f17502f = C5443ag.m32217c(context, 5.0f);
    }

    private ImageView getStarImageView() {
        ImageView imageView = new ImageView(getContext());
        imageView.setLayoutParams(new ViewGroup.LayoutParams(Math.round(this.f17500d), Math.round(this.f17501e)));
        imageView.setPadding(0, 0, Math.round(this.f17502f), 0);
        return imageView;
    }

    /* renamed from: a */
    public void m34062a() {
        int i;
        removeAllViews();
        for (int i2 = 0; i2 < getStarFillNum(); i2++) {
            ImageView starImageView = getStarImageView();
            starImageView.setImageDrawable(getStarFillDrawable());
            addView(starImageView);
        }
        int i3 = 0;
        while (true) {
            if (i3 < getStarHalfNum()) {
                ImageView starImageView2 = getStarImageView();
                starImageView2.setImageDrawable(getStarHalfDrawable());
                addView(starImageView2);
                i3++;
            }
        }
        for (i = 0; i < getStarEmptyNum(); i++) {
            ImageView starImageView3 = getStarImageView();
            starImageView3.setImageDrawable(getStarEmptyDrawable());
            addView(starImageView3);
        }
    }

    public Drawable getStarEmptyDrawable() {
        return this.f17503g;
    }

    public int getStarEmptyNum() {
        return this.f17499c;
    }

    public Drawable getStarFillDrawable() {
        return this.f17504h;
    }

    public int getStarFillNum() {
        return this.f17497a;
    }

    public Drawable getStarHalfDrawable() {
        return this.f17505i;
    }

    public int getStarHalfNum() {
        return this.f17498b;
    }

    public float getStarImageHeight() {
        return this.f17501e;
    }

    public float getStarImagePadding() {
        return this.f17502f;
    }

    public float getStarImageWidth() {
        return this.f17500d;
    }

    public void setStarEmptyDrawable(Drawable drawable) {
        this.f17503g = drawable;
    }

    public void setStarEmptyNum(int i) {
        this.f17499c = i;
    }

    public void setStarFillDrawable(Drawable drawable) {
        this.f17504h = drawable;
    }

    public void setStarFillNum(int i) {
        this.f17497a = i;
    }

    public void setStarHalfDrawable(Drawable drawable) {
        this.f17505i = drawable;
    }

    public void setStarHalfNum(int i) {
        this.f17498b = i;
    }

    public void setStarImageHeight(float f) {
        this.f17501e = f;
    }

    public void setStarImagePadding(float f) {
        this.f17502f = f;
    }

    public void setStarImageWidth(float f) {
        this.f17500d = f;
    }
}
