package androidx.appcompat.app;

import android.app.Dialog;
import android.os.Bundle;
import androidx.fragment.app.c;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/g.class */
public class g extends c {
    @Override // androidx.fragment.app.c
    public Dialog a(Bundle bundle) {
        return new f(getContext(), getTheme());
    }

    @Override // androidx.fragment.app.c
    public final void a(Dialog dialog, int i) {
        if (dialog instanceof f) {
            f fVar = (f) dialog;
            if (!(i == 1 || i == 2)) {
                if (i == 3) {
                    dialog.getWindow().addFlags(24);
                } else {
                    return;
                }
            }
            fVar.a();
            return;
        }
        super.a(dialog, i);
    }
}
