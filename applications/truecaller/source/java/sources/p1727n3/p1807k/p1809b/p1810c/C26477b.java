package p1727n3.p1807k.p1809b.p1810c;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ShortcutInfo;
import android.os.Build;
import android.os.PersistableBundle;
import android.text.TextUtils;
import androidx.core.graphics.drawable.IconCompat;
/* renamed from: n3.k.b.c.b */
/* loaded from: classes-dex2jar.jar:n3/k/b/c/b.class */
public class C26477b {

    /* renamed from: a */
    public Context f74239a;

    /* renamed from: b */
    public String f74240b;

    /* renamed from: c */
    public Intent[] f74241c;

    /* renamed from: d */
    public CharSequence f74242d;

    /* renamed from: e */
    public IconCompat f74243e;

    /* renamed from: f */
    public boolean f74244f;

    /* renamed from: g */
    public PersistableBundle f74245g;

    /* renamed from: a */
    public ShortcutInfo m1778a() {
        ShortcutInfo.Builder intents = new ShortcutInfo.Builder(this.f74239a, this.f74240b).setShortLabel(this.f74242d).setIntents(this.f74241c);
        IconCompat iconCompat = this.f74243e;
        if (iconCompat != null) {
            intents.setIcon(iconCompat.v(this.f74239a));
        }
        if (!TextUtils.isEmpty(null)) {
            intents.setLongLabel(null);
        }
        if (!TextUtils.isEmpty(null)) {
            intents.setDisabledMessage(null);
        }
        intents.setRank(0);
        PersistableBundle persistableBundle = this.f74245g;
        if (persistableBundle != null) {
            intents.setExtras(persistableBundle);
        }
        if (Build.VERSION.SDK_INT >= 29) {
            intents.setLongLived(this.f74244f);
        } else {
            if (this.f74245g == null) {
                this.f74245g = new PersistableBundle();
            }
            this.f74245g.putBoolean("extraLongLived", this.f74244f);
            intents.setExtras(this.f74245g);
        }
        return intents.build();
    }
}
