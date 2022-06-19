package com.truecaller.old.p171ui.activities;

import android.os.Bundle;
import android.view.View;
import android.widget.LinearLayout;
import com.truecaller.C2752R;
import com.truecaller.old.p171ui.activities.DialogActivity;
import n3.b.a.h;
import p193e.p194a.p1114o5.C19045j0;
import p193e.p194a.p614c3.C10932f;
import p193e.p194a.p682e.C12864a2;
/* renamed from: com.truecaller.old.ui.activities.DialogActivity */
/* loaded from: classes11-dex2jar.jar:com/truecaller/old/ui/activities/DialogActivity.class */
public class DialogActivity extends h {

    /* renamed from: a */
    public static final /* synthetic */ int f14126a = 0;

    /* JADX WARN: Multi-variable type inference failed */
    public void onCreate(Bundle bundle) {
        DialogActivity.super.onCreate(bundle);
        if (C10932f.m25491a()) {
            C12864a2.m22569Y(this);
        }
        getTheme().applyStyle(2131952482, false);
        LinearLayout linearLayout = (LinearLayout) C19045j0.m14205k(this, C2752R.layout.dialog_section_container);
        linearLayout.addView(C19045j0.m14205k(this, C2752R.layout.dialog_general));
        setContentView(linearLayout);
        View findViewById = findViewById(16908290);
        C19045j0.m14198r(findViewById, C2752R.C2754id.dialogTitle, getIntent().getStringExtra("ARG_TITLE"));
        C19045j0.m14198r(findViewById, C2752R.C2754id.dialogDetails, getIntent().getStringExtra("ARG_TEXT"));
        C19045j0.m14195u(findViewById, C2752R.C2754id.dialogYes, false);
        C19045j0.m14195u(findViewById, C2752R.C2754id.dialogNo, false);
        C19045j0.m14198r(findViewById, C2752R.C2754id.dialogNeutral, getString(2131887910));
        findViewById.findViewById(C2752R.C2754id.dialogNeutral).setOnClickListener(new View.OnClickListener() { // from class: e.a.j4.c.a.a
            /* JADX WARN: Type inference failed for: r0v1, types: [com.truecaller.old.ui.activities.DialogActivity, android.app.Activity] */
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DialogActivity.this.finish();
            }
        });
    }
}
