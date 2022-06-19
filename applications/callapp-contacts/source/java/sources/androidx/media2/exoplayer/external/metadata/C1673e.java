package androidx.media2.exoplayer.external.metadata;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import androidx.media2.exoplayer.external.AbstractC1435b;
import androidx.media2.exoplayer.external.C2058x;
import androidx.media2.exoplayer.external.ExoPlaybackException;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.drm.AbstractC1468k;
import androidx.media2.exoplayer.external.metadata.Metadata;
import androidx.media2.exoplayer.external.p063b.C1442e;
import androidx.media2.exoplayer.external.util.C1993a;
import androidx.media2.exoplayer.external.util.C1996ac;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
/* renamed from: androidx.media2.exoplayer.external.metadata.e */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/metadata/e.class */
public final class C1673e extends AbstractC1435b implements Handler.Callback {

    /* renamed from: a */
    private final AbstractC1669b f6665a;

    /* renamed from: b */
    private final AbstractC1672d f6666b;

    /* renamed from: c */
    private final Handler f6667c;

    /* renamed from: d */
    private final C2058x f6668d;

    /* renamed from: e */
    private final C1671c f6669e;

    /* renamed from: f */
    private final Metadata[] f6670f;

    /* renamed from: g */
    private final long[] f6671g;

    /* renamed from: h */
    private int f6672h;

    /* renamed from: i */
    private int f6673i;

    /* renamed from: j */
    private AbstractC1668a f6674j;

    /* renamed from: k */
    private boolean f6675k;

    /* renamed from: l */
    private long f6676l;

    public C1673e(AbstractC1672d abstractC1672d, Looper looper) {
        this(abstractC1672d, looper, AbstractC1669b.f6663a);
    }

    public C1673e(AbstractC1672d abstractC1672d, Looper looper, AbstractC1669b abstractC1669b) {
        super(4);
        this.f6666b = (AbstractC1672d) C1993a.m41690a(abstractC1672d);
        this.f6667c = looper == null ? null : C1996ac.m41665a(looper, (Handler.Callback) this);
        this.f6665a = (AbstractC1669b) C1993a.m41690a(abstractC1669b);
        this.f6668d = new C2058x();
        this.f6669e = new C1671c();
        this.f6670f = new Metadata[5];
        this.f6671g = new long[5];
    }

    /* renamed from: a */
    private void m42408a(Metadata metadata) {
        this.f6666b.mo41236a(metadata);
    }

    /* renamed from: a */
    private void m42407a(Metadata metadata, List<Metadata.Entry> list) {
        for (int i = 0; i < metadata.length(); i++) {
            Format wrappedMetadataFormat = metadata.get(i).getWrappedMetadataFormat();
            if (wrappedMetadataFormat == null || !this.f6665a.mo41193a(wrappedMetadataFormat)) {
                list.add(metadata.get(i));
            } else {
                AbstractC1668a mo41192b = this.f6665a.mo41192b(wrappedMetadataFormat);
                byte[] bArr = (byte[]) C1993a.m41690a(metadata.get(i).getWrappedMetadataBytes());
                this.f6669e.mo41916a();
                this.f6669e.m42907c(bArr.length);
                this.f6669e.f5494c.put(bArr);
                this.f6669e.m42903h();
                Metadata mo41191a = mo41192b.mo41191a(this.f6669e);
                if (mo41191a != null) {
                    m42407a(mo41191a, list);
                }
            }
        }
    }

    /* renamed from: z */
    private void m42406z() {
        Arrays.fill(this.f6670f, (Object) null);
        this.f6672h = 0;
        this.f6673i = 0;
    }

    @Override // androidx.media2.exoplayer.external.AbstractC1376ah
    /* renamed from: a */
    public final int mo41178a(Format format) {
        if (this.f6665a.mo41193a(format)) {
            return m42934a((AbstractC1468k<?>) null, format.drmInitData) ? 4 : 2;
        }
        return 0;
    }

    @Override // androidx.media2.exoplayer.external.AbstractC1375ag
    /* renamed from: a */
    public final void mo41180a(long j, long j2) throws ExoPlaybackException {
        if (!this.f6675k && this.f6673i < 5) {
            this.f6669e.mo41916a();
            int a = m42933a(this.f6668d, (C1442e) this.f6669e, false);
            if (a == -4) {
                if (this.f6669e.m42911c()) {
                    this.f6675k = true;
                } else if (!this.f6669e.m42908l_()) {
                    this.f6669e.f6664f = this.f6676l;
                    this.f6669e.m42903h();
                    Metadata mo41191a = this.f6674j.mo41191a(this.f6669e);
                    if (mo41191a != null) {
                        ArrayList arrayList = new ArrayList(mo41191a.length());
                        m42407a(mo41191a, arrayList);
                        if (!arrayList.isEmpty()) {
                            Metadata metadata = new Metadata(arrayList);
                            int i = (this.f6672h + this.f6673i) % 5;
                            this.f6670f[i] = metadata;
                            this.f6671g[i] = this.f6669e.f5495d;
                            this.f6673i++;
                        }
                    }
                }
            } else if (a == -5) {
                this.f6676l = this.f6668d.f8282c.subsampleOffsetUs;
            }
        }
        if (this.f6673i > 0) {
            long[] jArr = this.f6671g;
            int i2 = this.f6672h;
            if (jArr[i2] > j) {
                return;
            }
            Metadata metadata2 = this.f6670f[i2];
            Handler handler = this.f6667c;
            if (handler != null) {
                handler.obtainMessage(0, metadata2).sendToTarget();
            } else {
                m42408a(metadata2);
            }
            Metadata[] metadataArr = this.f6670f;
            int i3 = this.f6672h;
            metadataArr[i3] = null;
            this.f6672h = (i3 + 1) % 5;
            this.f6673i--;
        }
    }

    @Override // androidx.media2.exoplayer.external.AbstractC1435b
    /* renamed from: a */
    public final void mo41179a(long j, boolean z) {
        m42406z();
        this.f6675k = false;
    }

    @Override // androidx.media2.exoplayer.external.AbstractC1435b
    /* renamed from: a */
    public final void mo41176a(Format[] formatArr, long j) throws ExoPlaybackException {
        this.f6674j = this.f6665a.mo41192b(formatArr[0]);
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        if (message.what == 0) {
            m42408a((Metadata) message.obj);
            return true;
        }
        throw new IllegalStateException();
    }

    @Override // androidx.media2.exoplayer.external.AbstractC1435b
    /* renamed from: r */
    public final void mo41429r() {
        m42406z();
        this.f6674j = null;
    }

    @Override // androidx.media2.exoplayer.external.AbstractC1375ag
    /* renamed from: x */
    public final boolean mo41174x() {
        return true;
    }

    @Override // androidx.media2.exoplayer.external.AbstractC1375ag
    /* renamed from: y */
    public final boolean mo41173y() {
        return this.f6675k;
    }
}
