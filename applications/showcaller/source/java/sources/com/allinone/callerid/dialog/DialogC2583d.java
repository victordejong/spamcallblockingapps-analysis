package com.allinone.callerid.dialog;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.allinone.callerid.R$id;
import com.allinone.callerid.R$layout;
import com.allinone.callerid.util.C3739f1;
import com.allinone.callerid.util.p202gg.C3760d;
import com.allinone.callerid.util.p202gg.C3763f;
import com.google.android.gms.ads.AbstractC5596b;
import com.google.android.gms.ads.C5600d;
import com.google.android.gms.ads.C5603e;
import com.google.android.gms.ads.C5756j;
import com.google.android.gms.ads.C5848t;
import com.google.android.gms.ads.formats.C5608c;
import com.google.android.gms.ads.mediation.MediationNativeAdapter;
import com.google.android.gms.ads.nativead.AbstractC5796a;
import com.google.android.gms.ads.nativead.NativeAdView;
/* renamed from: com.allinone.callerid.dialog.d */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/dialog/d.class */
public class DialogC2583d extends Dialog {

    /* renamed from: d */
    private FrameLayout f9006d;

    /* renamed from: e */
    private Context f9007e;

    /* renamed from: com.allinone.callerid.dialog.d$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/dialog/d$a.class */
    class View$OnClickListenerC2584a implements View.OnClickListener {
        View$OnClickListenerC2584a() {
            DialogC2583d.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DialogC2583d.this.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.allinone.callerid.dialog.d$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/dialog/d$b.class */
    public class C2585b implements AbstractC5796a.AbstractC5799c {
        C2585b() {
            DialogC2583d.this = r4;
        }

        @Override // com.google.android.gms.ads.nativead.AbstractC5796a.AbstractC5799c
        /* renamed from: a */
        public void mo17848a(AbstractC5796a abstractC5796a) {
            NativeAdView nativeAdView = (NativeAdView) DialogC2583d.this.getLayoutInflater().inflate(R$layout.aad_gift, (ViewGroup) null);
            C3760d.m24325a(abstractC5796a, nativeAdView);
            DialogC2583d.this.f9006d.removeAllViews();
            DialogC2583d.this.f9006d.addView(nativeAdView);
            DialogC2583d.this.f9006d.setVisibility(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.allinone.callerid.dialog.d$c */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/dialog/d$c.class */
    public class C2586c extends AbstractC5596b {
        C2586c() {
            DialogC2583d.this = r4;
        }

        @Override // com.google.android.gms.ads.AbstractC5596b
        /* renamed from: n */
        public void mo9079n(C5756j c5756j) {
            super.mo9079n(c5756j);
            DialogC2583d.this.dismiss();
        }

        @Override // com.google.android.gms.ads.AbstractC5596b
        /* renamed from: r */
        public void mo9076r() {
            super.mo9076r();
            DialogC2583d.this.dismiss();
        }
    }

    public DialogC2583d(Context context, int i) {
        super(context, i);
        this.f9007e = context;
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R$layout.liwuhe_dialog);
        ImageView imageView = (ImageView) findViewById(R$id.closeIcon);
        this.f9006d = (FrameLayout) findViewById(R$id.fl_junk_admob);
        ((TextView) findViewById(R$id.tipsTitle)).setTypeface(C3739f1.m24359b());
        imageView.setOnClickListener(new View$OnClickListenerC2584a());
    }

    @Override // android.app.Dialog
    public void show() {
        super.show();
        if (C3763f.m24317a().f11985b != null) {
            NativeAdView nativeAdView = (NativeAdView) getLayoutInflater().inflate(R$layout.aad_gift, (ViewGroup) null);
            C3760d.m24325a(C3763f.m24317a().f11985b, nativeAdView);
            this.f9006d.removeAllViews();
            this.f9006d.addView(nativeAdView);
            this.f9006d.setVisibility(0);
            return;
        }
        C5600d.C5601a c5601a = new C5600d.C5601a(this.f9007e, "ca-app-pub-5825926894918682/4484122459");
        c5601a.m18290c(new C2585b());
        c5601a.m18287f(new C5608c.C5609a().m18243h(new C5848t.C5849a().m17759b(true).m17760a()).m18250a());
        c5601a.m18288e(new C2586c()).m18292a().m18294b(new C5603e.C5604a().m18283b(MediationNativeAdapter.class, new Bundle()).m18282c());
    }
}
