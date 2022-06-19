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
import androidx.media2.session.AbstractC2220b;
import androidx.media2.session.C2229e;
import androidx.media2.session.MediaController;
import androidx.media2.session.MediaLibraryService;
import androidx.media2.session.MediaSession;
import androidx.versionedparcelable.C2920a;
import androidx.versionedparcelable.ParcelImpl;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
/* renamed from: androidx.media2.session.j */
/* loaded from: classes-dex2jar.jar:androidx/media2/session/j.class */
public final class BinderC2296j extends AbstractC2220b.AbstractBinderC2221a {

    /* renamed from: a */
    final WeakReference<C2238h> f8995a;

    /* renamed from: b */
    final C2486v f8996b;

    @FunctionalInterface
    /* renamed from: androidx.media2.session.j$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/session/j$a.class */
    public interface AbstractC2320a {
        /* renamed from: a */
        void mo41002a(C2234f c2234f);
    }

    @FunctionalInterface
    /* renamed from: androidx.media2.session.j$b */
    /* loaded from: classes-dex2jar.jar:androidx/media2/session/j$b.class */
    public interface AbstractC2321b {
        /* renamed from: a */
        void mo41001a(C2238h c2238h);
    }

    public BinderC2296j(C2238h c2238h, C2486v c2486v) {
        this.f8995a = new WeakReference<>(c2238h);
        this.f8996b = c2486v;
    }

    /* renamed from: a */
    private void m41014a(AbstractC2320a abstractC2320a) {
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            C2238h c2238h = this.f8995a.get();
            if ((c2238h instanceof C2234f) && c2238h.mo41071a()) {
                abstractC2320a.mo41002a((C2234f) c2238h);
            }
        } finally {
            Binder.restoreCallingIdentity(clearCallingIdentity);
        }
    }

    /* renamed from: a */
    private void m41013a(AbstractC2321b abstractC2321b) {
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            C2238h c2238h = this.f8995a.get();
            if (c2238h != null && c2238h.mo41071a()) {
                abstractC2321b.mo41001a(c2238h);
            }
        } finally {
            Binder.restoreCallingIdentity(clearCallingIdentity);
        }
    }

    @Override // androidx.media2.session.AbstractC2220b
    /* renamed from: a */
    public final void mo41029a(int i) {
        m41013a(new AbstractC2321b() { // from class: androidx.media2.session.j.3
            @Override // androidx.media2.session.BinderC2296j.AbstractC2321b
            /* renamed from: a */
            public final void mo41001a(final C2238h c2238h) {
                c2238h.f8834b.m41155b(new MediaController.AbstractC2201b() { // from class: androidx.media2.session.h.21
                    @Override // androidx.media2.session.MediaController.AbstractC2201b
                    public final void run(MediaController.AbstractC2200a abstractC2200a) {
                        if (!C2238h.this.f8834b.m41157b()) {
                            return;
                        }
                        abstractC2200a.mo40620c();
                    }
                });
            }
        });
    }

    @Override // androidx.media2.session.AbstractC2220b
    /* renamed from: a */
    public final void mo41028a(int i, final int i2, final int i3, final int i4, final int i5) {
        m41013a(new AbstractC2321b() { // from class: androidx.media2.session.j.23
            @Override // androidx.media2.session.BinderC2296j.AbstractC2321b
            /* renamed from: a */
            public final void mo41001a(final C2238h c2238h) {
                final int i6 = i2;
                int i7 = i3;
                int i8 = i4;
                int i9 = i5;
                synchronized (c2238h.f8836d) {
                    c2238h.f8845m = i6;
                    c2238h.f8852t = i7;
                    c2238h.f8853u = i8;
                    c2238h.f8854v = i9;
                }
                c2238h.f8834b.m41155b(new MediaController.AbstractC2201b() { // from class: androidx.media2.session.h.18
                    @Override // androidx.media2.session.MediaController.AbstractC2201b
                    public final void run(MediaController.AbstractC2200a abstractC2200a) {
                        if (!C2238h.this.f8834b.m41157b()) {
                        }
                    }
                });
            }
        });
    }

    @Override // androidx.media2.session.AbstractC2220b
    /* renamed from: a */
    public final void mo41027a(int i, final long j, final long j2, final float f) {
        m41013a(new AbstractC2321b() { // from class: androidx.media2.session.j.19
            @Override // androidx.media2.session.BinderC2296j.AbstractC2321b
            /* renamed from: a */
            public final void mo41001a(final C2238h c2238h) {
                long j3 = j;
                long j4 = j2;
                final float f2 = f;
                synchronized (c2238h.f8836d) {
                    c2238h.f8848p = j3;
                    c2238h.f8849q = j4;
                    c2238h.f8850r = f2;
                }
                c2238h.f8834b.m41155b(new MediaController.AbstractC2201b() { // from class: androidx.media2.session.h.13
                    @Override // androidx.media2.session.MediaController.AbstractC2201b
                    public final void run(MediaController.AbstractC2200a abstractC2200a) {
                        if (!C2238h.this.f8834b.m41157b()) {
                            return;
                        }
                        abstractC2200a.mo40631a(f2);
                    }
                });
            }
        });
    }

    @Override // androidx.media2.session.AbstractC2220b
    /* renamed from: a */
    public final void mo41026a(int i, final long j, final long j2, final int i2) {
        m41013a(new AbstractC2321b() { // from class: androidx.media2.session.j.18
            @Override // androidx.media2.session.BinderC2296j.AbstractC2321b
            /* renamed from: a */
            public final void mo41001a(final C2238h c2238h) {
                long j3 = j;
                long j4 = j2;
                final int i3 = i2;
                synchronized (c2238h.f8836d) {
                    c2238h.f8848p = j3;
                    c2238h.f8849q = j4;
                    c2238h.f8847o = i3;
                }
                c2238h.f8834b.m41155b(new MediaController.AbstractC2201b() { // from class: androidx.media2.session.h.12
                    @Override // androidx.media2.session.MediaController.AbstractC2201b
                    public final void run(MediaController.AbstractC2200a abstractC2200a) {
                        if (!C2238h.this.f8834b.m41157b()) {
                            return;
                        }
                        abstractC2200a.mo40630a(i3);
                    }
                });
            }
        });
    }

    @Override // androidx.media2.session.AbstractC2220b
    /* renamed from: a */
    public final void mo41025a(int i, final long j, final long j2, final long j3) {
        m41013a(new AbstractC2321b() { // from class: androidx.media2.session.j.5
            @Override // androidx.media2.session.BinderC2296j.AbstractC2321b
            /* renamed from: a */
            public final void mo41001a(final C2238h c2238h) {
                long j4 = j;
                long j5 = j2;
                final long j6 = j3;
                synchronized (c2238h.f8836d) {
                    c2238h.f8848p = j4;
                    c2238h.f8849q = j5;
                }
                c2238h.f8834b.m41155b(new MediaController.AbstractC2201b() { // from class: androidx.media2.session.h.22
                    @Override // androidx.media2.session.MediaController.AbstractC2201b
                    public final void run(MediaController.AbstractC2200a abstractC2200a) {
                        if (!C2238h.this.f8834b.m41157b()) {
                            return;
                        }
                        abstractC2200a.mo40629a(j6);
                    }
                });
            }
        });
    }

    @Override // androidx.media2.session.AbstractC2220b
    /* renamed from: a */
    public final void mo41024a(int i, final ParcelImplListSlice parcelImplListSlice, final ParcelImpl parcelImpl, final int i2, final int i3, final int i4) {
        if (parcelImpl == null) {
            return;
        }
        m41013a(new AbstractC2321b() { // from class: androidx.media2.session.j.21
            @Override // androidx.media2.session.BinderC2296j.AbstractC2321b
            /* renamed from: a */
            public final void mo41001a(final C2238h c2238h) {
                final List<MediaItem> m40796a = C2481s.m40796a(parcelImplListSlice);
                final MediaMetadata mediaMetadata = (MediaMetadata) C2920a.m39628a(parcelImpl);
                int i5 = i2;
                int i6 = i3;
                int i7 = i4;
                synchronized (c2238h.f8836d) {
                    c2238h.f8843k = m40796a;
                    c2238h.f8844l = mediaMetadata;
                    c2238h.f8852t = i5;
                    c2238h.f8853u = i6;
                    c2238h.f8854v = i7;
                    if (i5 >= 0 && m40796a != null && i5 < m40796a.size()) {
                        c2238h.f8851s = m40796a.get(i5);
                    }
                }
                c2238h.f8834b.m41155b(new MediaController.AbstractC2201b() { // from class: androidx.media2.session.h.15
                    @Override // androidx.media2.session.MediaController.AbstractC2201b
                    public final void run(MediaController.AbstractC2200a abstractC2200a) {
                        if (!C2238h.this.f8834b.m41157b()) {
                            return;
                        }
                        abstractC2200a.mo40622a(m40796a, mediaMetadata);
                    }
                });
            }
        });
    }

    @Override // androidx.media2.session.AbstractC2220b
    /* renamed from: a */
    public final void mo41023a(int i, final ParcelImpl parcelImpl) throws RuntimeException {
        if (parcelImpl == null) {
            return;
        }
        m41013a(new AbstractC2321b() { // from class: androidx.media2.session.j.22
            @Override // androidx.media2.session.BinderC2296j.AbstractC2321b
            /* renamed from: a */
            public final void mo41001a(final C2238h c2238h) {
                final MediaMetadata mediaMetadata = (MediaMetadata) C2920a.m39628a(parcelImpl);
                synchronized (c2238h.f8836d) {
                    c2238h.f8844l = mediaMetadata;
                }
                c2238h.f8834b.m41155b(new MediaController.AbstractC2201b() { // from class: androidx.media2.session.h.16
                    @Override // androidx.media2.session.MediaController.AbstractC2201b
                    public final void run(MediaController.AbstractC2200a abstractC2200a) {
                        if (!C2238h.this.f8834b.m41157b()) {
                        }
                    }
                });
            }
        });
    }

    @Override // androidx.media2.session.AbstractC2220b
    /* renamed from: a */
    public final void mo41022a(int i, final ParcelImpl parcelImpl, final int i2, final int i3, final int i4) {
        if (parcelImpl == null) {
            return;
        }
        m41013a(new AbstractC2321b() { // from class: androidx.media2.session.j.17
            @Override // androidx.media2.session.BinderC2296j.AbstractC2321b
            /* renamed from: a */
            public final void mo41001a(final C2238h c2238h) {
                final MediaItem mediaItem = (MediaItem) C2920a.m39628a(parcelImpl);
                int i5 = i2;
                int i6 = i3;
                int i7 = i4;
                synchronized (c2238h.f8836d) {
                    c2238h.f8851s = mediaItem;
                    c2238h.f8852t = i5;
                    c2238h.f8853u = i6;
                    c2238h.f8854v = i7;
                    if (c2238h.f8843k != null && i5 >= 0 && i5 < c2238h.f8843k.size()) {
                        c2238h.f8843k.set(i5, mediaItem);
                    }
                    c2238h.f8848p = SystemClock.elapsedRealtime();
                    c2238h.f8849q = 0L;
                }
                c2238h.f8834b.m41155b(new MediaController.AbstractC2201b() { // from class: androidx.media2.session.h.11
                    @Override // androidx.media2.session.MediaController.AbstractC2201b
                    public final void run(MediaController.AbstractC2200a abstractC2200a) {
                        if (!C2238h.this.f8834b.m41157b()) {
                            return;
                        }
                        abstractC2200a.mo40628a(mediaItem);
                    }
                });
            }
        });
    }

    @Override // androidx.media2.session.AbstractC2220b
    /* renamed from: a */
    public final void mo41021a(int i, final ParcelImpl parcelImpl, final int i2, final long j, final long j2, final long j3) {
        if (parcelImpl == null) {
            return;
        }
        m41013a(new AbstractC2321b() { // from class: androidx.media2.session.j.20
            @Override // androidx.media2.session.BinderC2296j.AbstractC2321b
            /* renamed from: a */
            public final void mo41001a(final C2238h c2238h) {
                final MediaItem mediaItem = (MediaItem) C2920a.m39628a(parcelImpl);
                if (mediaItem == null) {
                    Log.w("MediaControllerStub", "onBufferingStateChanged(): Ignoring null item");
                    return;
                }
                final int i3 = i2;
                long j4 = j;
                long j5 = j2;
                long j6 = j3;
                synchronized (c2238h.f8836d) {
                    c2238h.f8855w = i3;
                    c2238h.f8856x = j4;
                    c2238h.f8848p = j5;
                    c2238h.f8849q = j6;
                }
                c2238h.f8834b.m41155b(new MediaController.AbstractC2201b() { // from class: androidx.media2.session.h.14
                    @Override // androidx.media2.session.MediaController.AbstractC2201b
                    public final void run(MediaController.AbstractC2200a abstractC2200a) {
                        if (!C2238h.this.f8834b.m41157b()) {
                        }
                    }
                });
            }
        });
    }

    @Override // androidx.media2.session.AbstractC2220b
    /* renamed from: a */
    public final void mo41020a(final int i, final ParcelImpl parcelImpl, final Bundle bundle) {
        if (parcelImpl == null) {
            return;
        }
        m41013a(new AbstractC2321b() { // from class: androidx.media2.session.j.10
            @Override // androidx.media2.session.BinderC2296j.AbstractC2321b
            /* renamed from: a */
            public final void mo41001a(final C2238h c2238h) {
                final SessionCommand sessionCommand = (SessionCommand) C2920a.m39628a(parcelImpl);
                if (sessionCommand == null) {
                    Log.w("MediaControllerStub", "sendCustomCommand(): Ignoring null command");
                    return;
                }
                final int i2 = i;
                final Bundle bundle2 = bundle;
                if (C2238h.f8827a) {
                    new StringBuilder("onCustomCommand cmd=").append(sessionCommand.f8754g);
                }
                c2238h.f8834b.m41159a(new MediaController.AbstractC2201b() { // from class: androidx.media2.session.h.29
                    @Override // androidx.media2.session.MediaController.AbstractC2201b
                    public final void run(MediaController.AbstractC2200a abstractC2200a) {
                        C2238h.this.m41078a(i2, MediaController.AbstractC2200a.m41140b());
                    }
                });
            }
        });
    }

    @Override // androidx.media2.session.AbstractC2220b
    /* renamed from: a */
    public final void mo41019a(int i, ParcelImpl parcelImpl, final ParcelImpl parcelImpl2) {
        if (parcelImpl2 == null) {
            return;
        }
        m41013a(new AbstractC2321b() { // from class: androidx.media2.session.j.6
            @Override // androidx.media2.session.BinderC2296j.AbstractC2321b
            /* renamed from: a */
            public final void mo41001a(final C2238h c2238h) {
                final MediaItem mediaItem;
                final VideoSize videoSize = (VideoSize) C2920a.m39628a(parcelImpl2);
                if (videoSize == null) {
                    Log.w("MediaControllerStub", "onVideoSizeChanged(): Ignoring null VideoSize");
                    return;
                }
                synchronized (c2238h.f8836d) {
                    c2238h.f8829B = videoSize;
                    mediaItem = c2238h.f8851s;
                }
                c2238h.f8834b.m41155b(new MediaController.AbstractC2201b() { // from class: androidx.media2.session.h.23
                    @Override // androidx.media2.session.MediaController.AbstractC2201b
                    public final void run(MediaController.AbstractC2200a abstractC2200a) {
                        if (!C2238h.this.f8834b.m41157b()) {
                            return;
                        }
                        abstractC2200a.mo40625a(videoSize);
                    }
                });
            }
        });
    }

    @Override // androidx.media2.session.AbstractC2220b
    /* renamed from: a */
    public final void mo41018a(int i, final ParcelImpl parcelImpl, final ParcelImpl parcelImpl2, final ParcelImpl parcelImpl3) {
        if (parcelImpl == null || parcelImpl2 == null || parcelImpl3 == null) {
            return;
        }
        m41013a(new AbstractC2321b() { // from class: androidx.media2.session.j.7
            @Override // androidx.media2.session.BinderC2296j.AbstractC2321b
            /* renamed from: a */
            public final void mo41001a(final C2238h c2238h) {
                final MediaItem mediaItem = (MediaItem) C2920a.m39628a(parcelImpl);
                if (mediaItem == null) {
                    Log.w("MediaControllerStub", "onSubtitleData(): Ignoring null MediaItem");
                    return;
                }
                final SessionPlayer.TrackInfo trackInfo = (SessionPlayer.TrackInfo) C2920a.m39628a(parcelImpl2);
                if (trackInfo == null) {
                    Log.w("MediaControllerStub", "onSubtitleData(): Ignoring null TrackInfo");
                    return;
                }
                final SubtitleData subtitleData = (SubtitleData) C2920a.m39628a(parcelImpl3);
                if (subtitleData == null) {
                    Log.w("MediaControllerStub", "onSubtitleData(): Ignoring null SubtitleData");
                } else {
                    c2238h.f8834b.m41155b(new MediaController.AbstractC2201b() { // from class: androidx.media2.session.h.27
                        @Override // androidx.media2.session.MediaController.AbstractC2201b
                        public final void run(MediaController.AbstractC2200a abstractC2200a) {
                            if (!C2238h.this.f8834b.m41157b()) {
                                return;
                            }
                            abstractC2200a.mo40626a(trackInfo, subtitleData);
                        }
                    });
                }
            }
        });
    }

    @Override // androidx.media2.session.AbstractC2220b
    /* renamed from: a */
    public final void mo41017a(int i, final String str, final int i2, final ParcelImpl parcelImpl) {
        if (parcelImpl == null) {
            return;
        }
        if (TextUtils.isEmpty(str)) {
            Log.w("MediaControllerStub", "onChildrenChanged(): Ignoring empty parentId");
        } else if (i2 < 0) {
            Log.w("MediaControllerStub", "onChildrenChanged(): Ignoring negative itemCount: ".concat(String.valueOf(i2)));
        } else {
            m41014a(new AbstractC2320a() { // from class: androidx.media2.session.j.16
                @Override // androidx.media2.session.BinderC2296j.AbstractC2320a
                /* renamed from: a */
                public final void mo41002a(final C2234f c2234f) {
                    final String str2 = str;
                    final int i3 = i2;
                    final MediaLibraryService.LibraryParams libraryParams = (MediaLibraryService.LibraryParams) C2920a.m39628a(parcelImpl);
                    ((C2229e) c2234f.f8834b).m41079a(new C2229e.AbstractC2232b() { // from class: androidx.media2.session.f.2
                    });
                }
            });
        }
    }

    @Override // androidx.media2.session.AbstractC2220b
    /* renamed from: a */
    public final void mo41016a(final int i, final List<ParcelImpl> list) {
        if (list == null) {
            Log.w("MediaControllerStub", "setCustomLayout(): Ignoring null commandButtonList");
        } else {
            m41013a(new AbstractC2321b() { // from class: androidx.media2.session.j.8
                @Override // androidx.media2.session.BinderC2296j.AbstractC2321b
                /* renamed from: a */
                public final void mo41001a(final C2238h c2238h) {
                    final ArrayList arrayList = new ArrayList();
                    for (int i2 = 0; i2 < list.size(); i2++) {
                        MediaSession.CommandButton commandButton = (MediaSession.CommandButton) C2920a.m39628a((ParcelImpl) list.get(i2));
                        if (commandButton != null) {
                            arrayList.add(commandButton);
                        }
                    }
                    final int i3 = i;
                    c2238h.f8834b.m41159a(new MediaController.AbstractC2201b() { // from class: androidx.media2.session.h.31
                        @Override // androidx.media2.session.MediaController.AbstractC2201b
                        public final void run(MediaController.AbstractC2200a abstractC2200a) {
                            C2238h.this.m41078a(i3, new SessionResult(-6));
                        }
                    });
                }
            });
        }
    }

    @Override // androidx.media2.session.AbstractC2220b
    /* renamed from: a */
    public final void mo41015a(final int i, final List<ParcelImpl> list, final ParcelImpl parcelImpl, final ParcelImpl parcelImpl2, final ParcelImpl parcelImpl3, final ParcelImpl parcelImpl4) {
        if (list == null) {
            return;
        }
        m41013a(new AbstractC2321b() { // from class: androidx.media2.session.j.11
            @Override // androidx.media2.session.BinderC2296j.AbstractC2321b
            /* renamed from: a */
            public final void mo41001a(C2238h c2238h) {
                List list2 = list;
                List<SessionPlayer.TrackInfo> arrayList = new ArrayList<>();
                for (int i2 = 0; i2 < list2.size(); i2++) {
                    arrayList.add(C2920a.m39628a((ParcelImpl) list2.get(i2)));
                }
                c2238h.m41075a(arrayList, (SessionPlayer.TrackInfo) C2920a.m39628a(parcelImpl), (SessionPlayer.TrackInfo) C2920a.m39628a(parcelImpl2), (SessionPlayer.TrackInfo) C2920a.m39628a(parcelImpl3), (SessionPlayer.TrackInfo) C2920a.m39628a(parcelImpl4));
            }
        });
    }

    @Override // androidx.media2.session.AbstractC2220b
    /* renamed from: b */
    public final void mo41012b(int i) {
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            C2238h c2238h = this.f8995a.get();
            if (c2238h == null) {
                return;
            }
            c2238h.f8834b.close();
        } finally {
            Binder.restoreCallingIdentity(clearCallingIdentity);
        }
    }

    @Override // androidx.media2.session.AbstractC2220b
    /* renamed from: b */
    public final void mo41011b(int i, final int i2, final int i3, final int i4, final int i5) {
        m41013a(new AbstractC2321b() { // from class: androidx.media2.session.j.2
            @Override // androidx.media2.session.BinderC2296j.AbstractC2321b
            /* renamed from: a */
            public final void mo41001a(final C2238h c2238h) {
                final int i6 = i2;
                int i7 = i3;
                int i8 = i4;
                int i9 = i5;
                synchronized (c2238h.f8836d) {
                    c2238h.f8846n = i6;
                    c2238h.f8852t = i7;
                    c2238h.f8853u = i8;
                    c2238h.f8854v = i9;
                }
                c2238h.f8834b.m41155b(new MediaController.AbstractC2201b() { // from class: androidx.media2.session.h.20
                    @Override // androidx.media2.session.MediaController.AbstractC2201b
                    public final void run(MediaController.AbstractC2200a abstractC2200a) {
                        if (!C2238h.this.f8834b.m41157b()) {
                        }
                    }
                });
            }
        });
    }

    @Override // androidx.media2.session.AbstractC2220b
    /* renamed from: b */
    public final void mo41010b(int i, final ParcelImpl parcelImpl) throws RuntimeException {
        if (parcelImpl == null) {
            return;
        }
        m41013a(new AbstractC2321b() { // from class: androidx.media2.session.j.4
            @Override // androidx.media2.session.BinderC2296j.AbstractC2321b
            /* renamed from: a */
            public final void mo41001a(final C2238h c2238h) {
                final MediaController.PlaybackInfo playbackInfo = (MediaController.PlaybackInfo) C2920a.m39628a(parcelImpl);
                if (playbackInfo == null) {
                    Log.w("MediaControllerStub", "onPlaybackInfoChanged(): Ignoring null playbackInfo");
                    return;
                }
                synchronized (c2238h.f8836d) {
                    c2238h.f8857y = playbackInfo;
                }
                c2238h.f8834b.m41155b(new MediaController.AbstractC2201b() { // from class: androidx.media2.session.h.17
                    @Override // androidx.media2.session.MediaController.AbstractC2201b
                    public final void run(MediaController.AbstractC2200a abstractC2200a) {
                        if (!C2238h.this.f8834b.m41157b()) {
                        }
                    }
                });
            }
        });
    }

    @Override // androidx.media2.session.AbstractC2220b
    /* renamed from: b */
    public final void mo41009b(int i, final String str, final int i2, final ParcelImpl parcelImpl) throws RuntimeException {
        if (parcelImpl == null) {
            return;
        }
        if (TextUtils.isEmpty(str)) {
            Log.w("MediaControllerStub", "onSearchResultChanged(): Ignoring empty query");
        } else if (i2 < 0) {
            Log.w("MediaControllerStub", "onSearchResultChanged(): Ignoring negative itemCount: ".concat(String.valueOf(i2)));
        } else {
            m41014a(new AbstractC2320a() { // from class: androidx.media2.session.j.15
                @Override // androidx.media2.session.BinderC2296j.AbstractC2320a
                /* renamed from: a */
                public final void mo41002a(final C2234f c2234f) {
                    final String str2 = str;
                    final int i3 = i2;
                    final MediaLibraryService.LibraryParams libraryParams = (MediaLibraryService.LibraryParams) C2920a.m39628a(parcelImpl);
                    ((C2229e) c2234f.f8834b).m41079a(new C2229e.AbstractC2232b() { // from class: androidx.media2.session.f.1
                    });
                }
            });
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:86:0x02d1 A[Catch: all -> 0x02e9, TRY_ENTER, TryCatch #5 {all -> 0x02e9, blocks: (B:15:0x0078, B:17:0x00b6, B:18:0x00bd, B:20:0x00c5, B:22:0x00f2, B:41:0x0157, B:43:0x015c, B:71:0x02ad, B:86:0x02d1, B:88:0x02da, B:90:0x02dd), top: B:105:0x0078 }] */
    @Override // androidx.media2.session.AbstractC2220b
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo41008c(int r8, androidx.versionedparcelable.ParcelImpl r9) {
        /*
            Method dump skipped, instructions count: 760
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.session.BinderC2296j.mo41008c(int, androidx.versionedparcelable.ParcelImpl):void");
    }

    @Override // androidx.media2.session.AbstractC2220b
    /* renamed from: d */
    public final void mo41007d(int i, final ParcelImpl parcelImpl) {
        if (parcelImpl == null) {
            return;
        }
        m41013a(new AbstractC2321b() { // from class: androidx.media2.session.j.9
            @Override // androidx.media2.session.BinderC2296j.AbstractC2321b
            /* renamed from: a */
            public final void mo41001a(final C2238h c2238h) {
                final SessionCommandGroup sessionCommandGroup = (SessionCommandGroup) C2920a.m39628a(parcelImpl);
                if (sessionCommandGroup == null) {
                    Log.w("MediaControllerStub", "onAllowedCommandsChanged(): Ignoring null commands");
                    return;
                }
                synchronized (c2238h.f8836d) {
                    c2238h.f8828A = sessionCommandGroup;
                }
                c2238h.f8834b.m41155b(new MediaController.AbstractC2201b() { // from class: androidx.media2.session.h.30
                    @Override // androidx.media2.session.MediaController.AbstractC2201b
                    public final void run(MediaController.AbstractC2200a abstractC2200a) {
                        abstractC2200a.mo40624a(sessionCommandGroup);
                    }
                });
            }
        });
    }

    @Override // androidx.media2.session.AbstractC2220b
    /* renamed from: e */
    public final void mo41006e(final int i, final ParcelImpl parcelImpl) {
        if (parcelImpl == null) {
            return;
        }
        m41013a(new AbstractC2321b() { // from class: androidx.media2.session.j.1
            @Override // androidx.media2.session.BinderC2296j.AbstractC2321b
            /* renamed from: a */
            public final void mo41001a(C2238h c2238h) {
                SessionResult sessionResult = (SessionResult) C2920a.m39628a(parcelImpl);
                if (sessionResult == null) {
                    return;
                }
                BinderC2296j.this.f8996b.m40777a(i, sessionResult);
            }
        });
    }

    @Override // androidx.media2.session.AbstractC2220b
    /* renamed from: f */
    public final void mo41005f(final int i, final ParcelImpl parcelImpl) {
        if (parcelImpl == null) {
            return;
        }
        m41014a(new AbstractC2320a() { // from class: androidx.media2.session.j.12
            @Override // androidx.media2.session.BinderC2296j.AbstractC2320a
            /* renamed from: a */
            public final void mo41002a(C2234f c2234f) {
                LibraryResult libraryResult = (LibraryResult) C2920a.m39628a(parcelImpl);
                if (libraryResult == null) {
                    return;
                }
                BinderC2296j.this.f8996b.m40777a(i, libraryResult);
            }
        });
    }

    @Override // androidx.media2.session.AbstractC2220b
    /* renamed from: g */
    public final void mo41004g(final int i, final ParcelImpl parcelImpl) {
        if (parcelImpl == null) {
            return;
        }
        m41013a(new AbstractC2321b() { // from class: androidx.media2.session.j.13
            @Override // androidx.media2.session.BinderC2296j.AbstractC2321b
            /* renamed from: a */
            public final void mo41001a(final C2238h c2238h) {
                final SessionPlayer.TrackInfo trackInfo = (SessionPlayer.TrackInfo) C2920a.m39628a(parcelImpl);
                if (trackInfo == null) {
                    Log.w("MediaControllerStub", "onTrackSelected(): Ignoring null track info");
                    return;
                }
                synchronized (c2238h.f8836d) {
                    c2238h.f8831D.put(trackInfo.f5049b, trackInfo);
                }
                c2238h.f8834b.m41155b(new MediaController.AbstractC2201b() { // from class: androidx.media2.session.h.25
                    @Override // androidx.media2.session.MediaController.AbstractC2201b
                    public final void run(MediaController.AbstractC2200a abstractC2200a) {
                        if (!C2238h.this.f8834b.m41157b()) {
                            return;
                        }
                        abstractC2200a.mo40627a(trackInfo);
                    }
                });
            }
        });
    }

    @Override // androidx.media2.session.AbstractC2220b
    /* renamed from: h */
    public final void mo41003h(final int i, final ParcelImpl parcelImpl) {
        if (parcelImpl == null) {
            return;
        }
        m41013a(new AbstractC2321b() { // from class: androidx.media2.session.j.14
            @Override // androidx.media2.session.BinderC2296j.AbstractC2321b
            /* renamed from: a */
            public final void mo41001a(final C2238h c2238h) {
                final SessionPlayer.TrackInfo trackInfo = (SessionPlayer.TrackInfo) C2920a.m39628a(parcelImpl);
                if (trackInfo == null) {
                    Log.w("MediaControllerStub", "onTrackSelected(): Ignoring null track info");
                    return;
                }
                synchronized (c2238h.f8836d) {
                    c2238h.f8831D.remove(trackInfo.f5049b);
                }
                c2238h.f8834b.m41155b(new MediaController.AbstractC2201b() { // from class: androidx.media2.session.h.26
                    @Override // androidx.media2.session.MediaController.AbstractC2201b
                    public final void run(MediaController.AbstractC2200a abstractC2200a) {
                        if (!C2238h.this.f8834b.m41157b()) {
                            return;
                        }
                        abstractC2200a.mo40621b(trackInfo);
                    }
                });
            }
        });
    }
}
