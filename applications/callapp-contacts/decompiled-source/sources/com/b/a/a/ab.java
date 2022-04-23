package com.b.a.a;

import com.b.a.e;
import com.b.a.f;
import com.googlecode.mp4parser.h;
import java.nio.ByteBuffer;
import org.mp4parser.aspectj.a.b.b;
import org.mp4parser.aspectj.lang.a;
/* loaded from: classes-dex2jar.jar:com/b/a/a/ab.class */
public class ab extends c {

    /* renamed from: b  reason: collision with root package name */
    private static final a.AbstractC0755a f7060b = null;

    /* renamed from: c  reason: collision with root package name */
    private static final a.AbstractC0755a f7061c = null;

    /* renamed from: a  reason: collision with root package name */
    private long[] f7062a = new long[0];

    static {
        b();
    }

    public ab() {
        super("stco");
    }

    private static void b() {
        b bVar = new b("StaticChunkOffsetBox.java", ab.class);
        f7060b = bVar.a("method-execution", bVar.a("1", "getChunkOffsets", "com.coremedia.iso.boxes.StaticChunkOffsetBox", "", "", "", "[J"), 39);
        f7061c = bVar.a("method-execution", bVar.a("1", "setChunkOffsets", "com.coremedia.iso.boxes.StaticChunkOffsetBox", "[J", "chunkOffsets", "", "void"), 48);
    }

    @Override // com.googlecode.mp4parser.a
    public void _parseDetails(ByteBuffer byteBuffer) {
        a(byteBuffer);
        int a2 = com.googlecode.mp4parser.c.b.a(e.a(byteBuffer));
        this.f7062a = new long[a2];
        for (int i = 0; i < a2; i++) {
            this.f7062a[i] = e.a(byteBuffer);
        }
    }

    @Override // com.b.a.a.c
    public final void a(long[] jArr) {
        a a2 = b.a(f7061c, this, this, jArr);
        h.a();
        h.a(a2);
        this.f7062a = jArr;
    }

    @Override // com.b.a.a.c
    public final long[] a() {
        a a2 = b.a(f7060b, this, this);
        h.a();
        h.a(a2);
        return this.f7062a;
    }

    @Override // com.googlecode.mp4parser.a
    public void getContent(ByteBuffer byteBuffer) {
        b(byteBuffer);
        f.b(byteBuffer, this.f7062a.length);
        for (long j : this.f7062a) {
            f.b(byteBuffer, j);
        }
    }

    @Override // com.googlecode.mp4parser.a
    public long getContentSize() {
        return (this.f7062a.length * 4) + 8;
    }
}
