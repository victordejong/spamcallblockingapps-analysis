package com.truecaller.flashsdk.p166ui.contactselector;

import android.content.Intent;
import android.os.Bundle;
import com.truecaller.flashsdk.C3909R;
import kotlin.Metadata;
import n3.b.a.h;
import p193e.p194a.p1365y.p1366a.p1371f.C21494b;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0006\b��\u0018��2\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b\n\u0010\tJ\u0019\u0010\u0006\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0014¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\b\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\b\u0010\t¨\u0006\u000b"}, d2 = {"Lcom/truecaller/flashsdk/ui/contactselector/FlashContactSelectorActivity;", "Ln3/b/a/h;", "Le/a/y/a/f/b$b;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "onDismiss", "()V", "<init>", "flash_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.flashsdk.ui.contactselector.FlashContactSelectorActivity */
/* loaded from: classes9-dex2jar.jar:com/truecaller/flashsdk/ui/contactselector/FlashContactSelectorActivity.class */
public final class FlashContactSelectorActivity extends h implements C21494b.AbstractC21496b {
    /* JADX WARN: Multi-variable type inference failed */
    public void onCreate(Bundle bundle) {
        FlashContactSelectorActivity.super.onCreate(bundle);
        setContentView(C3909R.layout.activity_frame);
        Intent intent = getIntent();
        l.d(intent, "intent");
        Bundle extras = intent.getExtras();
        if (extras != null) {
            l.d(extras, "intent.extras ?: return");
            C21494b c21494b = new C21494b();
            c21494b.setArguments(extras);
            c21494b.show(getSupportFragmentManager(), c21494b.getTag());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p1365y.p1366a.p1371f.C21494b.AbstractC21496b
    public void onDismiss() {
        finish();
    }
}
