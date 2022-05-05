package p081h.p203i.p325c.p337n.p338d.p348n.p349c;

import java.io.File;
import java.util.Map;
import p081h.p203i.p325c.p337n.p338d.C9513b;
import p081h.p203i.p325c.p337n.p338d.p348n.p349c.AbstractC9793c;
/* renamed from: h.i.c.n.d.n.c.b */
/* loaded from: classes2-dex2jar.jar:h/i/c/n/d/n/c/b.class */
public class C9792b implements AbstractC9793c {

    /* renamed from: a */
    public final File f22222a;

    public C9792b(File file) {
        this.f22222a = file;
    }

    @Override // p081h.p203i.p325c.p337n.p338d.p348n.p349c.AbstractC9793c
    /* renamed from: a */
    public Map<String, String> mo14190a() {
        return null;
    }

    @Override // p081h.p203i.p325c.p337n.p338d.p348n.p349c.AbstractC9793c
    /* renamed from: b */
    public String mo14189b() {
        return this.f22222a.getName();
    }

    @Override // p081h.p203i.p325c.p337n.p338d.p348n.p349c.AbstractC9793c
    /* renamed from: c */
    public String mo14188c() {
        return null;
    }

    @Override // p081h.p203i.p325c.p337n.p338d.p348n.p349c.AbstractC9793c
    /* renamed from: d */
    public File mo14187d() {
        return null;
    }

    @Override // p081h.p203i.p325c.p337n.p338d.p348n.p349c.AbstractC9793c
    /* renamed from: e */
    public File[] mo14186e() {
        return this.f22222a.listFiles();
    }

    @Override // p081h.p203i.p325c.p337n.p338d.p348n.p349c.AbstractC9793c
    public AbstractC9793c.EnumC9794a getType() {
        return AbstractC9793c.EnumC9794a.NATIVE;
    }

    @Override // p081h.p203i.p325c.p337n.p338d.p348n.p349c.AbstractC9793c
    public void remove() {
        File[] e;
        for (File file : mo14186e()) {
            C9513b.m15015a().m15013a("Removing native report file at " + file.getPath());
            file.delete();
        }
        C9513b.m15015a().m15013a("Removing native report directory at " + this.f22222a);
        this.f22222a.delete();
    }
}
