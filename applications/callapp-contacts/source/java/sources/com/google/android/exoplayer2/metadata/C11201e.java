package com.google.android.exoplayer2.metadata;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.google.android.exoplayer2.AbstractC10976e;
import com.google.android.exoplayer2.C11258q;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.util.C11593a;
import com.google.android.exoplayer2.util.C11599af;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
/* renamed from: com.google.android.exoplayer2.metadata.e */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/metadata/e.class */
public final class C11201e extends AbstractC10976e implements Handler.Callback {

    /* renamed from: a */
    private final AbstractC11195b f36753a;

    /* renamed from: b */
    private final AbstractC11198d f36754b;

    /* renamed from: c */
    private final Handler f36755c;

    /* renamed from: d */
    private final C11197c f36756d;

    /* renamed from: e */
    private final Metadata[] f36757e;

    /* renamed from: f */
    private final long[] f36758f;

    /* renamed from: g */
    private int f36759g;

    /* renamed from: h */
    private int f36760h;

    /* renamed from: i */
    private AbstractC11194a f36761i;

    /* renamed from: j */
    private boolean f36762j;

    /* renamed from: k */
    private boolean f36763k;

    /* renamed from: l */
    private long f36764l;

    public C11201e(AbstractC11198d abstractC11198d, Looper looper) {
        this(abstractC11198d, looper, AbstractC11195b.f36751a);
    }

    public C11201e(AbstractC11198d abstractC11198d, Looper looper, AbstractC11195b abstractC11195b) {
        super(5);
        this.f36754b = (AbstractC11198d) C11593a.m20020b(abstractC11198d);
        this.f36755c = looper == null ? null : C11599af.m19983a(looper, (Handler.Callback) this);
        this.f36753a = (AbstractC11195b) C11593a.m20020b(abstractC11195b);
        this.f36756d = new C11197c();
        this.f36757e = new Metadata[5];
        this.f36758f = new long[5];
    }

    /* renamed from: A */
    private void m21212A() {
        Arrays.fill(this.f36757e, (Object) null);
        this.f36759g = 0;
        this.f36760h = 0;
    }

    /* renamed from: a */
    private void m21211a(Metadata metadata) {
        this.f36754b.mo21213a(metadata);
    }

    /* renamed from: a */
    private void m21210a(Metadata metadata, List<Metadata.Entry> list) {
        for (int i = 0; i < metadata.length(); i++) {
            Format wrappedMetadataFormat = metadata.get(i).getWrappedMetadataFormat();
            if (wrappedMetadataFormat == null || !this.f36753a.mo21215a(wrappedMetadataFormat)) {
                list.add(metadata.get(i));
            } else {
                AbstractC11194a mo21214b = this.f36753a.mo21214b(wrappedMetadataFormat);
                byte[] bArr = (byte[]) C11593a.m20020b(metadata.get(i).getWrappedMetadataBytes());
                this.f36756d.mo20663a();
                this.f36756d.m21925c(bArr.length);
                ((ByteBuffer) C11599af.m19974a(this.f36756d.f35336c)).put(bArr);
                this.f36756d.m21921h();
                Metadata mo21206a = mo21214b.mo21206a(this.f36756d);
                if (mo21206a != null) {
                    m21210a(mo21206a, list);
                }
            }
        }
    }

    @Override // com.google.android.exoplayer2.AbstractC10853ag
    /* renamed from: a */
    public final int mo19748a(Format format) {
        if (this.f36753a.mo21215a(format)) {
            return (format.exoMediaCryptoType == null ? 4 : 2) | 0 | 0;
        }
        return 0;
    }

    @Override // com.google.android.exoplayer2.AbstractC10851af
    /* renamed from: a */
    public final void mo19749a(long j, long j2) {
        if (!this.f36762j && this.f36760h < 5) {
            this.f36756d.mo20663a();
            C11258q t = m21791t();
            int a = m21808a(t, (DecoderInputBuffer) this.f36756d, false);
            if (a == -4) {
                if (this.f36756d.m21917c()) {
                    this.f36762j = true;
                } else {
                    this.f36756d.f36752g = this.f36764l;
                    this.f36756d.m21921h();
                    Metadata mo21206a = ((AbstractC11194a) C11599af.m19974a(this.f36761i)).mo21206a(this.f36756d);
                    if (mo21206a != null) {
                        ArrayList arrayList = new ArrayList(mo21206a.length());
                        m21210a(mo21206a, arrayList);
                        if (!arrayList.isEmpty()) {
                            Metadata metadata = new Metadata(arrayList);
                            int i = (this.f36759g + this.f36760h) % 5;
                            this.f36757e[i] = metadata;
                            this.f36758f[i] = this.f36756d.f35338e;
                            this.f36760h++;
                        }
                    }
                }
            } else if (a == -5) {
                this.f36764l = ((Format) C11593a.m20020b(t.f36928b)).subsampleOffsetUs;
            }
        }
        if (this.f36760h > 0) {
            long[] jArr = this.f36758f;
            int i2 = this.f36759g;
            if (jArr[i2] <= j) {
                Metadata metadata2 = (Metadata) C11599af.m19974a(this.f36757e[i2]);
                Handler handler = this.f36755c;
                if (handler != null) {
                    handler.obtainMessage(0, metadata2).sendToTarget();
                } else {
                    m21211a(metadata2);
                }
                Metadata[] metadataArr = this.f36757e;
                int i3 = this.f36759g;
                metadataArr[i3] = null;
                this.f36759g = (i3 + 1) % 5;
                this.f36760h--;
            }
        }
        if (!this.f36762j || this.f36760h != 0) {
            return;
        }
        this.f36763k = true;
    }

    @Override // com.google.android.exoplayer2.AbstractC10976e
    /* renamed from: a */
    public final void mo19716a(long j, boolean z) {
        m21212A();
        this.f36762j = false;
        this.f36763k = false;
    }

    @Override // com.google.android.exoplayer2.AbstractC10976e
    /* renamed from: a */
    public final void mo19747a(Format[] formatArr, long j, long j2) {
        this.f36761i = this.f36753a.mo21214b(formatArr[0]);
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        if (message.what == 0) {
            m21211a((Metadata) message.obj);
            return true;
        }
        throw new IllegalStateException();
    }

    @Override // com.google.android.exoplayer2.AbstractC10976e
    /* renamed from: r */
    public final void mo19684r() {
        m21212A();
        this.f36761i = null;
    }

    @Override // com.google.android.exoplayer2.AbstractC10851af, com.google.android.exoplayer2.AbstractC10853ag
    /* renamed from: x */
    public final String mo19682x() {
        return "MetadataRenderer";
    }

    @Override // com.google.android.exoplayer2.AbstractC10851af
    /* renamed from: y */
    public final boolean mo19681y() {
        return true;
    }

    @Override // com.google.android.exoplayer2.AbstractC10851af
    /* renamed from: z */
    public final boolean mo19746z() {
        return this.f36763k;
    }
}
