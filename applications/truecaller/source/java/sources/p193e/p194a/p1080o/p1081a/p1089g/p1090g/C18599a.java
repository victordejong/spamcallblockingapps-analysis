package p193e.p194a.p1080o.p1081a.p1089g.p1090g;

import android.os.Bundle;
import androidx.fragment.app.FragmentManager;
import com.truecaller.contextcall.utils.ContextCallAnalyticsContext;
import javax.inject.Inject;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1080o.p1081a.p1089g.AbstractC18584a;
import p193e.p194a.p1080o.p1081a.p1089g.AbstractC18591d;
import s1.g;
import s1.z.b.a;
import s1.z.c.d0;
import s1.z.c.f;
import s1.z.c.l;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0011\b\u0007\u0018�� \u001d2\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u0002:\u0001\u001eB\u0007¢\u0006\u0004\b\u001b\u0010\u001cR\u001c\u0010\t\u001a\u00020\u00048\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0005\u0010\u0006\u001a\u0004\b\u0007\u0010\bR\u0016\u0010\r\u001a\u00020\n8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000b\u0010\fR\u001d\u0010\u0013\u001a\u00020\u000e8V@\u0016X\u0096\u0084\u0002¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012R\"\u0010\u001a\u001a\u00020\u00038\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019¨\u0006\u001f"}, d2 = {"Le/a/o/a/g/g/a;", "Le/a/o/a/g/a;", "Le/a/o/a/g/g/d;", "Le/a/o/a/g/g/c;", "Le/a/o/a/g/d;", "j", "Le/a/o/a/g/d;", "RA", "()Le/a/o/a/g/d;", "type", "", "i5", "()Ljava/lang/String;", "hint", "Lcom/truecaller/contextcall/utils/ContextCallAnalyticsContext;", "k", "Ls1/g;", "Q3", "()Lcom/truecaller/contextcall/utils/ContextCallAnalyticsContext;", "manageCallReasonAnalyticsContext", "i", "Le/a/o/a/g/g/c;", "getAddCallReasonPresenter", "()Le/a/o/a/g/g/c;", "setAddCallReasonPresenter", "(Le/a/o/a/g/g/c;)V", "addCallReasonPresenter", "<init>", "()V", "l", "a", "context-call_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.o.a.g.g.a */
/* loaded from: classes8-dex2jar.jar:e/a/o/a/g/g/a.class */
public final class C18599a extends AbstractC18584a<AbstractC18604d, AbstractC18603c> implements AbstractC18604d {

    /* renamed from: l */
    public static final C18600a f52380l = new C18600a(null);
    @Inject

    /* renamed from: i */
    public AbstractC18603c f52381i;

    /* renamed from: j */
    public final AbstractC18591d f52382j = AbstractC18591d.C18592a.f52375a;

    /* renamed from: k */
    public final g f52383k = C25225a.m3978P1(new C18601b());

    /* renamed from: e.a.o.a.g.g.a$a */
    /* loaded from: classes8-dex2jar.jar:e/a/o/a/g/g/a$a.class */
    public static final class C18600a {
        public C18600a(f fVar) {
        }

        /* renamed from: a */
        public final C18599a m14739a(FragmentManager fragmentManager, String str, ContextCallAnalyticsContext contextCallAnalyticsContext) {
            l.e(fragmentManager, "fragmentManager");
            l.e(str, "hint");
            C18599a c18599a = new C18599a();
            Bundle m8654X0 = C22128a.m8654X0("hint", str);
            m8654X0.putString("manage_call_reason_source", contextCallAnalyticsContext != null ? contextCallAnalyticsContext.name() : null);
            c18599a.setArguments(m8654X0);
            c18599a.show(fragmentManager, d0.a(C18599a.class).c());
            return c18599a;
        }
    }

    /* renamed from: e.a.o.a.g.g.a$b */
    /* loaded from: classes8-dex2jar.jar:e/a/o/a/g/g/a$b.class */
    public static final class C18601b extends m implements a<ContextCallAnalyticsContext> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18601b() {
            super(0);
            C18599a.this = r4;
        }

        /* JADX WARN: Code restructure failed: missing block: B:7:0x001d, code lost:
            if (r4 != null) goto L9;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.Object invoke() {
            /*
                r3 = this;
                r0 = r3
                e.a.o.a.g.g.a r0 = p193e.p194a.p1080o.p1081a.p1089g.p1090g.C18599a.this
                n3.r.a.l r0 = r0.getActivity()
                r4 = r0
                r0 = r4
                if (r0 == 0) goto L23
                r0 = r4
                android.content.Intent r0 = r0.getIntent()
                r4 = r0
                r0 = r4
                if (r0 == 0) goto L23
                r0 = r4
                java.lang.String r1 = "manage_call_reason_source"
                java.lang.String r0 = r0.getStringExtra(r1)
                r4 = r0
                r0 = r4
                if (r0 == 0) goto L23
                goto L2a
            L23:
                com.truecaller.contextcall.utils.ContextCallAnalyticsContext r0 = com.truecaller.contextcall.utils.ContextCallAnalyticsContext.SETTINGS
                java.lang.String r0 = r0.name()
                r4 = r0
            L2a:
                r0 = r4
                java.lang.String r1 = "activity?.intent?.getStr…ticsContext.SETTINGS.name"
                s1.z.c.l.d(r0, r1)
                r0 = r4
                com.truecaller.contextcall.utils.ContextCallAnalyticsContext r0 = com.truecaller.contextcall.utils.ContextCallAnalyticsContext.valueOf(r0)
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1080o.p1081a.p1089g.p1090g.C18599a.C18601b.invoke():java.lang.Object");
        }
    }

    /* renamed from: VA */
    public static final C18599a m14740VA(FragmentManager fragmentManager, String str) {
        l.e(fragmentManager, "fragmentManager");
        l.e(str, "hint");
        C18599a c18599a = new C18599a();
        Bundle bundle = new Bundle();
        bundle.putString("hint", str);
        bundle.putString("manage_call_reason_source", null);
        c18599a.setArguments(bundle);
        c18599a.show(fragmentManager, d0.a(C18599a.class).c());
        return c18599a;
    }

    @Override // p193e.p194a.p1080o.p1081a.p1089g.p1090g.AbstractC18604d
    /* renamed from: Q3 */
    public ContextCallAnalyticsContext mo14738Q3() {
        return (ContextCallAnalyticsContext) this.f52383k.getValue();
    }

    @Override // p193e.p194a.p1080o.p1081a.p1089g.AbstractC18584a
    /* renamed from: QA */
    public AbstractC18604d mo14710QA() {
        return this;
    }

    @Override // p193e.p194a.p1080o.p1081a.p1089g.AbstractC18584a
    /* renamed from: RA */
    public AbstractC18591d mo14709RA() {
        return this.f52382j;
    }

    @Override // p193e.p194a.p1080o.p1081a.p1089g.AbstractC18584a
    /* renamed from: SA */
    public AbstractC18603c mo14708SA() {
        AbstractC18603c abstractC18603c = this.f52381i;
        if (abstractC18603c != null) {
            return abstractC18603c;
        }
        l.l("addCallReasonPresenter");
        throw null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0011, code lost:
        if (r4 != null) goto L7;
     */
    @Override // p193e.p194a.p1080o.p1081a.p1089g.p1090g.AbstractC18604d
    /* renamed from: i5 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String mo14737i5() {
        /*
            r3 = this;
            r0 = r3
            android.os.Bundle r0 = r0.getArguments()
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L17
            r0 = r4
            java.lang.String r1 = "hint"
            java.lang.String r0 = r0.getString(r1)
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L17
            goto L1a
        L17:
            java.lang.String r0 = ""
            r4 = r0
        L1a:
            r0 = r4
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1080o.p1081a.p1089g.p1090g.C18599a.mo14737i5():java.lang.String");
    }
}
