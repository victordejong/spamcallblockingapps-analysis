package com.googlecode.mp4parser;

import com.p102b.p103a.C3515e;
import com.p102b.p103a.C3516f;
import com.p102b.p103a.p104a.AbstractC3495l;
import java.nio.ByteBuffer;
import org.mp4parser.aspectj.lang.AbstractC20997a;
import org.mp4parser.aspectj.p593a.p595b.C20987b;
/* renamed from: com.googlecode.mp4parser.c */
/* loaded from: classes4-dex2jar.jar:com/googlecode/mp4parser/c.class */
public abstract class AbstractC16280c extends AbstractC16221a implements AbstractC3495l {

    /* renamed from: c */
    private static final AbstractC20997a.AbstractC20998a f57525c = null;

    /* renamed from: d */
    private static final AbstractC20997a.AbstractC20998a f57526d = null;

    /* renamed from: a */
    private int f57527a;

    /* renamed from: b */
    private int f57528b;

    static {
        m7524a();
    }

    public AbstractC16280c(String str) {
        super(str);
    }

    protected AbstractC16280c(String str, byte[] bArr) {
        super(str, bArr);
    }

    /* renamed from: a */
    private static void m7524a() {
        C20987b c20987b = new C20987b("AbstractFullBox.java", AbstractC16280c.class);
        f57525c = c20987b.m164a("method-execution", c20987b.m165a("1", "setVersion", "com.googlecode.mp4parser.AbstractFullBox", "int", "version", "", "void"), 51);
        f57526d = c20987b.m164a("method-execution", c20987b.m165a("1", "setFlags", "com.googlecode.mp4parser.AbstractFullBox", "int", "flags", "", "void"), 64);
    }

    /* renamed from: a */
    public final long m7523a(ByteBuffer byteBuffer) {
        this.f57527a = C3515e.m37852a(byteBuffer.get());
        this.f57528b = C3515e.m37849b(byteBuffer);
        return 4L;
    }

    /* renamed from: b */
    public final void m7522b(int i) {
        AbstractC20997a m162a = C20987b.m162a(f57525c, this, this, Integer.valueOf(i));
        C16297h.m7484a();
        C16297h.m7483a(m162a);
        this.f57527a = i;
    }

    /* renamed from: b */
    public final void m7521b(ByteBuffer byteBuffer) {
        C3516f.m37832c(byteBuffer, this.f57527a);
        C3516f.m37840a(byteBuffer, this.f57528b);
    }

    /* renamed from: c */
    public final void m7520c(int i) {
        AbstractC20997a m162a = C20987b.m162a(f57526d, this, this, Integer.valueOf(i));
        C16297h.m7484a();
        C16297h.m7483a(m162a);
        this.f57528b = i;
    }

    /* renamed from: h */
    public final int m7519h() {
        if (!this.isParsed) {
            parseDetails();
        }
        return this.f57527a;
    }

    /* renamed from: i */
    public final int m7518i() {
        if (!this.isParsed) {
            parseDetails();
        }
        return this.f57528b;
    }
}
