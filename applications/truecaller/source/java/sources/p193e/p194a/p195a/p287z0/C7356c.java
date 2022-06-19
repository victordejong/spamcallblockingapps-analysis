package p193e.p194a.p195a.p287z0;

import android.content.ContentResolver;
import android.database.Cursor;
import java.util.ArrayList;
import java.util.concurrent.TimeUnit;
import javax.inject.Inject;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p195a.AbstractC6392i0;
import p193e.p194a.p195a.p231g.AbstractC6115g;
import p193e.p194a.p195a.p231g.AbstractC6233m;
import p193e.p194a.p195a.p231g.p232j0.AbstractC6152t;
import p193e.p194a.p195a.p231g.p234l0.C6229e;
import p193e.p194a.p372b0.p430q.C8601l0;
import s1.u.s;
import s1.z.c.l;
/* renamed from: e.a.a.z0.c */
/* loaded from: classes7-dex2jar.jar:e/a/a/z0/c.class */
public final class C7356c implements AbstractC7355b {

    /* renamed from: a */
    public final ContentResolver f23436a;

    /* renamed from: b */
    public final AbstractC6115g f23437b;

    /* renamed from: c */
    public final AbstractC6392i0 f23438c;

    /* renamed from: d */
    public final AbstractC7357d f23439d;

    /* renamed from: e */
    public final AbstractC19854f<AbstractC6233m> f23440e;

    /* renamed from: f */
    public final C8601l0 f23441f;

    /* renamed from: g */
    public final C20592g f23442g;

    @Inject
    public C7356c(ContentResolver contentResolver, AbstractC6115g abstractC6115g, AbstractC6392i0 abstractC6392i0, AbstractC7357d abstractC7357d, AbstractC19854f<AbstractC6233m> abstractC19854f, C8601l0 c8601l0, C20592g c20592g) {
        l.e(contentResolver, "contentResolver");
        l.e(abstractC6115g, "cursorsFactory");
        l.e(abstractC6392i0, "messageSettings");
        l.e(abstractC7357d, "messageToNudgeNotificationHelper");
        l.e(abstractC19854f, "messagesStorage");
        l.e(c8601l0, "timestampUtil");
        l.e(c20592g, "featuresRegistry");
        this.f23436a = contentResolver;
        this.f23437b = abstractC6115g;
        this.f23438c = abstractC6392i0;
        this.f23439d = abstractC7357d;
        this.f23440e = abstractC19854f;
        this.f23441f = c8601l0;
        this.f23442g = c20592g;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r9v1 */
    @Override // p193e.p194a.p195a.p287z0.AbstractC7355b
    /* renamed from: a */
    public void mo29745a() {
        s sVar;
        AbstractC6152t mo31774r;
        if (this.f23442g.m10988Q().isEnabled() && this.f23441f.m28260a(this.f23438c.mo30973x2(), 1L, TimeUnit.DAYS)) {
            Cursor query = this.f23436a.query(C17891a1.f50888a.buildUpon().appendEncodedPath("message_to_nudge").build(), null, null, null, null);
            if (query == null || (mo31774r = this.f23437b.mo31774r(query)) == null) {
                sVar = s.a;
            } else {
                try {
                    sVar = new ArrayList();
                    while (mo31774r.moveToNext()) {
                        sVar.add(mo31774r.mo31740C0());
                    }
                    th = null;
                } finally {
                    try {
                        throw th;
                    } finally {
                    }
                }
            }
            if (sVar.isEmpty()) {
                return;
            }
            for (C6229e c6229e : sVar) {
                this.f23439d.mo29744a(c6229e.f20904a, c6229e.f20905b, c6229e.f20907d, c6229e.f20906c == 3);
            }
            AbstractC6233m mo11854a = this.f23440e.mo11854a();
            ArrayList arrayList = new ArrayList(C25225a.m4004J(sVar, 10));
            for (C6229e c6229e2 : sVar) {
                arrayList.add(Long.valueOf(c6229e2.f20905b));
            }
            mo11854a.mo31679E(arrayList);
            this.f23438c.mo31087d2(System.currentTimeMillis());
        }
    }
}
