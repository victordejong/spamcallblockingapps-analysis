package com.google.android.exoplayer2.metadata.scte35;

import com.google.android.exoplayer2.metadata.AbstractC11205f;
import com.google.android.exoplayer2.metadata.C11197c;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.util.C11597ad;
import com.google.android.exoplayer2.util.C11627t;
import com.google.android.exoplayer2.util.C11628u;
import java.nio.ByteBuffer;
/* renamed from: com.google.android.exoplayer2.metadata.scte35.a */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/metadata/scte35/a.class */
public final class C11238a extends AbstractC11205f {

    /* renamed from: a */
    private final C11628u f36801a = new C11628u();

    /* renamed from: b */
    private final C11627t f36802b = new C11627t();

    /* renamed from: c */
    private C11597ad f36803c;

    @Override // com.google.android.exoplayer2.metadata.AbstractC11205f
    /* renamed from: a */
    public final Metadata mo21187a(C11197c c11197c, ByteBuffer byteBuffer) {
        if (this.f36803c == null || c11197c.f36752g != this.f36803c.m20005c()) {
            C11597ad c11597ad = new C11597ad(c11197c.f35338e);
            this.f36803c = c11597ad;
            c11597ad.m20004c(c11197c.f35338e - c11197c.f36752g);
        }
        byte[] array = byteBuffer.array();
        int limit = byteBuffer.limit();
        this.f36801a.m19808a(array, limit);
        this.f36802b.m19824a(array, limit);
        this.f36802b.m19822b(39);
        long m19819c = (this.f36802b.m19819c(1) << 32) | this.f36802b.m19819c(32);
        this.f36802b.m19822b(20);
        int m19819c2 = this.f36802b.m19819c(12);
        int m19819c3 = this.f36802b.m19819c(8);
        TimeSignalCommand timeSignalCommand = null;
        this.f36801a.m19799e(14);
        if (m19819c3 == 0) {
            timeSignalCommand = new SpliceNullCommand();
        } else if (m19819c3 == 255) {
            timeSignalCommand = PrivateCommand.parseFromSection(this.f36801a, m19819c2, m19819c);
        } else if (m19819c3 == 4) {
            timeSignalCommand = SpliceScheduleCommand.parseFromSection(this.f36801a);
        } else if (m19819c3 == 5) {
            timeSignalCommand = SpliceInsertCommand.parseFromSection(this.f36801a, m19819c, this.f36803c);
        } else if (m19819c3 == 6) {
            timeSignalCommand = TimeSignalCommand.parseFromSection(this.f36801a, m19819c, this.f36803c);
        }
        return timeSignalCommand == null ? new Metadata(new Metadata.Entry[0]) : new Metadata(timeSignalCommand);
    }
}
