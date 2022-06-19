package p193e.p1577m.p1578a.p1596c.p1601f1;

import android.os.Looper;
import com.google.android.exoplayer2.drm.DrmInitData;
import p193e.p1577m.p1578a.p1596c.p1601f1.AbstractC24276c;
import p193e.p1577m.p1578a.p1596c.p1601f1.AbstractC24282g;
/* renamed from: e.m.a.c.f1.e */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/f1/e.class */
public interface AbstractC24279e<T extends AbstractC24282g> {

    /* renamed from: a */
    public static final AbstractC24279e<AbstractC24282g> f67328a = new C24280a();

    /* renamed from: e.m.a.c.f1.e$a */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/f1/e$a.class */
    public static final class C24280a implements AbstractC24279e<AbstractC24282g> {
        @Override // p193e.p1577m.p1578a.p1596c.p1601f1.AbstractC24279e
        /* renamed from: a */
        public /* synthetic */ void mo5318a() {
            C24278d.m5320b(this);
        }

        @Override // p193e.p1577m.p1578a.p1596c.p1601f1.AbstractC24279e
        /* renamed from: b */
        public boolean mo5317b(DrmInitData drmInitData) {
            return false;
        }

        @Override // p193e.p1577m.p1578a.p1596c.p1601f1.AbstractC24279e
        /* renamed from: c */
        public /* synthetic */ AbstractC24276c<AbstractC24282g> mo5316c(Looper looper, int i) {
            return C24278d.m5321a(this, looper, i);
        }

        @Override // p193e.p1577m.p1578a.p1596c.p1601f1.AbstractC24279e
        /* renamed from: d */
        public AbstractC24276c<AbstractC24282g> mo5315d(Looper looper, DrmInitData drmInitData) {
            return new C24281f(new AbstractC24276c.C24277a(new C24284i(1)));
        }

        @Override // p193e.p1577m.p1578a.p1596c.p1601f1.AbstractC24279e
        public /* synthetic */ void release() {
            C24278d.m5319c(this);
        }
    }

    /* renamed from: a */
    void mo5318a();

    /* renamed from: b */
    boolean mo5317b(DrmInitData drmInitData);

    /* renamed from: c */
    AbstractC24276c<T> mo5316c(Looper looper, int i);

    /* renamed from: d */
    AbstractC24276c<T> mo5315d(Looper looper, DrmInitData drmInitData);

    void release();
}
