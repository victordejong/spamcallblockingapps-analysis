package androidx.media2.common;

import android.graphics.Bitmap;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import androidx.versionedparcelable.CustomVersionedParcelable;
import androidx.versionedparcelable.ParcelImpl;
import java.util.ArrayList;
import java.util.List;
import p012b.p035f.C0780a;
import p012b.p130z.AbstractC1978c;
/* loaded from: classes-dex2jar.jar:androidx/media2/common/MediaMetadata.class */
public final class MediaMetadata extends CustomVersionedParcelable {

    /* renamed from: c */
    public static final C0780a<String, Integer> f1524c;

    /* renamed from: a */
    public Bundle f1525a;

    /* renamed from: b */
    public ParcelImplListSlice f1526b;

    /* renamed from: androidx.media2.common.MediaMetadata$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/common/MediaMetadata$a.class */
    public static final class C0274a implements AbstractC1978c {

        /* renamed from: a */
        public String f1527a;

        /* renamed from: b */
        public Bitmap f1528b;

        public C0274a() {
        }

        public C0274a(String str, Bitmap bitmap) {
            this.f1527a = str;
            this.f1528b = bitmap;
            int a = m38225a(bitmap);
            if (a > 262144) {
                int width = bitmap.getWidth();
                int height = bitmap.getHeight();
                double d = a;
                Double.isNaN(d);
                double sqrt = Math.sqrt(262144.0d / d);
                double d2 = width;
                Double.isNaN(d2);
                int i = (int) (d2 * sqrt);
                double d3 = height;
                Double.isNaN(d3);
                int i2 = (int) (d3 * sqrt);
                Log.i("MediaMetadata", "Scaling large bitmap of " + width + "x" + height + " into " + i + "x" + i2);
                this.f1528b = Bitmap.createScaledBitmap(bitmap, i, i2, true);
            }
        }

        /* renamed from: a */
        public final int m38225a(Bitmap bitmap) {
            return Build.VERSION.SDK_INT >= 19 ? bitmap.getAllocationByteCount() : bitmap.getByteCount();
        }

        /* renamed from: e */
        public Bitmap m38224e() {
            return this.f1528b;
        }

        /* renamed from: f */
        public String m38223f() {
            return this.f1527a;
        }
    }

    static {
        C0780a<String, Integer> aVar = new C0780a<>();
        f1524c = aVar;
        aVar.put("android.media.metadata.TITLE", 1);
        f1524c.put("android.media.metadata.ARTIST", 1);
        f1524c.put("android.media.metadata.DURATION", 0);
        f1524c.put("android.media.metadata.ALBUM", 1);
        f1524c.put("android.media.metadata.AUTHOR", 1);
        f1524c.put("android.media.metadata.WRITER", 1);
        f1524c.put("android.media.metadata.COMPOSER", 1);
        f1524c.put("android.media.metadata.COMPILATION", 1);
        f1524c.put("android.media.metadata.DATE", 1);
        f1524c.put("android.media.metadata.YEAR", 0);
        f1524c.put("android.media.metadata.GENRE", 1);
        f1524c.put("android.media.metadata.TRACK_NUMBER", 0);
        f1524c.put("android.media.metadata.NUM_TRACKS", 0);
        f1524c.put("android.media.metadata.DISC_NUMBER", 0);
        f1524c.put("android.media.metadata.ALBUM_ARTIST", 1);
        f1524c.put("android.media.metadata.ART", 2);
        f1524c.put("android.media.metadata.ART_URI", 1);
        f1524c.put("android.media.metadata.ALBUM_ART", 2);
        f1524c.put("android.media.metadata.ALBUM_ART_URI", 1);
        f1524c.put("android.media.metadata.USER_RATING", 3);
        f1524c.put("android.media.metadata.RATING", 3);
        f1524c.put("android.media.metadata.DISPLAY_TITLE", 1);
        f1524c.put("android.media.metadata.DISPLAY_SUBTITLE", 1);
        f1524c.put("android.media.metadata.DISPLAY_DESCRIPTION", 1);
        f1524c.put("android.media.metadata.DISPLAY_ICON", 2);
        f1524c.put("android.media.metadata.DISPLAY_ICON_URI", 1);
        f1524c.put("android.media.metadata.MEDIA_ID", 1);
        f1524c.put("android.media.metadata.MEDIA_URI", 1);
        f1524c.put("androidx.media2.metadata.RADIO_FREQUENCY", 4);
        f1524c.put("androidx.media2.metadata.RADIO_PROGRAM_NAME", 1);
        f1524c.put("androidx.media2.metadata.BROWSABLE", 0);
        f1524c.put("androidx.media2.metadata.PLAYABLE", 0);
        f1524c.put("androidx.media2.metadata.ADVERTISEMENT", 0);
        f1524c.put("androidx.media2.metadata.DOWNLOAD_STATUS", 0);
        f1524c.put("androidx.media2.metadata.EXTRAS", 5);
    }

    @Override // androidx.versionedparcelable.CustomVersionedParcelable
    /* renamed from: a */
    public void mo32076a(boolean z) {
        ArrayList arrayList = new ArrayList();
        ArrayList<String> arrayList2 = new ArrayList();
        for (String str : this.f1525a.keySet()) {
            Object obj = this.f1525a.get(str);
            if (obj instanceof Bitmap) {
                arrayList.add(MediaParcelUtils.m38221a(new C0274a(str, (Bitmap) obj)));
                arrayList2.add(str);
            }
        }
        for (String str2 : arrayList2) {
            this.f1525a.remove(str2);
        }
        this.f1526b = new ParcelImplListSlice(arrayList);
    }

    /* renamed from: a */
    public boolean m38230a(String str) {
        if (str != null) {
            return this.f1525a.containsKey(str);
        }
        throw new NullPointerException("key shouldn't be null");
    }

    /* renamed from: b */
    public Bitmap m38229b(String str) {
        if (str != null) {
            Bitmap bitmap = null;
            try {
                bitmap = (Bitmap) this.f1525a.getParcelable(str);
            } catch (Exception e) {
                Log.w("MediaMetadata", "Failed to retrieve a key as Bitmap.", e);
            }
            return bitmap;
        }
        throw new NullPointerException("key shouldn't be null");
    }

    /* renamed from: c */
    public long m38228c(String str) {
        if (str != null) {
            return this.f1525a.getLong(str, 0L);
        }
        throw new NullPointerException("key shouldn't be null");
    }

    /* renamed from: d */
    public String m38227d(String str) {
        if (str != null) {
            CharSequence charSequence = this.f1525a.getCharSequence(str);
            if (charSequence != null) {
                return charSequence.toString();
            }
            return null;
        }
        throw new NullPointerException("key shouldn't be null");
    }

    /* renamed from: e */
    public CharSequence m38226e(String str) {
        if (str != null) {
            return this.f1525a.getCharSequence(str);
        }
        throw new NullPointerException("key shouldn't be null");
    }

    @Override // androidx.versionedparcelable.CustomVersionedParcelable
    /* renamed from: f */
    public void mo32075f() {
        List<ParcelImpl> a = this.f1526b.m38220a();
        for (ParcelImpl parcelImpl : a) {
            C0274a aVar = (C0274a) MediaParcelUtils.m38222a(parcelImpl);
            this.f1525a.putParcelable(aVar.m38223f(), aVar.m38224e());
        }
        a.clear();
        this.f1526b = null;
    }

    public String toString() {
        return this.f1525a.toString();
    }
}
