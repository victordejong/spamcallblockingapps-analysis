package p193e.p194a.p1138q.p1139a;

import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.Toast;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.contactfeedback.C3744R;
import com.truecaller.contactfeedback.analytics.ContactFeedbackAnalyticsAction;
import com.truecaller.data.entity.Contact;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import n3.r.a.l;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1138q.p1141e.C19391a;
import p193e.p194a.p1270u2.p1271a.AbstractC20576b;
import s1.g;
import s1.z.b.a;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��v\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0007\u0018��2\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\bD\u0010\u001bJ\u0019\u0010\u0006\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b\u0006\u0010\u0007J-\u0010\r\u001a\u0004\u0018\u00010\f2\u0006\u0010\t\u001a\u00020\b2\b\u0010\u000b\u001a\u0004\u0018\u00010\n2\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b\r\u0010\u000eJ!\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\f2\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u0017\u0010\u0014\u001a\u00020\u00052\u0006\u0010\u0013\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u0019\u0010\u0018\u001a\u00020\u00052\b\u0010\u0017\u001a\u0004\u0018\u00010\u0016H\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u000f\u0010\u001a\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u001a\u0010\u001bR\"\u0010#\u001a\u00020\u001c8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u001d\u0010\u001e\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"R\u001d\u0010)\u001a\u00020$8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b%\u0010&\u001a\u0004\b'\u0010(R%\u0010/\u001a\n +*\u0004\u0018\u00010*0*8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b,\u0010&\u001a\u0004\b-\u0010.R%\u00104\u001a\n +*\u0004\u0018\u000100008B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b1\u0010&\u001a\u0004\b2\u00103R\u001d\u00109\u001a\u0002058B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b6\u0010&\u001a\u0004\b7\u00108R%\u0010>\u001a\n +*\u0004\u0018\u00010:0:8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b;\u0010&\u001a\u0004\b<\u0010=R%\u0010C\u001a\n +*\u0004\u0018\u00010?0?8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b@\u0010&\u001a\u0004\bA\u0010B¨\u0006E"}, d2 = {"Le/a/q/a/a;", "Le/m/a/g/e/e;", "Le/a/q/a/f;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Landroid/content/DialogInterface;", "dialog", "onDismiss", "(Landroid/content/DialogInterface;)V", "Lcom/truecaller/data/entity/Contact;", AnalyticsConstants.CONTACT, "Bt", "(Lcom/truecaller/data/entity/Contact;)V", "lu", "()V", "Le/a/q/a/e;", "e", "Le/a/q/a/e;", "getPresenter", "()Le/a/q/a/e;", "setPresenter", "(Le/a/q/a/e;)V", "presenter", "", "j", "Ls1/g;", "getAggregatedContactId", "()J", "aggregatedContactId", "Landroid/widget/Button;", "kotlin.jvm.PlatformType", "i", "getSaveButton", "()Landroid/widget/Button;", "saveButton", "Landroid/widget/EditText;", "h", "getNameText", "()Landroid/widget/EditText;", "nameText", "", "k", "getAnalyticsContext", "()Ljava/lang/String;", "analyticsContext", "Landroid/widget/RadioButton;", "f", "getBusinessButton", "()Landroid/widget/RadioButton;", "businessButton", "Landroid/widget/ImageView;", "g", "getCloseButton", "()Landroid/widget/ImageView;", "closeButton", "<init>", "contact-feedback_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.q.a.a */
/* loaded from: classes4-dex2jar.jar:e/a/q/a/a.class */
public final class C19354a extends AbstractC19386k implements AbstractC19380f {
    @Inject

    /* renamed from: e */
    public AbstractC19379e f53822e;

    /* renamed from: f */
    public final g f53823f = C19286f.m13659t(this, C3744R.C3746id.business_button);

    /* renamed from: g */
    public final g f53824g = C19286f.m13659t(this, C3744R.C3746id.close_button);

    /* renamed from: h */
    public final g f53825h = C19286f.m13659t(this, C3744R.C3746id.name_text);

    /* renamed from: i */
    public final g f53826i = C19286f.m13659t(this, C3744R.C3746id.save_button);

    /* renamed from: j */
    public final g f53827j = C25225a.m3978P1(new C19356b());

    /* renamed from: k */
    public final g f53828k = C25225a.m3978P1(new C19357c());

    /* renamed from: e.a.q.a.a$a */
    /* loaded from: classes3-dex2jar.jar:e/a/q/a/a$a.class */
    public static final class View$OnClickListenerC19355a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ int f53829a;

        /* renamed from: b */
        public final /* synthetic */ Object f53830b;

        public View$OnClickListenerC19355a(int i, Object obj) {
            this.f53829a = i;
            this.f53830b = obj;
        }

        /* JADX WARN: Code restructure failed: missing block: B:16:0x0077, code lost:
            if (r14 != null) goto L18;
         */
        @Override // android.view.View.OnClickListener
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void onClick(android.view.View r14) {
            /*
                Method dump skipped, instructions count: 256
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1138q.p1139a.C19354a.View$OnClickListenerC19355a.onClick(android.view.View):void");
        }
    }

    /* renamed from: e.a.q.a.a$b */
    /* loaded from: classes4-dex2jar.jar:e/a/q/a/a$b.class */
    public static final class C19356b extends m implements a<Long> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C19356b() {
            super(0);
            C19354a.this = r4;
        }

        public Object invoke() {
            Intent intent;
            l activity = C19354a.this.getActivity();
            Long valueOf = (activity == null || (intent = activity.getIntent()) == null) ? null : Long.valueOf(intent.getLongExtra("aggregated_contact_id", -1L));
            s1.z.c.l.c(valueOf);
            return Long.valueOf(valueOf.longValue());
        }
    }

    /* renamed from: e.a.q.a.a$c */
    /* loaded from: classes4-dex2jar.jar:e/a/q/a/a$c.class */
    public static final class C19357c extends m implements a<String> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C19357c() {
            super(0);
            C19354a.this = r4;
        }

        public Object invoke() {
            Intent intent;
            l activity = C19354a.this.getActivity();
            String stringExtra = (activity == null || (intent = activity.getIntent()) == null) ? null : intent.getStringExtra("analytics_context");
            s1.z.c.l.c(stringExtra);
            s1.z.c.l.d(stringExtra, "activity?.intent?.getStr…XTRA_ANALYTICS_CONTEXT)!!");
            return stringExtra;
        }
    }

    @Override // p193e.p194a.p1138q.p1139a.AbstractC19380f
    /* renamed from: Bt */
    public void mo13393Bt(Contact contact) {
        EditText editText = (EditText) this.f53825h.getValue();
        if (editText != null) {
            C19286f.m13679Y(editText, false, 0L, 2);
        }
        Intent intent = new Intent();
        intent.putExtra("result_contact", contact);
        requireActivity().setResult(-1, intent);
        requireActivity().finish();
    }

    @Override // p193e.p194a.p1138q.p1139a.AbstractC19380f
    /* renamed from: lu */
    public void mo13392lu() {
        Toast.makeText(getContext(), getString(C3744R.string.SuggestNameInvalidName), 0).show();
    }

    public void onCreate(Bundle bundle) {
        C19354a.super.onCreate(bundle);
        setStyle(0, C3744R.style.FeedbackBottomSheetStyle);
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        s1.z.c.l.e(layoutInflater, "inflater");
        return C17422k.m16050u0(layoutInflater, true).inflate(C3744R.layout.fragment_contact_feedback, viewGroup, false);
    }

    public void onDismiss(DialogInterface dialogInterface) {
        AbstractC19380f abstractC19380f;
        s1.z.c.l.e(dialogInterface, "dialog");
        C19354a.super.onDismiss(dialogInterface);
        AbstractC19379e abstractC19379e = this.f53822e;
        if (abstractC19379e == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        String str = (String) this.f53828k.getValue();
        s1.z.c.l.e(str, "analyticsContext");
        C19391a c19391a = ((C19383h) abstractC19379e).f53887i;
        Objects.requireNonNull(c19391a);
        s1.z.c.l.e(str, "contactFeedbackContext");
        c19391a.m13378a(str, ContactFeedbackAnalyticsAction.DISMISSED);
        AbstractC19379e abstractC19379e2 = this.f53822e;
        if (abstractC19379e2 == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        C19383h c19383h = (C19383h) abstractC19379e2;
        if (c19383h.f53882d || (abstractC19380f = (AbstractC19380f) c19383h.f57683a) == null) {
            return;
        }
        abstractC19380f.mo13393Bt(null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onViewCreated(View view, Bundle bundle) {
        s1.z.c.l.e(view, ViewAction.VIEW);
        C19354a.super.onViewCreated(view, bundle);
        AbstractC19379e abstractC19379e = this.f53822e;
        if (abstractC19379e == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        ((AbstractC20576b) abstractC19379e).f57683a = this;
        ((ImageView) this.f53824g.getValue()).setOnClickListener(new View$OnClickListenerC19355a(0, this));
        ((Button) this.f53826i.getValue()).setOnClickListener(new View$OnClickListenerC19355a(1, this));
        C19286f.m13679Y(view, true, 0L, 2);
    }
}
