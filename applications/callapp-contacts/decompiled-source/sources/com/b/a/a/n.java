package com.b.a.a;

import com.b.a.e;
import com.b.a.f;
import com.googlecode.mp4parser.h;
import java.nio.ByteBuffer;
import org.mp4parser.aspectj.a.b.b;
import org.mp4parser.aspectj.lang.a;
/* loaded from: classes-dex2jar.jar:com/b/a/a/n.class */
public class n extends a {
    private static final a.AbstractC0755a e = null;
    private static final a.AbstractC0755a f = null;
    private static final a.AbstractC0755a g = null;
    private static final a.AbstractC0755a h = null;
    private static final a.AbstractC0755a i = null;

    /* renamed from: a  reason: collision with root package name */
    private int f7133a;

    /* renamed from: b  reason: collision with root package name */
    private int f7134b;

    /* renamed from: c  reason: collision with root package name */
    private long f7135c;

    /* renamed from: d  reason: collision with root package name */
    private long f7136d;

    static {
        a();
    }

    public n() {
        super("hmhd");
    }

    private static void a() {
        b bVar = new b("HintMediaHeaderBox.java", n.class);
        e = bVar.a("method-execution", bVar.a("1", "getMaxPduSize", "com.coremedia.iso.boxes.HintMediaHeaderBox", "", "", "", "int"), 42);
        f = bVar.a("method-execution", bVar.a("1", "getAvgPduSize", "com.coremedia.iso.boxes.HintMediaHeaderBox", "", "", "", "int"), 46);
        g = bVar.a("method-execution", bVar.a("1", "getMaxBitrate", "com.coremedia.iso.boxes.HintMediaHeaderBox", "", "", "", "long"), 50);
        h = bVar.a("method-execution", bVar.a("1", "getAvgBitrate", "com.coremedia.iso.boxes.HintMediaHeaderBox", "", "", "", "long"), 54);
        i = bVar.a("method-execution", bVar.a("1", "toString", "com.coremedia.iso.boxes.HintMediaHeaderBox", "", "", "", "java.lang.String"), 84);
    }

    @Override // com.googlecode.mp4parser.a
    public void _parseDetails(ByteBuffer byteBuffer) {
        a(byteBuffer);
        this.f7133a = e.c(byteBuffer);
        this.f7134b = e.c(byteBuffer);
        this.f7135c = e.a(byteBuffer);
        this.f7136d = e.a(byteBuffer);
        e.a(byteBuffer);
    }

    @Override // com.googlecode.mp4parser.a
    public void getContent(ByteBuffer byteBuffer) {
        b(byteBuffer);
        f.b(byteBuffer, this.f7133a);
        f.b(byteBuffer, this.f7134b);
        f.b(byteBuffer, this.f7135c);
        f.b(byteBuffer, this.f7136d);
        f.b(byteBuffer, 0L);
    }

    @Override // com.googlecode.mp4parser.a
    public long getContentSize() {
        return 20L;
    }

    public String toString() {
        a a2 = b.a(i, this, this);
        h.a();
        h.a(a2);
        return "HintMediaHeaderBox{maxPduSize=" + this.f7133a + ", avgPduSize=" + this.f7134b + ", maxBitrate=" + this.f7135c + ", avgBitrate=" + this.f7136d + '}';
    }
}
