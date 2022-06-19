package p080e5;

import java.io.File;
import java.io.FilenameFilter;
import java.nio.charset.Charset;
import p135j5.C3276f;
/* renamed from: e5.i */
/* loaded from: classes2-dex2jar.jar:e5/i.class */
public final /* synthetic */ class C2556i implements FilenameFilter {

    /* renamed from: b */
    public static final /* synthetic */ C2556i f8931b = new C2556i(0);

    /* renamed from: c */
    public static final /* synthetic */ C2556i f8932c = new C2556i(1);

    /* renamed from: a */
    public final /* synthetic */ int f8933a;

    public /* synthetic */ C2556i(int i) {
        this.f8933a = i;
    }

    @Override // java.io.FilenameFilter
    public final boolean accept(File file, String str) {
        switch (this.f8933a) {
            case 0:
                return str.startsWith(".ae");
            default:
                Charset charset = C3276f.f11087g;
                return str.startsWith("event");
        }
    }
}
