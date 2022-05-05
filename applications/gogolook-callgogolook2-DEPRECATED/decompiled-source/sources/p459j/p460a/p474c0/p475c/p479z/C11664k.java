package p459j.p460a.p474c0.p475c.p479z;

import android.content.Context;
import android.net.Uri;
import java.io.File;
/* renamed from: j.a.c0.c.z.k */
/* loaded from: classes2-dex2jar.jar:j/a/c0/c/z/k.class */
public class C11664k extends C11641b0 {

    /* renamed from: l */
    public final String f26178l;

    /* renamed from: m */
    public final boolean f26179m;

    public C11664k(String str, int i, int i2, int i3, int i4, boolean z, boolean z2, boolean z3) {
        super(Uri.fromFile(new File(str)), i, i2, i3, i4, z2, z3, false, z, 0, 0);
        this.f26178l = str;
        this.f26179m = z;
    }

    @Override // p459j.p460a.p474c0.p475c.p479z.C11641b0, p459j.p460a.p474c0.p475c.p479z.AbstractC11673s
    /* renamed from: a */
    public AbstractC11672r<AbstractC11669o> mo8642a(Context context) {
        return new C11663j(context, this);
    }

    @Override // p459j.p460a.p474c0.p475c.p479z.C11641b0, p459j.p460a.p474c0.p475c.p479z.AbstractC11667n
    /* renamed from: a */
    public String mo8684a() {
        String str;
        String a = super.mo8684a();
        if (a == null) {
            str = null;
        } else {
            str = a + '|' + this.f26179m;
        }
        return str;
    }
}
