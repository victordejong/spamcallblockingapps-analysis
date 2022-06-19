package com.truecaller.insights.p168ui.categorizerupdatedialog;

import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.view.Window;
import java.util.Objects;
import kotlin.Metadata;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p437c.p438a.p476f.AbstractC9007e;
import p193e.p194a.p437c.p438a.p476f.C9001b;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\b\u0007\u0010\bJ\u0019\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\t"}, d2 = {"Lcom/truecaller/insights/ui/categorizerupdatedialog/CategorizerUpdateActivity;", "Ln3/b/a/h;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "<init>", "()V", "insights-ui_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.insights.ui.categorizerupdatedialog.CategorizerUpdateActivity */
/* loaded from: classes10-dex2jar.jar:com/truecaller/insights/ui/categorizerupdatedialog/CategorizerUpdateActivity.class */
public final class CategorizerUpdateActivity extends AbstractC9007e {
    /* JADX WARN: Multi-variable type inference failed */
    public void onCreate(Bundle bundle) {
        Window window = getWindow();
        if (window != null) {
            window.setBackgroundDrawable(new ColorDrawable(0));
        }
        C17422k.m16066m0(this, true);
        CategorizerUpdateActivity.super.onCreate(bundle);
        Objects.requireNonNull(C9001b.f27344j);
        new C9001b().show(getSupportFragmentManager(), C9001b.f27343i);
    }
}
