package p646n.p649b.p650a.p652e.p653a;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.zip.ZipException;
import p646n.p649b.p650a.p652e.p653a.p654h.C15220a;
/* renamed from: n.b.a.e.a.b */
/* loaded from: classes3-dex2jar.jar:n/b/a/e/a/b.class */
public class C15211b {

    /* renamed from: a */
    public final C15212c f33228a;

    /* renamed from: b */
    public final C15213d f33229b;

    public C15211b(ByteBuffer byteBuffer) throws IOException {
        this.f33228a = new C15212c(byteBuffer);
        ByteBuffer b = this.f33228a.m209b();
        if (b != null) {
            this.f33229b = new C15213d(b);
            if (!m213d()) {
                System.err.printf("<Warning> Some fields in the metadata belong to a future schema. The minimum parser version required is %s, but the version of the current metadata parser is %s", this.f33229b.m203b(), "1.2.1");
            }
            C15214e.m197a(this.f33228a.m212a() == this.f33229b.m206a(), String.format("The number of input tensors in the model is %d. The number of input tensors that recorded in the metadata is %d. These two values does not match.", Integer.valueOf(this.f33228a.m212a()), Integer.valueOf(this.f33229b.m206a())));
            C15214e.m197a(this.f33228a.m207c() == this.f33229b.m200d(), String.format("The number of output tensors in the model is %d. The number of output tensors that recorded in the metadata is %d. These two values does not match.", Integer.valueOf(this.f33228a.m207c()), Integer.valueOf(this.f33229b.m200d())));
        } else {
            this.f33229b = null;
        }
        m216a(byteBuffer);
    }

    /* renamed from: a */
    public static int m217a(String str, String str2) {
        String[] split = str.split("\\.", 0);
        String[] split2 = str2.split("\\.", 0);
        int max = Math.max(split.length, split2.length);
        int i = 0;
        while (i < max) {
            int compareTo = Integer.valueOf(i < split.length ? Integer.parseInt(split[i]) : 0).compareTo(Integer.valueOf(i < split2.length ? Integer.parseInt(split2[i]) : 0));
            if (compareTo != 0) {
                return compareTo;
            }
            i++;
        }
        return 0;
    }

    /* renamed from: a */
    public static C15216g m216a(ByteBuffer byteBuffer) throws IOException {
        try {
            return C15216g.m196a(new C15210a(byteBuffer));
        } catch (ZipException e) {
            return null;
        }
    }

    /* renamed from: a */
    public final void m218a() {
        if (this.f33229b == null) {
            throw new IllegalStateException("This model does not contain model metadata.");
        }
    }

    /* renamed from: b */
    public C15220a m215b() {
        m218a();
        return this.f33229b.m201c();
    }

    /* renamed from: c */
    public boolean m214c() {
        return this.f33229b != null;
    }

    /* renamed from: d */
    public final boolean m213d() {
        String b = this.f33229b.m203b();
        boolean z = true;
        if (b == null) {
            return true;
        }
        if (m217a(b, "1.2.1") > 0) {
            z = false;
        }
        return z;
    }
}
