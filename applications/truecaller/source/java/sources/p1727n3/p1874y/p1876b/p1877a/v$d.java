package p1727n3.p1874y.p1876b.p1877a;

import android.support.p001v4.media.session.MediaSessionCompat;
/* renamed from: n3.y.b.a.v$d */
/* loaded from: classes-dex2jar.jar:n3/y/b/a/v$d.class */
public final class v$d {

    /* renamed from: a */
    public C27076d0 f77076a;

    /* renamed from: b */
    public int f77077b;

    /* renamed from: c */
    public boolean f77078c;

    /* renamed from: d */
    public int f77079d;

    public v$d(v$a v_a) {
    }

    /* renamed from: a */
    public void m433a(int i) {
        this.f77077b += i;
    }

    /* renamed from: b */
    public void m432b(int i) {
        boolean z = true;
        if (!this.f77078c || this.f77079d == 4) {
            this.f77078c = true;
            this.f77079d = i;
            return;
        }
        if (i != 4) {
            z = false;
        }
        MediaSessionCompat.m43211p(z);
    }
}
