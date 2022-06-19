package com.truecaller.premium;

import android.content.Intent;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.view.Window;
import android.view.WindowManager;
import com.truecaller.C2752R;
import kotlin.Metadata;
import p193e.p194a.p1011l.AbstractC17249v;
import p193e.p194a.p1011l.C16614b;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0007\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\b\u000f\u0010\u000bJ\u0019\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\b\u001a\u00020\u0007H\u0014¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\n\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\r\u001a\u00020\fH\u0002¢\u0006\u0004\b\r\u0010\u000e¨\u0006\u0010"}, d2 = {"Lcom/truecaller/premium/PremiumDialogActivity;", "Lcom/truecaller/premium/PremiumActivity;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "Le/a/l/b$e;", "qa", "()Le/a/l/b$e;", "onBackPressed", "()V", "", "ra", "()Z", "<init>", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes12-dex2jar.jar:com/truecaller/premium/PremiumDialogActivity.class */
public final class PremiumDialogActivity extends AbstractC17249v {
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.truecaller.premium.PremiumActivity
    public void onBackPressed() {
        if (m34824ra()) {
            finish();
        } else {
            super.onBackPressed();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.truecaller.premium.PremiumActivity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        DisplayMetrics displayMetrics = new DisplayMetrics();
        WindowManager windowManager = getWindowManager();
        l.d(windowManager, "windowManager");
        windowManager.getDefaultDisplay().getMetrics(displayMetrics);
        int i = displayMetrics.heightPixels;
        Window window = getWindow();
        l.d(window, "window");
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.height = (i * 90) / 100;
        Window window2 = getWindow();
        l.d(window2, "window");
        window2.setAttributes(attributes);
    }

    @Override // com.truecaller.premium.PremiumActivity
    /* renamed from: qa */
    public C16614b.C16618e mo34825qa() {
        return new C16614b.C16618e(Integer.valueOf((int) C2752R.C2753drawable.oval_white_with_close), 0, m34824ra(), 2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: ra */
    public final boolean m34824ra() {
        Intent intent = getIntent();
        l.d(intent, "intent");
        Bundle extras = intent.getExtras();
        String string = extras != null ? extras.getString("selectedPage") : null;
        boolean z = false;
        if (!(string == null || string.length() == 0)) {
            z = false;
            if (!l.a(string, "gold")) {
                z = false;
                if (!l.a(string, "premium")) {
                    z = true;
                }
            }
        }
        return z;
    }
}
