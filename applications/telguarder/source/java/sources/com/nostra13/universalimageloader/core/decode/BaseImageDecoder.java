package com.nostra13.universalimageloader.core.decode;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Matrix;
import android.media.ExifInterface;
import com.nostra13.universalimageloader.core.assist.ImageScaleType;
import com.nostra13.universalimageloader.core.assist.ImageSize;
import com.nostra13.universalimageloader.core.download.ImageDownloader;
import com.nostra13.universalimageloader.utils.C1836L;
import com.nostra13.universalimageloader.utils.ImageSizeUtils;
import com.nostra13.universalimageloader.utils.IoUtils;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes2-dex2jar.jar:com/nostra13/universalimageloader/core/decode/BaseImageDecoder.class */
public class BaseImageDecoder implements ImageDecoder {
    protected static final String ERROR_CANT_DECODE_IMAGE = "Image can't be decoded [%s]";
    protected static final String ERROR_NO_IMAGE_STREAM = "No stream for image [%s]";
    protected static final String LOG_FLIP_IMAGE = "Flip image horizontally [%s]";
    protected static final String LOG_ROTATE_IMAGE = "Rotate image on %1$d° [%2$s]";
    protected static final String LOG_SCALE_IMAGE = "Scale subsampled image (%1$s) to %2$s (scale = %3$.5f) [%4$s]";
    protected static final String LOG_SUBSAMPLE_IMAGE = "Subsample original image (%1$s) to %2$s (scale = %3$d) [%4$s]";
    protected final boolean loggingEnabled;

    /* loaded from: classes2-dex2jar.jar:com/nostra13/universalimageloader/core/decode/BaseImageDecoder$ExifInfo.class */
    public static class ExifInfo {
        public final boolean flipHorizontal;
        public final int rotation;

        protected ExifInfo() {
            this.rotation = 0;
            this.flipHorizontal = false;
        }

        protected ExifInfo(int i, boolean z) {
            this.rotation = i;
            this.flipHorizontal = z;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/nostra13/universalimageloader/core/decode/BaseImageDecoder$ImageFileInfo.class */
    public static class ImageFileInfo {
        public final ExifInfo exif;
        public final ImageSize imageSize;

        protected ImageFileInfo(ImageSize imageSize, ExifInfo exifInfo) {
            this.imageSize = imageSize;
            this.exif = exifInfo;
        }
    }

    public BaseImageDecoder(boolean z) {
        this.loggingEnabled = z;
    }

    private boolean canDefineExifParams(String str, String str2) {
        return "image/jpeg".equalsIgnoreCase(str2) && ImageDownloader.Scheme.ofUri(str) == ImageDownloader.Scheme.FILE;
    }

    protected Bitmap considerExactScaleAndOrientatiton(Bitmap bitmap, ImageDecodingInfo imageDecodingInfo, int i, boolean z) {
        Matrix matrix = new Matrix();
        ImageScaleType imageScaleType = imageDecodingInfo.getImageScaleType();
        if (imageScaleType == ImageScaleType.EXACTLY || imageScaleType == ImageScaleType.EXACTLY_STRETCHED) {
            ImageSize imageSize = new ImageSize(bitmap.getWidth(), bitmap.getHeight(), i);
            float computeImageScale = ImageSizeUtils.computeImageScale(imageSize, imageDecodingInfo.getTargetSize(), imageDecodingInfo.getViewScaleType(), imageScaleType == ImageScaleType.EXACTLY_STRETCHED);
            if (Float.compare(computeImageScale, 1.0f) != 0) {
                matrix.setScale(computeImageScale, computeImageScale);
                if (this.loggingEnabled) {
                    C1836L.m1114d(LOG_SCALE_IMAGE, imageSize, imageSize.scale(computeImageScale), Float.valueOf(computeImageScale), imageDecodingInfo.getImageKey());
                }
            }
        }
        if (z) {
            matrix.postScale(-1.0f, 1.0f);
            if (this.loggingEnabled) {
                C1836L.m1114d(LOG_FLIP_IMAGE, imageDecodingInfo.getImageKey());
            }
        }
        if (i != 0) {
            matrix.postRotate(i);
            if (this.loggingEnabled) {
                C1836L.m1114d(LOG_ROTATE_IMAGE, Integer.valueOf(i), imageDecodingInfo.getImageKey());
            }
        }
        Bitmap createBitmap = Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, true);
        if (createBitmap != bitmap) {
            bitmap.recycle();
        }
        return createBitmap;
    }

    @Override // com.nostra13.universalimageloader.core.decode.ImageDecoder
    public Bitmap decode(ImageDecodingInfo imageDecodingInfo) throws IOException {
        Bitmap bitmap;
        InputStream imageStream = getImageStream(imageDecodingInfo);
        if (imageStream == null) {
            C1836L.m1113e(ERROR_NO_IMAGE_STREAM, imageDecodingInfo.getImageKey());
            return null;
        }
        InputStream inputStream = imageStream;
        try {
            ImageFileInfo defineImageSizeAndRotation = defineImageSizeAndRotation(imageStream, imageDecodingInfo);
            InputStream resetStream = resetStream(imageStream, imageDecodingInfo);
            inputStream = resetStream;
            Bitmap decodeStream = BitmapFactory.decodeStream(resetStream, null, prepareDecodingOptions(defineImageSizeAndRotation.imageSize, imageDecodingInfo));
            IoUtils.closeSilently(resetStream);
            if (decodeStream == null) {
                C1836L.m1113e(ERROR_CANT_DECODE_IMAGE, imageDecodingInfo.getImageKey());
                bitmap = decodeStream;
            } else {
                bitmap = considerExactScaleAndOrientatiton(decodeStream, imageDecodingInfo, defineImageSizeAndRotation.exif.rotation, defineImageSizeAndRotation.exif.flipHorizontal);
            }
            return bitmap;
        } catch (Throwable th) {
            IoUtils.closeSilently(inputStream);
            throw th;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    protected ExifInfo defineExifOrientation(String str) {
        int i;
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        boolean z4 = true;
        try {
            i = 0;
        } catch (IOException e) {
            C1836L.m1109w("Can't read EXIF tags from file [%s]", str);
        }
        switch (new ExifInterface(ImageDownloader.Scheme.FILE.crop(str)).getAttributeInt(androidx.exifinterface.media.ExifInterface.TAG_ORIENTATION, 1)) {
            case 1:
            default:
                z4 = false;
                i = 0;
                break;
            case 2:
                break;
            case 3:
                z4 = z2;
                i = 180;
                break;
            case 4:
                z2 = true;
                z4 = z2;
                i = 180;
                break;
            case 5:
                z = true;
                z4 = z;
                i = 270;
                break;
            case 6:
                z4 = z3;
                i = 90;
                break;
            case 7:
                z3 = true;
                z4 = z3;
                i = 90;
                break;
            case 8:
                z4 = z;
                i = 270;
                break;
        }
        return new ExifInfo(i, z4);
    }

    protected ImageFileInfo defineImageSizeAndRotation(InputStream inputStream, ImageDecodingInfo imageDecodingInfo) throws IOException {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeStream(inputStream, null, options);
        String imageUri = imageDecodingInfo.getImageUri();
        ExifInfo exifInfo = (!imageDecodingInfo.shouldConsiderExifParams() || !canDefineExifParams(imageUri, options.outMimeType)) ? new ExifInfo() : defineExifOrientation(imageUri);
        return new ImageFileInfo(new ImageSize(options.outWidth, options.outHeight, exifInfo.rotation), exifInfo);
    }

    protected InputStream getImageStream(ImageDecodingInfo imageDecodingInfo) throws IOException {
        return imageDecodingInfo.getDownloader().getStream(imageDecodingInfo.getImageUri(), imageDecodingInfo.getExtraForDownloader());
    }

    protected BitmapFactory.Options prepareDecodingOptions(ImageSize imageSize, ImageDecodingInfo imageDecodingInfo) {
        int i;
        ImageScaleType imageScaleType = imageDecodingInfo.getImageScaleType();
        if (imageScaleType == ImageScaleType.NONE) {
            i = 1;
        } else if (imageScaleType == ImageScaleType.NONE_SAFE) {
            i = ImageSizeUtils.computeMinImageSampleSize(imageSize);
        } else {
            i = ImageSizeUtils.computeImageSampleSize(imageSize, imageDecodingInfo.getTargetSize(), imageDecodingInfo.getViewScaleType(), imageScaleType == ImageScaleType.IN_SAMPLE_POWER_OF_2);
        }
        if (i > 1 && this.loggingEnabled) {
            C1836L.m1114d(LOG_SUBSAMPLE_IMAGE, imageSize, imageSize.scaleDown(i), Integer.valueOf(i), imageDecodingInfo.getImageKey());
        }
        BitmapFactory.Options decodingOptions = imageDecodingInfo.getDecodingOptions();
        decodingOptions.inSampleSize = i;
        return decodingOptions;
    }

    protected InputStream resetStream(InputStream inputStream, ImageDecodingInfo imageDecodingInfo) throws IOException {
        if (inputStream.markSupported()) {
            try {
                inputStream.reset();
                return inputStream;
            } catch (IOException e) {
            }
        }
        IoUtils.closeSilently(inputStream);
        return getImageStream(imageDecodingInfo);
    }
}
