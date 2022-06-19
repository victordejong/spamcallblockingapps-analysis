package com.allinone.callerid.p162i.p163a.p190t;

import android.app.AlertDialog;
import android.graphics.Typeface;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.fragment.app.FragmentActivity;
import com.allinone.callerid.R$id;
import com.allinone.callerid.R$layout;
import com.allinone.callerid.util.C3739f1;
/* renamed from: com.allinone.callerid.i.a.t.a */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/t/a.class */
public class C2967a {

    /* renamed from: a */
    private static AlertDialog f9755a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.allinone.callerid.i.a.t.a$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/t/a$a.class */
    public class View$OnClickListenerC2968a implements View.OnClickListener {
        View$OnClickListenerC2968a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (C2967a.f9755a != null) {
                C2967a.f9755a.dismiss();
            }
        }
    }

    /* renamed from: b */
    public static void m26328b(FragmentActivity fragmentActivity) {
        View inflate = LayoutInflater.from(fragmentActivity).inflate(R$layout.view_dialog_ad_learn_more, (ViewGroup) null);
        ImageView imageView = (ImageView) inflate.findViewById(R$id.lb_ad_learn_close);
        Typeface m24359b = C3739f1.m24359b();
        ((TextView) inflate.findViewById(R$id.tv_ad_notice)).setTypeface(m24359b);
        ((TextView) inflate.findViewById(R$id.tv_ad_notice_content_one)).setTypeface(m24359b);
        ((TextView) inflate.findViewById(R$id.tv_ad_notice_content_two)).setTypeface(m24359b);
        ((TextView) inflate.findViewById(R$id.tv_ad_notice_content_three)).setTypeface(m24359b);
        ((TextView) inflate.findViewById(R$id.tv_ad_notice_content_four)).setTypeface(m24359b);
        imageView.setOnClickListener(new View$OnClickListenerC2968a());
        AlertDialog create = new AlertDialog.Builder(fragmentActivity).setView(inflate).create();
        f9755a = create;
        create.show();
    }
}
