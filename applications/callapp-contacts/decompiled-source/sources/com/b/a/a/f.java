package com.b.a.a;

import com.googlecode.mp4parser.c;
import com.googlecode.mp4parser.h;
import java.nio.ByteBuffer;
import org.mp4parser.aspectj.a.b.b;
import org.mp4parser.aspectj.lang.a;
/* loaded from: classes-dex2jar.jar:com/b/a/a/f.class */
public class f extends c {

    /* renamed from: a  reason: collision with root package name */
    private static final a.AbstractC0755a f7114a = null;

    static {
        a();
    }

    public f() {
        super("url ");
    }

    private static void a() {
        b bVar = new b("DataEntryUrlBox.java", f.class);
        f7114a = bVar.a("method-execution", bVar.a("1", "toString", "com.coremedia.iso.boxes.DataEntryUrlBox", "", "", "", "java.lang.String"), 51);
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
        a a2 = b.a(f7114a, this, this);
        h.a();
        h.a(a2);
        return "DataEntryUrlBox[]";
    }
}
