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
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:androidx/media2/player/n.class */
public final class n {

    /* renamed from: a  reason: collision with root package name */
    int f4480a;

    /* renamed from: b  reason: collision with root package name */
    MediaItem f4481b;

    /* renamed from: c  reason: collision with root package name */
    final l f4482c;

    /* renamed from: d  reason: collision with root package name */
    final DefaultTrackSelector f4483d;
    boolean i;
    final SparseArray<b> e = new SparseArray<>();
    final SparseArray<b> f = new SparseArray<>();
    final SparseArray<b> g = new SparseArray<>();
    final SparseArray<a> h = new SparseArray<>();
    b j = null;
    b k = null;
    b l = null;
    a m = null;
    int n = -1;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/media2/player/n$a.class */
    public static final class a extends b {

        /* renamed from: a  reason: collision with root package name */
        final int f4484a;

        /* renamed from: b  reason: collision with root package name */
        final int f4485b;

        /* renamed from: c  reason: collision with root package name */
        final Format f4486c;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public a(int r7, int r8, androidx.media2.exoplayer.external.Format r9, int r10, int r11) {
            /*
                Method dump skipped, instructions count: 256
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.media2.player.n.a.<init>(int, int, androidx.media2.exoplayer.external.Format, int, int):void");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/media2/player/n$b.class */
    public static class b {

        /* renamed from: d  reason: collision with root package name */
        final int f4487d;
        final SessionPlayer.TrackInfo e;

        /* JADX INFO: Access modifiers changed from: package-private */
        public b(int i, int i2, MediaFormat mediaFormat, int i3) {
            this.f4487d = i;
            this.e = new SessionPlayer.TrackInfo(i3, i2, mediaFormat, i2 == 1 ? false : true);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public n(l lVar) {
        this.f4482c = lVar;
        DefaultTrackSelector defaultTrackSelector = new DefaultTrackSelector();
        this.f4483d = defaultTrackSelector;
        defaultTrackSelector.a(new DefaultTrackSelector.b().a(true).b(true));
    }

    public final SessionPlayer.TrackInfo a(int i) {
        b bVar;
        if (i == 1) {
            b bVar2 = this.k;
            if (bVar2 == null) {
                return null;
            }
            return bVar2.e;
        } else if (i == 2) {
            b bVar3 = this.j;
            if (bVar3 == null) {
                return null;
            }
            return bVar3.e;
        } else if (i == 4) {
            a aVar = this.m;
            if (aVar == null) {
                return null;
            }
            return aVar.e;
        } else if (i == 5 && (bVar = this.l) != null) {
            return bVar.e;
        } else {
            return null;
        }
    }

    public final boolean a() {
        boolean z = this.i;
        this.i = false;
        return z;
    }

    public final List<SessionPlayer.TrackInfo> b() {
        ArrayList arrayList = new ArrayList();
        for (SparseArray sparseArray : Arrays.asList(this.e, this.f, this.g, this.h)) {
            for (int i = 0; i < sparseArray.size(); i++) {
                arrayList.add(((b) sparseArray.valueAt(i)).e);
            }
        }
        return arrayList;
    }
}
