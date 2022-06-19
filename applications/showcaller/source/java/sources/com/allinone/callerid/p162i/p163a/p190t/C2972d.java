package com.allinone.callerid.p162i.p163a.p190t;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.view.KeyEvent;
import android.view.View;
import com.allinone.callerid.R$color;
import com.allinone.callerid.R$string;
import com.allinone.callerid.model.C3071a;
import com.allinone.callerid.mvc.controller.MainActivity;
import com.allinone.callerid.util.C3711a1;
import com.allinone.callerid.util.C3718c0;
import com.allinone.callerid.util.C3767h1;
import com.allinone.callerid.util.C3810q;
/* renamed from: com.allinone.callerid.i.a.t.d */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/t/d.class */
public class C2972d {

    /* renamed from: com.allinone.callerid.i.a.t.d$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/t/d$a.class */
    public class DialogInterface$OnClickListenerC2973a implements DialogInterface.OnClickListener {
        DialogInterface$OnClickListenerC2973a() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
        }
    }

    /* renamed from: com.allinone.callerid.i.a.t.d$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/t/d$b.class */
    public class DialogInterface$OnClickListenerC2974b implements DialogInterface.OnClickListener {

        /* renamed from: d */
        final /* synthetic */ MainActivity f9758d;

        /* renamed from: e */
        final /* synthetic */ String f9759e;

        DialogInterface$OnClickListenerC2974b(MainActivity mainActivity, String str) {
            this.f9758d = mainActivity;
            this.f9759e = str;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            if (this.f9758d.getResources().getString(R$string.app_channel).equals("GooglePlay")) {
                this.f9758d.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(this.f9759e)));
                return;
            }
            this.f9758d.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("https://www.show-caller.com/download/com.allinone.callerid.apk")));
        }
    }

    /* renamed from: com.allinone.callerid.i.a.t.d$c */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/t/d$c.class */
    public class DialogInterface$OnClickListenerC2975c implements DialogInterface.OnClickListener {
        DialogInterface$OnClickListenerC2975c() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
        }
    }

    /* renamed from: com.allinone.callerid.i.a.t.d$d */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/t/d$d.class */
    public class DialogInterface$OnKeyListenerC2976d implements DialogInterface.OnKeyListener {

        /* renamed from: d */
        final /* synthetic */ MainActivity f9760d;

        DialogInterface$OnKeyListenerC2976d(MainActivity mainActivity) {
            this.f9760d = mainActivity;
        }

        @Override // android.content.DialogInterface.OnKeyListener
        public boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
            if (i == 4 && keyEvent.getRepeatCount() == 0) {
                Intent intent = new Intent("android.intent.action.MAIN");
                intent.setFlags(268435456);
                intent.addCategory("android.intent.category.HOME");
                this.f9760d.startActivity(intent);
                return true;
            }
            return false;
        }
    }

    /* renamed from: com.allinone.callerid.i.a.t.d$e */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/i/a/t/d$e.class */
    public class View$OnClickListenerC2977e implements View.OnClickListener {

        /* renamed from: d */
        final /* synthetic */ boolean f9761d;

        /* renamed from: e */
        final /* synthetic */ AlertDialog f9762e;

        /* renamed from: f */
        final /* synthetic */ String f9763f;

        /* renamed from: g */
        final /* synthetic */ MainActivity f9764g;

        View$OnClickListenerC2977e(boolean z, AlertDialog alertDialog, String str, MainActivity mainActivity) {
            this.f9761d = z;
            this.f9762e = alertDialog;
            this.f9763f = str;
            this.f9764g = mainActivity;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (this.f9761d) {
                this.f9762e.dismiss();
            }
            C3810q.m24071b().m24070c("forced_update_dialog_click");
            this.f9764g.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(this.f9763f)));
        }
    }

    /* renamed from: a */
    private static void m26319a(boolean z, MainActivity mainActivity, String str) {
        AlertDialog.Builder positiveButton = new AlertDialog.Builder(mainActivity).setTitle(mainActivity.getResources().getString(R$string.update_dialog_title)).setMessage(mainActivity.getResources().getString(R$string.min_update)).setPositiveButton(mainActivity.getResources().getString(R$string.update_dialog_ok), (DialogInterface.OnClickListener) null);
        if (z) {
            positiveButton.setNegativeButton(mainActivity.getResources().getString(R$string.cancel_dialog), new DialogInterface$OnClickListenerC2975c());
        }
        AlertDialog create = positiveButton.create();
        if (!z) {
            create.setCanceledOnTouchOutside(false);
            create.setOnKeyListener(new DialogInterface$OnKeyListenerC2976d(mainActivity));
        }
        create.show();
        create.getButton(-1).setOnClickListener(new View$OnClickListenerC2977e(z, create, str, mainActivity));
        create.getButton(-1).setTextColor(mainActivity.getResources().getColor(2131099706));
        create.getButton(-2).setTextColor(mainActivity.getResources().getColor(R$color.btn_gray));
        C3810q.m24071b().m24070c("forced_update_dialog_show");
    }

    /* renamed from: b */
    public static void m26318b(MainActivity mainActivity, String str) {
        AlertDialog create = new AlertDialog.Builder(mainActivity).setTitle(mainActivity.getResources().getString(R$string.update_dialog_title)).setMessage(mainActivity.getResources().getString(R$string.update_dialog_msg)).setPositiveButton(mainActivity.getResources().getString(R$string.update_dialog_ok), new DialogInterface$OnClickListenerC2974b(mainActivity, str)).setNegativeButton(mainActivity.getResources().getString(R$string.update_dialog_cancel), new DialogInterface$OnClickListenerC2973a()).create();
        create.show();
        create.getButton(-1).setTextColor(mainActivity.getResources().getColor(2131099706));
        create.getButton(-2).setTextColor(mainActivity.getResources().getColor(R$color.btn_gray));
    }

    /* renamed from: c */
    public static void m26317c(C3071a c3071a, MainActivity mainActivity) {
        if (c3071a != null) {
            String m26045b = c3071a.m26045b();
            String m26046a = c3071a.m26046a();
            if (m26045b.equals("")) {
                C3711a1.m24537g2(false);
                return;
            }
            if (C3718c0.f11914a) {
                C3718c0.m24436a("tony", "minVersion:" + m26046a);
            }
            if (C3767h1.m24269S(m26046a)) {
                if (C3711a1.m24555c0() == 0) {
                    C3711a1.m24633H1(System.currentTimeMillis());
                }
                if (System.currentTimeMillis() - C3711a1.m24555c0() < 604800000) {
                    try {
                        m26319a(true, mainActivity, m26045b);
                        return;
                    } catch (Exception e) {
                        e.printStackTrace();
                        return;
                    }
                }
                C3711a1.m24537g2(true);
                try {
                    m26319a(false, mainActivity, m26045b);
                    return;
                } catch (Exception e2) {
                    e2.printStackTrace();
                    return;
                }
            }
            C3711a1.m24537g2(false);
            long m24532i = C3711a1.m24532i();
            long currentTimeMillis = System.currentTimeMillis();
            if (m24532i == 0) {
                try {
                    m26318b(mainActivity, m26045b);
                } catch (Exception e3) {
                    e3.printStackTrace();
                }
                C3711a1.m24618L0(currentTimeMillis);
            } else if (currentTimeMillis - m24532i <= 43200000) {
            } else {
                try {
                    m26318b(mainActivity, m26045b);
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
                C3711a1.m24618L0(currentTimeMillis);
            }
        }
    }
}
