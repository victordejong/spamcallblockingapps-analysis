package androidx.media2.player;

import android.media.MediaFormat;
import android.util.SparseArray;
import androidx.media2.common.MediaItem;
import androidx.media2.common.SessionPlayer;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.trackselection.DefaultTrackSelector;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
/* renamed from: androidx.media2.player.n */
/* loaded from: classes-dex2jar.jar:androidx/media2/player/n.class */
public final class C2195n {

    /* renamed from: a */
    int f8643a;

    /* renamed from: b */
    MediaItem f8644b;

    /* renamed from: c */
    final C2190l f8645c;

    /* renamed from: d */
    final DefaultTrackSelector f8646d;

    /* renamed from: i */
    boolean f8651i;

    /* renamed from: e */
    final SparseArray<C2197b> f8647e = new SparseArray<>();

    /* renamed from: f */
    final SparseArray<C2197b> f8648f = new SparseArray<>();

    /* renamed from: g */
    final SparseArray<C2197b> f8649g = new SparseArray<>();

    /* renamed from: h */
    final SparseArray<C2196a> f8650h = new SparseArray<>();

    /* renamed from: j */
    C2197b f8652j = null;

    /* renamed from: k */
    C2197b f8653k = null;

    /* renamed from: l */
    C2197b f8654l = null;

    /* renamed from: m */
    C2196a f8655m = null;

    /* renamed from: n */
    int f8656n = -1;

    /* renamed from: androidx.media2.player.n$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/player/n$a.class */
    public static final class C2196a extends C2197b {

        /* renamed from: a */
        final int f8657a;

        /* renamed from: b */
        final int f8658b;

        /* renamed from: c */
        final Format f8659c;

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public C2196a(int r7, int r8, androidx.media2.exoplayer.external.Format r9, int r10, int r11) {
            /*
                Method dump skipped, instructions count: 256
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.media2.player.C2195n.C2196a.<init>(int, int, androidx.media2.exoplayer.external.Format, int, int):void");
        }
    }

    /* renamed from: androidx.media2.player.n$b */
    /* loaded from: classes-dex2jar.jar:androidx/media2/player/n$b.class */
    public static class C2197b {

        /* renamed from: d */
        final int f8660d;

        /* renamed from: e */
        final SessionPlayer.TrackInfo f8661e;

        public C2197b(int i, int i2, MediaFormat mediaFormat, int i3) {
            this.f8660d = i;
            this.f8661e = new SessionPlayer.TrackInfo(i3, i2, mediaFormat, i2 == 1 ? false : true);
        }
    }

    public C2195n(C2190l c2190l) {
        this.f8645c = c2190l;
        DefaultTrackSelector defaultTrackSelector = new DefaultTrackSelector();
        this.f8646d = defaultTrackSelector;
        defaultTrackSelector.m41860a(new DefaultTrackSelector.C1925b().m41849a(true).m41848b(true));
    }

    /* renamed from: a */
    public final SessionPlayer.TrackInfo m41166a(int i) {
        C2197b c2197b;
        if (i == 1) {
            C2197b c2197b2 = this.f8653k;
            if (c2197b2 != null) {
                return c2197b2.f8661e;
            }
            return null;
        } else if (i == 2) {
            C2197b c2197b3 = this.f8652j;
            if (c2197b3 != null) {
                return c2197b3.f8661e;
            }
            return null;
        } else if (i != 4) {
            if (i != 5 || (c2197b = this.f8654l) == null) {
                return null;
            }
            return c2197b.f8661e;
        } else {
            C2196a c2196a = this.f8655m;
            if (c2196a != null) {
                return c2196a.f8661e;
            }
            return null;
        }
    }

    /* renamed from: a */
    public final boolean m41167a() {
        boolean z = this.f8651i;
        this.f8651i = false;
        return z;
    }

    /* renamed from: b */
    public final List<SessionPlayer.TrackInfo> m41165b() {
        ArrayList arrayList = new ArrayList();
        for (SparseArray sparseArray : Arrays.asList(this.f8647e, this.f8648f, this.f8649g, this.f8650h)) {
            for (int i = 0; i < sparseArray.size(); i++) {
                arrayList.add(((C2197b) sparseArray.valueAt(i)).f8661e);
            }
        }
        return arrayList;
    }
}
