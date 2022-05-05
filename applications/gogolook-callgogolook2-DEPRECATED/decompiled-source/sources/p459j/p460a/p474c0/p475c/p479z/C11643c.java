package p459j.p460a.p474c0.p475c.p479z;

import android.content.Context;
import android.net.Uri;
import p459j.p460a.p474c0.p499h.C12151d;
import p459j.p460a.p474c0.p499h.C12155e;
import p459j.p460a.p474c0.p499h.C12216t0;
/* renamed from: j.a.c0.c.z.c */
/* loaded from: classes2-dex2jar.jar:j/a/c0/c/z/c.class */
public class C11643c extends C11641b0 {

    /* renamed from: l */
    public final boolean f26144l;

    public C11643c(Uri uri, int i, int i2) {
        this(uri, i, i2, true);
    }

    public C11643c(Uri uri, int i, int i2, boolean z) {
        this(uri, i, i2, z, false);
    }

    public C11643c(Uri uri, int i, int i2, boolean z, boolean z2) {
        super(uri, i, i2, false, true, z, false, 0, 0);
        C12151d.m6999b(uri == null || C12216t0.m6756g(uri) || C12155e.m6961h(uri));
        this.f26144l = z2;
    }

    @Override // p459j.p460a.p474c0.p475c.p479z.C11641b0, p459j.p460a.p474c0.p475c.p479z.AbstractC11673s
    /* renamed from: a */
    public AbstractC11672r<AbstractC11669o> mo8642a(Context context) {
        Uri uri = this.f26138i;
        return "s".equals(uri == null ? null : C12155e.m6978a(uri)) ? new C11686z(context, this) : new C11640b(context, this);
    }
}
