package p193e.p194a.p195a.p236h;

import android.content.ContentResolver;
import javax.inject.Inject;
import p193e.p194a.p1129p5.AbstractC19233h0;
import p193e.p194a.p195a.p231g.AbstractC6115g;
import s1.z.c.l;
/* renamed from: e.a.a.h.e */
/* loaded from: classes7-dex2jar.jar:e/a/a/h/e.class */
public final class C6286e implements AbstractC6284c {

    /* renamed from: a */
    public final ContentResolver f21069a;

    /* renamed from: b */
    public final AbstractC6115g f21070b;

    /* renamed from: c */
    public final AbstractC19233h0 f21071c;

    @Inject
    public C6286e(ContentResolver contentResolver, AbstractC6115g abstractC6115g, AbstractC19233h0 abstractC19233h0) {
        l.e(contentResolver, "contentResolver");
        l.e(abstractC6115g, "cursorsFactory");
        l.e(abstractC19233h0, "resourceProvider");
        this.f21069a = contentResolver;
        this.f21070b = abstractC6115g;
        this.f21071c = abstractC19233h0;
    }
}
