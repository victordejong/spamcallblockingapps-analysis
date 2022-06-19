package androidx.media2.common;

import android.graphics.Bitmap;
import android.os.Build;
import android.os.Bundle;
import android.support.p008v4.media.MediaMetadataCompat;
import android.util.Log;
import androidx.p023b.C0428a;
import androidx.versionedparcelable.AbstractC2922c;
import androidx.versionedparcelable.C2920a;
import androidx.versionedparcelable.CustomVersionedParcelable;
import androidx.versionedparcelable.ParcelImpl;
import java.util.ArrayList;
import java.util.Objects;
/* loaded from: classes-dex2jar.jar:androidx/media2/common/MediaMetadata.class */
public final class MediaMetadata extends CustomVersionedParcelable {

    /* renamed from: a */
    public static final C0428a<String, Integer> f5037a;

    /* renamed from: b */
    public Bundle f5038b;

    /* renamed from: c */
    Bundle f5039c;

    /* renamed from: d */
    ParcelImplListSlice f5040d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/media2/common/MediaMetadata$BitmapEntry.class */
    public static final class BitmapEntry implements AbstractC2922c {

        /* renamed from: a */
        String f5041a;

        /* renamed from: b */
        Bitmap f5042b;

        public BitmapEntry() {
        }

        BitmapEntry(String str, Bitmap bitmap) {
            this.f5041a = str;
            this.f5042b = bitmap;
            int allocationByteCount = Build.VERSION.SDK_INT >= 19 ? bitmap.getAllocationByteCount() : bitmap.getByteCount();
            if (allocationByteCount > 262144) {
                int width = bitmap.getWidth();
                int height = bitmap.getHeight();
                double sqrt = Math.sqrt(262144.0d / allocationByteCount);
                int i = (int) (width * sqrt);
                int i2 = (int) (height * sqrt);
                StringBuilder sb = new StringBuilder("Scaling large bitmap of ");
                sb.append(width);
                sb.append("x");
                sb.append(height);
                sb.append(" into ");
                sb.append(i);
                sb.append("x");
                sb.append(i2);
                this.f5042b = Bitmap.createScaledBitmap(bitmap, i, i2, true);
            }
        }
    }

    /* renamed from: androidx.media2.common.MediaMetadata$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/common/MediaMetadata$a.class */
    public static final class C1348a {

        /* renamed from: a */
        public final Bundle f5043a;

        public C1348a() {
            this.f5043a = new Bundle();
        }

        C1348a(Bundle bundle) {
            this.f5043a = new Bundle(bundle);
        }

        public C1348a(MediaMetadata mediaMetadata) {
            this.f5043a = new Bundle(mediaMetadata.f5038b);
        }

        /* renamed from: a */
        public final C1348a m43190a(String str, long j) {
            Objects.requireNonNull(str, "key shouldn't be null");
            if (!MediaMetadata.f5037a.containsKey(str) || MediaMetadata.f5037a.get(str).intValue() == 0) {
                this.f5043a.putLong(str, j);
                return this;
            }
            throw new IllegalArgumentException("The " + str + " key cannot be used to put a long");
        }

        /* renamed from: a */
        public final C1348a m43189a(String str, Bitmap bitmap) {
            Objects.requireNonNull(str, "key shouldn't be null");
            if (!MediaMetadata.f5037a.containsKey(str) || MediaMetadata.f5037a.get(str).intValue() == 2) {
                this.f5043a.putParcelable(str, bitmap);
                return this;
            }
            throw new IllegalArgumentException("The " + str + " key cannot be used to put a Bitmap");
        }

        /* renamed from: a */
        public final C1348a m43188a(String str, CharSequence charSequence) {
            Objects.requireNonNull(str, "key shouldn't be null");
            if (!MediaMetadata.f5037a.containsKey(str) || MediaMetadata.f5037a.get(str).intValue() == 1) {
                this.f5043a.putCharSequence(str, charSequence);
                return this;
            }
            throw new IllegalArgumentException("The " + str + " key cannot be used to put a CharSequence");
        }

        /* renamed from: a */
        public final C1348a m43187a(String str, String str2) {
            if (!MediaMetadata.f5037a.containsKey(str) || MediaMetadata.f5037a.get(str).intValue() == 1) {
                this.f5043a.putCharSequence(str, str2);
                return this;
            }
            throw new IllegalArgumentException("The " + str + " key cannot be used to put a String");
        }

        /* renamed from: a */
        public final MediaMetadata m43191a() {
            return new MediaMetadata(this.f5043a);
        }
    }

    static {
        C0428a<String, Integer> c0428a = new C0428a<>();
        f5037a = c0428a;
        c0428a.put(MediaMetadataCompat.METADATA_KEY_TITLE, 1);
        c0428a.put(MediaMetadataCompat.METADATA_KEY_ARTIST, 1);
        c0428a.put(MediaMetadataCompat.METADATA_KEY_DURATION, 0);
        c0428a.put(MediaMetadataCompat.METADATA_KEY_ALBUM, 1);
        c0428a.put(MediaMetadataCompat.METADATA_KEY_AUTHOR, 1);
        c0428a.put(MediaMetadataCompat.METADATA_KEY_WRITER, 1);
        c0428a.put(MediaMetadataCompat.METADATA_KEY_COMPOSER, 1);
        c0428a.put(MediaMetadataCompat.METADATA_KEY_COMPILATION, 1);
        c0428a.put(MediaMetadataCompat.METADATA_KEY_DATE, 1);
        c0428a.put(MediaMetadataCompat.METADATA_KEY_YEAR, 0);
        c0428a.put(MediaMetadataCompat.METADATA_KEY_GENRE, 1);
        c0428a.put(MediaMetadataCompat.METADATA_KEY_TRACK_NUMBER, 0);
        c0428a.put(MediaMetadataCompat.METADATA_KEY_NUM_TRACKS, 0);
        c0428a.put(MediaMetadataCompat.METADATA_KEY_DISC_NUMBER, 0);
        c0428a.put(MediaMetadataCompat.METADATA_KEY_ALBUM_ARTIST, 1);
        c0428a.put(MediaMetadataCompat.METADATA_KEY_ART, 2);
        c0428a.put(MediaMetadataCompat.METADATA_KEY_ART_URI, 1);
        c0428a.put(MediaMetadataCompat.METADATA_KEY_ALBUM_ART, 2);
        c0428a.put(MediaMetadataCompat.METADATA_KEY_ALBUM_ART_URI, 1);
        c0428a.put(MediaMetadataCompat.METADATA_KEY_USER_RATING, 3);
        c0428a.put(MediaMetadataCompat.METADATA_KEY_RATING, 3);
        c0428a.put(MediaMetadataCompat.METADATA_KEY_DISPLAY_TITLE, 1);
        c0428a.put(MediaMetadataCompat.METADATA_KEY_DISPLAY_SUBTITLE, 1);
        c0428a.put(MediaMetadataCompat.METADATA_KEY_DISPLAY_DESCRIPTION, 1);
        c0428a.put(MediaMetadataCompat.METADATA_KEY_DISPLAY_ICON, 2);
        c0428a.put(MediaMetadataCompat.METADATA_KEY_DISPLAY_ICON_URI, 1);
        c0428a.put(MediaMetadataCompat.METADATA_KEY_MEDIA_ID, 1);
        c0428a.put(MediaMetadataCompat.METADATA_KEY_MEDIA_URI, 1);
        c0428a.put("androidx.media2.metadata.RADIO_FREQUENCY", 4);
        c0428a.put("androidx.media2.metadata.RADIO_PROGRAM_NAME", 1);
        c0428a.put("androidx.media2.metadata.BROWSABLE", 0);
        c0428a.put("androidx.media2.metadata.PLAYABLE", 0);
        c0428a.put("androidx.media2.metadata.ADVERTISEMENT", 0);
        c0428a.put("androidx.media2.metadata.DOWNLOAD_STATUS", 0);
        c0428a.put("androidx.media2.metadata.EXTRAS", 5);
    }

    public MediaMetadata() {
    }

    MediaMetadata(Bundle bundle) {
        Bundle bundle2 = new Bundle(bundle);
        this.f5038b = bundle2;
        bundle2.setClassLoader(MediaMetadata.class.getClassLoader());
    }

    /* renamed from: a */
    public final Bundle m43198a() {
        try {
            return this.f5038b.getBundle("androidx.media2.metadata.EXTRAS");
        } catch (Exception e) {
            Log.w("MediaMetadata", "Failed to retrieve an extra");
            return null;
        }
    }

    @Override // androidx.versionedparcelable.CustomVersionedParcelable
    /* renamed from: a */
    public final void mo39667a(boolean z) {
        synchronized (this.f5038b) {
            if (this.f5039c == null) {
                this.f5039c = new Bundle(this.f5038b);
                ArrayList arrayList = new ArrayList();
                for (String str : this.f5038b.keySet()) {
                    Object obj = this.f5038b.get(str);
                    if (obj instanceof Bitmap) {
                        arrayList.add(MediaParcelUtils.m43186a(new BitmapEntry(str, (Bitmap) obj)));
                        this.f5039c.remove(str);
                    }
                }
                this.f5040d = new ParcelImplListSlice(arrayList);
            }
        }
    }

    /* renamed from: a */
    public final boolean m43197a(String str) {
        return this.f5038b.containsKey(str);
    }

    /* renamed from: b */
    public final CharSequence m43196b(String str) {
        return this.f5038b.getCharSequence(str);
    }

    /* renamed from: c */
    public final String m43195c(String str) {
        Objects.requireNonNull(str, "key shouldn't be null");
        CharSequence charSequence = this.f5038b.getCharSequence(str);
        if (charSequence != null) {
            return charSequence.toString();
        }
        return null;
    }

    /* renamed from: d */
    public final long m43194d(String str) {
        return this.f5038b.getLong(str, 0L);
    }

    /* renamed from: e */
    public final Rating m43193e(String str) {
        Rating rating;
        Objects.requireNonNull(str, "key shouldn't be null");
        try {
            rating = (Rating) C2920a.m39630a(this.f5038b, str);
        } catch (Exception e) {
            Log.w("MediaMetadata", "Failed to retrieve a key as Rating.", e);
            rating = null;
        }
        return rating;
    }

    @Override // androidx.versionedparcelable.CustomVersionedParcelable
    /* renamed from: e */
    public final void mo39666e() {
        Bundle bundle = this.f5039c;
        if (bundle == null) {
            bundle = new Bundle();
        }
        this.f5038b = bundle;
        ParcelImplListSlice parcelImplListSlice = this.f5040d;
        if (parcelImplListSlice != null) {
            for (ParcelImpl parcelImpl : parcelImplListSlice.getList()) {
                BitmapEntry bitmapEntry = (BitmapEntry) C2920a.m39628a(parcelImpl);
                this.f5038b.putParcelable(bitmapEntry.f5041a, bitmapEntry.f5042b);
            }
        }
    }

    /* renamed from: f */
    public final Bitmap m43192f(String str) {
        Bitmap bitmap;
        try {
            bitmap = (Bitmap) this.f5038b.getParcelable(str);
        } catch (Exception e) {
            Log.w("MediaMetadata", "Failed to retrieve a key as Bitmap.", e);
            bitmap = null;
        }
        return bitmap;
    }

    public final String toString() {
        return this.f5038b.toString();
    }
}
