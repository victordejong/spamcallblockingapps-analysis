package com.b.a.a;

import com.googlecode.mp4parser.h;
import java.nio.ByteBuffer;
import org.mp4parser.aspectj.a.b.b;
import org.mp4parser.aspectj.lang.a;
/* loaded from: classes-dex2jar.jar:com/b/a/a/ad.class */
public class ad extends a {

    /* renamed from: a  reason: collision with root package name */
    private static final a.AbstractC0755a f7073a = null;

    static {
        a();
    }

    public ad() {
        super("sthd");
    }

    private static void a() {
        b bVar = new b("SubtitleMediaHeaderBox.java", ad.class);
        f7073a = bVar.a("method-execution", bVar.a("1", "toString", "com.coremedia.iso.boxes.SubtitleMediaHeaderBox", "", "", "", "java.lang.String"), 30);
    }

    @Override // com.googlecode.mp4parser.a
    public void _parseDetails(ByteBuffer byteBuffer) {
        a(byteBuffer);
    }

    @Override // com.googlecode.mp4parser.a
    public void getContent(ByteBuffer byteBuffer) {
        b(byteBuffer);
    }

    @Override // com.googlecode.mp4parser.a
    public long getContentSize() {
        return 4L;
    }

    public String toString() {
        a a2 = b.a(f7073a, this, this);
        h.a();
        h.a(a2);
        return "SubtitleMediaHeaderBox";
    }
}
