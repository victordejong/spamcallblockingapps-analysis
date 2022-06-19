package p193e.p194a.p1011l.p1025p2;

import android.content.ContentResolver;
import javax.inject.Inject;
import p193e.p194a.p1049l4.AbstractC17419h;
import p193e.p194a.p1114o5.AbstractC19022f0;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p1220s4.AbstractC20235a;
import p193e.p194a.p1272u3.C20592g;
import s1.z.c.l;
/* renamed from: e.a.l.p2.d */
/* loaded from: classes12-dex2jar.jar:e/a/l/p2/d.class */
public final class C17048d {

    /* renamed from: a */
    public final AbstractC19022f0 f47806a;

    /* renamed from: b */
    public final ContentResolver f47807b;

    /* renamed from: c */
    public final AbstractC19854f<AbstractC17419h> f47808c;

    /* renamed from: d */
    public final C20592g f47809d;

    /* renamed from: e */
    public final AbstractC20235a f47810e;

    /* renamed from: f */
    public final C17095h f47811f;

    /* renamed from: g */
    public final C17119k f47812g;

    @Inject
    public C17048d(AbstractC19022f0 abstractC19022f0, ContentResolver contentResolver, AbstractC19854f<AbstractC17419h> abstractC19854f, C20592g c20592g, AbstractC20235a abstractC20235a, C17095h c17095h, C17119k c17119k) {
        l.e(abstractC19022f0, "deviceManager");
        l.e(contentResolver, "contentResolver");
        l.e(abstractC19854f, "presenceManager");
        l.e(c20592g, "featuresRegistry");
        l.e(abstractC20235a, "remoteConfig");
        l.e(c17095h, "friendUpgradedNotificationManager");
        l.e(c17119k, "friendUpgradedPromoRepository");
        this.f47806a = abstractC19022f0;
        this.f47807b = contentResolver;
        this.f47808c = abstractC19854f;
        this.f47809d = c20592g;
        this.f47810e = abstractC20235a;
        this.f47811f = c17095h;
        this.f47812g = c17119k;
    }
}
