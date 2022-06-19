package com.huawei.updatesdk.p111b.p122i;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Build;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import com.huawei.updatesdk.p097a.p098a.C2511a;
import com.huawei.updatesdk.p097a.p098a.p103d.p104i.C2526c;
import com.huawei.updatesdk.p111b.p121h.C2569a;
import com.huawei.updatesdk.p111b.p121h.C2573c;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: com.huawei.updatesdk.b.i.a */
/* loaded from: classes3-dex2jar.jar:com/huawei/updatesdk/b/i/a.class */
public class C2575a {

    /* renamed from: a */
    private AbstractC2581b f8291a;

    /* renamed from: b */
    private Context f8292b;

    /* renamed from: c */
    private String f8293c;

    /* renamed from: d */
    private CharSequence f8294d;

    /* renamed from: e */
    private AlertDialog f8295e;

    /* renamed from: f */
    private AlertDialog.Builder f8296f;

    /* renamed from: g */
    private DialogInterface.OnShowListener f8297g;

    /* renamed from: h */
    private DialogInterface.OnDismissListener f8298h;

    /* renamed from: com.huawei.updatesdk.b.i.a$a */
    /* loaded from: classes3-dex2jar.jar:com/huawei/updatesdk/b/i/a$a.class */
    public class DialogInterface$OnShowListenerC2576a implements DialogInterface.OnShowListener {

        /* renamed from: com.huawei.updatesdk.b.i.a$a$a */
        /* loaded from: classes3-dex2jar.jar:com/huawei/updatesdk/b/i/a$a$a.class */
        public class View$OnClickListenerC2577a implements View.OnClickListener {
            public View$OnClickListenerC2577a() {
                DialogInterface$OnShowListenerC2576a.this = r4;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (C2575a.this.f8291a != null) {
                    C2575a.this.f8291a.m36550a();
                }
            }
        }

        /* renamed from: com.huawei.updatesdk.b.i.a$a$b */
        /* loaded from: classes3-dex2jar.jar:com/huawei/updatesdk/b/i/a$a$b.class */
        public class View$OnClickListenerC2578b implements View.OnClickListener {
            public View$OnClickListenerC2578b() {
                DialogInterface$OnShowListenerC2576a.this = r4;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (C2575a.this.f8291a != null) {
                    C2575a.this.f8291a.m36549b();
                }
            }
        }

        public DialogInterface$OnShowListenerC2576a() {
            C2575a.this = r4;
        }

        @Override // android.content.DialogInterface.OnShowListener
        public void onShow(DialogInterface dialogInterface) {
            AlertDialog alertDialog = (AlertDialog) dialogInterface;
            alertDialog.getButton(-1).setOnClickListener(new View$OnClickListenerC2577a());
            Button button = alertDialog.getButton(-2);
            if (button != null) {
                button.setOnClickListener(new View$OnClickListenerC2578b());
            }
            if (C2575a.this.f8297g != null) {
                C2575a.this.f8297g.onShow(dialogInterface);
            }
        }
    }

    /* renamed from: com.huawei.updatesdk.b.i.a$b */
    /* loaded from: classes3-dex2jar.jar:com/huawei/updatesdk/b/i/a$b.class */
    public class DialogInterface$OnDismissListenerC2579b implements DialogInterface.OnDismissListener {
        public DialogInterface$OnDismissListenerC2579b() {
            C2575a.this = r4;
        }

        @Override // android.content.DialogInterface.OnDismissListener
        public void onDismiss(DialogInterface dialogInterface) {
            if (C2575a.this.f8298h != null) {
                C2575a.this.f8298h.onDismiss(dialogInterface);
            }
        }
    }

    /* renamed from: com.huawei.updatesdk.b.i.a$c */
    /* loaded from: classes3-dex2jar.jar:com/huawei/updatesdk/b/i/a$c.class */
    public interface AbstractC2580c {
        /* renamed from: a */
        void m36551a();
    }

    public C2575a(Context context, String str, CharSequence charSequence) {
        this.f8292b = context;
        this.f8293c = str;
        this.f8294d = charSequence;
        this.f8296f = C2526c.m36768k() ? new AlertDialog.Builder(context) : ((context.getResources().getConfiguration().uiMode & 48) != 32 || Build.VERSION.SDK_INT < 29) ? new AlertDialog.Builder(context, 16974546) : new AlertDialog.Builder(context, 16974545);
        this.f8296f.setTitle(this.f8293c);
        this.f8296f.setPositiveButton(C2573c.m36573c(context, "upsdk_third_app_dl_sure_cancel_download"), (DialogInterface.OnClickListener) null);
        this.f8296f.setNegativeButton(C2573c.m36573c(context, "upsdk_cancel"), (DialogInterface.OnClickListener) null);
        this.f8296f.setMessage(this.f8294d);
    }

    /* renamed from: a */
    public static C2575a m36564a(Context context, String str, CharSequence charSequence) {
        return new C2575a(context, str, charSequence);
    }

    /* renamed from: a */
    public void m36566a() {
        try {
            AlertDialog alertDialog = this.f8295e;
            if (alertDialog == null) {
                return;
            }
            alertDialog.dismiss();
            this.f8295e = null;
        } catch (IllegalArgumentException e) {
            C2511a.m36862b("BaseAlertDialog", "dialog dismiss IllegalArgumentException");
        }
    }

    /* renamed from: a */
    public void m36565a(int i, String str) {
        Button button;
        AlertDialog alertDialog = this.f8295e;
        if (alertDialog == null || (button = alertDialog.getButton(i)) == null) {
            return;
        }
        button.setText(str);
        button.setAllCaps(true);
    }

    /* renamed from: a */
    public void m36563a(DialogInterface.OnDismissListener onDismissListener) {
        this.f8298h = onDismissListener;
    }

    /* renamed from: a */
    public void m36562a(DialogInterface.OnKeyListener onKeyListener) {
        AlertDialog alertDialog = this.f8295e;
        if (alertDialog != null) {
            alertDialog.setOnKeyListener(onKeyListener);
        }
    }

    /* renamed from: a */
    public void m36561a(DialogInterface.OnShowListener onShowListener) {
        this.f8297g = onShowListener;
    }

    /* renamed from: a */
    public void m36560a(View view) {
        ImageView imageView;
        if (this.f8296f != null) {
            if ((C2569a.m36595f().m36601a() >= 17 || C2569a.m36595f().m36599b() > 0) && (imageView = (ImageView) view.findViewById(C2573c.m36576a(view.getContext(), "divider"))) != null) {
                imageView.setVisibility(8);
            }
            this.f8296f.setMessage((CharSequence) null);
            this.f8296f.setView(view);
        }
    }

    /* renamed from: a */
    public void m36559a(AbstractC2580c abstractC2580c) {
        Context context = this.f8292b;
        if (context == null || ((Activity) context).isFinishing()) {
            C2511a.m36862b("BaseAlertDialog", "context == null or activity isFinishing");
            if (abstractC2580c == null) {
                return;
            }
            abstractC2580c.m36551a();
        } else if (m36555b()) {
        } else {
            try {
                this.f8295e = this.f8296f.create();
                C2526c.m36780e().m36796a(this.f8295e.getWindow());
                this.f8295e.setCanceledOnTouchOutside(false);
                this.f8295e.setOnShowListener(new DialogInterface$OnShowListenerC2576a());
                this.f8295e.setOnDismissListener(new DialogInterface$OnDismissListenerC2579b());
                this.f8295e.show();
                this.f8295e.getButton(-1).requestFocus();
            } catch (Exception e) {
                if (abstractC2580c != null) {
                    abstractC2580c.m36551a();
                }
                StringBuilder m8728C = C22128a.m8728C("show dlg error, e: ");
                m8728C.append(e.toString());
                C2511a.m36863a("BaseAlertDialog", m8728C.toString());
            }
        }
    }

    /* renamed from: a */
    public void m36557a(AbstractC2581b abstractC2581b) {
        this.f8291a = abstractC2581b;
    }

    /* renamed from: a */
    public void m36556a(boolean z) {
        AlertDialog alertDialog = this.f8295e;
        if (alertDialog != null) {
            alertDialog.setCancelable(z);
        }
    }

    /* renamed from: b */
    public boolean m36555b() {
        AlertDialog alertDialog = this.f8295e;
        return alertDialog != null && alertDialog.isShowing();
    }

    /* renamed from: c */
    public void m36553c() {
        AlertDialog.Builder builder = this.f8296f;
        if (builder == null) {
            return;
        }
        builder.setNegativeButton((CharSequence) null, (DialogInterface.OnClickListener) null);
    }
}
