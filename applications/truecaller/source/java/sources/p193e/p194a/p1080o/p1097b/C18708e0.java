package p193e.p194a.p1080o.p1097b;

import android.content.Context;
import com.razorpay.AnalyticsConstants;
import javax.inject.Inject;
import javax.inject.Named;
import p1727n3.p1834m0.AbstractC26857y;
import p1727n3.p1834m0.p1835c0.C26702l;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import s1.g;
import s1.w.f;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.o.b.e0 */
/* loaded from: classes8-dex2jar.jar:e/a/o/b/e0.class */
public final class C18708e0 implements AbstractC18704c0 {

    /* renamed from: a */
    public final g f52575a = C25225a.m3978P1(new C18709a());

    /* renamed from: b */
    public final f f52576b;

    /* renamed from: c */
    public final Context f52577c;

    /* renamed from: e.a.o.b.e0$a */
    /* loaded from: classes8-dex2jar.jar:e/a/o/b/e0$a.class */
    public static final class C18709a extends m implements a<AbstractC26857y> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18709a() {
            super(0);
            C18708e0.this = r4;
        }

        public Object invoke() {
            return C26702l.m1431n(C18708e0.this.f52577c);
        }
    }

    @Inject
    public C18708e0(@Named("IO") f fVar, Context context) {
        l.e(fVar, "ioContext");
        l.e(context, AnalyticsConstants.CONTEXT);
        this.f52576b = fVar;
        this.f52577c = context;
    }
}
