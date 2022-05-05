package p459j.p460a.p564s;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import com.facebook.ads.AdError;
import p081h.p160h.p172b.p173a.C6298e;
import p459j.p460a.p582w0.C14031j;
import p459j.p460a.p582w0.C14217x3;
import p459j.p460a.p613z0.DialogC14625g;
import p459j.p460a.p613z0.p617p.C14687h;
/* renamed from: j.a.s.o */
/* loaded from: classes2-dex2jar.jar:j/a/s/o.class */
public class DialogC13456o extends Dialog {

    /* renamed from: a */
    public LinearLayout f30231a;

    /* renamed from: j.a.s.o$a */
    /* loaded from: classes2-dex2jar.jar:j/a/s/o$a.class */
    public class View$OnClickListenerC13457a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ String f30232a;

        /* renamed from: j.a.s.o$a$a */
        /* loaded from: classes2-dex2jar.jar:j/a/s/o$a$a.class */
        public class DialogInterface$OnClickListenerC13458a implements DialogInterface.OnClickListener {
            public DialogInterface$OnClickListenerC13458a() {
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                C14031j.m2736c(View$OnClickListenerC13457a.this.f30232a, i);
                Context context = DialogC13456o.this.getContext();
                C14687h.m861a(context, View$OnClickListenerC13457a.this.f30232a + " set to " + i, 1).m858c();
            }
        }

        public View$OnClickListenerC13457a(String str) {
            this.f30232a = str;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DialogC14625g gVar = new DialogC14625g(DialogC13456o.this.getContext());
            gVar.m971a(new String[]{"0", "1", "2", "3", "4"});
            gVar.m974a(new DialogInterface$OnClickListenerC13458a());
            gVar.show();
            DialogC13456o.this.dismiss();
        }
    }

    public DialogC13456o(Context context) {
        super(context);
        m4035a();
    }

    /* renamed from: a */
    public final void m4035a() {
        requestWindowFeature(1);
        getWindow().setType(C6298e.m23356a((int) AdError.INTERNAL_ERROR_2003));
        this.f30231a = new LinearLayout(getContext());
        ScrollView scrollView = new ScrollView(getContext());
        scrollView.addView(this.f30231a);
        setContentView(scrollView);
        this.f30231a.setOrientation(1);
        m4034b();
    }

    /* renamed from: b */
    public final void m4034b() {
        String[] strArr;
        int a = C14217x3.m2201a(14.0f);
        this.f30231a.removeAllViews();
        for (String str : C14031j.f31472a) {
            RelativeLayout relativeLayout = new RelativeLayout(getContext());
            relativeLayout.setLayoutParams(new RelativeLayout.LayoutParams(-1, -2));
            TextView textView = new TextView(getContext());
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams.addRule(9, -1);
            layoutParams.addRule(15, -1);
            textView.setLayoutParams(layoutParams);
            textView.setTextSize(18.0f);
            textView.setText(str + "\t\t" + C14031j.m2742a(str, false));
            relativeLayout.addView(textView);
            relativeLayout.setPadding(a, a, a, a);
            this.f30231a.addView(relativeLayout);
            relativeLayout.setOnClickListener(new View$OnClickListenerC13457a(str));
        }
    }
}
