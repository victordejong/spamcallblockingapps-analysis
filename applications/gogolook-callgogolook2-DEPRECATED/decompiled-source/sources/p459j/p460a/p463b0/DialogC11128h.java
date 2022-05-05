package p459j.p460a.p463b0;

import android.app.Dialog;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.R$string;
import p459j.p460a.p582w0.C14217x3;
@Deprecated
/* renamed from: j.a.b0.h */
/* loaded from: classes2-dex2jar.jar:j/a/b0/h.class */
public class DialogC11128h extends Dialog {

    /* renamed from: a */
    public int f24998a;

    /* renamed from: j.a.b0.h$a */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/h$a.class */
    public class View$OnClickListenerC11129a implements View.OnClickListener {
        public View$OnClickListenerC11129a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DialogC11128h.this.dismiss();
        }
    }

    public DialogC11128h(Context context, int i) {
        super(context, 16973840);
        this.f24998a = i;
        m10246a();
    }

    /* renamed from: a */
    public final void m10246a() {
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
        linearLayout.setBackgroundColor(-1442840576);
        linearLayout.setOrientation(1);
        setContentView(linearLayout);
        linearLayout.setOnClickListener(new View$OnClickListenerC11129a());
        View inflate = getLayoutInflater().inflate(R$layout.calldialog_standard_tips, (ViewGroup) null);
        linearLayout.addView(inflate, new LinearLayout.LayoutParams(-2, -2));
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) inflate.getLayoutParams();
        layoutParams.topMargin = this.f24998a;
        layoutParams.rightMargin = C14217x3.m2201a(16.0f);
        layoutParams.gravity = 8388661;
        ((TextView) inflate.findViewById(R$id.call_txt_tip)).setText(R$string.favorite_category_pin_totop_message);
        LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) inflate.findViewById(R$id.call_moveable_tip).getLayoutParams();
        layoutParams2.rightMargin = C14217x3.m2201a(10.0f);
        layoutParams2.gravity = 8388613;
    }
}
