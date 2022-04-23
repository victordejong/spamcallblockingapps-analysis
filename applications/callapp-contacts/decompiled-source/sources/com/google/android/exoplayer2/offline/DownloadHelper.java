package com.google.android.exoplayer2.offline;

import android.os.Handler;
import android.util.SparseIntArray;
import android.view.Surface;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.MediaItem;
import com.google.android.exoplayer2.ag;
import com.google.android.exoplayer2.al;
import com.google.android.exoplayer2.decoder.d;
import com.google.android.exoplayer2.decoder.e;
import com.google.android.exoplayer2.source.TrackGroup;
import com.google.android.exoplayer2.source.r;
import com.google.android.exoplayer2.trackselection.DefaultTrackSelector;
import com.google.android.exoplayer2.trackselection.c;
import com.google.android.exoplayer2.trackselection.h;
import com.google.android.exoplayer2.upstream.c;
import com.google.android.exoplayer2.upstream.v;
import com.google.android.exoplayer2.util.af;
import com.google.android.exoplayer2.video.l;
import java.io.IOException;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/offline/DownloadHelper.class */
public final class DownloadHelper {

    /* renamed from: a  reason: collision with root package name */
    public static final DefaultTrackSelector.Parameters f21496a;
    @Deprecated

    /* renamed from: b  reason: collision with root package name */
    public static final DefaultTrackSelector.Parameters f21497b;
    @Deprecated

    /* renamed from: c  reason: collision with root package name */
    public static final DefaultTrackSelector.Parameters f21498c;

    /* renamed from: d  reason: collision with root package name */
    private final MediaItem.c f21499d;
    private final r e;
    private final DefaultTrackSelector f;
    private final ag[] g;
    private final SparseIntArray h = new SparseIntArray();
    private final Handler i = af.b();
    private final al.b j = new al.b();

    /* renamed from: com.google.android.exoplayer2.offline.DownloadHelper$1  reason: invalid class name */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/offline/DownloadHelper$1.class */
    final class AnonymousClass1 implements l {
        AnonymousClass1() {
        }

        @Override // com.google.android.exoplayer2.video.l
        public /* synthetic */ void a(int i, int i2, int i3, float f) {
            l._CC.$default$a(this, i, i2, i3, f);
        }

        @Override // com.google.android.exoplayer2.video.l
        public /* synthetic */ void a(int i, long j) {
            l._CC.$default$a(this, i, j);
        }

        @Override // com.google.android.exoplayer2.video.l
        public /* synthetic */ void a(long j, int i) {
            l._CC.$default$a(this, j, i);
        }

        @Override // com.google.android.exoplayer2.video.l
        public /* synthetic */ void a(Surface surface) {
            l._CC.$default$a(this, surface);
        }

        @Override // com.google.android.exoplayer2.video.l
        public /* synthetic */ void a(Format format, e eVar) {
            l._CC.$default$a(this, format, eVar);
        }

        @Override // com.google.android.exoplayer2.video.l
        public /* synthetic */ void a(d dVar) {
            l._CC.$default$a(this, dVar);
        }

        @Override // com.google.android.exoplayer2.video.l
        public /* synthetic */ void a(String str) {
            l._CC.$default$a(this, str);
        }

        @Override // com.google.android.exoplayer2.video.l
        public /* synthetic */ void a(String str, long j, long j2) {
            l._CC.$default$a(this, str, j, j2);
        }

        @Override // com.google.android.exoplayer2.video.l
        public /* synthetic */ void b(d dVar) {
            l._CC.$default$b(this, dVar);
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/offline/DownloadHelper$LiveContentUnsupportedException.class */
    public static class LiveContentUnsupportedException extends IOException {
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/offline/DownloadHelper$a.class */
    static final class a extends com.google.android.exoplayer2.trackselection.b {

        /* renamed from: com.google.android.exoplayer2.offline.DownloadHelper$a$a  reason: collision with other inner class name */
        /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/offline/DownloadHelper$a$a.class */
        static final class C0434a implements c.b {
            private C0434a() {
            }

            /* synthetic */ C0434a(AnonymousClass1 r3) {
                this();
            }

            @Override // com.google.android.exoplayer2.trackselection.c.b
            public final c[] a(c.a[] aVarArr, com.google.android.exoplayer2.upstream.c cVar) {
                c[] cVarArr = new c[aVarArr.length];
                for (int i = 0; i < aVarArr.length; i++) {
                    cVarArr[i] = aVarArr[i] == null ? null : new a(aVarArr[i].f21931a, aVarArr[i].f21932b);
                }
                return cVarArr;
            }
        }

        public a(TrackGroup trackGroup, int[] iArr) {
            super(trackGroup, iArr);
        }

        @Override // com.google.android.exoplayer2.trackselection.c
        public final int a() {
            return 0;
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/offline/DownloadHelper$b.class */
    static final class b implements com.google.android.exoplayer2.upstream.c {
        private b() {
        }

        /* synthetic */ b(AnonymousClass1 r3) {
            this();
        }

        @Override // com.google.android.exoplayer2.upstream.c
        public final v a() {
            return null;
        }

        @Override // com.google.android.exoplayer2.upstream.c
        public final void a(Handler handler, c.a aVar) {
        }

        @Override // com.google.android.exoplayer2.upstream.c
        public final void a(c.a aVar) {
        }
    }

    static {
        DefaultTrackSelector.c buildUpon = DefaultTrackSelector.Parameters.DEFAULT_WITHOUT_CONTEXT.buildUpon();
        buildUpon.f21908a = true;
        DefaultTrackSelector.Parameters a2 = buildUpon.b();
        f21496a = a2;
        f21497b = a2;
        f21498c = a2;
    }

    public DownloadHelper(MediaItem mediaItem, r rVar, DefaultTrackSelector.Parameters parameters, ag[] agVarArr) {
        this.f21499d = (MediaItem.c) com.google.android.exoplayer2.util.a.b(mediaItem.f20611b);
        this.e = rVar;
        DefaultTrackSelector defaultTrackSelector = new DefaultTrackSelector(parameters, new a.C0434a(null));
        this.f = defaultTrackSelector;
        this.g = agVarArr;
        defaultTrackSelector.a((h.a) _$$Lambda$DownloadHelper$WZtdwle1ta_LbWPg9ndzvwNE4Fg.INSTANCE, (com.google.android.exoplayer2.upstream.c) new b(null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a() {
    }
}
