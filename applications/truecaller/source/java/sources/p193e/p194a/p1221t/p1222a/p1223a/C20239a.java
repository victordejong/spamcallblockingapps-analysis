package p193e.p194a.p1221t.p1222a.p1223a;

import android.content.Context;
import android.content.DialogInterface;
import android.content.SharedPreferences;
import android.text.method.LinkMovementMethod;
import android.view.View;
import android.widget.TextView;
import com.razorpay.AnalyticsConstants;
import com.truecaller.android.truemoji.C2886R;
import e.m.a.g.e.d;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import s1.g;
import s1.z.c.l;
/* renamed from: e.a.t.a.a.a */
/* loaded from: classes5-dex2jar.jar:e/a/t/a/a/a.class */
public final class C20239a extends d {

    /* renamed from: o */
    public final g f56988o;

    /* renamed from: p */
    public final g f56989p;

    /* renamed from: q */
    public final g f56990q;

    /* renamed from: e.a.t.a.a.a$a */
    /* loaded from: classes3-dex2jar.jar:e/a/t/a/a/a$a.class */
    public static final class View$OnClickListenerC20240a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ int f56991a;

        /* renamed from: b */
        public final /* synthetic */ Object f56992b;

        public View$OnClickListenerC20240a(int i, Object obj) {
            this.f56991a = i;
            this.f56992b = obj;
        }

        /* JADX WARN: Type inference failed for: r0v10, types: [e.a.t.a.a.a, n3.b.a.p] */
        /* JADX WARN: Type inference failed for: r0v13, types: [e.a.t.a.a.a, android.app.Dialog] */
        /* JADX WARN: Type inference failed for: r0v5, types: [e.a.t.a.a.a, n3.b.a.p] */
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            SharedPreferences.Editor edit;
            SharedPreferences.Editor putBoolean;
            int i = this.f56991a;
            if (i == 0) {
                ((C20239a) this.f56992b).dismiss();
            } else if (i != 1) {
                throw null;
            } else {
                ((C20239a) this.f56992b).dismiss();
                SharedPreferences sharedPreferences = ((C20239a) this.f56992b).getContext().getSharedPreferences("emoji", 0);
                if (sharedPreferences == null || (edit = sharedPreferences.edit()) == null || (putBoolean = edit.putBoolean("tenor_user_consent", true)) == null) {
                    return;
                }
                putBoolean.apply();
            }
        }
    }

    /* renamed from: e.a.t.a.a.a$b */
    /* loaded from: classes5-dex2jar.jar:e/a/t/a/a/a$b.class */
    public static final class DialogInterface$OnDismissListenerC20241b implements DialogInterface.OnDismissListener {

        /* renamed from: b */
        public final /* synthetic */ AbstractC20242b f56994b;

        public DialogInterface$OnDismissListenerC20241b(AbstractC20242b abstractC20242b) {
            C20239a.this = r4;
            this.f56994b = abstractC20242b;
        }

        /* JADX WARN: Type inference failed for: r0v3, types: [e.a.t.a.a.a, android.app.Dialog] */
        @Override // android.content.DialogInterface.OnDismissListener
        public final void onDismiss(DialogInterface dialogInterface) {
            AbstractC20242b abstractC20242b = this.f56994b;
            boolean z = false;
            SharedPreferences sharedPreferences = C20239a.this.getContext().getSharedPreferences("emoji", 0);
            if (sharedPreferences != null) {
                z = sharedPreferences.getBoolean("tenor_user_consent", false);
            }
            abstractC20242b.mo11263a(z);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public C20239a(Context context, AbstractC20242b abstractC20242b) {
        super(context);
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(abstractC20242b, "callback");
        g m13661r = C19286f.m13661r(this, C2886R.C2888id.body);
        this.f56988o = m13661r;
        g m13661r2 = C19286f.m13661r(this, C2886R.C2888id.btnCancel);
        this.f56989p = m13661r2;
        g m13661r3 = C19286f.m13661r(this, C2886R.C2888id.btnContinue);
        this.f56990q = m13661r3;
        setContentView(C2886R.layout.dialog_tenor_consent);
        TextView textView = (TextView) m13661r.getValue();
        l.d(textView, "body");
        textView.setMovementMethod(LinkMovementMethod.getInstance());
        ((View) m13661r2.getValue()).setOnClickListener(new View$OnClickListenerC20240a(0, this));
        ((View) m13661r3.getValue()).setOnClickListener(new View$OnClickListenerC20240a(1, this));
        setOnDismissListener(new DialogInterface$OnDismissListenerC20241b(abstractC20242b));
    }
}
