package com.applovin.impl.sdk.p054b;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import com.applovin.impl.sdk.C1408l;
import com.applovin.impl.sdk.p053ad.AbstractC1286e;
import com.applovin.impl.sdk.p055c.C1314b;
import com.applovin.sdk.AppLovinSdkUtils;
/* renamed from: com.applovin.impl.sdk.b.b */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/b/b.class */
public class C1303b {

    /* renamed from: a */
    private final C1408l f4647a;

    /* renamed from: b */
    private final Activity f4648b;

    /* renamed from: c */
    private AlertDialog f4649c;

    /* renamed from: d */
    private AbstractC1310a f4650d;

    /* renamed from: com.applovin.impl.sdk.b.b$a */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/b/b$a.class */
    public interface AbstractC1310a {
        /* renamed from: a */
        void mo5845a();

        /* renamed from: b */
        void mo5844b();
    }

    public C1303b(Activity activity, C1408l c1408l) {
        this.f4647a = c1408l;
        this.f4648b = activity;
    }

    /* renamed from: a */
    public void m5855a() {
        this.f4648b.runOnUiThread(new Runnable() { // from class: com.applovin.impl.sdk.b.b.1
            @Override // java.lang.Runnable
            public void run() {
                if (C1303b.this.f4649c != null) {
                    C1303b.this.f4649c.dismiss();
                }
            }
        });
    }

    /* renamed from: a */
    public void m5854a(final AbstractC1286e abstractC1286e, final Runnable runnable) {
        this.f4648b.runOnUiThread(new Runnable() { // from class: com.applovin.impl.sdk.b.b.3
            @Override // java.lang.Runnable
            public void run() {
                AlertDialog.Builder builder = new AlertDialog.Builder(C1303b.this.f4648b);
                builder.setTitle(abstractC1286e.m5941aj());
                String m5940ak = abstractC1286e.m5940ak();
                if (AppLovinSdkUtils.isValidString(m5940ak)) {
                    builder.setMessage(m5940ak);
                }
                builder.setPositiveButton(abstractC1286e.m5939al(), new DialogInterface.OnClickListener() { // from class: com.applovin.impl.sdk.b.b.3.1
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i) {
                        Runnable runnable2 = runnable;
                        if (runnable2 != null) {
                            runnable2.run();
                        }
                    }
                });
                builder.setCancelable(false);
                C1303b.this.f4649c = builder.show();
            }
        });
    }

    /* renamed from: a */
    public void m5853a(AbstractC1310a abstractC1310a) {
        this.f4650d = abstractC1310a;
    }

    /* renamed from: b */
    public void m5850b() {
        this.f4648b.runOnUiThread(new Runnable() { // from class: com.applovin.impl.sdk.b.b.2
            @Override // java.lang.Runnable
            public void run() {
                C1303b.this.f4649c = new AlertDialog.Builder(C1303b.this.f4648b).setTitle((CharSequence) C1303b.this.f4647a.m5511a(C1314b.f4819bv)).setMessage((CharSequence) C1303b.this.f4647a.m5511a(C1314b.f4820bw)).setCancelable(false).setPositiveButton((CharSequence) C1303b.this.f4647a.m5511a(C1314b.f4822by), new DialogInterface.OnClickListener() { // from class: com.applovin.impl.sdk.b.b.2.2
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i) {
                        C1303b.this.f4650d.mo5845a();
                    }
                }).setNegativeButton((CharSequence) C1303b.this.f4647a.m5511a(C1314b.f4821bx), new DialogInterface.OnClickListener() { // from class: com.applovin.impl.sdk.b.b.2.1
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i) {
                        C1303b.this.f4650d.mo5844b();
                    }
                }).show();
            }
        });
    }

    /* renamed from: c */
    public boolean m5848c() {
        AlertDialog alertDialog = this.f4649c;
        if (alertDialog != null) {
            return alertDialog.isShowing();
        }
        return false;
    }
}
