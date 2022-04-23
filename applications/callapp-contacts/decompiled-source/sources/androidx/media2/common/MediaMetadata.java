package androidx.media2.common;

import android.graphics.Bitmap;
import android.os.Build;
import android.os.Bundle;
import android.support.v4.media.MediaMetadataCompat;
import android.util.Log;
import androidx.versionedparcelable.CustomVersionedParcelable;
import androidx.versionedparcelable.ParcelImpl;
import androidx.versionedparcelable.c;
import java.util.ArrayList;
import java.util.Objects;
/* loaded from: classes-dex2jar.jar:androidx/media2/common/MediaMetadata.class */
public final class MediaMetadata extends CustomVersionedParcelable {

    /* renamed from: a  reason: collision with root package name */
    public static final androidx.b.a<String, Integer> f2743a;

    /* renamed from: b  reason: collision with root package name */
    public Bundle f2744b;

    /* renamed from: c  reason: collision with root package name */
    Bundle f2745c;

    /* renamed from: d  reason: collision with root package name */
    ParcelImplListSlice f2746d;

    /* loaded from: classes-dex2jar.jar:androidx/media2/common/MediaMetadata$BitmapEntry.class */
    static final class BitmapEntry implements c {

        /* renamed from: a  reason: collision with root package name */
        String f2747a;

        /* renamed from: b  reason: collision with root package name */
        Bitmap f2748b;

        /* JADX INFO: Access modifiers changed from: package-private */
        public BitmapEntry() {
        }

        BitmapEntry(String str, Bitmap bitmap) {
            this.f2747a = str;
            this.f2748b = bitmap;
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
                this.f2748b = Bitmap.createScaledBitmap(bitmap, i, i2, true);
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/common/MediaMetadata$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final Bundle f2749a;

        public a() {
            this.f2749a = new Bundle();
        }

        a(Bundle bundle) {
            this.f2749a = new Bundle(bundle);
        }

        public a(MediaMetadata mediaMetadata) {
            this.f2749a = new Bundle(mediaMetadata.f2744b);
        }

        public final a a(String str, long j) {
            Objects.requireNonNull(str, "key shouldn't be null");
            if (!MediaMetadata.f2743a.containsKey(str) || MediaMetadata.f2743a.get(str).intValue() == 0) {
                this.f2749a.putLong(str, j);
                return this;
            }
            throw new IllegalArgumentException("The " + str + " key cannot be used to put a long");
        }

        public final a a(String str, Bitmap bitmap) {
            Objects.requireNonNull(str, "key shouldn't be null");
            if (!MediaMetadata.f2743a.containsKey(str) || MediaMetadata.f2743a.get(str).intValue() == 2) {
                this.f2749a.putParcelable(str, bitmap);
                return this;
            }
            throw new IllegalArgumentException("The " + str + " key cannot be used to put a Bitmap");
        }

        public final a a(String str, CharSequence charSequence) {
            Objects.requireNonNull(str, "key shouldn't be null");
            if (!MediaMetadata.f2743a.containsKey(str) || MediaMetadata.f2743a.get(str).intValue() == 1) {
                this.f2749a.putCharSequence(str, charSequence);
                return this;
            }
            throw new IllegalArgumentException("The " + str + " key cannot be used to put a CharSequence");
        }

        public final a a(String str, String str2) {
            if (!MediaMetadata.f2743a.containsKey(str) || MediaMetadata.f2743a.get(str).intValue() == 1) {
                this.f2749a.putCharSequence(str, str2);
                return this;
            }
            throw new IllegalArgumentException("The " + str + " key cannot be used to put a String");
        }

        public final MediaMetadata a() {
            return new MediaMetadata(this.f2749a);
        }
    }

    static {
        androidx.b.a<String, Integer> aVar = new androidx.b.a<>();
        f2743a = aVar;
        aVar.put(MediaMetadataCompat.METADATA_KEY_TITLE, 1);
        aVar.put(MediaMetadataCompat.METADATA_KEY_ARTIST, 1);
        aVar.put(MediaMetadataCompat.METADATA_KEY_DURATION, 0);
        aVar.put(MediaMetadataCompat.METADATA_KEY_ALBUM, 1);
        aVar.put(MediaMetadataCompat.METADATA_KEY_AUTHOR, 1);
        aVar.put(MediaMetadataCompat.METADATA_KEY_WRITER, 1);
        aVar.put(MediaMetadataCompat.METADATA_KEY_COMPOSER, 1);
        aVar.put(MediaMetadataCompat.METADATA_KEY_COMPILATION, 1);
        aVar.put(MediaMetadataCompat.METADATA_KEY_DATE, 1);
        aVar.put(MediaMetadataCompat.METADATA_KEY_YEAR, 0);
        aVar.put(MediaMetadataCompat.METADATA_KEY_GENRE, 1);
        aVar.put(MediaMetadataCompat.METADATA_KEY_TRACK_NUMBER, 0);
        aVar.put(MediaMetadataCompat.METADATA_KEY_NUM_TRACKS, 0);
        aVar.put(MediaMetadataCompat.METADATA_KEY_DISC_NUMBER, 0);
        aVar.put(MediaMetadataCompat.METADATA_KEY_ALBUM_ARTIST, 1);
        aVar.put(MediaMetadataCompat.METADATA_KEY_ART, 2);
        aVar.put(MediaMetadataCompat.METADATA_KEY_ART_URI, 1);
        aVar.put(MediaMetadataCompat.METADATA_KEY_ALBUM_ART, 2);
        aVar.put(MediaMetadataCompat.METADATA_KEY_ALBUM_ART_URI, 1);
        aVar.put(MediaMetadataCompat.METADATA_KEY_USER_RATING, 3);
        aVar.put(MediaMetadataCompat.METADATA_KEY_RATING, 3);
        aVar.put(MediaMetadataCompat.METADATA_KEY_DISPLAY_TITLE, 1);
        aVar.put(MediaMetadataCompat.METADATA_KEY_DISPLAY_SUBTITLE, 1);
        aVar.put(MediaMetadataCompat.METADATA_KEY_DISPLAY_DESCRIPTION, 1);
        aVar.put(MediaMetadataCompat.METADATA_KEY_DISPLAY_ICON, 2);
        aVar.put(MediaMetadataCompat.METADATA_KEY_DISPLAY_ICON_URI, 1);
        aVar.put(MediaMetadataCompat.METADATA_KEY_MEDIA_ID, 1);
        aVar.put(MediaMetadataCompat.METADATA_KEY_MEDIA_URI, 1);
        aVar.put("androidx.media2.metadata.RADIO_FREQUENCY", 4);
        aVar.put("androidx.media2.metadata.RADIO_PROGRAM_NAME", 1);
        aVar.put("androidx.media2.metadata.BROWSABLE", 0);
        aVar.put("androidx.media2.metadata.PLAYABLE", 0);
        aVar.put("androidx.media2.metadata.ADVERTISEMENT", 0);
        aVar.put("androidx.media2.metadata.DOWNLOAD_STATUS", 0);
        aVar.put("androidx.media2.metadata.EXTRAS", 5);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public MediaMetadata() {
    }

    MediaMetadata(Bundle bundle) {
        Bundle bundle2 = new Bundle(bundle);
        this.f2744b = bundle2;
        bundle2.setClassLoader(MediaMetadata.class.getClassLoader());
    }

    public final Bundle a() {
        try {
            return this.f2744b.getBundle("androidx.media2.metadata.EXTRAS");
        } catch (Exception e) {
            Log.w("MediaMetadata", "Failed to retrieve an extra");
            return null;
        }
    }

    @Override // androidx.versionedparcelable.CustomVersionedParcelable
    public final void a(boolean z) {
        synchronized (this.f2744b) {
            if (this.f2745c == null) {
                this.f2745c = new Bundle(this.f2744b);
                ArrayList arrayList = new ArrayList();
                for (String str : this.f2744b.keySet()) {
                    Object obj = this.f2744b.get(str);
                    if (obj instanceof Bitmap) {
                        arrayList.add(MediaParcelUtils.a(new BitmapEntry(str, (Bitmap) obj)));
                        this.f2745c.remove(str);
                    }
                }
                this.f2746d = new ParcelImplListSlice(arrayList);
            }
        }
    }

    public final boolean a(String str) {
        return this.f2744b.containsKey(str);
    }

    public final CharSequence b(String str) {
        return this.f2744b.getCharSequence(str);
    }

    public final String c(String str) {
        Objects.requireNonNull(str, "key shouldn't be null");
        CharSequence charSequence = this.f2744b.getCharSequence(str);
        if (charSequence != null) {
            return charSequence.toString();
        }
        return null;
    }

    public final long d(String str) {
        return this.f2744b.getLong(str, 0L);
    }

    public final Rating e(String str) {
        Objects.requireNonNull(str, "key shouldn't be null");
        Rating rating = null;
        try {
            rating = (Rating) androidx.versionedparcelable.a.a(this.f2744b, str);
        } catch (Exception e) {
            Log.w("MediaMetadata", "Failed to retrieve a key as Rating.", e);
        }
        return rating;
    }

    @Override // androidx.versionedparcelable.CustomVersionedParcelable
    public final void e() {
        Bundle bundle = this.f2745c;
        if (bundle == null) {
            bundle = new Bundle();
        }
        this.f2744b = bundle;
        ParcelImplListSlice parcelImplListSlice = this.f2746d;
        if (parcelImplListSlice != null) {
            for (ParcelImpl parcelImpl : parcelImplListSlice.getList()) {
                BitmapEntry bitmapEntry = (BitmapEntry) androidx.versionedparcelable.a.a(parcelImpl);
                this.f2744b.putParcelable(bitmapEntry.f2747a, bitmapEntry.f2748b);
            }
        }
    }

    public final Bitmap f(String str) {
        Bitmap bitmap;
        try {
            bitmap = (Bitmap) this.f2744b.getParcelable(str);
        } catch (Exception e) {
            Log.w("MediaMetadata", "Failed to retrieve a key as Bitmap.", e);
            bitmap = null;
        }
        return bitmap;
    }

    public final String toString() {
        return this.f2744b.toString();
    }
}
