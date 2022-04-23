package com.b.a.a;

import com.b.a.e;
import com.b.a.f;
import com.googlecode.mp4parser.c;
import com.googlecode.mp4parser.h;
import java.nio.ByteBuffer;
import org.mp4parser.aspectj.a.b.b;
import org.mp4parser.aspectj.lang.a;
/* loaded from: classes-dex2jar.jar:com/b/a/a/ae.class */
public class ae extends c {

    /* renamed from: b  reason: collision with root package name */
    public static final a.AbstractC0755a f7074b = null;

    /* renamed from: c  reason: collision with root package name */
    public static final a.AbstractC0755a f7075c = null;

    /* renamed from: d  reason: collision with root package name */
    private static final a.AbstractC0755a f7076d = null;

    /* renamed from: a  reason: collision with root package name */
    public long[] f7077a;

    static {
        a();
    }

    public ae() {
        super("stss");
    }

    private static void a() {
        b bVar = new b("SyncSampleBox.java", ae.class);
        f7074b = bVar.a("method-execution", bVar.a("1", "getSampleNumber", "com.coremedia.iso.boxes.SyncSampleBox", "", "", "", "[J"), 46);
        f7076d = bVar.a("method-execution", bVar.a("1", "toString", "com.coremedia.iso.boxes.SyncSampleBox", "", "", "", "java.lang.String"), 77);
        f7075c = bVar.a("method-execution", bVar.a("1", "setSampleNumber", "com.coremedia.iso.boxes.SyncSampleBox", "[J", "sampleNumber", "", "void"), 81);
    }

    @Override // com.googlecode.mp4parser.a
    public void _parseDetails(ByteBuffer byteBuffer) {
        a(byteBuffer);
        int a2 = com.googlecode.mp4parser.c.b.a(e.a(byteBuffer));
        this.f7077a = new long[a2];
        for (int i = 0; i < a2; i++) {
            this.f7077a[i] = e.a(byteBuffer);
        }
    }

    @Override // com.googlecode.mp4parser.a
    public void getContent(ByteBuffer byteBuffer) {
        b(byteBuffer);
        f.b(byteBuffer, this.f7077a.length);
        for (long j : this.f7077a) {
            f.b(byteBuffer, j);
        }
    }

    @Override // com.googlecode.mp4parser.a
    public long getContentSize() {
        return (this.f7077a.length * 4) + 8;
    }

    public String toString() {
        a a2 = b.a(f7076d, this, this);
        h.a();
        h.a(a2);
        return "SyncSampleBox[entryCount=" + this.f7077a.length + "]";
    }
}
