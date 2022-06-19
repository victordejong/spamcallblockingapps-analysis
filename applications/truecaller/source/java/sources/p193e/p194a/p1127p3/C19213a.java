package p193e.p194a.p1127p3;

import android.content.Context;
import com.razorpay.AnalyticsConstants;
import javax.inject.Inject;
import p193e.p194a.p1158q3.AbstractC19617h;
import p193e.p194a.p937j4.p939b.p940a.C15571h;
import s1.z.c.l;
/* renamed from: e.a.p3.a */
/* loaded from: classes8-dex2jar.jar:e/a/p3/a.class */
public final class C19213a implements AbstractC19617h {

    /* renamed from: a */
    public final Context f53588a;

    @Inject
    public C19213a(Context context) {
        l.e(context, AnalyticsConstants.CONTEXT);
        this.f53588a = context;
    }

    @Override // p193e.p194a.p1158q3.AbstractC19617h
    /* renamed from: a */
    public String mo13096a() {
        return "auto";
    }

    @Override // p193e.p194a.p1158q3.AbstractC19617h
    /* renamed from: b */
    public boolean mo13095b() {
        boolean z = true;
        if ((C15571h.m18640k(this.f53588a) & 1) == 0) {
            z = false;
        }
        return z;
    }

    @Override // p193e.p194a.p1158q3.AbstractC19617h
    /* renamed from: c */
    public boolean mo13094c() {
        return (C15571h.m18640k(this.f53588a) & 2) != 0;
    }

    @Override // p193e.p194a.p1158q3.AbstractC19617h
    /* renamed from: d */
    public String mo13093d() {
        return C15571h.m18638m();
    }
}
