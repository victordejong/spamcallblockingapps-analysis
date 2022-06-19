package io.bidmachine.nativead.utils;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Point;
import android.net.Uri;
import android.text.TextUtils;
import android.widget.ImageView;
import io.bidmachine.core.Logger;
import io.bidmachine.core.Utils;
import java.io.InputStream;
import java.lang.ref.WeakReference;
/* loaded from: classes5-dex2jar.jar:io/bidmachine/nativead/utils/ImageHelper.class */
public class ImageHelper {
    private static final int MAX_IMAGE_HEIGHT = 700;
    private static final int MAX_IMAGE_WIDTH = 1200;

    /* loaded from: classes5-dex2jar.jar:io/bidmachine/nativead/utils/ImageHelper$OnImageHelperListener.class */
    public interface OnImageHelperListener {
        void onError(String str);

        void onImagePrepared(ImageView imageView, Bitmap bitmap);
    }

    /* renamed from: io.bidmachine.nativead.utils.ImageHelper$a */
    /* loaded from: classes5-dex2jar.jar:io/bidmachine/nativead/utils/ImageHelper$a.class */
    public static final class RunnableC17901a implements Runnable {
        private final Context context;
        private Bitmap image;
        private final Uri imageUri;
        private final OnImageHelperListener onImageHelperListener;
        private final WeakReference<ImageView> weakTargetImageView;

        RunnableC17901a(Context context, Uri uri, ImageView imageView, OnImageHelperListener onImageHelperListener) {
            this.context = context;
            this.imageUri = uri;
            this.weakTargetImageView = new WeakReference<>(imageView);
            this.onImageHelperListener = onImageHelperListener;
        }

        @Override // java.lang.Runnable
        public final void run() {
            try {
                BitmapFactory.Options options = new BitmapFactory.Options();
                options.inJustDecodeBounds = true;
                InputStream openInputStream = this.context.getContentResolver().openInputStream(this.imageUri);
                BitmapFactory.decodeStream(openInputStream, null, options);
                Utils.close(openInputStream);
                if (options.outWidth != 0 && options.outHeight != 0) {
                    int calculateReqWidth = ImageHelper.calculateReqWidth(this.context);
                    options.inSampleSize = ImageHelper.calculateInSamplesSize(options, calculateReqWidth, ImageHelper.calculateReqHeight(calculateReqWidth, false));
                    options.inJustDecodeBounds = false;
                    InputStream openInputStream2 = this.context.getContentResolver().openInputStream(this.imageUri);
                    this.image = BitmapFactory.decodeStream(openInputStream2, null, options);
                    Utils.close(openInputStream2);
                    Utils.onUiThread(new Runnable() { // from class: io.bidmachine.nativead.utils.ImageHelper.a.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            ImageView imageView = (ImageView) RunnableC17901a.this.weakTargetImageView.get();
                            if (imageView == null || RunnableC17901a.this.image == null) {
                                RunnableC17901a.this.onImageHelperListener.onError("Target ImageView or Bitmap is invalid");
                            } else {
                                RunnableC17901a.this.onImageHelperListener.onImagePrepared(imageView, RunnableC17901a.this.image);
                            }
                        }
                    });
                    return;
                }
                this.onImageHelperListener.onError("Image size is (0;0)");
            } catch (Throwable th) {
                if (th.getMessage() != null) {
                    this.onImageHelperListener.onError(th.getMessage());
                } else {
                    this.onImageHelperListener.onError("ImagePreparation error");
                }
            }
        }
    }

    public static int calculateInSamplesSize(BitmapFactory.Options options, int i, int i2) {
        int i3 = options.outWidth;
        int i4 = options.outHeight;
        int i5 = 1;
        while (true) {
            int i6 = i5;
            if (i3 / i6 > i || i4 / i6 > i2) {
                i5 = i6 * 2;
            } else {
                return i6;
            }
        }
    }

    public static int calculateReqHeight(int i, boolean z) {
        int i2 = i;
        if (z) {
            i2 = (int) (i / 1.5f);
        }
        int i3 = i2;
        if (i2 > MAX_IMAGE_HEIGHT) {
            i3 = MAX_IMAGE_HEIGHT;
        }
        return i3;
    }

    public static int calculateReqWidth(Context context) {
        Point screenSize = Utils.getScreenSize(context);
        return Math.min((int) MAX_IMAGE_WIDTH, Math.min(screenSize.x, screenSize.y));
    }

    public static void fillImageView(Context context, ImageView imageView, Uri uri, Bitmap bitmap) {
        if (bitmap != null) {
            imageView.setImageBitmap(bitmap);
        } else {
            loadImageByPath(context, uri, imageView, new OnImageHelperListener() { // from class: io.bidmachine.nativead.utils.ImageHelper.1
                @Override // io.bidmachine.nativead.utils.ImageHelper.OnImageHelperListener
                public final void onError(String str) {
                    Logger.log(str);
                }

                @Override // io.bidmachine.nativead.utils.ImageHelper.OnImageHelperListener
                public final void onImagePrepared(ImageView imageView2, Bitmap bitmap2) {
                    imageView2.setImageBitmap(bitmap2);
                }
            });
        }
    }

    private static void loadImageByPath(Context context, Uri uri, ImageView imageView, OnImageHelperListener onImageHelperListener) {
        if (onImageHelperListener == null) {
            return;
        }
        if (uri == null || TextUtils.isEmpty(uri.getPath())) {
            onImageHelperListener.onError("ImagePath is invalid");
        } else if (imageView == null) {
            onImageHelperListener.onError("Target ImageView is null");
        } else {
            NativeNetworkExecutor.getInstance().execute(new RunnableC17901a(context, uri, imageView, onImageHelperListener));
        }
    }
}
