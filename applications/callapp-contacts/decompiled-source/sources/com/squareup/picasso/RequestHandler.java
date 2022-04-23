package com.squareup.picasso;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.NetworkInfo;
import c.ad;
import com.squareup.picasso.Picasso;
import java.io.IOException;
/* loaded from: classes4-dex2jar.jar:com/squareup/picasso/RequestHandler.class */
public abstract class RequestHandler {

    /* loaded from: classes4-dex2jar.jar:com/squareup/picasso/RequestHandler$Result.class */
    public static final class Result {
        private final Bitmap bitmap;
        private final int exifOrientation;
        private final Picasso.LoadedFrom loadedFrom;
        private final ad source;

        /* JADX INFO: Access modifiers changed from: package-private */
        public Result(Bitmap bitmap, ad adVar, Picasso.LoadedFrom loadedFrom, int i) {
            if ((bitmap != null) != (adVar == null ? false : true)) {
                this.bitmap = bitmap;
                this.source = adVar;
                this.loadedFrom = (Picasso.LoadedFrom) Utils.checkNotNull(loadedFrom, "loadedFrom == null");
                this.exifOrientation = i;
                return;
            }
            throw new AssertionError();
        }

        public Result(Bitmap bitmap, Picasso.LoadedFrom loadedFrom) {
            this((Bitmap) Utils.checkNotNull(bitmap, "bitmap == null"), null, loadedFrom, 0);
        }

        public Result(ad adVar, Picasso.LoadedFrom loadedFrom) {
            this(null, (ad) Utils.checkNotNull(adVar, "source == null"), loadedFrom, 0);
        }

        public final Bitmap getBitmap() {
            return this.bitmap;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final int getExifOrientation() {
            return this.exifOrientation;
        }

        public final Picasso.LoadedFrom getLoadedFrom() {
            return this.loadedFrom;
        }

        public final ad getSource() {
            return this.source;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void calculateInSampleSize(int i, int i2, int i3, int i4, BitmapFactory.Options options, Request request) {
        int i5;
        double floor;
        if (i4 > i2 || i3 > i) {
            if (i2 == 0) {
                floor = Math.floor(i3 / i);
            } else if (i == 0) {
                floor = Math.floor(i4 / i2);
            } else {
                int floor2 = (int) Math.floor(i4 / i2);
                int floor3 = (int) Math.floor(i3 / i);
                i5 = request.centerInside ? Math.max(floor2, floor3) : Math.min(floor2, floor3);
            }
            i5 = (int) floor;
        } else {
            i5 = 1;
        }
        options.inSampleSize = i5;
        options.inJustDecodeBounds = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void calculateInSampleSize(int i, int i2, BitmapFactory.Options options, Request request) {
        calculateInSampleSize(i, i2, options.outWidth, options.outHeight, options, request);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static BitmapFactory.Options createBitmapOptions(Request request) {
        boolean hasSize = request.hasSize();
        boolean z = request.config != null;
        BitmapFactory.Options options = null;
        if (hasSize || z || request.purgeable) {
            BitmapFactory.Options options2 = new BitmapFactory.Options();
            options2.inJustDecodeBounds = hasSize;
            options2.inInputShareable = request.purgeable;
            options2.inPurgeable = request.purgeable;
            options = options2;
            if (z) {
                options2.inPreferredConfig = request.config;
                options = options2;
            }
        }
        return options;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean requiresInSampleSize(BitmapFactory.Options options) {
        return options != null && options.inJustDecodeBounds;
    }

    public abstract boolean canHandleRequest(Request request);

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getRetryCount() {
        return 0;
    }

    public abstract Result load(Request request, int i) throws IOException;

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean shouldRetry(boolean z, NetworkInfo networkInfo) {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean supportsReplay() {
        return false;
    }
}
