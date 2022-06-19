package p193e.p194a.p1080o;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.ImageView;
import com.truecaller.C2752R;
import com.truecaller.TrueApp;
import com.truecaller.analytics.common.event.ViewActionEvent;
import com.truecaller.calling.initiate_call.InitiateCallHelper;
import com.truecaller.data.entity.Number;
import p1727n3.p1807k.p1809b.C26467a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1146q2.p1155y0.p1156a.C19597a;
import p193e.p194a.p372b0.p430q.C8574c0;
import p193e.p194a.p682e.p698c.C13090i0;
import p193e.p194a.p682e.p698c.View$OnClickListenerC13135s1;
import p193e.p194a.p682e.p699c2.C13212u;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.contextcall.ContextCallUtilsImpl$isContextCallCapable$3", f = "ContextCallUtils.kt", l = {71}, m = "invokeSuspend")
/* renamed from: e.a.o.l */
/* loaded from: classes8-dex2jar.jar:e/a/o/l.class */
public final class C18782l extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f52763e;

    /* renamed from: f */
    public final /* synthetic */ C18778k f52764f;

    /* renamed from: g */
    public final /* synthetic */ Number f52765g;

    /* renamed from: h */
    public final /* synthetic */ C13090i0 f52766h;

    @e(c = "com.truecaller.contextcall.ContextCallUtilsImpl$isContextCallCapable$3$isFeatureEnabled$1", f = "ContextCallUtils.kt", l = {71}, m = "invokeSuspend")
    /* renamed from: e.a.o.l$a */
    /* loaded from: classes8-dex2jar.jar:e/a/o/l$a.class */
    public static final class C18783a extends i implements p<i0, d<? super Boolean>, Object> {

        /* renamed from: e */
        public int f52767e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18783a(d dVar) {
            super(2, dVar);
            C18782l.this = r5;
        }

        /* renamed from: i */
        public final d<s> m14467i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C18783a(dVar);
        }

        /* renamed from: k */
        public final Object m14466k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C18783a(dVar).m14465s(s.a);
        }

        /* renamed from: s */
        public final Object m14465s(Object obj) {
            a aVar = a.a;
            int i = this.f52767e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                C18782l c18782l = C18782l.this;
                AbstractC18765c abstractC18765c = c18782l.f52764f.f52749a;
                String m35479e = c18782l.f52765g.m35479e();
                l.d(m35479e, "phoneNumber.normalizedNumber");
                this.f52767e = 1;
                Object mo14511n = abstractC18765c.mo14511n(m35479e, this);
                obj = mo14511n;
                if (mo14511n == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            return obj;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C18782l(C18778k c18778k, Number number, C13090i0 c13090i0, d dVar) {
        super(2, dVar);
        this.f52764f = c18778k;
        this.f52765g = number;
        this.f52766h = c13090i0;
    }

    /* renamed from: i */
    public final d<s> m14470i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C18782l(this.f52764f, this.f52765g, this.f52766h, dVar);
    }

    /* renamed from: k */
    public final Object m14469k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C18782l(this.f52764f, this.f52765g, this.f52766h, dVar).m14468s(s.a);
    }

    /* renamed from: s */
    public final Object m14468s(Object obj) {
        View$OnClickListenerC13135s1.C13142f c13142f;
        a aVar = a.a;
        int i = this.f52763e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            f fVar = this.f52764f.f52750b;
            C18783a c18783a = new C18783a(null);
            this.f52763e = 1;
            Object a4 = s1.a.a.a.v0.f.d.a4(fVar, c18783a, this);
            obj = a4;
            if (a4 == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        boolean booleanValue = ((Boolean) obj).booleanValue();
        C13090i0 c13090i0 = this.f52766h;
        final View$OnClickListenerC13135s1 view$OnClickListenerC13135s1 = c13090i0.f37982a;
        C13212u c13212u = c13090i0.f37983b;
        final Number number = c13090i0.f37984c;
        if (view$OnClickListenerC13135s1.m21921SA()) {
            Context context = view$OnClickListenerC13135s1.getContext();
            Object obj2 = C26467a.f74235a;
            Drawable m1789b = C26467a.C26470c.m1789b(context, 2131231801);
            View.OnClickListener onClickListener = new View.OnClickListener() { // from class: e.a.e.c.e1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    View$OnClickListenerC13135s1 view$OnClickListenerC13135s12 = View$OnClickListenerC13135s1.this;
                    Number number2 = number;
                    if (view$OnClickListenerC13135s12.f38176k.m22099c().mo13454b()) {
                        view$OnClickListenerC13135s12.f38176k.m22099c().mo13455a();
                    }
                    view$OnClickListenerC13135s12.f38188o.mo13274b(ViewActionEvent.m35940g("detailView", "ContextCallOnDemand"));
                    String m19825a = TrueApp.m36032b0().mo10154s().mo12504W7().m19825a(number2, false);
                    if (m19825a == null || C8574c0.m28353f(m19825a)) {
                        return;
                    }
                    InitiateCallHelper.CallContextOption.ShowOnDemand showOnDemand = InitiateCallHelper.CallContextOption.ShowOnDemand.a;
                    view$OnClickListenerC13135s12.f38188o.mo13274b(ViewActionEvent.m35944c("detailView", ViewActionEvent.CallSubAction.BUTTON.getValue()));
                    l.e("detailView", "analyticsContext");
                    l.e(showOnDemand, "callContextOption");
                    view$OnClickListenerC13135s12.f38220y1.m35744b(new InitiateCallHelper.CallOptions(m19825a, "detailView", m19825a, null, false, false, null, false, showOnDemand));
                }
            };
            ImageView imageView = (ImageView) c13212u.findViewById(C2752R.C2754id.buttonImageRightExtra);
            imageView.setVisibility(booleanValue ? 0 : 8);
            imageView.setImageDrawable(m1789b);
            imageView.setOnClickListener(onClickListener);
            c13212u.setShowButtonDividers(!booleanValue);
            c13212u.setImageTint(view$OnClickListenerC13135s1.f38110H1);
            if (booleanValue) {
                c13212u.getExtraRightButton().setTag(13);
                if (!view$OnClickListenerC13135s1.f38106F1 && (c13142f = view$OnClickListenerC13135s1.f38184m1) != null) {
                    c13142f.f38232b.mo13274b(C19597a.m13114b("ContextCallOnDemand"));
                    view$OnClickListenerC13135s1.f38106F1 = true;
                }
            }
        }
        return s.a;
    }
}
