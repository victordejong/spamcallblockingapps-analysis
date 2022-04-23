package com.google.android.exoplayer2.metadata;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.q;
import com.google.android.exoplayer2.util.a;
import com.google.android.exoplayer2.util.af;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/metadata/e.class */
public final class e extends com.google.android.exoplayer2.e implements Handler.Callback {

    /* renamed from: a  reason: collision with root package name */
    private final b f21437a;

    /* renamed from: b  reason: collision with root package name */
    private final d f21438b;

    /* renamed from: c  reason: collision with root package name */
    private final Handler f21439c;

    /* renamed from: d  reason: collision with root package name */
    private final c f21440d;
    private final Metadata[] e;
    private final long[] f;
    private int g;
    private int h;
    private a i;
    private boolean j;
    private boolean k;
    private long l;

    public e(d dVar, Looper looper) {
        this(dVar, looper, b.f21436a);
    }

    public e(d dVar, Looper looper, b bVar) {
        super(5);
        this.f21438b = (d) a.b(dVar);
        this.f21439c = looper == null ? null : af.a(looper, (Handler.Callback) this);
        this.f21437a = (b) a.b(bVar);
        this.f21440d = new c();
        this.e = new Metadata[5];
        this.f = new long[5];
    }

    private void A() {
        Arrays.fill(this.e, (Object) null);
        this.g = 0;
        this.h = 0;
    }

    private void a(Metadata metadata) {
        this.f21438b.a(metadata);
    }

    private void a(Metadata metadata, List<Metadata.Entry> list) {
        for (int i = 0; i < metadata.length(); i++) {
            Format wrappedMetadataFormat = metadata.get(i).getWrappedMetadataFormat();
            if (wrappedMetadataFormat == null || !this.f21437a.a(wrappedMetadataFormat)) {
                list.add(metadata.get(i));
            } else {
                a b2 = this.f21437a.b(wrappedMetadataFormat);
                byte[] bArr = (byte[]) a.b(metadata.get(i).getWrappedMetadataBytes());
                this.f21440d.a();
                this.f21440d.c(bArr.length);
                ((ByteBuffer) af.a(this.f21440d.f20822c)).put(bArr);
                this.f21440d.h();
                Metadata a2 = b2.a(this.f21440d);
                if (a2 != null) {
                    a(a2, list);
                }
            }
        }
    }

    @Override // com.google.android.exoplayer2.ag
    public final int a(Format format) {
        if (!this.f21437a.a(format)) {
            return 0;
        }
        return (format.exoMediaCryptoType == null ? 4 : 2) | 0 | 0;
    }

    @Override // com.google.android.exoplayer2.af
    public final void a(long j, long j2) {
        if (!this.j && this.h < 5) {
            this.f21440d.a();
            q t = t();
            int a2 = a(t, (DecoderInputBuffer) this.f21440d, false);
            if (a2 == -4) {
                if (this.f21440d.c()) {
                    this.j = true;
                } else {
                    this.f21440d.g = this.l;
                    this.f21440d.h();
                    Metadata a3 = ((a) af.a(this.i)).a(this.f21440d);
                    if (a3 != null) {
                        ArrayList arrayList = new ArrayList(a3.length());
                        a(a3, arrayList);
                        if (!arrayList.isEmpty()) {
                            Metadata metadata = new Metadata(arrayList);
                            int i = (this.g + this.h) % 5;
                            this.e[i] = metadata;
                            this.f[i] = this.f21440d.e;
                            this.h++;
                        }
                    }
                }
            } else if (a2 == -5) {
                this.l = ((Format) a.b(t.f21512b)).subsampleOffsetUs;
            }
        }
        if (this.h > 0) {
            long[] jArr = this.f;
            int i2 = this.g;
            if (jArr[i2] <= j) {
                Metadata metadata2 = (Metadata) af.a(this.e[i2]);
                Handler handler = this.f21439c;
                if (handler != null) {
                    handler.obtainMessage(0, metadata2).sendToTarget();
                } else {
                    a(metadata2);
                }
                Metadata[] metadataArr = this.e;
                int i3 = this.g;
                metadataArr[i3] = null;
                this.g = (i3 + 1) % 5;
                this.h--;
            }
        }
        if (this.j && this.h == 0) {
            this.k = true;
        }
    }

    @Override // com.google.android.exoplayer2.e
    public final void a(long j, boolean z) {
        A();
        this.j = false;
        this.k = false;
    }

    @Override // com.google.android.exoplayer2.e
    public final void a(Format[] formatArr, long j, long j2) {
        this.i = this.f21437a.b(formatArr[0]);
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        if (message.what == 0) {
            a((Metadata) message.obj);
            return true;
        }
        throw new IllegalStateException();
    }

    @Override // com.google.android.exoplayer2.e
    public final void r() {
        A();
        this.i = null;
    }

    @Override // com.google.android.exoplayer2.af, com.google.android.exoplayer2.ag
    public final String x() {
        return "MetadataRenderer";
    }

    @Override // com.google.android.exoplayer2.af
    public final boolean y() {
        return true;
    }

    @Override // com.google.android.exoplayer2.af
    public final boolean z() {
        return this.k;
    }
}
