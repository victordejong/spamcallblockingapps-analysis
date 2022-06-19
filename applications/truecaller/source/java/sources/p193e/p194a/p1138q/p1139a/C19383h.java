package p193e.p194a.p1138q.p1139a;

import javax.inject.Inject;
import javax.inject.Named;
import p193e.p194a.p1138q.AbstractC19388c;
import p193e.p194a.p1138q.p1141e.C19391a;
import p193e.p194a.p1270u2.p1271a.AbstractC20574a;
import p193e.p194a.p997k3.p998j.C16461b;
import p193e.p194a.p997k3.p998j.C16486i;
import s1.w.f;
import s1.z.c.l;
/* renamed from: e.a.q.a.h */
/* loaded from: classes4-dex2jar.jar:e/a/q/a/h.class */
public final class C19383h extends AbstractC20574a<AbstractC19380f> implements AbstractC19379e {

    /* renamed from: d */
    public boolean f53882d;

    /* renamed from: e */
    public final f f53883e;

    /* renamed from: f */
    public final f f53884f;

    /* renamed from: g */
    public final C16461b f53885g;

    /* renamed from: h */
    public final C16486i f53886h;

    /* renamed from: i */
    public final C19391a f53887i;

    /* renamed from: j */
    public final AbstractC19388c f53888j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C19383h(@Named("UI") f fVar, @Named("IO") f fVar2, C16461b c16461b, C16486i c16486i, C19391a c19391a, AbstractC19388c abstractC19388c) {
        super(fVar);
        l.e(fVar, "uiContext");
        l.e(fVar2, "ioContext");
        l.e(c16461b, "aggregatedContactDao");
        l.e(c16486i, "localRawContactDao");
        l.e(c19391a, "contactFeedbackAnalyticsHelper");
        l.e(abstractC19388c, "nameFeedbackHelper");
        this.f53883e = fVar;
        this.f53884f = fVar2;
        this.f53885g = c16461b;
        this.f53886h = c16486i;
        this.f53887i = c19391a;
        this.f53888j = abstractC19388c;
    }
}
