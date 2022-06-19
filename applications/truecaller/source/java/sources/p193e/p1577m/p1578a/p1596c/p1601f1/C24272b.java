package p193e.p1577m.p1578a.p1596c.p1601f1;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.google.android.exoplayer2.drm.DrmInitData;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.UUID;
import p1727n3.p1789g0.C26232y;
import p193e.p1577m.p1578a.p1596c.C24854v;
import p193e.p1577m.p1578a.p1596c.p1601f1.AbstractC24282g;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24773d0;
/* renamed from: e.m.a.c.f1.b */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/f1/b.class */
public class C24272b<T extends AbstractC24282g> implements AbstractC24279e<T> {

    /* renamed from: b */
    public int f67323b;

    /* renamed from: c */
    public C24271a<T> f67324c;

    /* renamed from: d */
    public Looper f67325d;

    /* renamed from: e */
    public volatile C24272b<T>.HandlerC24274b f67326e;

    /* renamed from: e.m.a.c.f1.b$b */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/f1/b$b.class */
    public class HandlerC24274b extends Handler {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public HandlerC24274b(Looper looper) {
            super(looper);
            C24272b.this = r4;
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (((byte[]) message.obj) == null) {
                return;
            }
            Objects.requireNonNull(C24272b.this);
            throw null;
        }
    }

    /* renamed from: e.m.a.c.f1.b$c */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/f1/b$c.class */
    public static final class C24275c extends Exception {
        public C24275c(UUID uuid, C24273a c24273a) {
            super("Media does not support uuid: null");
        }
    }

    /* renamed from: f */
    public static List<DrmInitData.SchemeData> m5322f(DrmInitData drmInitData, UUID uuid, boolean z) {
        ArrayList arrayList = new ArrayList(drmInitData.f4878d);
        for (int i = 0; i < drmInitData.f4878d; i++) {
            DrmInitData.SchemeData schemeData = drmInitData.f4875a[i];
            if ((schemeData.m39241a(null) || (C24854v.f69703c.equals(null) && schemeData.m39241a(C24854v.f69702b))) && (schemeData.f4883e != null || z)) {
                arrayList.add(schemeData);
            }
        }
        return arrayList;
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1601f1.AbstractC24279e
    /* renamed from: a */
    public final void mo5318a() {
        int i = this.f67323b;
        this.f67323b = i + 1;
        if (i == 0) {
            C26232y.m2286x(true);
            throw null;
        }
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1601f1.AbstractC24279e
    /* renamed from: b */
    public boolean mo5317b(DrmInitData drmInitData) {
        if (!((ArrayList) m5322f(drmInitData, null, true)).isEmpty() || (drmInitData.f4878d == 1 && drmInitData.f4875a[0].m39241a(C24854v.f69702b))) {
            String str = drmInitData.f4877c;
            boolean z = true;
            if (str != null) {
                if ("cenc".equals(str)) {
                    z = true;
                } else if (!"cbc1".equals(str) && !"cbcs".equals(str) && !"cens".equals(str)) {
                    return true;
                } else {
                    z = C24773d0.f69427a >= 25;
                }
            }
            return z;
        }
        return false;
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1601f1.AbstractC24279e
    /* renamed from: c */
    public AbstractC24276c<T> mo5316c(Looper looper, int i) {
        Looper looper2 = this.f67325d;
        C26232y.m2286x(looper2 == null || looper2 == looper);
        this.f67325d = looper;
        throw null;
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1601f1.AbstractC24279e
    /* renamed from: d */
    public AbstractC24276c<T> mo5315d(Looper looper, DrmInitData drmInitData) {
        Looper looper2 = this.f67325d;
        C26232y.m2286x(looper2 == null || looper2 == looper);
        this.f67325d = looper;
        if (this.f67326e == null) {
            this.f67326e = new HandlerC24274b(looper);
        }
        List<DrmInitData.SchemeData> m5322f = m5322f(drmInitData, null, false);
        if (((ArrayList) m5322f).isEmpty()) {
            new C24275c(null, null);
            throw null;
        }
        C24271a<T> c24271a = this.f67324c;
        if (c24271a != null) {
            c24271a.mo5314a();
            return c24271a;
        }
        this.f67324c = m5323e(m5322f, false);
        throw null;
    }

    /* renamed from: e */
    public final C24271a<T> m5323e(List<DrmInitData.SchemeData> list, boolean z) {
        throw null;
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1601f1.AbstractC24279e
    public final void release() {
        int i = this.f67323b - 1;
        this.f67323b = i;
        if (i != 0) {
            return;
        }
        throw null;
    }
}
