package pl.droidsonroids.gif;

import android.content.ContentResolver;
import android.content.res.AssetFileDescriptor;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import java.io.File;
import java.io.FileDescriptor;
import java.io.InputStream;
import java.io.Serializable;
import java.nio.ByteBuffer;
import java.util.Locale;
/* loaded from: classes2-dex2jar.jar:pl/droidsonroids/gif/GifAnimationMetaData.class */
public class GifAnimationMetaData implements Serializable, Parcelable {
    public static final Parcelable.Creator<GifAnimationMetaData> CREATOR = new C9684a();
    private static final long serialVersionUID = 5692363926580237325L;
    private final int mDuration;
    private final int mHeight;
    private final int mImageCount;
    private final int mLoopCount;
    private final long mMetadataBytesCount;
    private final long mPixelsBytesCount;
    private final int mWidth;

    /* renamed from: pl.droidsonroids.gif.GifAnimationMetaData$a */
    /* loaded from: classes2-dex2jar.jar:pl/droidsonroids/gif/GifAnimationMetaData$a.class */
    static final class C9684a implements Parcelable.Creator<GifAnimationMetaData> {
        C9684a() {
        }

        /* renamed from: a */
        public GifAnimationMetaData createFromParcel(Parcel parcel) {
            return new GifAnimationMetaData(parcel, (C9684a) null);
        }

        /* renamed from: b */
        public GifAnimationMetaData[] newArray(int i) {
            return new GifAnimationMetaData[i];
        }
    }

    public GifAnimationMetaData(ContentResolver contentResolver, Uri uri) {
        this(GifInfoHandle.m96r(contentResolver, uri));
    }

    public GifAnimationMetaData(AssetFileDescriptor assetFileDescriptor) {
        this(new GifInfoHandle(assetFileDescriptor));
    }

    public GifAnimationMetaData(AssetManager assetManager, String str) {
        this(assetManager.openFd(str));
    }

    public GifAnimationMetaData(Resources resources, int i) {
        this(resources.openRawResourceFd(i));
    }

    private GifAnimationMetaData(Parcel parcel) {
        this.mLoopCount = parcel.readInt();
        this.mDuration = parcel.readInt();
        this.mHeight = parcel.readInt();
        this.mWidth = parcel.readInt();
        this.mImageCount = parcel.readInt();
        this.mMetadataBytesCount = parcel.readLong();
        this.mPixelsBytesCount = parcel.readLong();
    }

    /* synthetic */ GifAnimationMetaData(Parcel parcel, C9684a c9684a) {
        this(parcel);
    }

    public GifAnimationMetaData(File file) {
        this(file.getPath());
    }

    public GifAnimationMetaData(FileDescriptor fileDescriptor) {
        this(new GifInfoHandle(fileDescriptor));
    }

    public GifAnimationMetaData(InputStream inputStream) {
        this(new GifInfoHandle(inputStream));
    }

    public GifAnimationMetaData(String str) {
        this(new GifInfoHandle(str));
    }

    public GifAnimationMetaData(ByteBuffer byteBuffer) {
        this(new GifInfoHandle(byteBuffer));
    }

    private GifAnimationMetaData(GifInfoHandle gifInfoHandle) {
        this.mLoopCount = gifInfoHandle.m106h();
        this.mDuration = gifInfoHandle.m108f();
        this.mWidth = gifInfoHandle.m100n();
        this.mHeight = gifInfoHandle.m107g();
        this.mImageCount = gifInfoHandle.m102l();
        this.mMetadataBytesCount = gifInfoHandle.m105i();
        this.mPixelsBytesCount = gifInfoHandle.m112b();
        gifInfoHandle.m94t();
    }

    public GifAnimationMetaData(byte[] bArr) {
        this(new GifInfoHandle(bArr));
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public long getAllocationByteCount() {
        return this.mPixelsBytesCount;
    }

    public long getDrawableAllocationByteCount(C9692c c9692c, int i) {
        if (i >= 1 && i <= 65535) {
            int i2 = i * i;
            return (this.mPixelsBytesCount / i2) + ((c9692c == null || c9692c.f40949i.isRecycled()) ? ((this.mWidth * this.mHeight) * 4) / i2 : Build.VERSION.SDK_INT >= 19 ? c9692c.f40949i.getAllocationByteCount() : c9692c.m60d());
        }
        throw new IllegalStateException("Sample size " + i + " out of range <1, \uffff>");
    }

    public int getDuration() {
        return this.mDuration;
    }

    public int getHeight() {
        return this.mHeight;
    }

    public int getLoopCount() {
        return this.mLoopCount;
    }

    public long getMetadataAllocationByteCount() {
        return this.mMetadataBytesCount;
    }

    public int getNumberOfFrames() {
        return this.mImageCount;
    }

    public int getWidth() {
        return this.mWidth;
    }

    public boolean isAnimated() {
        boolean z = true;
        if (this.mImageCount <= 1 || this.mDuration <= 0) {
            z = false;
        }
        return z;
    }

    public String toString() {
        int i = this.mLoopCount;
        String format = String.format(Locale.ENGLISH, "GIF: size: %dx%d, frames: %d, loops: %s, duration: %d", Integer.valueOf(this.mWidth), Integer.valueOf(this.mHeight), Integer.valueOf(this.mImageCount), i == 0 ? "Infinity" : Integer.toString(i), Integer.valueOf(this.mDuration));
        String str = format;
        if (isAnimated()) {
            str = "Animated " + format;
        }
        return str;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.mLoopCount);
        parcel.writeInt(this.mDuration);
        parcel.writeInt(this.mHeight);
        parcel.writeInt(this.mWidth);
        parcel.writeInt(this.mImageCount);
        parcel.writeLong(this.mMetadataBytesCount);
        parcel.writeLong(this.mPixelsBytesCount);
    }
}
