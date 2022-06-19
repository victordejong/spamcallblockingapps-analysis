package p193e.p194a.p288a0;

import android.content.Context;
import com.razorpay.AnalyticsConstants;
import com.truecaller.spamcategories.SpamCategory;
import java.util.List;
import javax.inject.Inject;
import p1727n3.p1834m0.p1835c0.C26702l;
import p193e.p194a.p1392y2.p1394q.C21782c;
import p193e.p194a.p288a0.p290x.AbstractC7409a;
import s1.w.d;
import s1.z.c.l;
/* renamed from: e.a.a0.j */
/* loaded from: classes12-dex2jar.jar:e/a/a0/j.class */
public final class C7391j implements AbstractC7390i {

    /* renamed from: a */
    public final AbstractC7409a f23520a;

    /* renamed from: b */
    public final AbstractC7392k f23521b;

    /* renamed from: c */
    public final AbstractC7393l f23522c;

    /* renamed from: d */
    public final Context f23523d;

    @Inject
    public C7391j(AbstractC7409a abstractC7409a, AbstractC7392k abstractC7392k, AbstractC7393l abstractC7393l, Context context) {
        l.e(abstractC7409a, "spamCategoriesDao");
        l.e(abstractC7392k, "spamCategoriesRestApi");
        l.e(abstractC7393l, "spamCategoriesSettings");
        l.e(context, AnalyticsConstants.CONTEXT);
        this.f23520a = abstractC7409a;
        this.f23521b = abstractC7392k;
        this.f23522c = abstractC7393l;
        this.f23523d = context;
    }

    @Override // p193e.p194a.p288a0.AbstractC7390i
    /* renamed from: a */
    public Object mo29699a(List<Long> list, d<? super List<SpamCategory>> dVar) {
        return this.f23520a.mo29674d(list, dVar);
    }

    @Override // p193e.p194a.p288a0.AbstractC7390i
    /* renamed from: b */
    public void mo29698b() {
        C26702l m1431n = C26702l.m1431n(this.f23523d);
        l.d(m1431n, "WorkManager.getInstance(context)");
        C21782c.m9083c(m1431n, "SpamCategoriesFetchWorkAction", this.f23523d, null, null, 12);
    }

    @Override // p193e.p194a.p288a0.AbstractC7390i
    /* renamed from: c */
    public Object mo29697c(d<? super List<SpamCategory>> dVar) {
        return this.f23520a.mo29677a(dVar);
    }

    @Override // p193e.p194a.p288a0.AbstractC7390i
    /* renamed from: d */
    public Object mo29696d(long j, d<? super SpamCategory> dVar) {
        return this.f23520a.mo29676b(j, dVar);
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x0112, code lost:
        if (r0.a.e == 304) goto L31;
     */
    @Override // p193e.p194a.p288a0.AbstractC7390i
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean mo29695e() {
        /*
            Method dump skipped, instructions count: 281
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p288a0.C7391j.mo29695e():boolean");
    }
}
