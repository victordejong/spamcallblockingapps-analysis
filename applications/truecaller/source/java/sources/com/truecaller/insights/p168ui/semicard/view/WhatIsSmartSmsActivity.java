package com.truecaller.insights.p168ui.semicard.view;

import android.os.Bundle;
import com.truecaller.insights.p168ui.C4078R;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import p193e.p194a.p372b0.p425o.AbstractC8541a;
import p193e.p194a.p437c.p438a.p471e.p472a.AbstractC8971e;
import p193e.p194a.p437c.p438a.p471e.p472a.C8977i;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\n\b\u0007\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\b\u000f\u0010\u0010J\u0019\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014¢\u0006\u0004\b\u0005\u0010\u0006R\"\u0010\u000e\u001a\u00020\u00078\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\r¨\u0006\u0011"}, d2 = {"Lcom/truecaller/insights/ui/semicard/view/WhatIsSmartSmsActivity;", "Ln3/b/a/h;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "Le/a/b0/o/a;", "d", "Le/a/b0/o/a;", "getCoreSettings", "()Le/a/b0/o/a;", "setCoreSettings", "(Le/a/b0/o/a;)V", "coreSettings", "<init>", "()V", "insights-ui_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.insights.ui.semicard.view.WhatIsSmartSmsActivity */
/* loaded from: classes10-dex2jar.jar:com/truecaller/insights/ui/semicard/view/WhatIsSmartSmsActivity.class */
public final class WhatIsSmartSmsActivity extends AbstractC8971e {
    @Inject

    /* renamed from: d */
    public AbstractC8541a f12903d;

    public void onCreate(Bundle bundle) {
        WhatIsSmartSmsActivity.super.onCreate(bundle);
        setContentView(C4078R.layout.activity_what_is_smart_sms);
        AbstractC8541a abstractC8541a = this.f12903d;
        if (abstractC8541a == null) {
            l.l("coreSettings");
            throw null;
        }
        abstractC8541a.putBoolean("smart_notifications_clicked", true);
        Objects.requireNonNull(C8977i.f27285f);
        C8977i c8977i = new C8977i();
        c8977i.f27286a = true;
        c8977i.show(getSupportFragmentManager(), C8977i.f27284e);
    }
}
