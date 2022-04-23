package androidx.media2.session;

import android.os.SystemClock;
import androidx.media2.common.MediaItem;
import androidx.media2.common.ParcelImplListSlice;
import androidx.media2.session.MediaLibraryService;
import androidx.versionedparcelable.CustomVersionedParcelable;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/LibraryResult.class */
public class LibraryResult extends CustomVersionedParcelable implements t {

    /* renamed from: a  reason: collision with root package name */
    int f4498a;

    /* renamed from: b  reason: collision with root package name */
    long f4499b;

    /* renamed from: c  reason: collision with root package name */
    MediaItem f4500c;

    /* renamed from: d  reason: collision with root package name */
    MediaItem f4501d;
    MediaLibraryService.LibraryParams e;
    List<MediaItem> f;
    ParcelImplListSlice g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public LibraryResult() {
    }

    public LibraryResult(int i) {
        this(i, null, null, null);
    }

    public LibraryResult(int i, MediaItem mediaItem, MediaLibraryService.LibraryParams libraryParams) {
        this(i, mediaItem, null, libraryParams);
    }

    private LibraryResult(int i, MediaItem mediaItem, List<MediaItem> list, MediaLibraryService.LibraryParams libraryParams) {
        this.f4498a = i;
        this.f4499b = SystemClock.elapsedRealtime();
        this.f4500c = mediaItem;
        this.f = list;
        this.e = libraryParams;
    }

    public LibraryResult(int i, List<MediaItem> list, MediaLibraryService.LibraryParams libraryParams) {
        this(i, null, list, libraryParams);
    }

    @Override // androidx.media2.common.a
    public final int a() {
        return this.f4498a;
    }

    @Override // androidx.versionedparcelable.CustomVersionedParcelable
    public final void a(boolean z) {
        MediaItem mediaItem = this.f4500c;
        if (mediaItem != null) {
            synchronized (mediaItem) {
                if (this.f4501d == null) {
                    this.f4501d = s.a(this.f4500c);
                }
            }
        }
        List<MediaItem> list = this.f;
        if (list != null) {
            synchronized (list) {
                if (this.g == null) {
                    this.g = s.f(this.f);
                }
            }
        }
    }

    @Override // androidx.versionedparcelable.CustomVersionedParcelable
    public final void e() {
        this.f4500c = this.f4501d;
        this.f = s.a(this.g);
    }
}
