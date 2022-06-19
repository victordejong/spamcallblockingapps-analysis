package androidx.media2.session;

import android.os.SystemClock;
import androidx.media2.common.MediaItem;
import androidx.media2.common.ParcelImplListSlice;
import androidx.media2.session.MediaLibraryService;
import androidx.versionedparcelable.CustomVersionedParcelable;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/LibraryResult.class */
public class LibraryResult extends CustomVersionedParcelable implements AbstractC2483t {

    /* renamed from: a */
    int f8696a;

    /* renamed from: b */
    long f8697b;

    /* renamed from: c */
    MediaItem f8698c;

    /* renamed from: d */
    MediaItem f8699d;

    /* renamed from: e */
    MediaLibraryService.LibraryParams f8700e;

    /* renamed from: f */
    List<MediaItem> f8701f;

    /* renamed from: g */
    ParcelImplListSlice f8702g;

    public LibraryResult() {
    }

    public LibraryResult(int i) {
        this(i, null, null, null);
    }

    public LibraryResult(int i, MediaItem mediaItem, MediaLibraryService.LibraryParams libraryParams) {
        this(i, mediaItem, null, libraryParams);
    }

    private LibraryResult(int i, MediaItem mediaItem, List<MediaItem> list, MediaLibraryService.LibraryParams libraryParams) {
        this.f8696a = i;
        this.f8697b = SystemClock.elapsedRealtime();
        this.f8698c = mediaItem;
        this.f8701f = list;
        this.f8700e = libraryParams;
    }

    public LibraryResult(int i, List<MediaItem> list, MediaLibraryService.LibraryParams libraryParams) {
        this(i, null, list, libraryParams);
    }

    @Override // androidx.media2.common.AbstractC1354a
    /* renamed from: a */
    public final int mo41118a() {
        return this.f8696a;
    }

    @Override // androidx.versionedparcelable.CustomVersionedParcelable
    /* renamed from: a */
    public final void mo39667a(boolean z) {
        MediaItem mediaItem = this.f8698c;
        if (mediaItem != null) {
            synchronized (mediaItem) {
                if (this.f8699d == null) {
                    this.f8699d = C2481s.m40798a(this.f8698c);
                }
            }
        }
        List<MediaItem> list = this.f8701f;
        if (list != null) {
            synchronized (list) {
                if (this.f8702g == null) {
                    this.f8702g = C2481s.m40783f(this.f8701f);
                }
            }
        }
    }

    @Override // androidx.versionedparcelable.CustomVersionedParcelable
    /* renamed from: e */
    public final void mo39666e() {
        this.f8698c = this.f8699d;
        this.f8701f = C2481s.m40796a(this.f8702g);
    }
}
