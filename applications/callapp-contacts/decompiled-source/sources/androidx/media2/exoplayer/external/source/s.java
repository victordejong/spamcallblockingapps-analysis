package androidx.media2.exoplayer.external.source;

import androidx.media2.exoplayer.external.aj;
import androidx.media2.exoplayer.external.source.am;
import androidx.media2.exoplayer.external.trackselection.e;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/s.class */
public interface s extends am {

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/s$a.class */
    public interface a extends am.a<s> {
        void a(s sVar);
    }

    long a(long j, aj ajVar);

    long a(e[] eVarArr, boolean[] zArr, al[] alVarArr, boolean[] zArr2, long j);

    @Override // androidx.media2.exoplayer.external.source.am
    void a(long j);

    void a(long j, boolean z);

    void a(a aVar, long j);

    long b(long j);

    TrackGroupArray b();

    long c();

    @Override // androidx.media2.exoplayer.external.source.am
    boolean c(long j);

    @Override // androidx.media2.exoplayer.external.source.am
    long d();

    @Override // androidx.media2.exoplayer.external.source.am
    long e();

    void k_() throws IOException;
}
