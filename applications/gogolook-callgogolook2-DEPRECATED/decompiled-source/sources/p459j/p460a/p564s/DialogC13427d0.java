package p459j.p460a.p564s;

import android.app.Dialog;
import android.content.Context;
import android.view.View;
import android.widget.CheckBox;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.facebook.ads.AdError;
import p081h.p160h.p172b.p173a.C6298e;
import p459j.p460a.p582w0.C13915b3;
import p459j.p460a.p582w0.C14003f3;
import p459j.p460a.p582w0.C14217x3;
/* renamed from: j.a.s.d0 */
/* loaded from: classes2-dex2jar.jar:j/a/s/d0.class */
public class DialogC13427d0 extends Dialog {

    /* renamed from: a */
    public LinearLayout f30176a;

    /* renamed from: j.a.s.d0$a */
    /* loaded from: classes2-dex2jar.jar:j/a/s/d0$a.class */
    public class View$OnClickListenerC13428a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ CheckBox f30177a;

        /* renamed from: b */
        public final /* synthetic */ String f30178b;

        public View$OnClickListenerC13428a(CheckBox checkBox, String str) {
            this.f30177a = checkBox;
            this.f30178b = str;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            StringBuilder sb;
            String str;
            CheckBox checkBox = this.f30177a;
            checkBox.setChecked(!checkBox.isChecked());
            C13915b3.m3055b("random_" + this.f30178b, this.f30177a.isChecked());
            if (this.f30177a.isChecked()) {
                sb = new StringBuilder();
                sb.append("Set ");
                sb.append(this.f30178b);
                str = " to 100%";
            } else {
                sb = new StringBuilder();
                sb.append("Set ");
                sb.append(this.f30178b);
                sb.append(" to ");
                sb.append(C14003f3.f31421a.get(this.f30178b));
                str = "%";
            }
            sb.append(str);
            Toast.makeText(DialogC13427d0.this.getContext(), sb.toString(), 0).show();
        }
    }

    public DialogC13427d0(Context context) {
        super(context);
        m4044a();
    }

    /* renamed from: a */
    public final void m4044a() {
        requestWindowFeature(1);
        getWindow().setType(C6298e.m23356a((int) AdError.INTERNAL_ERROR_2003));
        this.f30176a = new LinearLayout(getContext());
        setContentView(this.f30176a);
        this.f30176a.setOrientation(1);
        m4043b();
    }

    /* renamed from: b */
    public final void m4043b() {
        int a = C14217x3.m2201a(14.0f);
        this.f30176a.removeAllViews();
        for (String str : C14003f3.f31421a.keySet()) {
            RelativeLayout relativeLayout = new RelativeLayout(getContext());
            relativeLayout.setLayoutParams(new RelativeLayout.LayoutParams(-1, -2));
            TextView textView = new TextView(getContext());
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams.addRule(9, -1);
            layoutParams.addRule(15, -1);
            textView.setLayoutParams(layoutParams);
            textView.setTextSize(18.0f);
            textView.setText(str);
            relativeLayout.addView(textView);
            CheckBox checkBox = new CheckBox(getContext());
            RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams2.addRule(11, -1);
            layoutParams2.addRule(15, -1);
            checkBox.setLayoutParams(layoutParams2);
            checkBox.setClickable(false);
            checkBox.setChecked(C14003f3.m2901a(str));
            relativeLayout.addView(checkBox);
            relativeLayout.setPadding(a, a, a, a);
            this.f30176a.addView(relativeLayout);
            relativeLayout.setOnClickListener(new View$OnClickListenerC13428a(checkBox, str));
        }
    }
}
