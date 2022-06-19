package com.google.android.exoplayer2.metadata.scte35;

import com.google.android.exoplayer2.metadata.AbstractC5121b;
import com.google.android.exoplayer2.metadata.C5124d;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.util.C5508e;
import com.google.android.exoplayer2.util.C5509e0;
import com.google.android.exoplayer2.util.C5535u;
import com.google.android.exoplayer2.util.C5536v;
import java.nio.ByteBuffer;
/* renamed from: com.google.android.exoplayer2.metadata.scte35.a */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/metadata/scte35/a.class */
public final class C5158a implements AbstractC5121b {

    /* renamed from: a */
    private final C5536v f16210a = new C5536v();

    /* renamed from: b */
    private final C5535u f16211b = new C5535u();

    /* renamed from: c */
    private C5509e0 f16212c;

    @Override // com.google.android.exoplayer2.metadata.AbstractC5121b
    /* renamed from: a */
    public Metadata mo20287a(C5124d c5124d) {
        ByteBuffer byteBuffer = (ByteBuffer) C5508e.m18911e(c5124d.f14775e);
        C5509e0 c5509e0 = this.f16212c;
        if (c5509e0 == null || c5124d.f16087i != c5509e0.m18902e()) {
            C5509e0 c5509e02 = new C5509e0(c5124d.f14776f);
            this.f16212c = c5509e02;
            c5509e02.m18906a(c5124d.f14776f - c5124d.f16087i);
        }
        byte[] array = byteBuffer.array();
        int limit = byteBuffer.limit();
        this.f16210a.m18682K(array, limit);
        this.f16211b.m18697n(array, limit);
        this.f16211b.m18694q(39);
        long m18703h = (this.f16211b.m18703h(1) << 32) | this.f16211b.m18703h(32);
        this.f16211b.m18694q(20);
        int m18703h2 = this.f16211b.m18703h(12);
        int m18703h3 = this.f16211b.m18703h(8);
        TimeSignalCommand timeSignalCommand = null;
        this.f16210a.m18679N(14);
        if (m18703h3 == 0) {
            timeSignalCommand = new SpliceNullCommand();
        } else if (m18703h3 == 255) {
            timeSignalCommand = PrivateCommand.m20314a(this.f16210a, m18703h2, m18703h);
        } else if (m18703h3 == 4) {
            timeSignalCommand = SpliceScheduleCommand.m20304a(this.f16210a);
        } else if (m18703h3 == 5) {
            timeSignalCommand = SpliceInsertCommand.m20311a(this.f16210a, m18703h, this.f16212c);
        } else if (m18703h3 == 6) {
            timeSignalCommand = TimeSignalCommand.m20291a(this.f16210a, m18703h, this.f16212c);
        }
        return timeSignalCommand == null ? new Metadata(new Metadata.Entry[0]) : new Metadata(timeSignalCommand);
    }
}
