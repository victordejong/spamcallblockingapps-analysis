package androidx.media2.exoplayer.external.source;

import androidx.media2.exoplayer.external.C1378aj;
import androidx.media2.exoplayer.external.source.AbstractC1757am;
import androidx.media2.exoplayer.external.trackselection.AbstractC1940e;
import java.io.IOException;
/* renamed from: androidx.media2.exoplayer.external.source.s */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/s.class */
public interface AbstractC1840s extends AbstractC1757am {

    /* renamed from: androidx.media2.exoplayer.external.source.s$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/s$a.class */
    public interface AbstractC1841a extends AbstractC1757am.AbstractC1758a<AbstractC1840s> {
        /* renamed from: a */
        void mo41805a(AbstractC1840s abstractC1840s);
    }

    /* renamed from: a */
    long mo42085a(long j, C1378aj c1378aj);

    /* renamed from: a */
    long mo42082a(AbstractC1940e[] abstractC1940eArr, boolean[] zArr, AbstractC1756al[] abstractC1756alArr, boolean[] zArr2, long j);

    @Override // androidx.media2.exoplayer.external.source.AbstractC1757am
    /* renamed from: a */
    void mo42086a(long j);

    /* renamed from: a */
    void mo42084a(long j, boolean z);

    /* renamed from: a */
    void mo42083a(AbstractC1841a abstractC1841a, long j);

    /* renamed from: b */
    long mo42080b(long j);

    /* renamed from: b */
    TrackGroupArray mo42081b();

    /* renamed from: c */
    long mo42079c();

    @Override // androidx.media2.exoplayer.external.source.AbstractC1757am
    /* renamed from: c */
    boolean mo42078c(long j);

    @Override // androidx.media2.exoplayer.external.source.AbstractC1757am
    /* renamed from: d */
    long mo42077d();

    @Override // androidx.media2.exoplayer.external.source.AbstractC1757am
    /* renamed from: e */
    long mo42076e();

    /* renamed from: k_ */
    void mo42075k_() throws IOException;
}
