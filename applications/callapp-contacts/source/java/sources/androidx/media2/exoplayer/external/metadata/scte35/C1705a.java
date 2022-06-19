package androidx.media2.exoplayer.external.metadata.scte35;

import androidx.media2.exoplayer.external.metadata.AbstractC1668a;
import androidx.media2.exoplayer.external.metadata.C1671c;
import androidx.media2.exoplayer.external.metadata.Metadata;
import androidx.media2.exoplayer.external.util.C2017o;
import androidx.media2.exoplayer.external.util.C2018p;
import androidx.media2.exoplayer.external.util.C2030z;
import java.nio.ByteBuffer;
/* renamed from: androidx.media2.exoplayer.external.metadata.scte35.a */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/metadata/scte35/a.class */
public final class C1705a implements AbstractC1668a {

    /* renamed from: a */
    private final C2018p f6712a = new C2018p();

    /* renamed from: b */
    private final C2017o f6713b = new C2017o();

    /* renamed from: c */
    private C2030z f6714c;

    @Override // androidx.media2.exoplayer.external.metadata.AbstractC1668a
    /* renamed from: a */
    public final Metadata mo41191a(C1671c c1671c) {
        if (this.f6714c == null || c1671c.f6664f != this.f6714c.m41481a()) {
            C2030z c2030z = new C2030z(c1671c.f5495d);
            this.f6714c = c2030z;
            c2030z.m41477c(c1671c.f5495d - c1671c.f6664f);
        }
        ByteBuffer byteBuffer = c1671c.f5494c;
        byte[] array = byteBuffer.array();
        int limit = byteBuffer.limit();
        this.f6712a.m41538a(array, limit);
        this.f6713b.m41553a(array, limit);
        this.f6713b.m41551b(39);
        long m41548c = (this.f6713b.m41548c(1) << 32) | this.f6713b.m41548c(32);
        this.f6713b.m41551b(20);
        int m41548c2 = this.f6713b.m41548c(12);
        int m41548c3 = this.f6713b.m41548c(8);
        TimeSignalCommand timeSignalCommand = null;
        this.f6712a.m41531d(14);
        if (m41548c3 == 0) {
            timeSignalCommand = new SpliceNullCommand();
        } else if (m41548c3 == 255) {
            timeSignalCommand = PrivateCommand.parseFromSection(this.f6712a, m41548c2, m41548c);
        } else if (m41548c3 == 4) {
            timeSignalCommand = SpliceScheduleCommand.parseFromSection(this.f6712a);
        } else if (m41548c3 == 5) {
            timeSignalCommand = SpliceInsertCommand.parseFromSection(this.f6712a, m41548c, this.f6714c);
        } else if (m41548c3 == 6) {
            timeSignalCommand = TimeSignalCommand.parseFromSection(this.f6712a, m41548c, this.f6714c);
        }
        return timeSignalCommand == null ? new Metadata(new Metadata.Entry[0]) : new Metadata(timeSignalCommand);
    }
}
