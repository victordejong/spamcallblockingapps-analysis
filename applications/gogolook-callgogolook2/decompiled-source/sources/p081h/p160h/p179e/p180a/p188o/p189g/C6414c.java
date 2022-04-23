package p081h.p160h.p179e.p180a.p188o.p189g;

import gogolook.callgogolook2.gson.UserProfile;
import java.io.IOException;
import java.io.InputStream;
/* renamed from: h.h.e.a.o.g.c */
/* loaded from: classes2-dex2jar.jar:h/h/e/a/o/g/c.class */
public class C6414c {

    /* renamed from: a */
    public int f16002a;

    /* renamed from: b */
    public int f16003b;

    /* renamed from: c */
    public int f16004c;

    public C6414c(InputStream inputStream) throws IOException {
        this.f16002a = C6417f.m22699a(inputStream);
        this.f16003b = C6417f.m22699a(inputStream);
        this.f16004c = C6417f.m22699a(inputStream);
    }

    /* renamed from: a */
    public int m22706a() {
        return this.f16002a;
    }

    /* renamed from: b */
    public int m22705b() {
        return this.f16003b;
    }

    /* renamed from: c */
    public int m22704c() {
        return this.f16004c;
    }

    public String toString() {
        return this.f16002a + UserProfile.CARD_CATE_SEPARATOR + this.f16003b + UserProfile.CARD_CATE_SEPARATOR + this.f16004c;
    }
}
