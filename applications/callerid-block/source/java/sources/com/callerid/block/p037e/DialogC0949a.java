package com.callerid.block.p037e;

import android.app.Dialog;
import android.content.Context;
import android.graphics.Typeface;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.callerid.block.R$id;
import com.callerid.block.R$layout;
import com.callerid.block.customview.LImageButton;
import com.callerid.block.util.C1210r0;
import com.callerid.block.util.p058v0.C1224c;
import com.google.android.gms.ads.nativead.AbstractC1487a;
import com.google.android.gms.ads.nativead.NativeAdView;
/* renamed from: com.callerid.block.e.a */
/* loaded from: classes-dex2jar.jar:com/callerid/block/e/a.class */
public class DialogC0949a extends Dialog {

    /* renamed from: b */
    private View.OnClickListener f4306b;

    /* renamed from: c */
    private Typeface f4307c = C1210r0.m9624b();

    /* renamed from: d */
    private AbstractC1487a f4308d;

    /* renamed from: e */
    public AbstractC0950a f4309e;

    /* renamed from: com.callerid.block.e.a$a */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/e/a$a.class */
    public interface AbstractC0950a {
        /* renamed from: a */
        void m10459a();
    }

    public DialogC0949a(Context context, int i, AbstractC1487a abstractC1487a, View.OnClickListener onClickListener) {
        super(context, i);
        this.f4306b = onClickListener;
        this.f4308d = abstractC1487a;
    }

    /* renamed from: a */
    public void m10460a(AbstractC0950a abstractC0950a) {
        this.f4309e = abstractC0950a;
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        super.dismiss();
        AbstractC0950a abstractC0950a = this.f4309e;
        if (abstractC0950a != null) {
            abstractC0950a.m10459a();
        }
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Log.e("wjjj", "zoule");
        setContentView(R$layout.liwuhe_dialog);
        LImageButton findViewById = findViewById(R$id.closeIcon);
        FrameLayout frameLayout = (FrameLayout) findViewById(R$id.fl_junk_admob);
        if (this.f4308d != null) {
            NativeAdView nativeAdView = (NativeAdView) getLayoutInflater().inflate(R$layout.ad_admob_app_dialog, (ViewGroup) null);
            new C1224c().m9532a(this.f4308d, nativeAdView);
            frameLayout.removeAllViews();
            frameLayout.addView(nativeAdView);
            frameLayout.setVisibility(0);
        }
        ((TextView) findViewById(R$id.tipsTitle)).setTypeface(this.f4307c);
        ((TextView) findViewById(R$id.tipsBody)).setTypeface(this.f4307c);
        findViewById.setOnClickListener(this.f4306b);
    }
}
