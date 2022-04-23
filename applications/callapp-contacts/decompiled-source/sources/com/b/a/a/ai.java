package com.b.a.a;

import com.b.a.e;
import com.b.a.f;
import com.googlecode.mp4parser.h;
import java.nio.ByteBuffer;
import org.mp4parser.aspectj.a.b.b;
import org.mp4parser.aspectj.lang.a;
/* loaded from: classes-dex2jar.jar:com/b/a/a/ai.class */
public class ai extends a {

    /* renamed from: c  reason: collision with root package name */
    private static final a.AbstractC0755a f7089c = null;

    /* renamed from: d  reason: collision with root package name */
    private static final a.AbstractC0755a f7090d = null;
    private static final a.AbstractC0755a e = null;
    private static final a.AbstractC0755a f = null;
    private static final a.AbstractC0755a g = null;

    /* renamed from: a  reason: collision with root package name */
    private int f7091a = 0;

    /* renamed from: b  reason: collision with root package name */
    private int[] f7092b = new int[3];

    static {
        b();
    }

    public ai() {
        super("vmhd");
        c(1);
    }

    private int[] a() {
        a a2 = b.a(f7090d, this, this);
        h.a();
        h.a(a2);
        return this.f7092b;
    }

    private static void b() {
        b bVar = new b("VideoMediaHeaderBox.java", ai.class);
        f7089c = bVar.a("method-execution", bVar.a("1", "getGraphicsmode", "com.coremedia.iso.boxes.VideoMediaHeaderBox", "", "", "", "int"), 39);
        f7090d = bVar.a("method-execution", bVar.a("1", "getOpcolor", "com.coremedia.iso.boxes.VideoMediaHeaderBox", "", "", "", "[I"), 43);
        e = bVar.a("method-execution", bVar.a("1", "toString", "com.coremedia.iso.boxes.VideoMediaHeaderBox", "", "", "", "java.lang.String"), 71);
        f = bVar.a("method-execution", bVar.a("1", "setOpcolor", "com.coremedia.iso.boxes.VideoMediaHeaderBox", "[I", "opcolor", "", "void"), 75);
        g = bVar.a("method-execution", bVar.a("1", "setGraphicsmode", "com.coremedia.iso.boxes.VideoMediaHeaderBox", "int", "graphicsmode", "", "void"), 79);
    }

    @Override // com.googlecode.mp4parser.a
    public void _parseDetails(ByteBuffer byteBuffer) {
        a(byteBuffer);
        this.f7091a = e.c(byteBuffer);
        this.f7092b = new int[3];
        for (int i = 0; i < 3; i++) {
            this.f7092b[i] = e.c(byteBuffer);
        }
    }

    @Override // com.googlecode.mp4parser.a
    public void getContent(ByteBuffer byteBuffer) {
        b(byteBuffer);
        f.b(byteBuffer, this.f7091a);
        for (int i : this.f7092b) {
            f.b(byteBuffer, i);
        }
    }

    @Override // com.googlecode.mp4parser.a
    public long getContentSize() {
        return 12L;
    }

    public String toString() {
        a a2 = b.a(e, this, this);
        h.a();
        h.a(a2);
        StringBuilder sb = new StringBuilder("VideoMediaHeaderBox[graphicsmode=");
        a a3 = b.a(f7089c, this, this);
        h.a();
        h.a(a3);
        sb.append(this.f7091a);
        sb.append(";opcolor0=");
        sb.append(a()[0]);
        sb.append(";opcolor1=");
        sb.append(a()[1]);
        sb.append(";opcolor2=");
        sb.append(a()[2]);
        sb.append("]");
        return sb.toString();
    }
}
