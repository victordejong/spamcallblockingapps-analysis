package p081h.p203i.p325c.p373y.p374a.p375b.p376a;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.File;
import p081h.p203i.p204a.p224e.p235d.p240n.C6999k;
import p081h.p203i.p204a.p224e.p259j.p271l.C8386u6;
import p081h.p203i.p325c.p373y.p374a.C10009a;
/* renamed from: h.i.c.y.a.b.a.i */
/* loaded from: classes2-dex2jar.jar:h/i/c/y/a/b/a/i.class */
public final class C10026i implements AbstractC10039v {

    /* renamed from: a */
    public final C8386u6 f22686a;

    /* renamed from: b */
    public final String f22687b;

    public C10026i(@NonNull C8386u6 u6Var, @NonNull String str) {
        this.f22686a = u6Var;
        this.f22687b = str;
    }

    @Override // p081h.p203i.p325c.p373y.p374a.p375b.p376a.AbstractC10039v
    @Nullable
    /* renamed from: a */
    public final File mo13547a(File file) throws C10009a {
        C6999k kVar;
        C6999k kVar2;
        C6999k kVar3;
        File c = new C10038u(this.f22686a).m13549c(this.f22687b, EnumC10040w.TRANSLATE);
        File file2 = new File(c, String.valueOf(C10038u.m13552b(c) + 1));
        if (file.renameTo(file2)) {
            kVar3 = C10016d.f22651i;
            kVar3.m21339a("RemoteModelFileManager", "Rename to serving model successfully");
            file2.setExecutable(false);
            file2.setWritable(false);
            return file2;
        }
        kVar = C10016d.f22651i;
        kVar.m21339a("RemoteModelFileManager", "Rename to serving model failed, remove the temp file.");
        if (file.delete()) {
            return null;
        }
        kVar2 = C10016d.f22651i;
        String valueOf = String.valueOf(file.getAbsolutePath());
        kVar2.m21339a("RemoteModelFileManager", valueOf.length() != 0 ? "Failed to delete the temp file: ".concat(valueOf) : new String("Failed to delete the temp file: "));
        return null;
    }
}
