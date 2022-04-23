package com.android.contacts.detail;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewPropertyAnimator;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.TextView;
import com.android.contacts.model.c;
import com.android.contacts.util.MoreMath;
import com.android.contacts.util.SchedulingUtils;
/* loaded from: classes-dex2jar.jar:com/android/contacts/detail/ContactDetailTabCarousel.class */
public class ContactDetailTabCarousel extends HorizontalScrollView implements View.OnTouchListener {
    private static final float MAX_ALPHA = 0.5f;
    private static final int TAB_COUNT = 2;
    private static final int TAB_INDEX_ABOUT = 0;
    private static final int TAB_INDEX_UPDATES = 1;
    private static final String TAG = ContactDetailTabCarousel.class.getSimpleName();
    private static final int TRANSITION_MOVE_IN_TIME = 150;
    private static final int TRANSITION_TIME = 200;
    private CarouselTab mAboutTab;
    private Listener mListener;
    private ImageView mPhotoView;
    private View mPhotoViewOverlay;
    private View mShadow;
    private ImageView mStatusPhotoView;
    private TextView mStatusView;
    private View mTabAndShadowContainer;
    private int mTabDisplayLabelHeight;
    private View mTabDivider;
    private float mTabHeightScreenWidthFraction;
    private int mTabShadowHeight;
    private float mTabWidthScreenWidthFraction;
    private CarouselTab mUpdatesTab;
    private final ContactDetailPhotoSetter mPhotoSetter = new ContactDetailPhotoSetter();
    private int mCurrentTab = 0;
    private final float[] mYCoordinateArray = new float[2];
    private boolean mScrollToCurrentTab = false;
    private int mLastScrollPosition = Integer.MIN_VALUE;
    private int mAllowedHorizontalScrollLength = Integer.MIN_VALUE;
    private int mAllowedVerticalScrollLength = Integer.MIN_VALUE;
    private float mScrollScaleFactor = 1.0f;
    private final TabClickListener mAboutTabTouchInterceptListener = new TabClickListener(0);
    private final TabClickListener mUpdatesTabTouchInterceptListener = new TabClickListener(1);

    /* loaded from: classes-dex2jar.jar:com/android/contacts/detail/ContactDetailTabCarousel$Listener.class */
    public interface Listener {
        void onScrollChanged(int i, int i2, int i3, int i4);

        void onTabSelected(int i);

        void onTouchDown();

        void onTouchUp();
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/detail/ContactDetailTabCarousel$TabClickListener.class */
    private class TabClickListener implements View.OnClickListener {
        private final int mTab;

        public TabClickListener(int i) {
            this.mTab = i;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ContactDetailTabCarousel.this.mListener.onTabSelected(this.mTab);
        }
    }

    public ContactDetailTabCarousel(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setOnTouchListener(this);
        Resources resources = context.getResources();
        this.mTabDisplayLabelHeight = resources.getDimensionPixelSize(2131100052);
        this.mTabShadowHeight = resources.getDimensionPixelSize(2131100040);
        this.mTabWidthScreenWidthFraction = resources.getFraction(2131230721, 1, 1);
        this.mTabHeightScreenWidthFraction = resources.getFraction(2131230720, 1, 1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateAlphaLayers() {
        float clamp = MoreMath.clamp((this.mLastScrollPosition * MAX_ALPHA) / this.mAllowedHorizontalScrollLength, 0.0f, 1.0f);
        this.mAboutTab.setAlphaLayerValue(clamp);
        this.mUpdatesTab.setAlphaLayerValue(MAX_ALPHA - clamp);
    }

    public void animateAppear(int i, int i2) {
        int i3;
        boolean z;
        int i4;
        float f = this.mTabHeightScreenWidthFraction * i;
        if (i2 == Integer.MIN_VALUE) {
            i3 = this.mTabDisplayLabelHeight;
            z = false;
        } else {
            int round = Math.round(f) + i2;
            i3 = round > this.mTabDisplayLabelHeight ? 0 : this.mTabDisplayLabelHeight - round;
            z = true;
        }
        if (i3 != 0) {
            this.mTabAndShadowContainer.setTranslationY(-i3);
            ViewPropertyAnimator animate = this.mTabAndShadowContainer.animate();
            animate.translationY(0.0f);
            animate.setDuration(150L);
        }
        if (z) {
            boolean z2 = this.mTabWidthScreenWidthFraction == this.mTabHeightScreenWidthFraction;
            if (z2) {
                i4 = 0;
            } else {
                float f2 = 1.0f / this.mTabWidthScreenWidthFraction;
                this.mAboutTab.setScaleX(f2);
                this.mAboutTab.setPivotX(0.0f);
                ViewPropertyAnimator animate2 = this.mAboutTab.animate();
                animate2.setDuration(200L);
                animate2.scaleX(1.0f);
                this.mPhotoView.setScaleY(f2);
                this.mPhotoView.setPivotY(f * MAX_ALPHA);
                ViewPropertyAnimator animate3 = this.mPhotoView.animate();
                animate3.setDuration(200L);
                animate3.scaleY(1.0f);
                i4 = TRANSITION_TIME;
            }
            this.mAboutTab.fadeInLabelViewAnimator(i4, true);
            this.mUpdatesTab.fadeInLabelViewAnimator(i4, false);
            float f3 = this.mTabWidthScreenWidthFraction;
            float f4 = i;
            CarouselTab carouselTab = this.mUpdatesTab;
            View view = this.mTabDivider;
            for (int i5 = 0; i5 < 2; i5++) {
                View view2 = new View[]{carouselTab, view}[i5];
                view2.setTranslationX((1.0f - f3) * f4);
                ViewPropertyAnimator animate4 = view2.animate();
                animate4.translationX(0.0f);
                animate4.setDuration(200L);
            }
            if (z2) {
                this.mShadow.setAlpha(0.0f);
                this.mShadow.animate().setStartDelay(200L).alpha(1.0f);
            }
        }
    }

    public int getAllowedHorizontalScrollLength() {
        return this.mAllowedHorizontalScrollLength;
    }

    public int getAllowedVerticalScrollLength() {
        return this.mAllowedVerticalScrollLength;
    }

    public float getStoredYCoordinateForTab(int i) {
        return this.mYCoordinateArray[i];
    }

    public void loadData(c cVar) {
        if (cVar != null) {
            boolean z = cVar.j != null;
            View.OnClickListener onClickListener = this.mPhotoSetter.setupContactPhotoForClick(getContext(), cVar, this.mPhotoView, z);
            if (!z) {
                getContext();
                if (!cVar.f()) {
                    this.mPhotoViewOverlay.setOnClickListener(null);
                    ContactDetailDisplayUtils.setSocialSnippet(getContext(), cVar, this.mStatusView, this.mStatusPhotoView);
                }
            }
            this.mPhotoViewOverlay.setOnClickListener(onClickListener);
            ContactDetailDisplayUtils.setSocialSnippet(getContext(), cVar, this.mStatusView, this.mStatusPhotoView);
        }
    }

    public void moveToYCoordinate(int i, float f) {
        setY(f);
        storeYCoordinate(i, f);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.mTabAndShadowContainer = findViewById(2131297365);
        this.mAboutTab = (CarouselTab) findViewById(2131297364);
        this.mAboutTab.setLabel(getContext().getString(2131755438));
        this.mAboutTab.setOverlayOnClickListener(this.mAboutTabTouchInterceptListener);
        this.mTabDivider = findViewById(2131297367);
        this.mUpdatesTab = (CarouselTab) findViewById(2131297370);
        this.mUpdatesTab.setLabel(getContext().getString(2131755440));
        this.mUpdatesTab.setOverlayOnClickListener(this.mUpdatesTabTouchInterceptListener);
        this.mShadow = findViewById(2131297280);
        this.mPhotoView = (ImageView) this.mAboutTab.findViewById(2131297153);
        this.mPhotoViewOverlay = this.mAboutTab.findViewById(2131297159);
        this.mStatusView = (TextView) this.mUpdatesTab.findViewById(2131297346);
        this.mStatusPhotoView = (ImageView) this.mUpdatesTab.findViewById(2131297348);
        this.mStatusView.setClickable(true);
        this.mStatusPhotoView.setClickable(true);
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        boolean onInterceptTouchEvent = super.onInterceptTouchEvent(motionEvent);
        if (onInterceptTouchEvent) {
            this.mListener.onTouchDown();
        }
        return onInterceptTouchEvent;
    }

    @Override // android.widget.HorizontalScrollView, android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (this.mScrollToCurrentTab) {
            this.mScrollToCurrentTab = false;
            SchedulingUtils.doAfterLayout(this, new Runnable() { // from class: com.android.contacts.detail.ContactDetailTabCarousel.1
                @Override // java.lang.Runnable
                public void run() {
                    ContactDetailTabCarousel.this.scrollTo(ContactDetailTabCarousel.this.mCurrentTab == 0 ? 0 : ContactDetailTabCarousel.this.mAllowedHorizontalScrollLength, 0);
                    ContactDetailTabCarousel.this.updateAlphaLayers();
                }
            });
        }
    }

    @Override // android.widget.HorizontalScrollView, android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        int size = View.MeasureSpec.getSize(i);
        int round = Math.round(this.mTabWidthScreenWidthFraction * size);
        this.mAllowedHorizontalScrollLength = (round * 2) - size;
        if (this.mAllowedHorizontalScrollLength == 0) {
            this.mScrollScaleFactor = 1.0f;
            Log.w(TAG, "set scale-factor to 1.0 to avoid divide-by-zero");
        } else {
            this.mScrollScaleFactor = size / this.mAllowedHorizontalScrollLength;
        }
        int round2 = Math.round(size * this.mTabHeightScreenWidthFraction) + this.mTabShadowHeight;
        if (getChildCount() > 0) {
            getChildAt(0).measure(View.MeasureSpec.makeMeasureSpec((round * 2) + (((int) (TypedValue.applyDimension(1, 1.0f, getResources().getDisplayMetrics()) + MAX_ALPHA)) * 1), 1073741824), View.MeasureSpec.makeMeasureSpec(round2, 1073741824));
        }
        this.mAllowedVerticalScrollLength = (round2 - this.mTabDisplayLabelHeight) - this.mTabShadowHeight;
        setMeasuredDimension(resolveSize(size, i), resolveSize(round2, i2));
    }

    @Override // android.view.View
    protected void onScrollChanged(int i, int i2, int i3, int i4) {
        super.onScrollChanged(i, i2, i3, i4);
        if (this.mLastScrollPosition != i) {
            this.mListener.onScrollChanged((int) (i * this.mScrollScaleFactor), i2, (int) (i3 * this.mScrollScaleFactor), i4);
            this.mLastScrollPosition = i;
            updateAlphaLayers();
        }
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        boolean z = true;
        switch (motionEvent.getAction()) {
            case 0:
                this.mListener.onTouchDown();
                break;
            case 1:
                this.mListener.onTouchUp();
                break;
            default:
                z = super.onTouchEvent(motionEvent);
                break;
        }
        return z;
    }

    public void reset() {
        scrollTo(0, 0);
        setCurrentTab(0);
        moveToYCoordinate(0, 0.0f);
    }

    public void restoreCurrentTab(int i) {
        setCurrentTab(i);
        this.mScrollToCurrentTab = true;
    }

    public void restoreYCoordinate() {
        setY(getStoredYCoordinateForTab(this.mCurrentTab));
    }

    public void setCurrentTab(int i) {
        CarouselTab carouselTab;
        CarouselTab carouselTab2;
        switch (i) {
            case 0:
                carouselTab = this.mAboutTab;
                carouselTab2 = this.mUpdatesTab;
                break;
            case 1:
                carouselTab = this.mUpdatesTab;
                carouselTab2 = this.mAboutTab;
                break;
            default:
                throw new IllegalStateException("Invalid tab position " + i);
        }
        carouselTab.showSelectedState();
        carouselTab.setOverlayClickable(false);
        carouselTab2.showDeselectedState();
        carouselTab2.setOverlayClickable(true);
        this.mCurrentTab = i;
    }

    public void setListener(Listener listener) {
        this.mListener = listener;
    }

    public void storeYCoordinate(int i, float f) {
        this.mYCoordinateArray[i] = f;
    }
}
