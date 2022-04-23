package zendesk.support.request;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.support.annotation.NonNull;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.squareup.picasso.Callback;
import com.squareup.picasso.Picasso;
import com.squareup.picasso.RequestCreator;
import com.squareup.picasso.Target;
import com.zendesk.logger.Logger;
import com.zendesk.sdk.C1790R;
import com.zendesk.service.ErrorResponse;
import com.zendesk.service.ZendeskCallback;
import com.zendesk.util.StringUtils;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import zendesk.support.PicassoTransformations;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:zendesk/support/request/CellAttachmentLoadingUtil.class */
public class CellAttachmentLoadingUtil {
    private static final String LOG_TAG = "AttachmentLoadingUtil";
    private final ImageLoadingLogic imageLoadingLogic;
    private final ImageSizingLogic imageSizingLogic;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:zendesk/support/request/CellAttachmentLoadingUtil$ImageLoadingLogic.class */
    public static class ImageLoadingLogic {
        private static final int IMAGE_DOWNSCALE_FACTOR = 2;
        private final Picasso picasso;

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes3-dex2jar.jar:zendesk/support/request/CellAttachmentLoadingUtil$ImageLoadingLogic$DefaultDisplayStrategy.class */
        public static class DefaultDisplayStrategy implements LoadingStrategy {
            private DefaultDisplayStrategy() {
            }

            @Override // zendesk.support.request.CellAttachmentLoadingUtil.ImageLoadingLogic.LoadingStrategy
            public void load(ImageView imageView, ImageSizingLogic.ImageDimensions imageDimensions) {
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes3-dex2jar.jar:zendesk/support/request/CellAttachmentLoadingUtil$ImageLoadingLogic$DisplayImageFromLocalSource.class */
        public static class DisplayImageFromLocalSource implements LoadingStrategy {
            private final RequestCreator requestCreator;

            private DisplayImageFromLocalSource(RequestCreator requestCreator) {
                this.requestCreator = requestCreator;
            }

            @Override // zendesk.support.request.CellAttachmentLoadingUtil.ImageLoadingLogic.LoadingStrategy
            public void load(ImageView imageView, ImageSizingLogic.ImageDimensions imageDimensions) {
                ImageLoadingLogic.loadImage(imageView, this.requestCreator.noPlaceholder().noFade(), imageDimensions, null);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes3-dex2jar.jar:zendesk/support/request/CellAttachmentLoadingUtil$ImageLoadingLogic$DisplayImageFromWeb.class */
        public static class DisplayImageFromWeb implements LoadingStrategy {
            final Picasso picasso;
            final String thumbnailUrl;
            final String url;

            private DisplayImageFromWeb(Picasso picasso, String str, String str2) {
                this.picasso = picasso;
                this.url = str;
                this.thumbnailUrl = str2;
            }

            @Override // zendesk.support.request.CellAttachmentLoadingUtil.ImageLoadingLogic.LoadingStrategy
            public void load(final ImageView imageView, final ImageSizingLogic.ImageDimensions imageDimensions) {
                ImageLoadingLogic.loadImage(imageView, this.picasso.load(this.thumbnailUrl).transform(PicassoTransformations.getBlurTransformation(imageView.getContext().getApplicationContext())), imageDimensions, new Callback() { // from class: zendesk.support.request.CellAttachmentLoadingUtil.ImageLoadingLogic.DisplayImageFromWeb.1
                    @Override // com.squareup.picasso.Callback
                    public void onError() {
                        Logger.m298d("RequestActivity", "Unable to load thumbnail. Url: '%s'", DisplayImageFromWeb.this.thumbnailUrl);
                        ImageLoadingLogic.loadImage(imageView, DisplayImageFromWeb.this.picasso.load(DisplayImageFromWeb.this.url).noPlaceholder(), imageDimensions, null);
                    }

                    @Override // com.squareup.picasso.Callback
                    public void onSuccess() {
                        ImageLoadingLogic.loadImage(imageView, DisplayImageFromWeb.this.picasso.load(DisplayImageFromWeb.this.url).noPlaceholder(), imageDimensions, null);
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes3-dex2jar.jar:zendesk/support/request/CellAttachmentLoadingUtil$ImageLoadingLogic$LoadingStrategy.class */
        public interface LoadingStrategy {
            void load(ImageView imageView, ImageSizingLogic.ImageDimensions imageDimensions);
        }

        ImageLoadingLogic(Picasso picasso) {
            this.picasso = picasso;
        }

        private LoadingStrategy getLoadingStrategy(StateRequestAttachment stateRequestAttachment) {
            if (stateRequestAttachment.getLocalFile() != null && stateRequestAttachment.getLocalFile().exists() && stateRequestAttachment.getLocalFile().length() > 0) {
                return new DisplayImageFromLocalSource(this.picasso.load(stateRequestAttachment.getLocalFile()));
            }
            if (StringUtils.hasLength(stateRequestAttachment.getLocalUri()) && Uri.parse(stateRequestAttachment.getLocalUri()) != null) {
                return new DisplayImageFromLocalSource(this.picasso.load(stateRequestAttachment.getParsedLocalUri()));
            }
            if (StringUtils.hasLength(stateRequestAttachment.getUrl()) && StringUtils.hasLength(stateRequestAttachment.getThumbnailUrl())) {
                return new DisplayImageFromWeb(this.picasso, stateRequestAttachment.getUrl(), stateRequestAttachment.getThumbnailUrl());
            }
            Logger.m298d("RequestActivity", "Can't load image. Id: %s", Long.valueOf(stateRequestAttachment.getId()));
            return new DefaultDisplayStrategy();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static void loadImage(ImageView imageView, RequestCreator requestCreator, ImageSizingLogic.ImageDimensions imageDimensions, Callback callback) {
            requestCreator.transform(PicassoTransformations.getRoundedTransformation(imageView.getContext().getResources().getDimensionPixelOffset(C1790R.dimen.zs_request_attachment_corner_radius) / 2)).resize(imageDimensions.getImageWidth() / 2, imageDimensions.getImageHeight() / 2).centerCrop().into(imageView, callback);
        }

        void initImageView(ImageView imageView) {
            this.picasso.cancelRequest(imageView);
            imageView.setImageResource(C1790R.color.zs_color_transparent);
        }

        boolean isImageLoading(ImageView imageView, StateRequestAttachment stateRequestAttachment) {
            Object tag = imageView.getTag();
            return (tag instanceof StateRequestAttachment) && ((StateRequestAttachment) tag).getId() == stateRequestAttachment.getId();
        }

        void loadAttachment(ImageView imageView, StateRequestAttachment stateRequestAttachment, ImageSizingLogic.ImageDimensions imageDimensions) {
            getLoadingStrategy(stateRequestAttachment).load(imageView, imageDimensions);
        }

        void setImageViewLoading(ImageView imageView, StateRequestAttachment stateRequestAttachment) {
            imageView.setTag(stateRequestAttachment);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:zendesk/support/request/CellAttachmentLoadingUtil$ImageSizingLogic.class */
    public static class ImageSizingLogic {
        private static final double ASPECT_RATIO = 1.7777777777777777d;
        private final Map<String, ImageDimensions> cachedDimensions = new HashMap();
        private final ImageDimensions maxSize;
        private final Picasso picasso;

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes3-dex2jar.jar:zendesk/support/request/CellAttachmentLoadingUtil$ImageSizingLogic$DefaultStrategy.class */
        public static class DefaultStrategy implements DimensionStrategy {
            private DefaultStrategy() {
            }

            @Override // zendesk.support.request.CellAttachmentLoadingUtil.ImageSizingLogic.DimensionStrategy
            public void findDimensions(ZendeskCallback<ImageDimensions> zendeskCallback) {
                zendeskCallback.onSuccess(new ImageDimensions());
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes3-dex2jar.jar:zendesk/support/request/CellAttachmentLoadingUtil$ImageSizingLogic$DimensionStrategy.class */
        public interface DimensionStrategy {
            void findDimensions(ZendeskCallback<ImageDimensions> zendeskCallback);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes3-dex2jar.jar:zendesk/support/request/CellAttachmentLoadingUtil$ImageSizingLogic$ExistingDimensions.class */
        public static class ExistingDimensions implements DimensionStrategy {
            private final int height;
            private final ImageDimensions maxSize;
            private final int width;

            ExistingDimensions(int i, int i2, ImageDimensions imageDimensions) {
                this.width = i;
                this.height = i2;
                this.maxSize = imageDimensions;
            }

            @Override // zendesk.support.request.CellAttachmentLoadingUtil.ImageSizingLogic.DimensionStrategy
            public void findDimensions(ZendeskCallback<ImageDimensions> zendeskCallback) {
                zendeskCallback.onSuccess(ImageSizingLogic.determineTargetDimensions(this.width, this.height, this.maxSize.getImageWidth(), this.maxSize.getImageHeight()));
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes3-dex2jar.jar:zendesk/support/request/CellAttachmentLoadingUtil$ImageSizingLogic$ImageDimensions.class */
        public static class ImageDimensions {
            private static final int UNKNOWN_DIMENSION = -1;
            private int imageHeight;
            private int imageWidth;

            ImageDimensions() {
                this.imageWidth = -1;
                this.imageHeight = -1;
            }

            ImageDimensions(int i, int i2) {
                this.imageWidth = -1;
                this.imageHeight = -1;
                this.imageWidth = i;
                this.imageHeight = i2;
            }

            boolean areKnown() {
                return (this.imageWidth == -1 || this.imageHeight == -1) ? false : true;
            }

            int getImageHeight() {
                return this.imageHeight;
            }

            int getImageWidth() {
                return this.imageWidth;
            }

            void setDimensions(int i, int i2) {
                this.imageWidth = i;
                this.imageHeight = i2;
            }

            public String toString() {
                return "ImageDimensions{width=" + this.imageWidth + ", height=" + this.imageHeight + '}';
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes3-dex2jar.jar:zendesk/support/request/CellAttachmentLoadingUtil$ImageSizingLogic$ReadFromBitmap.class */
        public static class ReadFromBitmap implements DimensionStrategy {
            final File file;
            private final ImageDimensions maxSize;

            ReadFromBitmap(File file, ImageDimensions imageDimensions) {
                this.maxSize = imageDimensions;
                this.file = file;
            }

            private ImageDimensions loadImageDimensions(@NonNull File file) {
                ImageDimensions imageDimensions = new ImageDimensions();
                BitmapFactory.Options options = new BitmapFactory.Options();
                options.inJustDecodeBounds = true;
                BitmapFactory.decodeFile(file.getAbsolutePath(), options);
                imageDimensions.setDimensions(options.outWidth, options.outHeight);
                return imageDimensions;
            }

            @Override // zendesk.support.request.CellAttachmentLoadingUtil.ImageSizingLogic.DimensionStrategy
            public void findDimensions(ZendeskCallback<ImageDimensions> zendeskCallback) {
                ImageDimensions loadImageDimensions = loadImageDimensions(this.file);
                zendeskCallback.onSuccess(ImageSizingLogic.determineTargetDimensions(loadImageDimensions.getImageWidth(), loadImageDimensions.getImageHeight(), this.maxSize.getImageWidth(), this.maxSize.getImageHeight()));
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes3-dex2jar.jar:zendesk/support/request/CellAttachmentLoadingUtil$ImageSizingLogic$ReadFromPicasso.class */
        public static class ReadFromPicasso implements DimensionStrategy {
            private static final List<Target> TARGET_REFERENCE_TRAP = new ArrayList();
            private final ImageDimensions maxSize;
            private final RequestCreator requestCreator;

            private ReadFromPicasso(RequestCreator requestCreator, ImageDimensions imageDimensions) {
                this.requestCreator = requestCreator;
                this.maxSize = imageDimensions;
            }

            @Override // zendesk.support.request.CellAttachmentLoadingUtil.ImageSizingLogic.DimensionStrategy
            public void findDimensions(final ZendeskCallback<ImageDimensions> zendeskCallback) {
                Target target = new Target() { // from class: zendesk.support.request.CellAttachmentLoadingUtil.ImageSizingLogic.ReadFromPicasso.1
                    @Override // com.squareup.picasso.Target
                    public void onBitmapFailed(Drawable drawable) {
                        Logger.m298d("RequestActivity", "Unable to load image.", new Object[0]);
                        zendeskCallback.onSuccess(new ImageDimensions());
                        ReadFromPicasso.TARGET_REFERENCE_TRAP.remove(this);
                    }

                    @Override // com.squareup.picasso.Target
                    public void onBitmapLoaded(Bitmap bitmap, Picasso.LoadedFrom loadedFrom) {
                        zendeskCallback.onSuccess(ImageSizingLogic.determineTargetDimensions(bitmap.getWidth(), bitmap.getHeight(), ReadFromPicasso.this.maxSize.getImageWidth(), ReadFromPicasso.this.maxSize.getImageHeight()));
                        ReadFromPicasso.TARGET_REFERENCE_TRAP.remove(this);
                    }

                    @Override // com.squareup.picasso.Target
                    public void onPrepareLoad(Drawable drawable) {
                    }
                };
                TARGET_REFERENCE_TRAP.add(target);
                this.requestCreator.into(target);
            }
        }

        ImageSizingLogic(Picasso picasso, Context context) {
            this.picasso = picasso;
            this.maxSize = getMaxSize(context);
        }

        private int calculateMaxWidth(Context context) {
            Resources resources = context.getResources();
            return (resources.getDisplayMetrics().widthPixels - resources.getDimensionPixelSize(C1790R.dimen.zs_request_message_composer_expanded_side_margin)) - resources.getDimensionPixelSize(C1790R.dimen.zs_request_message_margin_side);
        }

        static ImageDimensions determineTargetDimensions(int i, int i2, int i3, int i4) {
            ImageDimensions imageDimensions = new ImageDimensions();
            int i5 = (int) (i3 / ((i * 1.0d) / i2));
            if (i > i2) {
                if (i > i3) {
                    i = i3;
                    i2 = i5;
                }
            } else if (i2 > i5) {
                i = Math.min(i3, i);
                i2 = i5;
            }
            imageDimensions.setDimensions(i, Math.max(Math.min(i4, i2), 0));
            return imageDimensions;
        }

        private DimensionStrategy getDimensionStrategy(StateRequestAttachment stateRequestAttachment, ImageDimensions imageDimensions) {
            if (stateRequestAttachment.getHeight() > 0 && stateRequestAttachment.getWidth() > 0) {
                return new ExistingDimensions(stateRequestAttachment.getWidth(), stateRequestAttachment.getHeight(), imageDimensions);
            }
            if (StringUtils.hasLength(stateRequestAttachment.getLocalUri()) && this.cachedDimensions.containsKey(stateRequestAttachment.getLocalUri())) {
                ImageDimensions imageDimensions2 = this.cachedDimensions.get(stateRequestAttachment.getLocalUri());
                return new ExistingDimensions(imageDimensions2.getImageWidth(), imageDimensions2.getImageHeight(), imageDimensions);
            } else if (stateRequestAttachment.getLocalFile() != null && stateRequestAttachment.getLocalFile().exists() && stateRequestAttachment.getLocalFile().length() > 0) {
                return new ReadFromBitmap(stateRequestAttachment.getLocalFile(), imageDimensions);
            } else {
                if (StringUtils.hasLength(stateRequestAttachment.getLocalUri()) && Uri.parse(stateRequestAttachment.getLocalUri()) != null) {
                    return new ReadFromPicasso(this.picasso.load(Uri.parse(stateRequestAttachment.getLocalUri())), imageDimensions);
                }
                if (StringUtils.hasLength(stateRequestAttachment.getUrl())) {
                    return new ReadFromPicasso(this.picasso.load(stateRequestAttachment.getUrl()), imageDimensions);
                }
                Logger.m298d("RequestActivity", "Can't load dimensions. Id: %s", Long.valueOf(stateRequestAttachment.getId()));
                return new DefaultStrategy();
            }
        }

        private ImageDimensions getMaxSize(Context context) {
            int calculateMaxWidth = calculateMaxWidth(context);
            return new ImageDimensions(calculateMaxWidth, (int) (calculateMaxWidth / ASPECT_RATIO));
        }

        ImageDimensions getMaxSize() {
            return this.maxSize;
        }

        void loadDimensionsForAttachment(final StateRequestAttachment stateRequestAttachment, final ZendeskCallback<ImageDimensions> zendeskCallback) {
            getDimensionStrategy(stateRequestAttachment, this.maxSize).findDimensions(new ZendeskCallback<ImageDimensions>() { // from class: zendesk.support.request.CellAttachmentLoadingUtil.ImageSizingLogic.1
                @Override // com.zendesk.service.ZendeskCallback
                public void onError(ErrorResponse errorResponse) {
                }

                public void onSuccess(ImageDimensions imageDimensions) {
                    if (StringUtils.hasLength(stateRequestAttachment.getLocalUri()) && imageDimensions.areKnown()) {
                        ImageSizingLogic.this.cachedDimensions.put(stateRequestAttachment.getLocalUri(), imageDimensions);
                    }
                    zendeskCallback.onSuccess(imageDimensions);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public CellAttachmentLoadingUtil(Picasso picasso, Context context) {
        this.imageSizingLogic = new ImageSizingLogic(picasso, context);
        this.imageLoadingLogic = new ImageLoadingLogic(picasso);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void adjustImageViewDimensions(ImageView imageView, ImageSizingLogic.ImageDimensions imageDimensions) {
        ViewGroup.LayoutParams layoutParams = imageView.getLayoutParams();
        layoutParams.width = imageDimensions.getImageWidth();
        layoutParams.height = imageDimensions.getImageHeight();
        imageView.setLayoutParams(layoutParams);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void bindImage(final ImageView imageView, final StateRequestAttachment stateRequestAttachment) {
        if (!this.imageLoadingLogic.isImageLoading(imageView, stateRequestAttachment)) {
            this.imageLoadingLogic.setImageViewLoading(imageView, stateRequestAttachment);
            adjustImageViewDimensions(imageView, this.imageSizingLogic.getMaxSize());
            this.imageLoadingLogic.initImageView(imageView);
            this.imageSizingLogic.loadDimensionsForAttachment(stateRequestAttachment, new ZendeskCallback<ImageSizingLogic.ImageDimensions>() { // from class: zendesk.support.request.CellAttachmentLoadingUtil.1
                @Override // com.zendesk.service.ZendeskCallback
                public void onError(ErrorResponse errorResponse) {
                }

                public void onSuccess(ImageSizingLogic.ImageDimensions imageDimensions) {
                    if (imageDimensions.areKnown()) {
                        CellAttachmentLoadingUtil.this.adjustImageViewDimensions(imageView, imageDimensions);
                        CellAttachmentLoadingUtil.this.imageLoadingLogic.loadAttachment(imageView, stateRequestAttachment, imageDimensions);
                        return;
                    }
                    Logger.m298d("RequestActivity", "Unable retrieve image size. Id: %s", Long.valueOf(stateRequestAttachment.getId()));
                }
            });
        }
    }
}
