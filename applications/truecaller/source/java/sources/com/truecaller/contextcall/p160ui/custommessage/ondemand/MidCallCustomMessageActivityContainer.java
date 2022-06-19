package com.truecaller.contextcall.p160ui.custommessage.ondemand;

import android.content.Context;
import android.os.Bundle;
import android.widget.Toast;
import androidx.fragment.app.FragmentManager;
import com.truecaller.contextcall.C3771R;
import com.truecaller.contextcall.p160ui.reasonpicker.ondemand.OnDemandMessageSource;
import kotlin.Metadata;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1080o.p1081a.p1089g.AbstractC18590c;
import p193e.p194a.p1080o.p1081a.p1089g.AbstractC18591d;
import p193e.p194a.p1080o.p1081a.p1089g.p1093j.AbstractC18625b;
import p193e.p194a.p1080o.p1081a.p1089g.p1093j.C18628e;
import s1.g;
import s1.h;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��2\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0001\u0018��2\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b\u001c\u0010\tJ\u0019\u0010\u0006\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0014¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\b\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\n\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\n\u0010\tJ\u0017\u0010\r\u001a\u00020\u00052\u0006\u0010\f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u000f\u0010\tJ\u000f\u0010\u0010\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0010\u0010\tR\u001f\u0010\u0016\u001a\u0004\u0018\u00010\u00118B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015R\u001d\u0010\u001b\u001a\u00020\u00178B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0018\u0010\u0013\u001a\u0004\b\u0019\u0010\u001a¨\u0006\u001d"}, d2 = {"Lcom/truecaller/contextcall/ui/custommessage/ondemand/MidCallCustomMessageActivityContainer;", "Lcom/truecaller/contextcall/ui/ContextCallActivity;", "Le/a/o/a/g/c;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "qa", "()V", "onBackPressed", "Le/a/o/a/g/d;", "type", "Vi", "(Le/a/o/a/g/d;)V", "q4", "Hg", "", "f", "Ls1/g;", "getMessage", "()Ljava/lang/String;", "message", "Lcom/truecaller/contextcall/ui/reasonpicker/ondemand/OnDemandMessageSource$MidCall;", "e", "getOnDemandSource", "()Lcom/truecaller/contextcall/ui/reasonpicker/ondemand/OnDemandMessageSource$MidCall;", "onDemandSource", "<init>", "context-call_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.contextcall.ui.custommessage.ondemand.MidCallCustomMessageActivityContainer */
/* loaded from: classes8-dex2jar.jar:com/truecaller/contextcall/ui/custommessage/ondemand/MidCallCustomMessageActivityContainer.class */
public final class MidCallCustomMessageActivityContainer extends AbstractC18625b implements AbstractC18590c {

    /* renamed from: e */
    public final g f11430e;

    /* renamed from: f */
    public final g f11431f;

    /* renamed from: com.truecaller.contextcall.ui.custommessage.ondemand.MidCallCustomMessageActivityContainer$a */
    /* loaded from: classes8-dex2jar.jar:com/truecaller/contextcall/ui/custommessage/ondemand/MidCallCustomMessageActivityContainer$a.class */
    public static final class C3781a extends m implements a<String> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C3781a() {
            super(0);
            MidCallCustomMessageActivityContainer.this = r4;
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [com.truecaller.contextcall.ui.custommessage.ondemand.MidCallCustomMessageActivityContainer, android.app.Activity] */
        public Object invoke() {
            return MidCallCustomMessageActivityContainer.this.getIntent().getStringExtra("onDemandMessageHint");
        }
    }

    /* renamed from: com.truecaller.contextcall.ui.custommessage.ondemand.MidCallCustomMessageActivityContainer$b */
    /* loaded from: classes8-dex2jar.jar:com/truecaller/contextcall/ui/custommessage/ondemand/MidCallCustomMessageActivityContainer$b.class */
    public static final class C3782b extends m implements a<OnDemandMessageSource.MidCall> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C3782b() {
            super(0);
            MidCallCustomMessageActivityContainer.this = r4;
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [com.truecaller.contextcall.ui.custommessage.ondemand.MidCallCustomMessageActivityContainer, android.app.Activity] */
        public Object invoke() {
            OnDemandMessageSource.MidCall midCall;
            Bundle bundleExtra = MidCallCustomMessageActivityContainer.this.getIntent().getBundleExtra("sourceBundle");
            if (bundleExtra == null || (midCall = (OnDemandMessageSource.MidCall) bundleExtra.getParcelable("onDemandMessageSource")) == null) {
                throw new Exception("On demand source not provided");
            }
            return midCall;
        }
    }

    public MidCallCustomMessageActivityContainer() {
        h hVar = h.c;
        this.f11430e = C25225a.m3982O1(hVar, new C3782b());
        this.f11431f = C25225a.m3982O1(hVar, new C3781a());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p1080o.p1081a.p1089g.AbstractC18590c
    /* renamed from: Hg */
    public void mo14748Hg() {
        Toast.makeText((Context) this, C3771R.string.context_call_error_network, 0).show();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p1080o.p1081a.p1089g.AbstractC18590c
    /* renamed from: Vi */
    public void mo14747Vi(AbstractC18591d abstractC18591d) {
        l.e(abstractC18591d, "type");
        if (abstractC18591d instanceof AbstractC18591d.C18594c) {
            String string = getString(C3771R.string.context_call_outgoing_call_message, new Object[]{((AbstractC18591d.C18594c) abstractC18591d).f52377a});
            l.d(string, "getString(R.string.conte…ll_message, type.message)");
            Toast.makeText((Context) this, (CharSequence) string, 0).show();
        }
        finish();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onBackPressed() {
        MidCallCustomMessageActivityContainer.super.onBackPressed();
        finish();
    }

    @Override // com.truecaller.contextcall.p160ui.ContextCallActivity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTheme(C3771R.style.ThemeX_PopupContextCallCustomMessageActivity);
        C18628e.C18629a c18629a = C18628e.f52433k;
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        l.d(supportFragmentManager, "supportFragmentManager");
        OnDemandMessageSource.MidCall midCall = (OnDemandMessageSource.MidCall) this.f11430e.getValue();
        l.d(midCall, "onDemandSource");
        C18628e.C18629a.m14705b(c18629a, supportFragmentManager, null, midCall, (String) this.f11431f.getValue(), 2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p1080o.p1081a.p1089g.AbstractC18590c
    /* renamed from: q4 */
    public void mo14746q4() {
        finish();
    }

    @Override // com.truecaller.contextcall.p160ui.ContextCallActivity
    /* renamed from: qa */
    public void mo35587qa() {
    }
}
