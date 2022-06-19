package com.truecaller.insights.p168ui.p169qa.view;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ScrollView;
import android.widget.TextView;
import android.widget.Toast;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.razorpay.AnalyticsConstants;
import com.truecaller.insights.models.pdo.ParsedDataObject;
import com.truecaller.insights.p168ui.C4078R;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import n3.b.a.h;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1066n.C18334g0;
import p193e.p194a.p372b0.AbstractC8412c;
import p193e.p194a.p372b0.p419m.p421b.AbstractC8510a;
import p193e.p194a.p437c.p438a.p446c.p448e.C8784a;
import p193e.p194a.p437c.p438a.p446c.p448e.C8789d;
import p193e.p194a.p437c.p438a.p477g.C9021d;
import p193e.p194a.p437c.p438a.p494m.p495a.AbstractC9246a;
import p193e.p194a.p437c.p438a.p494m.p495a.C9248b;
import p193e.p194a.p437c.p438a.p494m.p495a.C9251c;
import p193e.p194a.p437c.p438a.p494m.p497c.C9344t;
import p193e.p194a.p437c.p548h.p549k.AbstractC10261a;
import p193e.p194a.p437c.p572l.p573a.AbstractC10451a;
import p193e.p194a.p437c.p572l.p573a.AbstractC10452b;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p437c.p596t.AbstractC10693a;
import p193e.p194a.p437c.p606w.p607o0.AbstractC10821g;
import q3.a.i0;
import q3.a.j0;
import q3.a.p1;
import q3.a.y;
import s1.a.a.a.v0.f.d;
import s1.g;
import s1.w.f;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\t\u0018��2\u00020\u0001:\u0001'B\u0007¢\u0006\u0004\b8\u0010.J\u0019\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014¢\u0006\u0004\b\u0005\u0010\u0006R\u001d\u0010\f\u001a\u00020\u00078B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000bR\"\u0010\u0014\u001a\u00020\r8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u0016\u0010\u0018\u001a\u00020\u00158\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017R\u001d\u0010\u001d\u001a\u00020\u00198B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001a\u0010\t\u001a\u0004\b\u001b\u0010\u001cR\"\u0010%\u001a\u00020\u001e8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u001f\u0010 \u001a\u0004\b!\u0010\"\"\u0004\b#\u0010$R(\u0010/\u001a\u00020&8\u0006@\u0006X\u0087.¢\u0006\u0018\n\u0004\b'\u0010(\u0012\u0004\b-\u0010.\u001a\u0004\b)\u0010*\"\u0004\b+\u0010,R$\u00107\u001a\u0004\u0018\u0001008\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b1\u00102\u001a\u0004\b3\u00104\"\u0004\b5\u00106¨\u00069"}, d2 = {"Lcom/truecaller/insights/ui/qa/view/PdoViewerActivity;", "Ln3/b/a/h;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "Le/a/c/a/g/d;", "g", "Ls1/g;", "pa", "()Le/a/c/a/g/d;", "binding", "Le/a/c/t/a;", "a", "Le/a/c/t/a;", "getQaManager", "()Le/a/c/t/a;", "setQaManager", "(Le/a/c/t/a;)V", "qaManager", "Lq3/a/y;", "d", "Lq3/a/y;", "job", "Lq3/a/i0;", "e", "getCoroutineScope", "()Lq3/a/i0;", "coroutineScope", "Le/a/c/w/o0/g;", C22021b.f61237c, "Le/a/c/w/o0/g;", "getSmartSmsFeatureFilter", "()Le/a/c/w/o0/g;", "setSmartSmsFeatureFilter", "(Le/a/c/w/o0/g;)V", "smartSmsFeatureFilter", "Ls1/w/f;", AbstractC2405c.f7629a, "Ls1/w/f;", "getUiContext", "()Ls1/w/f;", "setUiContext", "(Ls1/w/f;)V", "getUiContext$annotations", "()V", "uiContext", "Lcom/truecaller/insights/models/pdo/ParsedDataObject;", "f", "Lcom/truecaller/insights/models/pdo/ParsedDataObject;", "getPdo", "()Lcom/truecaller/insights/models/pdo/ParsedDataObject;", "setPdo", "(Lcom/truecaller/insights/models/pdo/ParsedDataObject;)V", "pdo", "<init>", "insights-ui_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.insights.ui.qa.view.PdoViewerActivity */
/* loaded from: classes10-dex2jar.jar:com/truecaller/insights/ui/qa/view/PdoViewerActivity.class */
public final class PdoViewerActivity extends h {

    /* renamed from: h */
    public static final /* synthetic */ int f12884h = 0;
    @Inject

    /* renamed from: a */
    public AbstractC10693a f12885a;
    @Inject

    /* renamed from: b */
    public AbstractC10821g f12886b;
    @Inject

    /* renamed from: c */
    public f f12887c;

    /* renamed from: f */
    public ParsedDataObject f12890f;

    /* renamed from: d */
    public final y f12888d = d.n((p1) null, 1);

    /* renamed from: e */
    public final g f12889e = C25225a.m3978P1(new C4122d());

    /* renamed from: g */
    public final g f12891g = C25225a.m3982O1(s1.h.c, new C4120b(this));

    /* renamed from: com.truecaller.insights.ui.qa.view.PdoViewerActivity$a */
    /* loaded from: classes2-dex2jar.jar:com/truecaller/insights/ui/qa/view/PdoViewerActivity$a.class */
    public static final class View$OnClickListenerC4119a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ int f12892a;

        /* renamed from: b */
        public final /* synthetic */ Object f12893b;

        public View$OnClickListenerC4119a(int i, Object obj) {
            this.f12892a = i;
            this.f12893b = obj;
        }

        /* JADX WARN: Type inference failed for: r0v20, types: [android.content.Context, com.truecaller.insights.ui.qa.view.PdoViewerActivity] */
        /* JADX WARN: Type inference failed for: r0v34, types: [android.content.Context, com.truecaller.insights.ui.qa.view.PdoViewerActivity, java.lang.Object, android.app.Activity] */
        /* JADX WARN: Type inference failed for: r0v5, types: [com.truecaller.insights.ui.qa.view.PdoViewerActivity, android.app.Activity] */
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            String address;
            int i = this.f12892a;
            if (i == 0) {
                ?? r0 = (PdoViewerActivity) this.f12893b;
                int i2 = PdoViewerActivity.f12884h;
                Object systemService = r0.getSystemService("clipboard");
                Objects.requireNonNull(systemService, "null cannot be cast to non-null type android.content.ClipboardManager");
                ClipboardManager clipboardManager = (ClipboardManager) systemService;
                TextView textView = r0.m35160pa().f27431e;
                l.d(textView, "binding.result");
                clipboardManager.setPrimaryClip(ClipData.newPlainText("Pdo", textView.getText()));
                Toast.makeText((Context) ((PdoViewerActivity) this.f12893b), "Copied", 0).show();
            } else if (i != 1) {
                throw null;
            } else {
                ParsedDataObject parsedDataObject = ((PdoViewerActivity) this.f12893b).f12890f;
                if (parsedDataObject == null || (address = parsedDataObject.getAddress()) == null) {
                    return;
                }
                ?? r02 = (PdoViewerActivity) this.f12893b;
                l.e((Object) r02, AnalyticsConstants.CONTEXT);
                l.e(address, "address");
                Intent intent = new Intent((Context) r02, InsightsQAActivity.class);
                intent.putExtra("qaPageToOpen", "InsightsAddressFiltersFragment");
                intent.putExtra("extras_param", address);
                r02.startActivity(intent);
            }
        }
    }

    /* renamed from: com.truecaller.insights.ui.qa.view.PdoViewerActivity$b */
    /* loaded from: classes10-dex2jar.jar:com/truecaller/insights/ui/qa/view/PdoViewerActivity$b.class */
    public static final class C4120b extends m implements a<C9021d> {

        /* renamed from: b */
        public final /* synthetic */ h f12894b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4120b(h hVar) {
            super(0);
            this.f12894b = hVar;
        }

        public Object invoke() {
            LayoutInflater layoutInflater = this.f12894b.getLayoutInflater();
            l.d(layoutInflater, "layoutInflater");
            View inflate = layoutInflater.inflate(C4078R.layout.activity_pdo_viewer, (ViewGroup) null, false);
            int i = C4078R.C4080id.applyFilter;
            TextView textView = (TextView) inflate.findViewById(i);
            if (textView != null) {
                i = C4078R.C4080id.copy;
                Button button = (Button) inflate.findViewById(i);
                if (button != null) {
                    i = C4078R.C4080id.openAddressFilter;
                    Button button2 = (Button) inflate.findViewById(i);
                    if (button2 != null) {
                        i = C4078R.C4080id.result;
                        TextView textView2 = (TextView) inflate.findViewById(i);
                        if (textView2 != null) {
                            return new C9021d((ScrollView) inflate, textView, button, button2, textView2);
                        }
                    }
                }
            }
            throw new NullPointerException("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i)));
        }
    }

    /* renamed from: com.truecaller.insights.ui.qa.view.PdoViewerActivity$c */
    /* loaded from: classes10-dex2jar.jar:com/truecaller/insights/ui/qa/view/PdoViewerActivity$c.class */
    public static final class C4121c {
        /* renamed from: a */
        public static final Intent m35159a(Context context, long j) {
            l.e(context, AnalyticsConstants.CONTEXT);
            Intent intent = new Intent(context, PdoViewerActivity.class);
            intent.putExtra("msg_id", j);
            return intent;
        }
    }

    /* renamed from: com.truecaller.insights.ui.qa.view.PdoViewerActivity$d */
    /* loaded from: classes10-dex2jar.jar:com/truecaller/insights/ui/qa/view/PdoViewerActivity$d.class */
    public static final class C4122d extends m implements a<i0> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4122d() {
            super(0);
            PdoViewerActivity.this = r4;
        }

        public Object invoke() {
            PdoViewerActivity pdoViewerActivity = PdoViewerActivity.this;
            f fVar = pdoViewerActivity.f12887c;
            if (fVar != null) {
                return d.h(fVar.plus(pdoViewerActivity.f12888d));
            }
            l.l("uiContext");
            throw null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onCreate(Bundle bundle) {
        PdoViewerActivity.super.onCreate(bundle);
        C10480a.m26076E2(this);
        C9021d m35160pa = m35160pa();
        l.d(m35160pa, "binding");
        setContentView(m35160pa.f27427a);
        if (!(AbstractC9246a.C9247a.f28130a != null)) {
            AbstractC8412c m15209q = C18334g0.m15209q(this);
            AbstractC10451a abstractC10451a = (AbstractC10451a) C22128a.m8726C1(AbstractC10451a.class, "EntryPointAccessors.from…htsComponent::class.java)");
            C8784a c8784a = new C8784a();
            AbstractC10261a abstractC10261a = (AbstractC10261a) C22128a.m8726C1(AbstractC10261a.class, "EntryPointAccessors.from…onsComponent::class.java)");
            AbstractC10452b abstractC10452b = (AbstractC10452b) C22128a.m8726C1(AbstractC10452b.class, "EntryPointAccessors.from…PayComponent::class.java)");
            AbstractC8510a abstractC8510a = (AbstractC8510a) C22128a.m8726C1(AbstractC8510a.class, "EntryPointAccessors.from…ntsComponent::class.java)");
            C9251c c9251c = new C9251c();
            C8789d c8789d = new C8789d();
            C25225a.m3846s(abstractC10451a, AbstractC10451a.class);
            C25225a.m3846s(m15209q, AbstractC8412c.class);
            C25225a.m3846s(abstractC10261a, AbstractC10261a.class);
            C25225a.m3846s(abstractC10452b, AbstractC10452b.class);
            C25225a.m3846s(abstractC8510a, AbstractC8510a.class);
            C9248b c9248b = new C9248b(c8784a, c9251c, c8789d, abstractC10451a, m15209q, abstractC10261a, abstractC10452b, abstractC8510a, null);
            l.d(c9248b, "DaggerBusinessInsightsQA…\n                .build()");
            l.e(c9248b, "<set-?>");
            AbstractC9246a.C9247a.f28130a = c9248b;
        }
        AbstractC9246a abstractC9246a = AbstractC9246a.C9247a.f28130a;
        if (abstractC9246a == null) {
            l.l("instance");
            throw null;
        }
        C9248b c9248b2 = (C9248b) abstractC9246a;
        AbstractC10693a mo12646M = c9248b2.f28140d.mo12646M();
        Objects.requireNonNull(mo12646M, "Cannot return null from a non-@Nullable component method");
        this.f12885a = mo12646M;
        AbstractC10821g mo12329j5 = c9248b2.f28140d.mo12329j5();
        Objects.requireNonNull(mo12329j5, "Cannot return null from a non-@Nullable component method");
        this.f12886b = mo12329j5;
        f mo12378g = c9248b2.f28142f.mo12378g();
        Objects.requireNonNull(mo12378g, "Cannot return null from a non-@Nullable component method");
        this.f12887c = mo12378g;
        long longExtra = getIntent().getLongExtra("msg_id", 0L);
        if (longExtra != 0) {
            d.w2((i0) this.f12889e.getValue(), (f) null, (j0) null, new C9344t(this, longExtra, null), 3, (Object) null);
        }
        m35160pa().f27429c.setOnClickListener(new View$OnClickListenerC4119a(0, this));
        m35160pa().f27430d.setOnClickListener(new View$OnClickListenerC4119a(1, this));
    }

    /* renamed from: pa */
    public final C9021d m35160pa() {
        return (C9021d) this.f12891g.getValue();
    }
}
