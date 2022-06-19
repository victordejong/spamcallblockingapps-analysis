package p268v9;

import java.io.IOException;
import java.util.Objects;
import p011aa.C0053f;
import p214q9.AbstractRunnableC4170b;
import p268v9.AbstractC4691r;
/* renamed from: v9.i */
/* loaded from: classes2-dex2jar.jar:v9/i.class */
public class C4676i extends AbstractRunnableC4170b {

    /* renamed from: b */
    public final /* synthetic */ int f14444b;

    /* renamed from: c */
    public final /* synthetic */ C0053f f14445c;

    /* renamed from: d */
    public final /* synthetic */ int f14446d;

    /* renamed from: e */
    public final /* synthetic */ C4667f f14447e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C4676i(C4667f c4667f, String str, Object[] objArr, int i, C0053f c0053f, int i2, boolean z) {
        super(str, objArr);
        this.f14447e = c4667f;
        this.f14444b = i;
        this.f14445c = c0053f;
        this.f14446d = i2;
    }

    @Override // p214q9.AbstractRunnableC4170b
    /* renamed from: b */
    public void mo635b() {
        try {
            AbstractC4691r abstractC4691r = this.f14447e.f14411j;
            C0053f c0053f = this.f14445c;
            int i = this.f14446d;
            Objects.requireNonNull((AbstractC4691r.C4692a) abstractC4691r);
            c0053f.mo8804j(i);
            this.f14447e.f14419r.m597s(this.f14444b, 6);
            synchronized (this.f14447e) {
                this.f14447e.f14421t.remove(Integer.valueOf(this.f14444b));
            }
        } catch (IOException e) {
        }
    }
}
