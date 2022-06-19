package com.theartofdev.edmodo.cropper;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.theartofdev.edmodo.cropper.CropImageView;
/* loaded from: classes4-dex2jar.jar:com/theartofdev/edmodo/cropper/CropImageOptions.class */
public class CropImageOptions implements Parcelable {
    public static final Parcelable.Creator<CropImageOptions> CREATOR = new Parcelable.Creator<CropImageOptions>() { // from class: com.theartofdev.edmodo.cropper.CropImageOptions.1
        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ CropImageOptions createFromParcel(Parcel parcel) {
            return new CropImageOptions(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final /* bridge */ /* synthetic */ CropImageOptions[] newArray(int i) {
            return new CropImageOptions[i];
        }
    };
    public int activityMenuIconColor;
    public CharSequence activityTitle;
    public boolean allowCounterRotation;
    public boolean allowFlipping;
    public boolean allowRotation;
    public int aspectRatioX;
    public int aspectRatioY;
    public boolean autoZoomEnabled;
    public int backgroundColor;
    public int borderCornerColor;
    public float borderCornerLength;
    public float borderCornerOffset;
    public float borderCornerThickness;
    public int borderLineColor;
    public float borderLineThickness;
    public int cropMenuCropButtonIcon;
    public CharSequence cropMenuCropButtonTitle;
    public CropImageView.EnumC17167b cropShape;
    public boolean fixAspectRatio;
    public boolean flipHorizontally;
    public boolean flipVertically;
    public CropImageView.EnumC17168c guidelines;
    public int guidelinesColor;
    public float guidelinesThickness;
    public float initialCropWindowPaddingRatio;
    public Rect initialCropWindowRectangle;
    public int initialRotation;
    public int maxCropResultHeight;
    public int maxCropResultWidth;
    public int maxZoom;
    public int minCropResultHeight;
    public int minCropResultWidth;
    public int minCropWindowHeight;
    public int minCropWindowWidth;
    public boolean multiTouchEnabled;
    public boolean noOutputImage;
    public Bitmap.CompressFormat outputCompressFormat;
    public int outputCompressQuality;
    public int outputRequestHeight;
    public CropImageView.EnumC17174i outputRequestSizeOptions;
    public int outputRequestWidth;
    public Uri outputUri;
    public int rotationDegrees;
    public CropImageView.EnumC17175j scaleType;
    public boolean showCropOverlay;
    public boolean showProgressBar;
    public float snapRadius;
    public float touchRadius;

    public CropImageOptions() {
        DisplayMetrics displayMetrics = Resources.getSystem().getDisplayMetrics();
        this.cropShape = CropImageView.EnumC17167b.RECTANGLE;
        this.snapRadius = TypedValue.applyDimension(1, 3.0f, displayMetrics);
        this.touchRadius = TypedValue.applyDimension(1, 24.0f, displayMetrics);
        this.guidelines = CropImageView.EnumC17168c.ON_TOUCH;
        this.scaleType = CropImageView.EnumC17175j.FIT_CENTER;
        this.showCropOverlay = true;
        this.showProgressBar = true;
        this.autoZoomEnabled = true;
        this.multiTouchEnabled = false;
        this.maxZoom = 4;
        this.initialCropWindowPaddingRatio = 0.1f;
        this.fixAspectRatio = false;
        this.aspectRatioX = 1;
        this.aspectRatioY = 1;
        this.borderLineThickness = TypedValue.applyDimension(1, 3.0f, displayMetrics);
        this.borderLineColor = Color.argb(170, 255, 255, 255);
        this.borderCornerThickness = TypedValue.applyDimension(1, 2.0f, displayMetrics);
        this.borderCornerOffset = TypedValue.applyDimension(1, 5.0f, displayMetrics);
        this.borderCornerLength = TypedValue.applyDimension(1, 14.0f, displayMetrics);
        this.borderCornerColor = -1;
        this.guidelinesThickness = TypedValue.applyDimension(1, 1.0f, displayMetrics);
        this.guidelinesColor = Color.argb(170, 255, 255, 255);
        this.backgroundColor = Color.argb(119, 0, 0, 0);
        this.minCropWindowWidth = (int) TypedValue.applyDimension(1, 42.0f, displayMetrics);
        this.minCropWindowHeight = (int) TypedValue.applyDimension(1, 42.0f, displayMetrics);
        this.minCropResultWidth = 40;
        this.minCropResultHeight = 40;
        this.maxCropResultWidth = 99999;
        this.maxCropResultHeight = 99999;
        this.activityTitle = "";
        this.activityMenuIconColor = 0;
        this.outputUri = Uri.EMPTY;
        this.outputCompressFormat = Bitmap.CompressFormat.JPEG;
        this.outputCompressQuality = 90;
        this.outputRequestWidth = 0;
        this.outputRequestHeight = 0;
        this.outputRequestSizeOptions = CropImageView.EnumC17174i.NONE;
        this.noOutputImage = false;
        this.initialCropWindowRectangle = null;
        this.initialRotation = -1;
        this.allowRotation = true;
        this.allowFlipping = true;
        this.allowCounterRotation = false;
        this.rotationDegrees = 90;
        this.flipHorizontally = false;
        this.flipVertically = false;
        this.cropMenuCropButtonTitle = null;
        this.cropMenuCropButtonIcon = 0;
    }

    protected CropImageOptions(Parcel parcel) {
        this.cropShape = CropImageView.EnumC17167b.values()[parcel.readInt()];
        this.snapRadius = parcel.readFloat();
        this.touchRadius = parcel.readFloat();
        this.guidelines = CropImageView.EnumC17168c.values()[parcel.readInt()];
        this.scaleType = CropImageView.EnumC17175j.values()[parcel.readInt()];
        this.showCropOverlay = parcel.readByte() != 0;
        this.showProgressBar = parcel.readByte() != 0;
        this.autoZoomEnabled = parcel.readByte() != 0;
        this.multiTouchEnabled = parcel.readByte() != 0;
        this.maxZoom = parcel.readInt();
        this.initialCropWindowPaddingRatio = parcel.readFloat();
        this.fixAspectRatio = parcel.readByte() != 0;
        this.aspectRatioX = parcel.readInt();
        this.aspectRatioY = parcel.readInt();
        this.borderLineThickness = parcel.readFloat();
        this.borderLineColor = parcel.readInt();
        this.borderCornerThickness = parcel.readFloat();
        this.borderCornerOffset = parcel.readFloat();
        this.borderCornerLength = parcel.readFloat();
        this.borderCornerColor = parcel.readInt();
        this.guidelinesThickness = parcel.readFloat();
        this.guidelinesColor = parcel.readInt();
        this.backgroundColor = parcel.readInt();
        this.minCropWindowWidth = parcel.readInt();
        this.minCropWindowHeight = parcel.readInt();
        this.minCropResultWidth = parcel.readInt();
        this.minCropResultHeight = parcel.readInt();
        this.maxCropResultWidth = parcel.readInt();
        this.maxCropResultHeight = parcel.readInt();
        this.activityTitle = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.activityMenuIconColor = parcel.readInt();
        this.outputUri = (Uri) parcel.readParcelable(Uri.class.getClassLoader());
        this.outputCompressFormat = Bitmap.CompressFormat.valueOf(parcel.readString());
        this.outputCompressQuality = parcel.readInt();
        this.outputRequestWidth = parcel.readInt();
        this.outputRequestHeight = parcel.readInt();
        this.outputRequestSizeOptions = CropImageView.EnumC17174i.values()[parcel.readInt()];
        this.noOutputImage = parcel.readByte() != 0;
        this.initialCropWindowRectangle = (Rect) parcel.readParcelable(Rect.class.getClassLoader());
        this.initialRotation = parcel.readInt();
        this.allowRotation = parcel.readByte() != 0;
        this.allowFlipping = parcel.readByte() != 0;
        this.allowCounterRotation = parcel.readByte() != 0;
        this.rotationDegrees = parcel.readInt();
        this.flipHorizontally = parcel.readByte() != 0;
        this.flipVertically = parcel.readByte() != 0;
        this.cropMenuCropButtonTitle = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.cropMenuCropButtonIcon = parcel.readInt();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public void validate() {
        if (this.maxZoom >= 0) {
            if (this.touchRadius < BitmapDescriptorFactory.HUE_RED) {
                throw new IllegalArgumentException("Cannot set touch radius value to a number <= 0 ");
            }
            float f = this.initialCropWindowPaddingRatio;
            if (f < BitmapDescriptorFactory.HUE_RED || f >= 0.5d) {
                throw new IllegalArgumentException("Cannot set initial crop window padding value to a number < 0 or >= 0.5");
            }
            if (this.aspectRatioX <= 0) {
                throw new IllegalArgumentException("Cannot set aspect ratio value to a number less than or equal to 0.");
            }
            if (this.aspectRatioY <= 0) {
                throw new IllegalArgumentException("Cannot set aspect ratio value to a number less than or equal to 0.");
            }
            if (this.borderLineThickness < BitmapDescriptorFactory.HUE_RED) {
                throw new IllegalArgumentException("Cannot set line thickness value to a number less than 0.");
            }
            if (this.borderCornerThickness < BitmapDescriptorFactory.HUE_RED) {
                throw new IllegalArgumentException("Cannot set corner thickness value to a number less than 0.");
            }
            if (this.guidelinesThickness < BitmapDescriptorFactory.HUE_RED) {
                throw new IllegalArgumentException("Cannot set guidelines thickness value to a number less than 0.");
            }
            if (this.minCropWindowHeight < 0) {
                throw new IllegalArgumentException("Cannot set min crop window height value to a number < 0 ");
            }
            int i = this.minCropResultWidth;
            if (i < 0) {
                throw new IllegalArgumentException("Cannot set min crop result width value to a number < 0 ");
            }
            int i2 = this.minCropResultHeight;
            if (i2 < 0) {
                throw new IllegalArgumentException("Cannot set min crop result height value to a number < 0 ");
            }
            if (this.maxCropResultWidth < i) {
                throw new IllegalArgumentException("Cannot set max crop result width to smaller value than min crop result width");
            }
            if (this.maxCropResultHeight < i2) {
                throw new IllegalArgumentException("Cannot set max crop result height to smaller value than min crop result height");
            }
            if (this.outputRequestWidth < 0) {
                throw new IllegalArgumentException("Cannot set request width value to a number < 0 ");
            }
            if (this.outputRequestHeight < 0) {
                throw new IllegalArgumentException("Cannot set request height value to a number < 0 ");
            }
            int i3 = this.rotationDegrees;
            if (i3 >= 0 && i3 <= 360) {
                return;
            }
            throw new IllegalArgumentException("Cannot set rotation degrees value to a number < 0 or > 360");
        }
        throw new IllegalArgumentException("Cannot set max zoom to a number < 1");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.cropShape.ordinal());
        parcel.writeFloat(this.snapRadius);
        parcel.writeFloat(this.touchRadius);
        parcel.writeInt(this.guidelines.ordinal());
        parcel.writeInt(this.scaleType.ordinal());
        parcel.writeByte(this.showCropOverlay ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.showProgressBar ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.autoZoomEnabled ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.multiTouchEnabled ? (byte) 1 : (byte) 0);
        parcel.writeInt(this.maxZoom);
        parcel.writeFloat(this.initialCropWindowPaddingRatio);
        parcel.writeByte(this.fixAspectRatio ? (byte) 1 : (byte) 0);
        parcel.writeInt(this.aspectRatioX);
        parcel.writeInt(this.aspectRatioY);
        parcel.writeFloat(this.borderLineThickness);
        parcel.writeInt(this.borderLineColor);
        parcel.writeFloat(this.borderCornerThickness);
        parcel.writeFloat(this.borderCornerOffset);
        parcel.writeFloat(this.borderCornerLength);
        parcel.writeInt(this.borderCornerColor);
        parcel.writeFloat(this.guidelinesThickness);
        parcel.writeInt(this.guidelinesColor);
        parcel.writeInt(this.backgroundColor);
        parcel.writeInt(this.minCropWindowWidth);
        parcel.writeInt(this.minCropWindowHeight);
        parcel.writeInt(this.minCropResultWidth);
        parcel.writeInt(this.minCropResultHeight);
        parcel.writeInt(this.maxCropResultWidth);
        parcel.writeInt(this.maxCropResultHeight);
        TextUtils.writeToParcel(this.activityTitle, parcel, i);
        parcel.writeInt(this.activityMenuIconColor);
        parcel.writeParcelable(this.outputUri, i);
        parcel.writeString(this.outputCompressFormat.name());
        parcel.writeInt(this.outputCompressQuality);
        parcel.writeInt(this.outputRequestWidth);
        parcel.writeInt(this.outputRequestHeight);
        parcel.writeInt(this.outputRequestSizeOptions.ordinal());
        parcel.writeInt(this.noOutputImage ? 1 : 0);
        parcel.writeParcelable(this.initialCropWindowRectangle, i);
        parcel.writeInt(this.initialRotation);
        parcel.writeByte(this.allowRotation ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.allowFlipping ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.allowCounterRotation ? (byte) 1 : (byte) 0);
        parcel.writeInt(this.rotationDegrees);
        parcel.writeByte(this.flipHorizontally ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.flipVertically ? (byte) 1 : (byte) 0);
        TextUtils.writeToParcel(this.cropMenuCropButtonTitle, parcel, i);
        parcel.writeInt(this.cropMenuCropButtonIcon);
    }
}
