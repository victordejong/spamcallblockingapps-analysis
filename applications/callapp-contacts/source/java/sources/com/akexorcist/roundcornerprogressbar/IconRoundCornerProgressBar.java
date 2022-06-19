package com.akexorcist.roundcornerprogressbar;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.customview.view.AbsSavedState;
import com.akexorcist.roundcornerprogressbar.C3244a;
import com.akexorcist.roundcornerprogressbar.common.AnimatedRoundCornerProgressBar;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes-dex2jar.jar:com/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar.class */
public class IconRoundCornerProgressBar extends AnimatedRoundCornerProgressBar {
    protected static final int DEFAULT_ICON_PADDING_BOTTOM = 0;
    protected static final int DEFAULT_ICON_PADDING_LEFT = 0;
    protected static final int DEFAULT_ICON_PADDING_RIGHT = 0;
    protected static final int DEFAULT_ICON_PADDING_TOP = 0;
    protected static final int DEFAULT_ICON_SIZE = 20;
    private int colorIconBackground;
    private Bitmap iconBitmap;
    private AbstractC3241a iconClickListener;
    private Drawable iconDrawable;
    private int iconHeight;
    private int iconPadding;
    private int iconPaddingBottom;
    private int iconPaddingLeft;
    private int iconPaddingRight;
    private int iconPaddingTop;
    private int iconResource;
    private int iconSize;
    private int iconWidth;
    private ImageView ivProgressIcon;

    /* loaded from: classes-dex2jar.jar:com/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar$SavedState.class */
    protected static class SavedState extends AbsSavedState {
        public static final Parcelable.ClassLoaderCreator<SavedState> CREATOR = new Parcelable.ClassLoaderCreator<SavedState>() { // from class: com.akexorcist.roundcornerprogressbar.IconRoundCornerProgressBar.SavedState.1
            @Override // android.os.Parcelable.Creator
            public final /* synthetic */ Object createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            public final /* synthetic */ SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            public final /* bridge */ /* synthetic */ Object[] newArray(int i) {
                return new SavedState[i];
            }
        };
        int colorIconBackground;
        int iconHeight;
        int iconPadding;
        int iconPaddingBottom;
        int iconPaddingLeft;
        int iconPaddingRight;
        int iconPaddingTop;
        int iconResource;
        int iconSize;
        int iconWidth;

        SavedState(Parcel parcel) {
            this(parcel, null);
        }

        SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.iconResource = parcel.readInt();
            this.iconSize = parcel.readInt();
            this.iconWidth = parcel.readInt();
            this.iconHeight = parcel.readInt();
            this.iconPadding = parcel.readInt();
            this.iconPaddingLeft = parcel.readInt();
            this.iconPaddingRight = parcel.readInt();
            this.iconPaddingTop = parcel.readInt();
            this.iconPaddingBottom = parcel.readInt();
            this.colorIconBackground = parcel.readInt();
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.iconResource);
            parcel.writeInt(this.iconSize);
            parcel.writeInt(this.iconWidth);
            parcel.writeInt(this.iconHeight);
            parcel.writeInt(this.iconPadding);
            parcel.writeInt(this.iconPaddingLeft);
            parcel.writeInt(this.iconPaddingRight);
            parcel.writeInt(this.iconPaddingTop);
            parcel.writeInt(this.iconPaddingBottom);
            parcel.writeInt(this.colorIconBackground);
        }
    }

    /* renamed from: com.akexorcist.roundcornerprogressbar.IconRoundCornerProgressBar$a */
    /* loaded from: classes-dex2jar.jar:com/akexorcist/roundcornerprogressbar/IconRoundCornerProgressBar$a.class */
    public interface AbstractC3241a {
    }

    public IconRoundCornerProgressBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public IconRoundCornerProgressBar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public IconRoundCornerProgressBar(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
    }

    private void drawIconBackgroundColor() {
        GradientDrawable createGradientDrawable = createGradientDrawable(this.colorIconBackground);
        float radius = getRadius() - (getPadding() / 2);
        createGradientDrawable.setCornerRadii(new float[]{radius, radius, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, radius, radius});
        this.ivProgressIcon.setBackground(createGradientDrawable);
    }

    private void drawImageIcon() {
        int i = this.iconResource;
        if (i != -1) {
            this.ivProgressIcon.setImageResource(i);
            return;
        }
        Bitmap bitmap = this.iconBitmap;
        if (bitmap != null) {
            this.ivProgressIcon.setImageBitmap(bitmap);
            return;
        }
        Drawable drawable = this.iconDrawable;
        if (drawable == null) {
            return;
        }
        this.ivProgressIcon.setImageDrawable(drawable);
    }

    private void drawImageIconPadding() {
        int i = this.iconPadding;
        if (i == -1 || i == 0) {
            this.ivProgressIcon.setPadding(this.iconPaddingLeft, this.iconPaddingTop, this.iconPaddingRight, this.iconPaddingBottom);
        } else {
            this.ivProgressIcon.setPadding(i, i, i, i);
        }
        this.ivProgressIcon.invalidate();
    }

    private void drawImageIconSize() {
        if (this.iconSize == -1) {
            this.ivProgressIcon.setLayoutParams(new LinearLayout.LayoutParams(this.iconWidth, this.iconHeight));
            return;
        }
        ImageView imageView = this.ivProgressIcon;
        int i = this.iconSize;
        imageView.setLayoutParams(new LinearLayout.LayoutParams(i, i));
    }

    @Override // com.akexorcist.roundcornerprogressbar.common.BaseRoundCornerProgressBar
    public void drawProgress(LinearLayout linearLayout, GradientDrawable gradientDrawable, float f, float f2, float f3, int i, int i2, boolean z) {
        int i3 = i - (i2 / 2);
        if (!z || f2 == f) {
            float f4 = i3;
            gradientDrawable.setCornerRadii(new float[]{BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, f4, f4, f4, f4, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED});
        } else {
            float f5 = i3;
            gradientDrawable.setCornerRadii(new float[]{f5, f5, f5, f5, f5, f5, f5, f5});
        }
        linearLayout.setBackground(gradientDrawable);
        int width = (int) ((f3 - ((i2 * 2) + this.ivProgressIcon.getWidth())) / (f / f2));
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) linearLayout.getLayoutParams();
        if (z) {
            int i4 = width / 2;
            if (i2 + i4 < i) {
                int max = Math.max(i - i2, 0) - i4;
                marginLayoutParams.topMargin = max;
                marginLayoutParams.bottomMargin = max;
            } else {
                marginLayoutParams.topMargin = 0;
                marginLayoutParams.bottomMargin = 0;
            }
        }
        marginLayoutParams.width = width;
        linearLayout.setLayoutParams(marginLayoutParams);
    }

    public int getColorIconBackground() {
        return this.colorIconBackground;
    }

    public Bitmap getIconImageBitmap() {
        return this.iconBitmap;
    }

    public Drawable getIconImageDrawable() {
        return this.iconDrawable;
    }

    public int getIconImageResource() {
        return this.iconResource;
    }

    public int getIconPadding() {
        return this.iconPadding;
    }

    public int getIconPaddingBottom() {
        return this.iconPaddingBottom;
    }

    public int getIconPaddingLeft() {
        return this.iconPaddingLeft;
    }

    public int getIconPaddingRight() {
        return this.iconPaddingRight;
    }

    public int getIconPaddingTop() {
        return this.iconPaddingTop;
    }

    public int getIconSize() {
        return this.iconSize;
    }

    @Override // com.akexorcist.roundcornerprogressbar.common.BaseRoundCornerProgressBar
    public int initLayout() {
        return C3244a.C3247c.layout_icon_round_corner_progress_bar;
    }

    @Override // com.akexorcist.roundcornerprogressbar.common.BaseRoundCornerProgressBar
    public void initStyleable(Context context, AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C3244a.C3248d.IconRoundCornerProgressBar);
        this.iconResource = obtainStyledAttributes.getResourceId(C3244a.C3248d.IconRoundCornerProgressBar_rcIconSrc, -1);
        this.iconSize = (int) obtainStyledAttributes.getDimension(C3244a.C3248d.IconRoundCornerProgressBar_rcIconSize, -1.0f);
        this.iconWidth = (int) obtainStyledAttributes.getDimension(C3244a.C3248d.IconRoundCornerProgressBar_rcIconWidth, dp2px(20.0f));
        this.iconHeight = (int) obtainStyledAttributes.getDimension(C3244a.C3248d.IconRoundCornerProgressBar_rcIconHeight, dp2px(20.0f));
        this.iconPadding = (int) obtainStyledAttributes.getDimension(C3244a.C3248d.IconRoundCornerProgressBar_rcIconPadding, -1.0f);
        this.iconPaddingLeft = (int) obtainStyledAttributes.getDimension(C3244a.C3248d.IconRoundCornerProgressBar_rcIconPaddingLeft, dp2px(BitmapDescriptorFactory.HUE_RED));
        this.iconPaddingRight = (int) obtainStyledAttributes.getDimension(C3244a.C3248d.IconRoundCornerProgressBar_rcIconPaddingRight, dp2px(BitmapDescriptorFactory.HUE_RED));
        this.iconPaddingTop = (int) obtainStyledAttributes.getDimension(C3244a.C3248d.IconRoundCornerProgressBar_rcIconPaddingTop, dp2px(BitmapDescriptorFactory.HUE_RED));
        this.iconPaddingBottom = (int) obtainStyledAttributes.getDimension(C3244a.C3248d.IconRoundCornerProgressBar_rcIconPaddingBottom, dp2px(BitmapDescriptorFactory.HUE_RED));
        this.colorIconBackground = obtainStyledAttributes.getColor(C3244a.C3248d.IconRoundCornerProgressBar_rcIconBackgroundColor, context.getResources().getColor(C3244a.C3245a.round_corner_progress_bar_background_default));
        obtainStyledAttributes.recycle();
    }

    @Override // com.akexorcist.roundcornerprogressbar.common.BaseRoundCornerProgressBar
    public void initView() {
        ImageView imageView = (ImageView) findViewById(C3244a.C3246b.iv_progress_icon);
        this.ivProgressIcon = imageView;
        imageView.setOnClickListener(new View.OnClickListener() { // from class: com.akexorcist.roundcornerprogressbar.IconRoundCornerProgressBar.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                if (IconRoundCornerProgressBar.this.iconClickListener != null) {
                    AbstractC3241a unused = IconRoundCornerProgressBar.this.iconClickListener;
                }
            }
        });
    }

    @Override // com.akexorcist.roundcornerprogressbar.common.AnimatedRoundCornerProgressBar, com.akexorcist.roundcornerprogressbar.common.BaseRoundCornerProgressBar, android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.iconResource = savedState.iconResource;
        this.iconSize = savedState.iconSize;
        this.iconWidth = savedState.iconWidth;
        this.iconHeight = savedState.iconHeight;
        this.iconPadding = savedState.iconPadding;
        this.iconPaddingLeft = savedState.iconPaddingLeft;
        this.iconPaddingRight = savedState.iconPaddingRight;
        this.iconPaddingTop = savedState.iconPaddingTop;
        this.iconPaddingBottom = savedState.iconPaddingBottom;
        this.colorIconBackground = savedState.colorIconBackground;
    }

    @Override // com.akexorcist.roundcornerprogressbar.common.AnimatedRoundCornerProgressBar, com.akexorcist.roundcornerprogressbar.common.BaseRoundCornerProgressBar, android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.iconResource = this.iconResource;
        savedState.iconSize = this.iconSize;
        savedState.iconWidth = this.iconWidth;
        savedState.iconHeight = this.iconHeight;
        savedState.iconPadding = this.iconPadding;
        savedState.iconPaddingLeft = this.iconPaddingLeft;
        savedState.iconPaddingRight = this.iconPaddingRight;
        savedState.iconPaddingTop = this.iconPaddingTop;
        savedState.iconPaddingBottom = this.iconPaddingBottom;
        savedState.colorIconBackground = this.colorIconBackground;
        return savedState;
    }

    @Override // com.akexorcist.roundcornerprogressbar.common.BaseRoundCornerProgressBar
    public void onViewDraw() {
        drawImageIcon();
        drawImageIconSize();
        drawImageIconPadding();
        drawIconBackgroundColor();
    }

    public void setIconBackgroundColor(int i) {
        this.colorIconBackground = i;
        drawIconBackgroundColor();
    }

    public void setIconImageBitmap(Bitmap bitmap) {
        this.iconResource = -1;
        this.iconBitmap = bitmap;
        this.iconDrawable = null;
        drawImageIcon();
    }

    public void setIconImageDrawable(Drawable drawable) {
        this.iconResource = -1;
        this.iconBitmap = null;
        this.iconDrawable = drawable;
        drawImageIcon();
    }

    public void setIconImageResource(int i) {
        this.iconResource = i;
        this.iconBitmap = null;
        this.iconDrawable = null;
        drawImageIcon();
    }

    public void setIconPadding(int i) {
        if (i >= 0) {
            this.iconPadding = i;
        }
        drawImageIconPadding();
    }

    public void setIconPaddingBottom(int i) {
        if (i > 0) {
            this.iconPaddingBottom = i;
        }
        drawImageIconPadding();
    }

    public void setIconPaddingLeft(int i) {
        if (i > 0) {
            this.iconPaddingLeft = i;
        }
        drawImageIconPadding();
    }

    public void setIconPaddingRight(int i) {
        if (i > 0) {
            this.iconPaddingRight = i;
        }
        drawImageIconPadding();
    }

    public void setIconPaddingTop(int i) {
        if (i > 0) {
            this.iconPaddingTop = i;
        }
        drawImageIconPadding();
    }

    public void setIconSize(int i) {
        if (i >= 0) {
            this.iconSize = i;
        }
        drawImageIconSize();
    }

    public void setOnIconClickListener(AbstractC3241a abstractC3241a) {
        this.iconClickListener = abstractC3241a;
    }
}
