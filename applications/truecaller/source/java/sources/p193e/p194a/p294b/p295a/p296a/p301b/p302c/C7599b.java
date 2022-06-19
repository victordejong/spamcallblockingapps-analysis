package p193e.p194a.p294b.p295a.p296a.p301b.p302c;

import android.os.FileObserver;
import androidx.lifecycle.LiveData;
import com.truecaller.profile.data.dto.businessV2.BusinessProfile;
import java.util.concurrent.CancellationException;
import p193e.p194a.p1060m4.p1061c.p1062i.p1063a.AbstractC18223b;
import q3.a.g0;
import q3.a.i0;
import q3.a.j0;
import q3.a.p1;
import q3.a.y;
import s1.a.a.a.v0.f.d;
import s1.w.f;
import s1.z.c.l;
/* renamed from: e.a.b.a.a.b.c.b */
/* loaded from: classes6-dex2jar.jar:e/a/b/a/a/b/c/b.class */
public final class C7599b extends LiveData<BusinessProfile> {

    /* renamed from: l */
    public final y f23937l;

    /* renamed from: m */
    public final i0 f23938m;

    /* renamed from: n */
    public final FileObserverC7600a f23939n;

    /* renamed from: o */
    public final AbstractC18223b f23940o;

    /* renamed from: p */
    public final g0 f23941p;

    /* renamed from: e.a.b.a.a.b.c.b$a */
    /* loaded from: classes6-dex2jar.jar:e/a/b/a/a/b/c/b$a.class */
    public static final class FileObserverC7600a extends FileObserver {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public FileObserverC7600a(String str) {
            super(str);
            C7599b.this = r4;
        }

        @Override // android.os.FileObserver
        public void onEvent(int i, String str) {
            if (i == 2 || i == 256 || i == 512) {
                C7599b c7599b = C7599b.this;
                d.w2(c7599b.f23938m, (f) null, (j0) null, new C7601c(c7599b, null), 3, (Object) null);
            }
        }
    }

    public C7599b(AbstractC18223b abstractC18223b, g0 g0Var) {
        l.e(abstractC18223b, "bizProfileLocalFileManager");
        l.e(g0Var, "dispatcher");
        this.f23940o = abstractC18223b;
        this.f23941p = g0Var;
        y n = d.n((p1) null, 1);
        this.f23937l = n;
        i0 h = d.h(g0Var.plus(n));
        this.f23938m = h;
        this.f23939n = new FileObserverC7600a(abstractC18223b.mo15400b().getPath());
        d.w2(h, (f) null, (j0) null, new C7601c(this, null), 3, (Object) null);
    }

    @Override // androidx.lifecycle.LiveData
    /* renamed from: h */
    public void mo3056h() {
        this.f23939n.startWatching();
    }

    @Override // androidx.lifecycle.LiveData
    /* renamed from: i */
    public void mo3055i() {
        this.f23939n.stopWatching();
        d.Y(this.f23937l, (CancellationException) null, 1, (Object) null);
    }
}
