package androidx.media2.session;

import android.os.Binder;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import androidx.media2.common.MediaItem;
import androidx.media2.common.MediaMetadata;
import androidx.media2.common.ParcelImplListSlice;
import androidx.media2.common.SessionPlayer;
import androidx.media2.common.SubtitleData;
import androidx.media2.common.VideoSize;
import androidx.media2.session.MediaController;
import androidx.media2.session.MediaLibraryService;
import androidx.media2.session.MediaSession;
import androidx.media2.session.b;
import androidx.media2.session.e;
import androidx.versionedparcelable.ParcelImpl;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:androidx/media2/session/j.class */
public final class j extends b.a {

    /* renamed from: a  reason: collision with root package name */
    final WeakReference<h> f4712a;

    /* renamed from: b  reason: collision with root package name */
    final v f4713b;

    /* JADX INFO: Access modifiers changed from: package-private */
    @FunctionalInterface
    /* loaded from: classes-dex2jar.jar:androidx/media2/session/j$a.class */
    public interface a {
        void a(f fVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @FunctionalInterface
    /* loaded from: classes-dex2jar.jar:androidx/media2/session/j$b.class */
    public interface b {
        void a(h hVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public j(h hVar, v vVar) {
        this.f4712a = new WeakReference<>(hVar);
        this.f4713b = vVar;
    }

    private void a(a aVar) {
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            h hVar = this.f4712a.get();
            if ((hVar instanceof f) && hVar.a()) {
                aVar.a((f) hVar);
            }
        } finally {
            Binder.restoreCallingIdentity(clearCallingIdentity);
        }
    }

    private void a(b bVar) {
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            h hVar = this.f4712a.get();
            if (hVar != null && hVar.a()) {
                bVar.a(hVar);
            }
        } finally {
            Binder.restoreCallingIdentity(clearCallingIdentity);
        }
    }

    @Override // androidx.media2.session.b
    public final void a(int i) {
        a(new b() { // from class: androidx.media2.session.j.3
            @Override // androidx.media2.session.j.b
            public final void a(final h hVar) {
                hVar.f4597b.b(new MediaController.b() { // from class: androidx.media2.session.h.21
                    @Override // androidx.media2.session.MediaController.b
                    public final void run(MediaController.a aVar) {
                        if (h.this.f4597b.b()) {
                            aVar.c();
                        }
                    }
                });
            }
        });
    }

    @Override // androidx.media2.session.b
    public final void a(int i, final int i2, final int i3, final int i4, final int i5) {
        a(new b() { // from class: androidx.media2.session.j.23
            @Override // androidx.media2.session.j.b
            public final void a(final h hVar) {
                final int i6 = i2;
                int i7 = i3;
                int i8 = i4;
                int i9 = i5;
                synchronized (hVar.f4599d) {
                    hVar.m = i6;
                    hVar.t = i7;
                    hVar.u = i8;
                    hVar.v = i9;
                }
                hVar.f4597b.b(new MediaController.b() { // from class: androidx.media2.session.h.18
                    @Override // androidx.media2.session.MediaController.b
                    public final void run(MediaController.a aVar) {
                        if (!h.this.f4597b.b()) {
                        }
                    }
                });
            }
        });
    }

    @Override // androidx.media2.session.b
    public final void a(int i, final long j, final long j2, final float f) {
        a(new b() { // from class: androidx.media2.session.j.19
            @Override // androidx.media2.session.j.b
            public final void a(final h hVar) {
                long j3 = j;
                long j4 = j2;
                final float f2 = f;
                synchronized (hVar.f4599d) {
                    hVar.p = j3;
                    hVar.q = j4;
                    hVar.r = f2;
                }
                hVar.f4597b.b(new MediaController.b() { // from class: androidx.media2.session.h.13
                    @Override // androidx.media2.session.MediaController.b
                    public final void run(MediaController.a aVar) {
                        if (h.this.f4597b.b()) {
                            aVar.a(f2);
                        }
                    }
                });
            }
        });
    }

    @Override // androidx.media2.session.b
    public final void a(int i, final long j, final long j2, final int i2) {
        a(new b() { // from class: androidx.media2.session.j.18
            @Override // androidx.media2.session.j.b
            public final void a(final h hVar) {
                long j3 = j;
                long j4 = j2;
                final int i3 = i2;
                synchronized (hVar.f4599d) {
                    hVar.p = j3;
                    hVar.q = j4;
                    hVar.o = i3;
                }
                hVar.f4597b.b(new MediaController.b() { // from class: androidx.media2.session.h.12
                    @Override // androidx.media2.session.MediaController.b
                    public final void run(MediaController.a aVar) {
                        if (h.this.f4597b.b()) {
                            aVar.a(i3);
                        }
                    }
                });
            }
        });
    }

    @Override // androidx.media2.session.b
    public final void a(int i, final long j, final long j2, final long j3) {
        a(new b() { // from class: androidx.media2.session.j.5
            @Override // androidx.media2.session.j.b
            public final void a(final h hVar) {
                long j4 = j;
                long j5 = j2;
                final long j6 = j3;
                synchronized (hVar.f4599d) {
                    hVar.p = j4;
                    hVar.q = j5;
                }
                hVar.f4597b.b(new MediaController.b() { // from class: androidx.media2.session.h.22
                    @Override // androidx.media2.session.MediaController.b
                    public final void run(MediaController.a aVar) {
                        if (h.this.f4597b.b()) {
                            aVar.a(j6);
                        }
                    }
                });
            }
        });
    }

    @Override // androidx.media2.session.b
    public final void a(int i, final ParcelImplListSlice parcelImplListSlice, final ParcelImpl parcelImpl, final int i2, final int i3, final int i4) {
        if (parcelImpl != null) {
            a(new b() { // from class: androidx.media2.session.j.21
                @Override // androidx.media2.session.j.b
                public final void a(final h hVar) {
                    final List<MediaItem> a2 = s.a(parcelImplListSlice);
                    final MediaMetadata mediaMetadata = (MediaMetadata) androidx.versionedparcelable.a.a(parcelImpl);
                    int i5 = i2;
                    int i6 = i3;
                    int i7 = i4;
                    synchronized (hVar.f4599d) {
                        hVar.k = a2;
                        hVar.l = mediaMetadata;
                        hVar.t = i5;
                        hVar.u = i6;
                        hVar.v = i7;
                        if (i5 >= 0 && a2 != null && i5 < a2.size()) {
                            hVar.s = a2.get(i5);
                        }
                    }
                    hVar.f4597b.b(new MediaController.b() { // from class: androidx.media2.session.h.15
                        @Override // androidx.media2.session.MediaController.b
                        public final void run(MediaController.a aVar) {
                            if (h.this.f4597b.b()) {
                                aVar.a(a2, mediaMetadata);
                            }
                        }
                    });
                }
            });
        }
    }

    @Override // androidx.media2.session.b
    public final void a(int i, final ParcelImpl parcelImpl) throws RuntimeException {
        if (parcelImpl != null) {
            a(new b() { // from class: androidx.media2.session.j.22
                @Override // androidx.media2.session.j.b
                public final void a(final h hVar) {
                    final MediaMetadata mediaMetadata = (MediaMetadata) androidx.versionedparcelable.a.a(parcelImpl);
                    synchronized (hVar.f4599d) {
                        hVar.l = mediaMetadata;
                    }
                    hVar.f4597b.b(new MediaController.b() { // from class: androidx.media2.session.h.16
                        @Override // androidx.media2.session.MediaController.b
                        public final void run(MediaController.a aVar) {
                            if (!h.this.f4597b.b()) {
                            }
                        }
                    });
                }
            });
        }
    }

    @Override // androidx.media2.session.b
    public final void a(int i, final ParcelImpl parcelImpl, final int i2, final int i3, final int i4) {
        if (parcelImpl != null) {
            a(new b() { // from class: androidx.media2.session.j.17
                @Override // androidx.media2.session.j.b
                public final void a(final h hVar) {
                    final MediaItem mediaItem = (MediaItem) androidx.versionedparcelable.a.a(parcelImpl);
                    int i5 = i2;
                    int i6 = i3;
                    int i7 = i4;
                    synchronized (hVar.f4599d) {
                        hVar.s = mediaItem;
                        hVar.t = i5;
                        hVar.u = i6;
                        hVar.v = i7;
                        if (hVar.k != null && i5 >= 0 && i5 < hVar.k.size()) {
                            hVar.k.set(i5, mediaItem);
                        }
                        hVar.p = SystemClock.elapsedRealtime();
                        hVar.q = 0L;
                    }
                    hVar.f4597b.b(new MediaController.b() { // from class: androidx.media2.session.h.11
                        @Override // androidx.media2.session.MediaController.b
                        public final void run(MediaController.a aVar) {
                            if (h.this.f4597b.b()) {
                                aVar.a(mediaItem);
                            }
                        }
                    });
                }
            });
        }
    }

    @Override // androidx.media2.session.b
    public final void a(int i, final ParcelImpl parcelImpl, final int i2, final long j, final long j2, final long j3) {
        if (parcelImpl != null) {
            a(new b() { // from class: androidx.media2.session.j.20
                @Override // androidx.media2.session.j.b
                public final void a(final h hVar) {
                    final MediaItem mediaItem = (MediaItem) androidx.versionedparcelable.a.a(parcelImpl);
                    if (mediaItem == null) {
                        Log.w("MediaControllerStub", "onBufferingStateChanged(): Ignoring null item");
                        return;
                    }
                    final int i3 = i2;
                    long j4 = j;
                    long j5 = j2;
                    long j6 = j3;
                    synchronized (hVar.f4599d) {
                        hVar.w = i3;
                        hVar.x = j4;
                        hVar.p = j5;
                        hVar.q = j6;
                    }
                    hVar.f4597b.b(new MediaController.b() { // from class: androidx.media2.session.h.14
                        @Override // androidx.media2.session.MediaController.b
                        public final void run(MediaController.a aVar) {
                            if (!h.this.f4597b.b()) {
                            }
                        }
                    });
                }
            });
        }
    }

    @Override // androidx.media2.session.b
    public final void a(final int i, final ParcelImpl parcelImpl, final Bundle bundle) {
        if (parcelImpl != null) {
            a(new b() { // from class: androidx.media2.session.j.10
                @Override // androidx.media2.session.j.b
                public final void a(final h hVar) {
                    final SessionCommand sessionCommand = (SessionCommand) androidx.versionedparcelable.a.a(parcelImpl);
                    if (sessionCommand == null) {
                        Log.w("MediaControllerStub", "sendCustomCommand(): Ignoring null command");
                        return;
                    }
                    final int i2 = i;
                    final Bundle bundle2 = bundle;
                    if (h.f4596a) {
                        new StringBuilder("onCustomCommand cmd=").append(sessionCommand.g);
                    }
                    hVar.f4597b.a(new MediaController.b() { // from class: androidx.media2.session.h.29
                        @Override // androidx.media2.session.MediaController.b
                        public final void run(MediaController.a aVar) {
                            h.this.a(i2, MediaController.a.b());
                        }
                    });
                }
            });
        }
    }

    @Override // androidx.media2.session.b
    public final void a(int i, ParcelImpl parcelImpl, final ParcelImpl parcelImpl2) {
        if (parcelImpl2 != null) {
            a(new b() { // from class: androidx.media2.session.j.6
                @Override // androidx.media2.session.j.b
                public final void a(final h hVar) {
                    final MediaItem mediaItem;
                    final VideoSize videoSize = (VideoSize) androidx.versionedparcelable.a.a(parcelImpl2);
                    if (videoSize == null) {
                        Log.w("MediaControllerStub", "onVideoSizeChanged(): Ignoring null VideoSize");
                        return;
                    }
                    synchronized (hVar.f4599d) {
                        hVar.B = videoSize;
                        mediaItem = hVar.s;
                    }
                    hVar.f4597b.b(new MediaController.b() { // from class: androidx.media2.session.h.23
                        @Override // androidx.media2.session.MediaController.b
                        public final void run(MediaController.a aVar) {
                            if (h.this.f4597b.b()) {
                                aVar.a(videoSize);
                            }
                        }
                    });
                }
            });
        }
    }

    @Override // androidx.media2.session.b
    public final void a(int i, final ParcelImpl parcelImpl, final ParcelImpl parcelImpl2, final ParcelImpl parcelImpl3) {
        if (parcelImpl != null && parcelImpl2 != null && parcelImpl3 != null) {
            a(new b() { // from class: androidx.media2.session.j.7
                @Override // androidx.media2.session.j.b
                public final void a(final h hVar) {
                    final MediaItem mediaItem = (MediaItem) androidx.versionedparcelable.a.a(parcelImpl);
                    if (mediaItem == null) {
                        Log.w("MediaControllerStub", "onSubtitleData(): Ignoring null MediaItem");
                        return;
                    }
                    final SessionPlayer.TrackInfo trackInfo = (SessionPlayer.TrackInfo) androidx.versionedparcelable.a.a(parcelImpl2);
                    if (trackInfo == null) {
                        Log.w("MediaControllerStub", "onSubtitleData(): Ignoring null TrackInfo");
                        return;
                    }
                    final SubtitleData subtitleData = (SubtitleData) androidx.versionedparcelable.a.a(parcelImpl3);
                    if (subtitleData == null) {
                        Log.w("MediaControllerStub", "onSubtitleData(): Ignoring null SubtitleData");
                    } else {
                        hVar.f4597b.b(new MediaController.b() { // from class: androidx.media2.session.h.27
                            @Override // androidx.media2.session.MediaController.b
                            public final void run(MediaController.a aVar) {
                                if (h.this.f4597b.b()) {
                                    aVar.a(trackInfo, subtitleData);
                                }
                            }
                        });
                    }
                }
            });
        }
    }

    @Override // androidx.media2.session.b
    public final void a(int i, final String str, final int i2, final ParcelImpl parcelImpl) {
        if (parcelImpl != null) {
            if (TextUtils.isEmpty(str)) {
                Log.w("MediaControllerStub", "onChildrenChanged(): Ignoring empty parentId");
            } else if (i2 < 0) {
                Log.w("MediaControllerStub", "onChildrenChanged(): Ignoring negative itemCount: ".concat(String.valueOf(i2)));
            } else {
                a(new a() { // from class: androidx.media2.session.j.16
                    @Override // androidx.media2.session.j.a
                    public final void a(final f fVar) {
                        final String str2 = str;
                        final int i3 = i2;
                        final MediaLibraryService.LibraryParams libraryParams = (MediaLibraryService.LibraryParams) androidx.versionedparcelable.a.a(parcelImpl);
                        ((e) fVar.f4597b).a(new e.b() { // from class: androidx.media2.session.f.2
                        });
                    }
                });
            }
        }
    }

    @Override // androidx.media2.session.b
    public final void a(final int i, final List<ParcelImpl> list) {
        if (list == null) {
            Log.w("MediaControllerStub", "setCustomLayout(): Ignoring null commandButtonList");
        } else {
            a(new b() { // from class: androidx.media2.session.j.8
                @Override // androidx.media2.session.j.b
                public final void a(final h hVar) {
                    final ArrayList arrayList = new ArrayList();
                    for (int i2 = 0; i2 < list.size(); i2++) {
                        MediaSession.CommandButton commandButton = (MediaSession.CommandButton) androidx.versionedparcelable.a.a((ParcelImpl) list.get(i2));
                        if (commandButton != null) {
                            arrayList.add(commandButton);
                        }
                    }
                    final int i3 = i;
                    hVar.f4597b.a(new MediaController.b() { // from class: androidx.media2.session.h.31
                        @Override // androidx.media2.session.MediaController.b
                        public final void run(MediaController.a aVar) {
                            h.this.a(i3, new SessionResult(-6));
                        }
                    });
                }
            });
        }
    }

    @Override // androidx.media2.session.b
    public final void a(final int i, final List<ParcelImpl> list, final ParcelImpl parcelImpl, final ParcelImpl parcelImpl2, final ParcelImpl parcelImpl3, final ParcelImpl parcelImpl4) {
        if (list != null) {
            a(new b() { // from class: androidx.media2.session.j.11
                @Override // androidx.media2.session.j.b
                public final void a(h hVar) {
                    List list2 = list;
                    List<SessionPlayer.TrackInfo> arrayList = new ArrayList<>();
                    for (int i2 = 0; i2 < list2.size(); i2++) {
                        arrayList.add(androidx.versionedparcelable.a.a((ParcelImpl) list2.get(i2)));
                    }
                    hVar.a(arrayList, (SessionPlayer.TrackInfo) androidx.versionedparcelable.a.a(parcelImpl), (SessionPlayer.TrackInfo) androidx.versionedparcelable.a.a(parcelImpl2), (SessionPlayer.TrackInfo) androidx.versionedparcelable.a.a(parcelImpl3), (SessionPlayer.TrackInfo) androidx.versionedparcelable.a.a(parcelImpl4));
                }
            });
        }
    }

    @Override // androidx.media2.session.b
    public final void b(int i) {
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            h hVar = this.f4712a.get();
            if (hVar != null) {
                hVar.f4597b.close();
            }
        } finally {
            Binder.restoreCallingIdentity(clearCallingIdentity);
        }
    }

    @Override // androidx.media2.session.b
    public final void b(int i, final int i2, final int i3, final int i4, final int i5) {
        a(new b() { // from class: androidx.media2.session.j.2
            @Override // androidx.media2.session.j.b
            public final void a(final h hVar) {
                final int i6 = i2;
                int i7 = i3;
                int i8 = i4;
                int i9 = i5;
                synchronized (hVar.f4599d) {
                    hVar.n = i6;
                    hVar.t = i7;
                    hVar.u = i8;
                    hVar.v = i9;
                }
                hVar.f4597b.b(new MediaController.b() { // from class: androidx.media2.session.h.20
                    @Override // androidx.media2.session.MediaController.b
                    public final void run(MediaController.a aVar) {
                        if (!h.this.f4597b.b()) {
                        }
                    }
                });
            }
        });
    }

    @Override // androidx.media2.session.b
    public final void b(int i, final ParcelImpl parcelImpl) throws RuntimeException {
        if (parcelImpl != null) {
            a(new b() { // from class: androidx.media2.session.j.4
                @Override // androidx.media2.session.j.b
                public final void a(final h hVar) {
                    final MediaController.PlaybackInfo playbackInfo = (MediaController.PlaybackInfo) androidx.versionedparcelable.a.a(parcelImpl);
                    if (playbackInfo == null) {
                        Log.w("MediaControllerStub", "onPlaybackInfoChanged(): Ignoring null playbackInfo");
                        return;
                    }
                    synchronized (hVar.f4599d) {
                        hVar.y = playbackInfo;
                    }
                    hVar.f4597b.b(new MediaController.b() { // from class: androidx.media2.session.h.17
                        @Override // androidx.media2.session.MediaController.b
                        public final void run(MediaController.a aVar) {
                            if (!h.this.f4597b.b()) {
                            }
                        }
                    });
                }
            });
        }
    }

    @Override // androidx.media2.session.b
    public final void b(int i, final String str, final int i2, final ParcelImpl parcelImpl) throws RuntimeException {
        if (parcelImpl != null) {
            if (TextUtils.isEmpty(str)) {
                Log.w("MediaControllerStub", "onSearchResultChanged(): Ignoring empty query");
            } else if (i2 < 0) {
                Log.w("MediaControllerStub", "onSearchResultChanged(): Ignoring negative itemCount: ".concat(String.valueOf(i2)));
            } else {
                a(new a() { // from class: androidx.media2.session.j.15
                    @Override // androidx.media2.session.j.a
                    public final void a(final f fVar) {
                        final String str2 = str;
                        final int i3 = i2;
                        final MediaLibraryService.LibraryParams libraryParams = (MediaLibraryService.LibraryParams) androidx.versionedparcelable.a.a(parcelImpl);
                        ((e) fVar.f4597b).a(new e.b() { // from class: androidx.media2.session.f.1
                        });
                    }
                });
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:86:0x02d1 A[Catch: all -> 0x02e9, TRY_ENTER, TryCatch #5 {all -> 0x02e9, blocks: (B:15:0x0078, B:17:0x00b6, B:18:0x00bd, B:20:0x00c5, B:22:0x00f2, B:41:0x0157, B:43:0x015c, B:71:0x02ad, B:86:0x02d1, B:88:0x02da, B:90:0x02dd), top: B:105:0x0078 }] */
    @Override // androidx.media2.session.b
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void c(int r8, androidx.versionedparcelable.ParcelImpl r9) {
        /*
            Method dump skipped, instructions count: 760
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.session.j.c(int, androidx.versionedparcelable.ParcelImpl):void");
    }

    @Override // androidx.media2.session.b
    public final void d(int i, final ParcelImpl parcelImpl) {
        if (parcelImpl != null) {
            a(new b() { // from class: androidx.media2.session.j.9
                @Override // androidx.media2.session.j.b
                public final void a(final h hVar) {
                    final SessionCommandGroup sessionCommandGroup = (SessionCommandGroup) androidx.versionedparcelable.a.a(parcelImpl);
                    if (sessionCommandGroup == null) {
                        Log.w("MediaControllerStub", "onAllowedCommandsChanged(): Ignoring null commands");
                        return;
                    }
                    synchronized (hVar.f4599d) {
                        hVar.A = sessionCommandGroup;
                    }
                    hVar.f4597b.b(new MediaController.b() { // from class: androidx.media2.session.h.30
                        @Override // androidx.media2.session.MediaController.b
                        public final void run(MediaController.a aVar) {
                            aVar.a(sessionCommandGroup);
                        }
                    });
                }
            });
        }
    }

    @Override // androidx.media2.session.b
    public final void e(final int i, final ParcelImpl parcelImpl) {
        if (parcelImpl != null) {
            a(new b() { // from class: androidx.media2.session.j.1
                @Override // androidx.media2.session.j.b
                public final void a(h hVar) {
                    SessionResult sessionResult = (SessionResult) androidx.versionedparcelable.a.a(parcelImpl);
                    if (sessionResult != null) {
                        j.this.f4713b.a(i, sessionResult);
                    }
                }
            });
        }
    }

    @Override // androidx.media2.session.b
    public final void f(final int i, final ParcelImpl parcelImpl) {
        if (parcelImpl != null) {
            a(new a() { // from class: androidx.media2.session.j.12
                @Override // androidx.media2.session.j.a
                public final void a(f fVar) {
                    LibraryResult libraryResult = (LibraryResult) androidx.versionedparcelable.a.a(parcelImpl);
                    if (libraryResult != null) {
                        j.this.f4713b.a(i, libraryResult);
                    }
                }
            });
        }
    }

    @Override // androidx.media2.session.b
    public final void g(final int i, final ParcelImpl parcelImpl) {
        if (parcelImpl != null) {
            a(new b() { // from class: androidx.media2.session.j.13
                @Override // androidx.media2.session.j.b
                public final void a(final h hVar) {
                    final SessionPlayer.TrackInfo trackInfo = (SessionPlayer.TrackInfo) androidx.versionedparcelable.a.a(parcelImpl);
                    if (trackInfo == null) {
                        Log.w("MediaControllerStub", "onTrackSelected(): Ignoring null track info");
                        return;
                    }
                    synchronized (hVar.f4599d) {
                        hVar.D.put(trackInfo.f2755b, trackInfo);
                    }
                    hVar.f4597b.b(new MediaController.b() { // from class: androidx.media2.session.h.25
                        @Override // androidx.media2.session.MediaController.b
                        public final void run(MediaController.a aVar) {
                            if (h.this.f4597b.b()) {
                                aVar.a(trackInfo);
                            }
                        }
                    });
                }
            });
        }
    }

    @Override // androidx.media2.session.b
    public final void h(final int i, final ParcelImpl parcelImpl) {
        if (parcelImpl != null) {
            a(new b() { // from class: androidx.media2.session.j.14
                @Override // androidx.media2.session.j.b
                public final void a(final h hVar) {
                    final SessionPlayer.TrackInfo trackInfo = (SessionPlayer.TrackInfo) androidx.versionedparcelable.a.a(parcelImpl);
                    if (trackInfo == null) {
                        Log.w("MediaControllerStub", "onTrackSelected(): Ignoring null track info");
                        return;
                    }
                    synchronized (hVar.f4599d) {
                        hVar.D.remove(trackInfo.f2755b);
                    }
                    hVar.f4597b.b(new MediaController.b() { // from class: androidx.media2.session.h.26
                        @Override // androidx.media2.session.MediaController.b
                        public final void run(MediaController.a aVar) {
                            if (h.this.f4597b.b()) {
                                aVar.b(trackInfo);
                            }
                        }
                    });
                }
            });
        }
    }
}
