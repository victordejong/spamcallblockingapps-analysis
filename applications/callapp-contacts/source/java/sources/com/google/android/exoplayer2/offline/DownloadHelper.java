package com.google.android.exoplayer2.offline;

import android.os.Handler;
import android.util.SparseIntArray;
import android.view.Surface;
import com.google.android.exoplayer2.AbstractC10853ag;
import com.google.android.exoplayer2.AbstractC10864al;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.MediaItem;
import com.google.android.exoplayer2.decoder.C10934d;
import com.google.android.exoplayer2.decoder.C10935e;
import com.google.android.exoplayer2.source.AbstractC11315r;
import com.google.android.exoplayer2.source.TrackGroup;
import com.google.android.exoplayer2.trackselection.AbstractC11435b;
import com.google.android.exoplayer2.trackselection.AbstractC11436c;
import com.google.android.exoplayer2.trackselection.AbstractC11444h;
import com.google.android.exoplayer2.trackselection.DefaultTrackSelector;
import com.google.android.exoplayer2.upstream.AbstractC11534c;
import com.google.android.exoplayer2.upstream.AbstractC11590v;
import com.google.android.exoplayer2.util.C11593a;
import com.google.android.exoplayer2.util.C11599af;
import com.google.android.exoplayer2.video.AbstractC11663l;
import java.io.IOException;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/offline/DownloadHelper.class */
public final class DownloadHelper {

    /* renamed from: a */
    public static final DefaultTrackSelector.Parameters f36904a;
    @Deprecated

    /* renamed from: b */
    public static final DefaultTrackSelector.Parameters f36905b;
    @Deprecated

    /* renamed from: c */
    public static final DefaultTrackSelector.Parameters f36906c;

    /* renamed from: d */
    private final MediaItem.C10832c f36907d;

    /* renamed from: e */
    private final AbstractC11315r f36908e;

    /* renamed from: f */
    private final DefaultTrackSelector f36909f;

    /* renamed from: g */
    private final AbstractC10853ag[] f36910g;

    /* renamed from: h */
    private final SparseIntArray f36911h = new SparseIntArray();

    /* renamed from: i */
    private final Handler f36912i = C11599af.m19952b();

    /* renamed from: j */
    private final AbstractC10864al.C10867b f36913j = new AbstractC10864al.C10867b();

    /* renamed from: com.google.android.exoplayer2.offline.DownloadHelper$1 */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/offline/DownloadHelper$1.class */
    final class C112501 implements AbstractC11663l {
        C112501() {
        }

        @Override // com.google.android.exoplayer2.video.AbstractC11663l
        /* renamed from: a */
        public /* synthetic */ void mo19667a(int i, int i2, int i3, float f) {
            AbstractC11663l._CC.$default$a(this, i, i2, i3, f);
        }

        @Override // com.google.android.exoplayer2.video.AbstractC11663l
        /* renamed from: a */
        public /* synthetic */ void mo19666a(int i, long j) {
            AbstractC11663l._CC.$default$a(this, i, j);
        }

        @Override // com.google.android.exoplayer2.video.AbstractC11663l
        /* renamed from: a */
        public /* synthetic */ void mo19665a(long j, int i) {
            AbstractC11663l._CC.$default$a(this, j, i);
        }

        @Override // com.google.android.exoplayer2.video.AbstractC11663l
        /* renamed from: a */
        public /* synthetic */ void mo19664a(Surface surface) {
            AbstractC11663l._CC.$default$a(this, surface);
        }

        @Override // com.google.android.exoplayer2.video.AbstractC11663l
        /* renamed from: a */
        public /* synthetic */ void mo19663a(Format format, C10935e c10935e) {
            AbstractC11663l._CC.$default$a(this, format, c10935e);
        }

        @Override // com.google.android.exoplayer2.video.AbstractC11663l
        /* renamed from: a */
        public /* synthetic */ void mo19662a(C10934d c10934d) {
            AbstractC11663l._CC.$default$a(this, c10934d);
        }

        @Override // com.google.android.exoplayer2.video.AbstractC11663l
        /* renamed from: a */
        public /* synthetic */ void mo19661a(String str) {
            AbstractC11663l._CC.$default$a(this, str);
        }

        @Override // com.google.android.exoplayer2.video.AbstractC11663l
        /* renamed from: a */
        public /* synthetic */ void mo19660a(String str, long j, long j2) {
            AbstractC11663l._CC.$default$a(this, str, j, j2);
        }

        @Override // com.google.android.exoplayer2.video.AbstractC11663l
        /* renamed from: b */
        public /* synthetic */ void mo19659b(C10934d c10934d) {
            AbstractC11663l._CC.$default$b(this, c10934d);
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/offline/DownloadHelper$LiveContentUnsupportedException.class */
    public static class LiveContentUnsupportedException extends IOException {
    }

    /* renamed from: com.google.android.exoplayer2.offline.DownloadHelper$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/offline/DownloadHelper$a.class */
    static final class C11251a extends AbstractC11435b {

        /* renamed from: com.google.android.exoplayer2.offline.DownloadHelper$a$a */
        /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/offline/DownloadHelper$a$a.class */
        static final class C11252a implements AbstractC11436c.AbstractC11438b {
            private C11252a() {
            }

            /* synthetic */ C11252a(C112501 c112501) {
                this();
            }

            @Override // com.google.android.exoplayer2.trackselection.AbstractC11436c.AbstractC11438b
            /* renamed from: a */
            public final AbstractC11436c[] mo20566a(AbstractC11436c.C11437a[] c11437aArr, AbstractC11534c abstractC11534c) {
                AbstractC11436c[] abstractC11436cArr = new AbstractC11436c[c11437aArr.length];
                for (int i = 0; i < c11437aArr.length; i++) {
                    abstractC11436cArr[i] = c11437aArr[i] == null ? null : new C11251a(c11437aArr[i].f37814a, c11437aArr[i].f37815b);
                }
                return abstractC11436cArr;
            }
        }

        public C11251a(TrackGroup trackGroup, int[] iArr) {
            super(trackGroup, iArr);
        }

        @Override // com.google.android.exoplayer2.trackselection.AbstractC11436c
        /* renamed from: a */
        public final int mo20565a() {
            return 0;
        }
    }

    /* renamed from: com.google.android.exoplayer2.offline.DownloadHelper$b */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/offline/DownloadHelper$b.class */
    static final class C11253b implements AbstractC11534c {
        private C11253b() {
        }

        /* synthetic */ C11253b(C112501 c112501) {
            this();
        }

        @Override // com.google.android.exoplayer2.upstream.AbstractC11534c
        /* renamed from: a */
        public final AbstractC11590v mo20063a() {
            return null;
        }

        @Override // com.google.android.exoplayer2.upstream.AbstractC11534c
        /* renamed from: a */
        public final void mo20059a(Handler handler, AbstractC11534c.AbstractC11535a abstractC11535a) {
        }

        @Override // com.google.android.exoplayer2.upstream.AbstractC11534c
        /* renamed from: a */
        public final void mo20058a(AbstractC11534c.AbstractC11535a abstractC11535a) {
        }
    }

    static {
        DefaultTrackSelector.C11427c buildUpon = DefaultTrackSelector.Parameters.DEFAULT_WITHOUT_CONTEXT.buildUpon();
        buildUpon.f37745a = true;
        DefaultTrackSelector.Parameters mo20575b = buildUpon.mo20575b();
        f36904a = mo20575b;
        f36905b = mo20575b;
        f36906c = mo20575b;
    }

    public DownloadHelper(MediaItem mediaItem, AbstractC11315r abstractC11315r, DefaultTrackSelector.Parameters parameters, AbstractC10853ag[] abstractC10853agArr) {
        this.f36907d = (MediaItem.C10832c) C11593a.m20020b(mediaItem.f34812b);
        this.f36908e = abstractC11315r;
        DefaultTrackSelector defaultTrackSelector = new DefaultTrackSelector(parameters, new C11251a.C11252a(null));
        this.f36909f = defaultTrackSelector;
        this.f36910g = abstractC10853agArr;
        defaultTrackSelector.m20556a((AbstractC11444h.AbstractC11445a) _$$Lambda$DownloadHelper$WZtdwle1ta_LbWPg9ndzvwNE4Fg.INSTANCE, (AbstractC11534c) new C11253b(null));
    }

    /* renamed from: a */
    public static /* synthetic */ void m21033a() {
    }
}
