package com.googlecode.mp4parser.p420b.p422b;

import com.googlecode.mp4parser.AbstractC16280c;
import com.googlecode.mp4parser.C16297h;
import com.googlecode.mp4parser.p420b.p422b.p423a.AbstractC16254b;
import com.googlecode.mp4parser.p420b.p422b.p423a.C16264l;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.mp4parser.aspectj.lang.AbstractC20997a;
import org.mp4parser.aspectj.p593a.p595b.C20987b;
/* renamed from: com.googlecode.mp4parser.b.b.a */
/* loaded from: classes4-dex2jar.jar:com/googlecode/mp4parser/b/b/a.class */
public class C16250a extends AbstractC16280c {

    /* renamed from: c */
    private static Logger f57353c = Logger.getLogger(C16250a.class.getName());

    /* renamed from: d */
    private static final AbstractC20997a.AbstractC20998a f57354d = null;

    /* renamed from: e */
    private static final AbstractC20997a.AbstractC20998a f57355e = null;

    /* renamed from: f */
    private static final AbstractC20997a.AbstractC20998a f57356f = null;

    /* renamed from: g */
    private static final AbstractC20997a.AbstractC20998a f57357g = null;

    /* renamed from: h */
    private static final AbstractC20997a.AbstractC20998a f57358h = null;

    /* renamed from: a */
    protected AbstractC16254b f57359a;

    /* renamed from: b */
    protected ByteBuffer f57360b;

    static {
        m7551b();
    }

    public C16250a(String str) {
        super(str);
    }

    /* renamed from: b */
    private static void m7551b() {
        C20987b c20987b = new C20987b("AbstractDescriptorBox.java", C16250a.class);
        f57354d = c20987b.m164a("method-execution", c20987b.m165a("1", "getData", "com.googlecode.mp4parser.boxes.mp4.AbstractDescriptorBox", "", "", "", "java.nio.ByteBuffer"), 42);
        f57355e = c20987b.m164a("method-execution", c20987b.m165a("1", "setData", "com.googlecode.mp4parser.boxes.mp4.AbstractDescriptorBox", "java.nio.ByteBuffer", "data", "", "void"), 46);
        f57356f = c20987b.m164a("method-execution", c20987b.m165a("1", "getDescriptor", "com.googlecode.mp4parser.boxes.mp4.AbstractDescriptorBox", "", "", "", "com.googlecode.mp4parser.boxes.mp4.objectdescriptors.BaseDescriptor"), 62);
        f57357g = c20987b.m164a("method-execution", c20987b.m165a("1", "setDescriptor", "com.googlecode.mp4parser.boxes.mp4.AbstractDescriptorBox", "com.googlecode.mp4parser.boxes.mp4.objectdescriptors.BaseDescriptor", "descriptor", "", "void"), 66);
        f57358h = c20987b.m164a("method-execution", c20987b.m165a("1", "getDescriptorAsString", "com.googlecode.mp4parser.boxes.mp4.AbstractDescriptorBox", "", "", "", "java.lang.String"), 70);
    }

    @Override // com.googlecode.mp4parser.AbstractC16221a
    public void _parseDetails(ByteBuffer byteBuffer) {
        m7523a(byteBuffer);
        this.f57360b = byteBuffer.slice();
        byteBuffer.position(byteBuffer.position() + byteBuffer.remaining());
        try {
            this.f57360b.rewind();
            this.f57359a = C16264l.m7535a(-1, this.f57360b.duplicate());
        } catch (IOException e) {
            f57353c.log(Level.WARNING, "Error parsing ObjectDescriptor", (Throwable) e);
        } catch (IndexOutOfBoundsException e2) {
            f57353c.log(Level.WARNING, "Error parsing ObjectDescriptor", (Throwable) e2);
        }
    }

    /* renamed from: a */
    public final AbstractC16254b m7553a() {
        AbstractC20997a m163a = C20987b.m163a(f57356f, this, this);
        C16297h.m7484a();
        C16297h.m7483a(m163a);
        return this.f57359a;
    }

    /* renamed from: a */
    public final void m7552a(AbstractC16254b abstractC16254b) {
        AbstractC20997a m162a = C20987b.m162a(f57357g, this, this, abstractC16254b);
        C16297h.m7484a();
        C16297h.m7483a(m162a);
        this.f57359a = abstractC16254b;
    }

    @Override // com.googlecode.mp4parser.AbstractC16221a
    public void getContent(ByteBuffer byteBuffer) {
        m7521b(byteBuffer);
        this.f57360b.rewind();
        byteBuffer.put(this.f57360b);
    }

    @Override // com.googlecode.mp4parser.AbstractC16221a
    public long getContentSize() {
        return this.f57360b.limit() + 4;
    }
}
