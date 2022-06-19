package com.facebook.login.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.constraintlayout.solver.widgets.analyzer.BasicMeasure;
import com.facebook.AccessToken;
import com.facebook.FacebookException;
import com.facebook.LoggingBehavior;
import com.facebook.internal.ImageDownloader;
import com.facebook.internal.ImageRequest;
import com.facebook.internal.ImageResponse;
import com.facebook.internal.Logger;
import com.facebook.internal.Utility;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import com.facebook.login.C1057R;
/* loaded from: classes-dex2jar.jar:com/facebook/login/widget/ProfilePictureView.class */
public class ProfilePictureView extends FrameLayout {
    private static final String BITMAP_HEIGHT_KEY = "ProfilePictureView_height";
    private static final String BITMAP_KEY = "ProfilePictureView_bitmap";
    private static final String BITMAP_WIDTH_KEY = "ProfilePictureView_width";
    public static final int CUSTOM = -1;
    private static final boolean IS_CROPPED_DEFAULT_VALUE = true;
    private static final String IS_CROPPED_KEY = "ProfilePictureView_isCropped";
    public static final int LARGE = -4;
    private static final int MIN_SIZE = 1;
    public static final int NORMAL = -3;
    private static final String PENDING_REFRESH_KEY = "ProfilePictureView_refresh";
    private static final String PRESET_SIZE_KEY = "ProfilePictureView_presetSize";
    private static final String PROFILE_ID_KEY = "ProfilePictureView_profileId";
    public static final int SMALL = -2;
    private static final String SUPER_STATE_KEY = "ProfilePictureView_superState";
    public static final String TAG = "ProfilePictureView";
    private ImageView image;
    private Bitmap imageContents;
    private ImageRequest lastRequest;
    private OnErrorListener onErrorListener;
    private String profileId;
    private int queryHeight = 0;
    private int queryWidth = 0;
    private boolean isCropped = true;
    private int presetSizeType = -1;
    private Bitmap customizedDefaultProfilePicture = null;

    /* loaded from: classes-dex2jar.jar:com/facebook/login/widget/ProfilePictureView$OnErrorListener.class */
    public interface OnErrorListener {
        void onError(FacebookException facebookException);
    }

    public ProfilePictureView(Context context) {
        super(context);
        initialize(context);
    }

    public ProfilePictureView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        initialize(context);
        parseAttributes(attributeSet);
    }

    public ProfilePictureView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        initialize(context);
        parseAttributes(attributeSet);
    }

    private int getPresetSizeInPixels(boolean z) {
        int i;
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return 0;
        }
        try {
            int i2 = this.presetSizeType;
            if (i2 == -4) {
                i = C1057R.dimen.com_facebook_profilepictureview_preset_size_large;
            } else if (i2 == -3) {
                i = C1057R.dimen.com_facebook_profilepictureview_preset_size_normal;
            } else if (i2 == -2) {
                i = C1057R.dimen.com_facebook_profilepictureview_preset_size_small;
            } else if (i2 != -1 || !z) {
                return 0;
            } else {
                i = C1057R.dimen.com_facebook_profilepictureview_preset_size_normal;
            }
            return getResources().getDimensionPixelSize(i);
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
            return 0;
        }
    }

    private void initialize(Context context) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            removeAllViews();
            this.image = new ImageView(context);
            this.image.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
            this.image.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
            addView(this.image);
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }

    private void parseAttributes(AttributeSet attributeSet) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, C1057R.styleable.com_facebook_profile_picture_view);
            setPresetSize(obtainStyledAttributes.getInt(C1057R.styleable.com_facebook_profile_picture_view_com_facebook_preset_size, -1));
            this.isCropped = obtainStyledAttributes.getBoolean(C1057R.styleable.com_facebook_profile_picture_view_com_facebook_is_cropped, true);
            obtainStyledAttributes.recycle();
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }

    public void processResponse(ImageResponse imageResponse) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            if (imageResponse.getRequest() != this.lastRequest) {
                return;
            }
            this.lastRequest = null;
            Bitmap bitmap = imageResponse.getBitmap();
            Exception error = imageResponse.getError();
            if (error == null) {
                if (bitmap == null) {
                    return;
                }
                setImageBitmap(bitmap);
                if (!imageResponse.isCachedRedirect()) {
                    return;
                }
                sendImageRequest(false);
                return;
            }
            OnErrorListener onErrorListener = this.onErrorListener;
            if (onErrorListener == null) {
                Logger.log(LoggingBehavior.REQUESTS, 6, TAG, error.toString());
                return;
            }
            onErrorListener.onError(new FacebookException("Error in downloading profile picture for profileId: " + getProfileId(), error));
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }

    private void refreshImage(boolean z) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            boolean updateImageQueryParameters = updateImageQueryParameters();
            String str = this.profileId;
            if (str != null && str.length() != 0 && (this.queryWidth != 0 || this.queryHeight != 0)) {
                if (!updateImageQueryParameters && !z) {
                    return;
                }
                sendImageRequest(true);
                return;
            }
            setBlankProfilePicture();
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }

    private void sendImageRequest(boolean z) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            ImageRequest build = new ImageRequest.Builder(getContext(), ImageRequest.getProfilePictureUri(this.profileId, this.queryWidth, this.queryHeight, AccessToken.isCurrentAccessTokenActive() ? AccessToken.getCurrentAccessToken().getToken() : "")).setAllowCachedRedirects(z).setCallerTag(this).setCallback(new ImageRequest.Callback() { // from class: com.facebook.login.widget.ProfilePictureView.1
                @Override // com.facebook.internal.ImageRequest.Callback
                public void onCompleted(ImageResponse imageResponse) {
                    ProfilePictureView.this.processResponse(imageResponse);
                }
            }).build();
            ImageRequest imageRequest = this.lastRequest;
            if (imageRequest != null) {
                ImageDownloader.cancelRequest(imageRequest);
            }
            this.lastRequest = build;
            ImageDownloader.downloadAsync(build);
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }

    private void setBlankProfilePicture() {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            ImageRequest imageRequest = this.lastRequest;
            if (imageRequest != null) {
                ImageDownloader.cancelRequest(imageRequest);
            }
            if (this.customizedDefaultProfilePicture == null) {
                setImageBitmap(BitmapFactory.decodeResource(getResources(), isCropped() ? C1057R.C1059drawable.com_facebook_profile_picture_blank_square : C1057R.C1059drawable.com_facebook_profile_picture_blank_portrait));
                return;
            }
            updateImageQueryParameters();
            setImageBitmap(Bitmap.createScaledBitmap(this.customizedDefaultProfilePicture, this.queryWidth, this.queryHeight, false));
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }

    private void setImageBitmap(Bitmap bitmap) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            ImageView imageView = this.image;
            if (imageView == null || bitmap == null) {
                return;
            }
            this.imageContents = bitmap;
            imageView.setImageBitmap(bitmap);
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }

    private boolean updateImageQueryParameters() {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return false;
        }
        try {
            int height = getHeight();
            int width = getWidth();
            if (width < 1 || height < 1) {
                return false;
            }
            int presetSizeInPixels = getPresetSizeInPixels(false);
            if (presetSizeInPixels != 0) {
                height = presetSizeInPixels;
                width = height;
            }
            if (width <= height) {
                height = isCropped() ? width : 0;
            } else {
                width = isCropped() ? height : 0;
            }
            boolean z = true;
            if (width == this.queryWidth) {
                z = height != this.queryHeight;
            }
            this.queryWidth = width;
            this.queryHeight = height;
            return z;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
            return false;
        }
    }

    public final OnErrorListener getOnErrorListener() {
        return this.onErrorListener;
    }

    public final int getPresetSize() {
        return this.presetSizeType;
    }

    public final String getProfileId() {
        return this.profileId;
    }

    public final boolean isCropped() {
        return this.isCropped;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.lastRequest = null;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        refreshImage(false);
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        int i3;
        boolean z;
        int i4;
        int i5;
        boolean z2;
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        int size = View.MeasureSpec.getSize(i2);
        int size2 = View.MeasureSpec.getSize(i);
        if (View.MeasureSpec.getMode(i2) == 1073741824 || layoutParams.height != -2) {
            i3 = i2;
            z = false;
        } else {
            size = getPresetSizeInPixels(true);
            i3 = View.MeasureSpec.makeMeasureSpec(size, BasicMeasure.EXACTLY);
            z = true;
        }
        if (View.MeasureSpec.getMode(i) == 1073741824 || layoutParams.width != -2) {
            i4 = i;
            z2 = z;
            i5 = size2;
        } else {
            i5 = getPresetSizeInPixels(true);
            z2 = true;
            i4 = View.MeasureSpec.makeMeasureSpec(i5, BasicMeasure.EXACTLY);
        }
        if (!z2) {
            super.onMeasure(i4, i3);
            return;
        }
        setMeasuredDimension(i5, size);
        measureChildren(i4, i3);
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable.getClass() != Bundle.class) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        Bundle bundle = (Bundle) parcelable;
        super.onRestoreInstanceState(bundle.getParcelable(SUPER_STATE_KEY));
        this.profileId = bundle.getString(PROFILE_ID_KEY);
        this.presetSizeType = bundle.getInt(PRESET_SIZE_KEY);
        this.isCropped = bundle.getBoolean(IS_CROPPED_KEY);
        this.queryWidth = bundle.getInt(BITMAP_WIDTH_KEY);
        this.queryHeight = bundle.getInt(BITMAP_HEIGHT_KEY);
        refreshImage(true);
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        Parcelable onSaveInstanceState = super.onSaveInstanceState();
        Bundle bundle = new Bundle();
        bundle.putParcelable(SUPER_STATE_KEY, onSaveInstanceState);
        bundle.putString(PROFILE_ID_KEY, this.profileId);
        bundle.putInt(PRESET_SIZE_KEY, this.presetSizeType);
        bundle.putBoolean(IS_CROPPED_KEY, this.isCropped);
        bundle.putInt(BITMAP_WIDTH_KEY, this.queryWidth);
        bundle.putInt(BITMAP_HEIGHT_KEY, this.queryHeight);
        bundle.putBoolean(PENDING_REFRESH_KEY, this.lastRequest != null);
        return bundle;
    }

    public final void setCropped(boolean z) {
        this.isCropped = z;
        refreshImage(false);
    }

    public final void setDefaultProfilePicture(Bitmap bitmap) {
        this.customizedDefaultProfilePicture = bitmap;
    }

    public final void setOnErrorListener(OnErrorListener onErrorListener) {
        this.onErrorListener = onErrorListener;
    }

    public final void setPresetSize(int i) {
        if (i == -4 || i == -3 || i == -2 || i == -1) {
            this.presetSizeType = i;
            requestLayout();
            return;
        }
        throw new IllegalArgumentException("Must use a predefined preset size");
    }

    public final void setProfileId(String str) {
        boolean z;
        if (Utility.isNullOrEmpty(this.profileId) || !this.profileId.equalsIgnoreCase(str)) {
            setBlankProfilePicture();
            z = true;
        } else {
            z = false;
        }
        this.profileId = str;
        refreshImage(z);
    }
}
