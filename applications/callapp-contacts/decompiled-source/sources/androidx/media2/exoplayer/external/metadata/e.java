package androidx.media2.exoplayer.external.metadata;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import androidx.media2.exoplayer.external.ExoPlaybackException;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.b;
import androidx.media2.exoplayer.external.drm.k;
import androidx.media2.exoplayer.external.metadata.Metadata;
import androidx.media2.exoplayer.external.util.a;
import androidx.media2.exoplayer.external.util.ac;
import androidx.media2.exoplayer.external.x;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/metadata/e.class */
public final class e extends b implements Handler.Callback {

    /* renamed from: a  reason: collision with root package name */
    private final b f3446a;

    /* renamed from: b  reason: collision with root package name */
    private final d f3447b;

    /* renamed from: c  reason: collision with root package name */
    private final Handler f3448c;

    /* renamed from: d  reason: collision with root package name */
    private final x f3449d;
    private final c e;
    private final Metadata[] f;
    private final long[] g;
    private int h;
    private int i;
    private a j;
    private boolean k;
    private long l;

    public e(d dVar, Looper looper) {
        this(dVar, looper, b.f3445a);
    }

    public e(d dVar, Looper looper, b bVar) {
        super(4);
        this.f3447b = (d) a.a(dVar);
        this.f3448c = looper == null ? null : ac.a(looper, (Handler.Callback) this);
        this.f3446a = (b) a.a(bVar);
        this.f3449d = new x();
        this.e = new c();
        this.f = new Metadata[5];
        this.g = new long[5];
    }

    private void a(Metadata metadata) {
        this.f3447b.a(metadata);
    }

    private void a(Metadata metadata, List<Metadata.Entry> list) {
        for (int i = 0; i < metadata.length(); i++) {
            Format wrappedMetadataFormat = metadata.get(i).getWrappedMetadataFormat();
            if (wrappedMetadataFormat == null || !this.f3446a.a(wrappedMetadataFormat)) {
                list.add(metadata.get(i));
            } else {
                a b2 = this.f3446a.b(wrappedMetadataFormat);
                byte[] bArr = (byte[]) a.a(metadata.get(i).getWrappedMetadataBytes());
                this.e.a();
                this.e.c(bArr.length);
                this.e.f2949c.put(bArr);
                this.e.h();
                Metadata a2 = b2.a(this.e);
                if (a2 != null) {
                    a(a2, list);
                }
            }
        }
    }

    private void z() {
        Arrays.fill(this.f, (Object) null);
        this.h = 0;
        this.i = 0;
    }

    @Override // androidx.media2.exoplayer.external.ah
    public final int a(Format format) {
        if (this.f3446a.a(format)) {
            return a((k<?>) null, format.drmInitData) ? 4 : 2;
        }
        return 0;
    }

    @Override // androidx.media2.exoplayer.external.ag
    public final void a(long j, long j2) throws ExoPlaybackException {
        if (!this.k && this.i < 5) {
            this.e.a();
            int a2 = a(this.f3449d, (androidx.media2.exoplayer.external.b.e) this.e, false);
            if (a2 == -4) {
                if (this.e.c()) {
                    this.k = true;
                } else if (!this.e.l_()) {
                    this.e.f = this.l;
                    this.e.h();
                    Metadata a3 = this.j.a(this.e);
                    if (a3 != null) {
                        ArrayList arrayList = new ArrayList(a3.length());
                        a(a3, arrayList);
                        if (!arrayList.isEmpty()) {
                            Metadata metadata = new Metadata(arrayList);
                            int i = (this.h + this.i) % 5;
                            this.f[i] = metadata;
                            this.g[i] = this.e.f2950d;
                            this.i++;
                        }
                    }
                }
            } else if (a2 == -5) {
                this.l = this.f3449d.f4257c.subsampleOffsetUs;
            }
        }
        if (this.i > 0) {
            long[] jArr = this.g;
            int i2 = this.h;
            if (jArr[i2] <= j) {
                Metadata metadata2 = this.f[i2];
                Handler handler = this.f3448c;
                if (handler != null) {
                    handler.obtainMessage(0, metadata2).sendToTarget();
                } else {
                    a(metadata2);
                }
                Metadata[] metadataArr = this.f;
                int i3 = this.h;
                metadataArr[i3] = null;
                this.h = (i3 + 1) % 5;
                this.i--;
            }
        }
    }

    @Override // androidx.media2.exoplayer.external.b
    public final void a(long j, boolean z) {
        z();
        this.k = false;
    }

    @Override // androidx.media2.exoplayer.external.b
    public final void a(Format[] formatArr, long j) throws ExoPlaybackException {
        this.j = this.f3446a.b(formatArr[0]);
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        if (message.what == 0) {
            a((Metadata) message.obj);
            return true;
        }
        throw new IllegalStateException();
    }

    @Override // androidx.media2.exoplayer.external.b
    public final void r() {
        z();
        this.j = null;
    }

    @Override // androidx.media2.exoplayer.external.ag
    public final boolean x() {
        return true;
    }

    @Override // androidx.media2.exoplayer.external.ag
    public final boolean y() {
        return this.k;
    }
}
