package p081h.p203i.p325c.p373y.p374a.p375b.p376a;

import androidx.annotation.NonNull;
import java.io.File;
import java.io.IOException;
import p081h.p203i.p204a.p224e.p235d.p240n.C6999k;
import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
/* renamed from: h.i.c.y.a.b.a.l */
/* loaded from: classes2-dex2jar.jar:h/i/c/y/a/b/a/l.class */
public final class C10029l {

    /* renamed from: b */
    public static final C6999k f22698b = new C6999k("RemoteModelUtils", "");

    /* renamed from: a */
    public final AbstractC10041x f22699a;

    public C10029l(@NonNull AbstractC10041x xVar) {
        C7021t.m21290a(xVar);
        this.f22699a = xVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:62:0x00eb  */
    /* JADX WARN: Type inference failed for: r5v0, types: [java.io.File] */
    /* JADX WARN: Type inference failed for: r5v1, types: [java.io.FileInputStream] */
    /* JADX WARN: Type inference failed for: r5v8 */
    @androidx.annotation.Nullable
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String m13565a(java.io.File r5) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 253
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p325c.p373y.p374a.p375b.p376a.C10029l.m13565a(java.io.File):java.lang.String");
    }

    /* renamed from: a */
    public static boolean m13563a(@NonNull File file, @NonNull String str) {
        String str2;
        try {
            str2 = m13565a(file);
        } catch (IOException e) {
            C6999k kVar = f22698b;
            String valueOf = String.valueOf(file.getAbsolutePath());
            kVar.m21339a("RemoteModelUtils", valueOf.length() != 0 ? "Failed to close the tmp FileInputStream: ".concat(valueOf) : new String("Failed to close the tmp FileInputStream: "));
            str2 = "";
        }
        C6999k kVar2 = f22698b;
        String valueOf2 = String.valueOf(str2);
        kVar2.m21339a("RemoteModelUtils", valueOf2.length() != 0 ? "Calculated hash value is: ".concat(valueOf2) : new String("Calculated hash value is: "));
        return str.equals(str2);
    }

    /* renamed from: a */
    public final C10011a0 m13564a(File file, C10023g0 g0Var) {
        return this.f22699a.mo13544a(file, g0Var);
    }
}
