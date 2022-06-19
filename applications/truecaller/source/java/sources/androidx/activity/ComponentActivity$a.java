package androidx.activity;

import android.text.TextUtils;
/* loaded from: classes-dex2jar.jar:androidx/activity/ComponentActivity$a.class */
public class ComponentActivity$a implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ ComponentActivity f60a;

    public ComponentActivity$a(ComponentActivity componentActivity) {
        this.f60a = componentActivity;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            ComponentActivity.access$001(this.f60a);
        } catch (IllegalStateException e) {
            if (!TextUtils.equals(e.getMessage(), "Can not perform this action after onSaveInstanceState")) {
                throw e;
            }
        }
    }
}
