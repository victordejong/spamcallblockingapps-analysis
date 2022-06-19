package com.google.android.datatransport.runtime;

import android.content.Context;
import com.google.android.datatransport.runtime.AbstractC10745r;
import com.google.android.datatransport.runtime.C10732i;
import com.google.android.datatransport.runtime.backends.C10706j;
import com.google.android.datatransport.runtime.backends.C10709l;
import com.google.android.datatransport.runtime.p316a.p317a.AbstractC10685b;
import com.google.android.datatransport.runtime.p316a.p317a.C10684a;
import com.google.android.datatransport.runtime.p316a.p317a.C10686c;
import com.google.android.datatransport.runtime.p316a.p317a.C10688e;
import com.google.android.datatransport.runtime.p320d.C10720b;
import com.google.android.datatransport.runtime.p320d.C10722c;
import com.google.android.datatransport.runtime.scheduling.C10748a;
import com.google.android.datatransport.runtime.scheduling.C10796d;
import com.google.android.datatransport.runtime.scheduling.C10798f;
import com.google.android.datatransport.runtime.scheduling.C10799g;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.AbstractC10808g;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.AbstractC10824s;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.C10813h;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.C10819n;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.C10820o;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.C10823r;
import com.google.android.datatransport.runtime.scheduling.p322a.AbstractC10762c;
import com.google.android.datatransport.runtime.scheduling.p322a.C10753ab;
import com.google.android.datatransport.runtime.scheduling.p322a.C10760ah;
import com.google.android.datatransport.runtime.scheduling.p322a.C10765e;
import com.google.android.datatransport.runtime.scheduling.p322a.C10767f;
import com.google.android.datatransport.runtime.scheduling.p322a.C10769g;
import com.google.android.datatransport.runtime.scheduling.p322a.C10772i;
import java.util.concurrent.Executor;
import javax.p517a.AbstractC18213a;
/* renamed from: com.google.android.datatransport.runtime.d */
/* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/runtime/d.class */
public final class C10716d extends AbstractC10745r {

    /* renamed from: a */
    private AbstractC18213a<Executor> f34575a;

    /* renamed from: b */
    private AbstractC18213a<Context> f34576b;

    /* renamed from: c */
    private AbstractC18213a f34577c;

    /* renamed from: d */
    private AbstractC18213a f34578d;

    /* renamed from: e */
    private AbstractC18213a f34579e;

    /* renamed from: f */
    private AbstractC18213a<C10772i> f34580f;

    /* renamed from: g */
    private AbstractC18213a<AbstractC10808g> f34581g;

    /* renamed from: h */
    private AbstractC18213a<AbstractC10824s> f34582h;

    /* renamed from: i */
    private AbstractC18213a<C10748a> f34583i;

    /* renamed from: j */
    private AbstractC18213a<C10813h> f34584j;

    /* renamed from: k */
    private AbstractC18213a<C10820o> f34585k;

    /* renamed from: l */
    private AbstractC18213a<C10744q> f34586l;

    /* renamed from: com.google.android.datatransport.runtime.d$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/runtime/d$a.class */
    public static final class C10718a implements AbstractC10745r.AbstractC10746a {

        /* renamed from: a */
        private Context f34587a;

        private C10718a() {
        }

        @Override // com.google.android.datatransport.runtime.AbstractC10745r.AbstractC10746a
        /* renamed from: a */
        public final /* bridge */ /* synthetic */ AbstractC10745r.AbstractC10746a mo22434a(Context context) {
            this.f34587a = (Context) C10688e.m22520a(context);
            return this;
        }

        @Override // com.google.android.datatransport.runtime.AbstractC10745r.AbstractC10746a
        /* renamed from: a */
        public final AbstractC10745r mo22435a() {
            Context context = this.f34587a;
            if (context != null) {
                return new C10716d(context);
            }
            throw new IllegalStateException(Context.class.getCanonicalName() + " must be set");
        }
    }

    private C10716d(Context context) {
        C10732i c10732i;
        C10720b c10720b;
        C10722c c10722c;
        C10765e c10765e;
        C10767f c10767f;
        C10720b c10720b2;
        C10722c c10722c2;
        C10769g c10769g;
        C10720b c10720b3;
        C10722c c10722c3;
        C10720b c10720b4;
        C10720b c10720b5;
        C10722c c10722c4;
        c10732i = C10732i.C10733a.f34594a;
        this.f34575a = C10684a.m22522a(c10732i);
        AbstractC10685b m22521a = C10686c.m22521a(context);
        this.f34576b = m22521a;
        c10720b = C10720b.C10721a.f34588a;
        c10722c = C10722c.C10723a.f34589a;
        C10706j c10706j = new C10706j(m22521a, c10720b, c10722c);
        this.f34577c = c10706j;
        this.f34578d = C10684a.m22522a(new C10709l(this.f34576b, c10706j));
        AbstractC18213a<Context> abstractC18213a = this.f34576b;
        c10765e = C10765e.C10766a.f34657a;
        c10767f = C10767f.C10768a.f34658a;
        this.f34579e = new C10760ah(abstractC18213a, c10765e, c10767f);
        c10720b2 = C10720b.C10721a.f34588a;
        c10722c2 = C10722c.C10723a.f34589a;
        c10769g = C10769g.C10770a.f34659a;
        this.f34580f = C10684a.m22522a(new C10753ab(c10720b2, c10722c2, c10769g, this.f34579e));
        c10720b3 = C10720b.C10721a.f34588a;
        C10798f c10798f = new C10798f(c10720b3);
        this.f34581g = c10798f;
        AbstractC18213a<Context> abstractC18213a2 = this.f34576b;
        AbstractC18213a<C10772i> abstractC18213a3 = this.f34580f;
        c10722c3 = C10722c.C10723a.f34589a;
        C10799g c10799g = new C10799g(abstractC18213a2, abstractC18213a3, c10798f, c10722c3);
        this.f34582h = c10799g;
        AbstractC18213a<Executor> abstractC18213a4 = this.f34575a;
        AbstractC18213a abstractC18213a5 = this.f34578d;
        AbstractC18213a<C10772i> abstractC18213a6 = this.f34580f;
        this.f34583i = new C10796d(abstractC18213a4, abstractC18213a5, c10799g, abstractC18213a6, abstractC18213a6);
        AbstractC18213a<Context> abstractC18213a7 = this.f34576b;
        AbstractC18213a abstractC18213a8 = this.f34578d;
        AbstractC18213a<C10772i> abstractC18213a9 = this.f34580f;
        AbstractC18213a<AbstractC10824s> abstractC18213a10 = this.f34582h;
        AbstractC18213a<Executor> abstractC18213a11 = this.f34575a;
        c10720b4 = C10720b.C10721a.f34588a;
        this.f34584j = new C10819n(abstractC18213a7, abstractC18213a8, abstractC18213a9, abstractC18213a10, abstractC18213a11, abstractC18213a9, c10720b4);
        AbstractC18213a<Executor> abstractC18213a12 = this.f34575a;
        AbstractC18213a<C10772i> abstractC18213a13 = this.f34580f;
        this.f34585k = new C10823r(abstractC18213a12, abstractC18213a13, this.f34582h, abstractC18213a13);
        c10720b5 = C10720b.C10721a.f34588a;
        c10722c4 = C10722c.C10723a.f34589a;
        this.f34586l = C10684a.m22522a(new C10747s(c10720b5, c10722c4, this.f34583i, this.f34584j, this.f34585k));
    }

    /* renamed from: a */
    public static AbstractC10745r.AbstractC10746a m22494a() {
        return new C10718a();
    }

    @Override // com.google.android.datatransport.runtime.AbstractC10745r
    /* renamed from: b */
    public final C10744q mo22437b() {
        return this.f34586l.mo4304a();
    }

    @Override // com.google.android.datatransport.runtime.AbstractC10745r
    /* renamed from: c */
    final AbstractC10762c mo22436c() {
        return this.f34580f.mo4304a();
    }
}
