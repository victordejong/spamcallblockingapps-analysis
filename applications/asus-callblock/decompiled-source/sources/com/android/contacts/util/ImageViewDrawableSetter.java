package com.android.contacts.util;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.TransitionDrawable;
import android.util.Log;
import android.widget.ImageView;
import com.android.contacts.detail.AsusContactDetailCoverContainer;
import com.android.contacts.k;
import com.android.contacts.model.c;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/android/contacts/util/ImageViewDrawableSetter.class */
public class ImageViewDrawableSetter {
    private static final String TAG = "ImageViewDrawableSetter";
    private int isSimIndexOld;
    private byte[] mCompressed;
    private int mDurationInMillis = 0;
    private Drawable mPreviousDrawable;
    private ImageView mTarget;

    public ImageViewDrawableSetter() {
    }

    public ImageViewDrawableSetter(ImageView imageView) {
        this.mTarget = imageView;
    }

    private BitmapDrawable decodedBitmapDrawable(byte[] bArr) {
        return new BitmapDrawable(this.mTarget.getResources(), BitmapFactory.decodeByteArray(bArr, 0, bArr.length));
    }

    private Drawable defaultDrawable() {
        Drawable drawable;
        try {
            drawable = this.mTarget.getResources().getDrawable(k.a(false));
        } catch (Resources.NotFoundException e) {
            Log.wtf(TAG, "Cannot load default avatar resource.");
            drawable = null;
        }
        return drawable;
    }

    private Drawable defaultDrawable(int i, boolean z, boolean z2) {
        Drawable drawable = null;
        Resources resources = this.mTarget.getResources();
        Object tag = this.mTarget.getTag(2131296580);
        boolean z3 = false;
        if (tag != null) {
            z3 = false;
            if (tag.equals(AsusContactDetailCoverContainer.TAG)) {
                z3 = true;
            }
        }
        try {
            drawable = k.a(resources, i > 0 ? z2 ? i == 1 ? new k.d(null, null, 5, z) : new k.d(null, null, 6, z) : new k.d(null, null, 4, z) : !z3 ? new k.d(null, null, 1, z) : new k.d(null, null, 1, z), false);
        } catch (Resources.NotFoundException e) {
            Log.wtf(TAG, "Cannot load default avatar resource.");
        }
        return drawable;
    }

    private Bitmap previousBitmap() {
        Bitmap bitmap = null;
        if (this.mPreviousDrawable != null) {
            bitmap = null;
            if (this.mPreviousDrawable.getIntrinsicWidth() > 0) {
                bitmap = null;
                if (this.mPreviousDrawable.getIntrinsicHeight() > 0) {
                    bitmap = Bitmap.createBitmap(this.mPreviousDrawable.getIntrinsicWidth(), this.mPreviousDrawable.getIntrinsicHeight(), this.mPreviousDrawable.getOpacity() != -1 ? Bitmap.Config.ARGB_8888 : Bitmap.Config.RGB_565);
                    Canvas canvas = new Canvas(bitmap);
                    this.mPreviousDrawable.setBounds(0, 0, this.mPreviousDrawable.getIntrinsicWidth(), this.mPreviousDrawable.getIntrinsicHeight());
                    this.mPreviousDrawable.draw(canvas);
                }
            }
        }
        return bitmap;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public byte[] getCompressedImage() {
        return this.mCompressed;
    }

    public ImageView getTarget() {
        return this.mTarget;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Bitmap setCompressedImage(byte[] bArr, int i, boolean z, boolean z2) {
        Bitmap previousBitmap;
        if (this.mPreviousDrawable == null || this.mPreviousDrawable == null || !Arrays.equals(this.mCompressed, bArr) || this.isSimIndexOld != i) {
            Drawable defaultDrawable = bArr == null ? defaultDrawable(i, z, z2) : decodedBitmapDrawable(bArr);
            this.mCompressed = bArr;
            this.isSimIndexOld = i;
            if (defaultDrawable == null) {
                previousBitmap = previousBitmap();
            } else {
                if (this.mPreviousDrawable == null || this.mDurationInMillis == 0) {
                    this.mTarget.setImageDrawable(defaultDrawable);
                } else {
                    TransitionDrawable transitionDrawable = new TransitionDrawable(new Drawable[]{this.mPreviousDrawable, defaultDrawable});
                    this.mTarget.setImageDrawable(transitionDrawable);
                    transitionDrawable.startTransition(this.mDurationInMillis);
                }
                this.mPreviousDrawable = defaultDrawable;
                previousBitmap = previousBitmap();
            }
        } else {
            previousBitmap = previousBitmap();
        }
        return previousBitmap;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setTarget(ImageView imageView) {
        if (this.mTarget != imageView) {
            this.mTarget = imageView;
            this.mCompressed = null;
            this.mPreviousDrawable = null;
        }
    }

    public void setTransitionDuration(int i) {
        this.mDurationInMillis = i;
    }

    public void setupContactPhoto(c cVar, ImageView imageView, boolean z) {
        setTarget(imageView);
        setCompressedImage(cVar.y, cVar.h(), false, z);
    }
}
