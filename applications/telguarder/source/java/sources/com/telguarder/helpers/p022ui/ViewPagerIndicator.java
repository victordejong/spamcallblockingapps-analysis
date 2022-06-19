package com.telguarder.helpers.p022ui;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.viewpager.widget.ViewPager;
import com.telguarder.C2083R;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.telguarder.helpers.ui.ViewPagerIndicator */
/* loaded from: classes2-dex2jar.jar:com/telguarder/helpers/ui/ViewPagerIndicator.class */
public class ViewPagerIndicator extends LinearLayoutCompat {
    private static final int DEF_ICON = 2131165489;
    private static final int DEF_VALUE = 10;
    private static final float NO_SCALE = 1.0f;
    private int mDelimiterSize;
    private final List<ImageView> mIndexImages;
    private int mItemColor;
    private int mItemIcon;
    private float mItemScale;
    private int mItemSelectedColor;
    private int mItemSize;
    private ViewPager.OnPageChangeListener mListener;
    private int mPageCount;
    private int mSelectedIndex;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.telguarder.helpers.ui.ViewPagerIndicator$OnPageChangeListener */
    /* loaded from: classes2-dex2jar.jar:com/telguarder/helpers/ui/ViewPagerIndicator$OnPageChangeListener.class */
    public class OnPageChangeListener implements ViewPager.OnPageChangeListener {
        private OnPageChangeListener() {
            ViewPagerIndicator.this = r4;
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int i) {
            if (ViewPagerIndicator.this.mListener != null) {
                ViewPagerIndicator.this.mListener.onPageScrollStateChanged(i);
            }
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrolled(int i, float f, int i2) {
            if (ViewPagerIndicator.this.mListener != null) {
                ViewPagerIndicator.this.mListener.onPageScrolled(i, f, i2);
            }
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageSelected(int i) {
            ViewPagerIndicator.this.setSelectedIndex(i);
            if (ViewPagerIndicator.this.mListener != null) {
                ViewPagerIndicator.this.mListener.onPageSelected(i);
            }
        }
    }

    public ViewPagerIndicator(Context context) {
        this(context, null);
    }

    public ViewPagerIndicator(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    /* JADX WARN: Finally extract failed */
    public ViewPagerIndicator(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mItemColor = -1;
        this.mItemSelectedColor = -1;
        this.mItemScale = 1.0f;
        this.mItemSize = 10;
        this.mDelimiterSize = 10;
        this.mItemIcon = 10;
        this.mIndexImages = new ArrayList();
        setOrientation(0);
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, C2083R.styleable.ViewPagerIndicator, 0, 0);
        try {
            this.mItemSize = obtainStyledAttributes.getDimensionPixelSize(4, 10);
            this.mItemScale = obtainStyledAttributes.getFloat(2, 1.0f);
            this.mItemSelectedColor = obtainStyledAttributes.getColor(3, -1);
            this.mItemColor = obtainStyledAttributes.getColor(5, -1);
            this.mDelimiterSize = obtainStyledAttributes.getDimensionPixelSize(0, 10);
            this.mItemIcon = obtainStyledAttributes.getResourceId(1, 2131165489);
            obtainStyledAttributes.recycle();
            if (!isInEditMode()) {
                return;
            }
            createEditModeLayout();
        } catch (Throwable th) {
            obtainStyledAttributes.recycle();
            throw th;
        }
    }

    private FrameLayout createBoxedItem(int i) {
        FrameLayout frameLayout = new FrameLayout(getContext());
        ImageView createItem = createItem();
        frameLayout.addView(createItem);
        this.mIndexImages.add(createItem);
        int i2 = this.mItemSize;
        float f = i2;
        float f2 = this.mItemScale;
        LinearLayoutCompat.LayoutParams layoutParams = new LinearLayoutCompat.LayoutParams((int) (f * f2), (int) (i2 * f2));
        if (i > 0) {
            layoutParams.setMargins(this.mDelimiterSize, 0, 0, 0);
        }
        frameLayout.setLayoutParams(layoutParams);
        return frameLayout;
    }

    private void createEditModeLayout() {
        for (int i = 0; i < 5; i++) {
            FrameLayout createBoxedItem = createBoxedItem(i);
            addView(createBoxedItem);
            if (i == 1) {
                View childAt = createBoxedItem.getChildAt(0);
                ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
                layoutParams.height = (int) (layoutParams.height * this.mItemScale);
                layoutParams.width = (int) (layoutParams.width * this.mItemScale);
                childAt.setLayoutParams(layoutParams);
            }
        }
    }

    private ImageView createItem() {
        ImageView imageView = new ImageView(getContext());
        int i = this.mItemSize;
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i, i);
        layoutParams.gravity = 17;
        imageView.setLayoutParams(layoutParams);
        imageView.setImageResource(this.mItemIcon);
        imageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
        imageView.setColorFilter(this.mItemColor, PorterDuff.Mode.SRC_IN);
        return imageView;
    }

    private void setPageCount(int i) {
        this.mPageCount = i;
        this.mSelectedIndex = 0;
        removeAllViews();
        this.mIndexImages.clear();
        for (int i2 = 0; i2 < i; i2++) {
            addView(createBoxedItem(i2));
        }
        setSelectedIndex(this.mSelectedIndex);
    }

    public void setSelectedIndex(int i) {
        if (i < 0 || i > this.mPageCount - 1) {
            return;
        }
        ImageView imageView = this.mIndexImages.get(this.mSelectedIndex);
        imageView.animate().scaleX(1.0f).scaleY(1.0f).setDuration(300L).start();
        imageView.setColorFilter(this.mItemColor, PorterDuff.Mode.SRC_IN);
        ImageView imageView2 = this.mIndexImages.get(i);
        imageView2.animate().scaleX(this.mItemScale).scaleY(this.mItemScale).setDuration(300L).start();
        imageView2.setColorFilter(this.mItemSelectedColor, PorterDuff.Mode.SRC_IN);
        this.mSelectedIndex = i;
    }

    public void addOnPageChangeListener(ViewPager.OnPageChangeListener onPageChangeListener) {
        this.mListener = onPageChangeListener;
    }

    public void setupWithViewPager(ViewPager viewPager) {
        setPageCount(viewPager.getAdapter().getCount());
        viewPager.addOnPageChangeListener(new OnPageChangeListener());
    }
}
