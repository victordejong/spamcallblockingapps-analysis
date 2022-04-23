package androidx.media2.exoplayer.external.metadata.scte35;

import androidx.media2.exoplayer.external.metadata.Metadata;
import androidx.media2.exoplayer.external.metadata.c;
import androidx.media2.exoplayer.external.util.o;
import androidx.media2.exoplayer.external.util.p;
import androidx.media2.exoplayer.external.util.z;
import java.nio.ByteBuffer;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/metadata/scte35/a.class */
public final class a implements androidx.media2.exoplayer.external.metadata.a {

    /* renamed from: a  reason: collision with root package name */
    private final p f3468a = new p();

    /* renamed from: b  reason: collision with root package name */
    private final o f3469b = new o();

    /* renamed from: c  reason: collision with root package name */
    private z f3470c;

    @Override // androidx.media2.exoplayer.external.metadata.a
    public final Metadata a(c cVar) {
        if (this.f3470c == null || cVar.f != this.f3470c.a()) {
            z zVar = new z(cVar.f2950d);
            this.f3470c = zVar;
            zVar.c(cVar.f2950d - cVar.f);
        }
        ByteBuffer byteBuffer = cVar.f2949c;
        byte[] array = byteBuffer.array();
        int limit = byteBuffer.limit();
        this.f3468a.a(array, limit);
        this.f3469b.a(array, limit);
        this.f3469b.b(39);
        long c2 = (this.f3469b.c(1) << 32) | this.f3469b.c(32);
        this.f3469b.b(20);
        int c3 = this.f3469b.c(12);
        int c4 = this.f3469b.c(8);
        Metadata.Entry entry = null;
        this.f3468a.d(14);
        if (c4 == 0) {
            entry = new SpliceNullCommand();
        } else if (c4 == 255) {
            entry = PrivateCommand.parseFromSection(this.f3468a, c3, c2);
        } else if (c4 == 4) {
            entry = SpliceScheduleCommand.parseFromSection(this.f3468a);
        } else if (c4 == 5) {
            entry = SpliceInsertCommand.parseFromSection(this.f3468a, c2, this.f3470c);
        } else if (c4 == 6) {
            entry = TimeSignalCommand.parseFromSection(this.f3468a, c2, this.f3470c);
        }
        return entry == null ? new Metadata(new Metadata.Entry[0]) : new Metadata(entry);
    }
}
