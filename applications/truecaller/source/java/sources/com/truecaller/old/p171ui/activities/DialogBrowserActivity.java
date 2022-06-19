package com.truecaller.old.p171ui.activities;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.webkit.WebView;
import com.truecaller.C2752R;
import com.truecaller.log.AssertionUtil;
import n3.b.a.h;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p372b0.p430q.C8600l;
import p193e.p194a.p614c3.C10932f;
import p193e.p194a.p682e.C12864a2;
/* renamed from: com.truecaller.old.ui.activities.DialogBrowserActivity */
/* loaded from: classes11-dex2jar.jar:com/truecaller/old/ui/activities/DialogBrowserActivity.class */
public class DialogBrowserActivity extends h implements View.OnClickListener {

    /* renamed from: a */
    public WebView f14127a;

    /* renamed from: b */
    public View f14128b;

    /* renamed from: pa */
    public static void m34833pa(Context context, String str, boolean z) {
        context.startActivity(new Intent(context, DialogBrowserActivity.class).addFlags(268435456).putExtra("ARG_SUPPORTS_FILES", z).putExtra("ARG_URL", str));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        finish();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onCreate(Bundle bundle) {
        DialogBrowserActivity.super.onCreate(bundle);
        if (C10932f.m25491a()) {
            C12864a2.m22569Y(this);
        }
        String stringExtra = getIntent().getStringExtra("ARG_URL");
        boolean booleanExtra = getIntent().getBooleanExtra("ARG_SUPPORTS_FILES", false);
        if (TextUtils.isEmpty(stringExtra)) {
            AssertionUtil.reportWeirdnessButNeverCrash("Empty URL for DialogBrowserActivity");
            finish();
            return;
        }
        C17422k.m16069l(getTheme());
        setContentView((int) C2752R.layout.view_dialog_browser);
        this.f14127a = (WebView) findViewById((int) C2752R.C2754id.webView);
        this.f14128b = findViewById((int) C2752R.C2754id.webLoading);
        findViewById((int) C2752R.C2754id.dialogClose).setOnClickListener(this);
        this.f14127a.setWebViewClient(new C8600l(this.f14128b, booleanExtra));
        this.f14127a.loadUrl(stringExtra);
    }
}
