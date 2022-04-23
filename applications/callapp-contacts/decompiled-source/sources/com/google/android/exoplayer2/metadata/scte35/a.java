package com.google.android.exoplayer2.metadata.scte35;

import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.c;
import com.google.android.exoplayer2.metadata.f;
import com.google.android.exoplayer2.util.ad;
import com.google.android.exoplayer2.util.t;
import com.google.android.exoplayer2.util.u;
import java.nio.ByteBuffer;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/metadata/scte35/a.class */
public final class a extends f {

    /* renamed from: a  reason: collision with root package name */
    private final u f21460a = new u();

    /* renamed from: b  reason: collision with root package name */
    private final t f21461b = new t();

    /* renamed from: c  reason: collision with root package name */
    private ad f21462c;

    @Override // com.google.android.exoplayer2.metadata.f
    public final Metadata a(c cVar, ByteBuffer byteBuffer) {
        if (this.f21462c == null || cVar.g != this.f21462c.c()) {
            ad adVar = new ad(cVar.e);
            this.f21462c = adVar;
            adVar.c(cVar.e - cVar.g);
        }
        byte[] array = byteBuffer.array();
        int limit = byteBuffer.limit();
        this.f21460a.a(array, limit);
        this.f21461b.a(array, limit);
        this.f21461b.b(39);
        long c2 = (this.f21461b.c(1) << 32) | this.f21461b.c(32);
        this.f21461b.b(20);
        int c3 = this.f21461b.c(12);
        int c4 = this.f21461b.c(8);
        Metadata.Entry entry = null;
        this.f21460a.e(14);
        if (c4 == 0) {
            entry = new SpliceNullCommand();
        } else if (c4 == 255) {
            entry = PrivateCommand.parseFromSection(this.f21460a, c3, c2);
        } else if (c4 == 4) {
            entry = SpliceScheduleCommand.parseFromSection(this.f21460a);
        } else if (c4 == 5) {
            entry = SpliceInsertCommand.parseFromSection(this.f21460a, c2, this.f21462c);
        } else if (c4 == 6) {
            entry = TimeSignalCommand.parseFromSection(this.f21460a, c2, this.f21462c);
        }
        return entry == null ? new Metadata(new Metadata.Entry[0]) : new Metadata(entry);
    }
}
