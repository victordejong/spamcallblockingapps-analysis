package jp.wasabeef.blurry;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import jp.wasabeef.blurry.BlurTask;
/* loaded from: classes2-dex2jar.jar:jp/wasabeef/blurry/Blurry.class */
public class Blurry {
    private static final String TAG = "Blurry";

    /* loaded from: classes2-dex2jar.jar:jp/wasabeef/blurry/Blurry$BitmapComposer.class */
    public static class BitmapComposer {
        private final boolean async;
        private final Bitmap bitmap;
        private final Context context;
        private final BlurFactor factor;

        public BitmapComposer(Context context, Bitmap bitmap, BlurFactor blurFactor, boolean z) {
            this.context = context;
            this.bitmap = bitmap;
            this.factor = blurFactor;
            this.async = z;
        }

        public void into(final ImageView imageView) {
            this.factor.width = this.bitmap.getWidth();
            this.factor.height = this.bitmap.getHeight();
            if (this.async) {
                new BlurTask(imageView.getContext(), this.bitmap, this.factor, new BlurTask.Callback() { // from class: jp.wasabeef.blurry.Blurry.BitmapComposer.1
                    @Override // jp.wasabeef.blurry.BlurTask.Callback
                    public void done(Bitmap bitmap) {
                        imageView.setImageDrawable(new BitmapDrawable(BitmapComposer.this.context.getResources(), bitmap));
                    }
                }).execute();
            } else {
                imageView.setImageDrawable(new BitmapDrawable(this.context.getResources(), Blur.m405of(imageView.getContext(), this.bitmap, this.factor)));
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:jp/wasabeef/blurry/Blurry$Composer.class */
    public static class Composer {
        private boolean animate;
        private boolean async;
        private final View blurredView;
        private final Context context;
        private int duration = 300;
        private final BlurFactor factor = new BlurFactor();

        public Composer(Context context) {
            this.context = context;
            View view = new View(context);
            this.blurredView = view;
            view.setTag(Blurry.TAG);
        }

        public void addView(ViewGroup viewGroup, Drawable drawable) {
            this.blurredView.setBackground(drawable);
            viewGroup.addView(this.blurredView);
            if (this.animate) {
                Helper.animate(this.blurredView, this.duration);
            }
        }

        public Composer animate() {
            this.animate = true;
            return this;
        }

        public Composer animate(int i) {
            this.animate = true;
            this.duration = i;
            return this;
        }

        public Composer async() {
            this.async = true;
            return this;
        }

        public ImageComposer capture(View view) {
            return new ImageComposer(this.context, view, this.factor, this.async);
        }

        public Composer color(int i) {
            this.factor.color = i;
            return this;
        }

        public BitmapComposer from(Bitmap bitmap) {
            return new BitmapComposer(this.context, bitmap, this.factor, this.async);
        }

        public void onto(final ViewGroup viewGroup) {
            this.factor.width = viewGroup.getMeasuredWidth();
            this.factor.height = viewGroup.getMeasuredHeight();
            if (this.async) {
                new BlurTask(viewGroup, this.factor, new BlurTask.Callback() { // from class: jp.wasabeef.blurry.Blurry.Composer.1
                    @Override // jp.wasabeef.blurry.BlurTask.Callback
                    public void done(Bitmap bitmap) {
                        Composer.this.addView(viewGroup, new BitmapDrawable(viewGroup.getResources(), Blur.m405of(Composer.this.context, bitmap, Composer.this.factor)));
                    }
                }).execute();
            } else {
                addView(viewGroup, new BitmapDrawable(this.context.getResources(), Blur.m404of(viewGroup, this.factor)));
            }
        }

        public Composer radius(int i) {
            this.factor.radius = i;
            return this;
        }

        public Composer sampling(int i) {
            this.factor.sampling = i;
            return this;
        }
    }

    /* loaded from: classes2-dex2jar.jar:jp/wasabeef/blurry/Blurry$ImageComposer.class */
    public static class ImageComposer {
        private final boolean async;
        private final View capture;
        private final Context context;
        private final BlurFactor factor;

        public ImageComposer(Context context, View view, BlurFactor blurFactor, boolean z) {
            this.context = context;
            this.capture = view;
            this.factor = blurFactor;
            this.async = z;
        }

        public Bitmap get() {
            if (!this.async) {
                this.factor.width = this.capture.getMeasuredWidth();
                this.factor.height = this.capture.getMeasuredHeight();
                return Blur.m404of(this.capture, this.factor);
            }
            throw new IllegalArgumentException("Use getAsync() instead of async().");
        }

        public void getAsync(BlurTask.Callback callback) {
            this.factor.width = this.capture.getMeasuredWidth();
            this.factor.height = this.capture.getMeasuredHeight();
            new BlurTask(this.capture, this.factor, callback).execute();
        }

        public void into(final ImageView imageView) {
            this.factor.width = this.capture.getMeasuredWidth();
            this.factor.height = this.capture.getMeasuredHeight();
            if (this.async) {
                new BlurTask(this.capture, this.factor, new BlurTask.Callback() { // from class: jp.wasabeef.blurry.Blurry.ImageComposer.1
                    @Override // jp.wasabeef.blurry.BlurTask.Callback
                    public void done(Bitmap bitmap) {
                        imageView.setImageDrawable(new BitmapDrawable(ImageComposer.this.context.getResources(), bitmap));
                    }
                }).execute();
            } else {
                imageView.setImageDrawable(new BitmapDrawable(this.context.getResources(), Blur.m404of(this.capture, this.factor)));
            }
        }
    }

    public static void delete(ViewGroup viewGroup) {
        View findViewWithTag = viewGroup.findViewWithTag(TAG);
        if (findViewWithTag != null) {
            viewGroup.removeView(findViewWithTag);
        }
    }

    public static Composer with(Context context) {
        return new Composer(context);
    }
}
