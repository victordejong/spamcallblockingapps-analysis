package androidx.browser.p014a;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.IBinder;
import android.util.SparseArray;
import androidx.browser.p014a.C0390a;
import androidx.core.app.C0467d;
import androidx.core.p017a.C0438a;
import java.util.ArrayList;
/* renamed from: androidx.browser.a.b */
/* loaded from: classes-dex2jar.jar:androidx/browser/a/b.class */
public final class C0392b {

    /* renamed from: a */
    public final Intent f1606a;

    /* renamed from: b */
    public final Bundle f1607b;

    /* renamed from: androidx.browser.a.b$a */
    /* loaded from: classes-dex2jar.jar:androidx/browser/a/b$a.class */
    public static final class C0393a {

        /* renamed from: c */
        private ArrayList<Bundle> f1610c;

        /* renamed from: d */
        private Bundle f1611d;

        /* renamed from: e */
        private ArrayList<Bundle> f1612e;

        /* renamed from: g */
        private SparseArray<Bundle> f1614g;

        /* renamed from: a */
        private final Intent f1608a = new Intent("android.intent.action.VIEW");

        /* renamed from: b */
        private final C0390a.C0391a f1609b = new C0390a.C0391a();

        /* renamed from: f */
        private boolean f1613f = true;

        /* renamed from: a */
        private void m21064a(IBinder iBinder, PendingIntent pendingIntent) {
            Bundle bundle = new Bundle();
            C0467d.m20804a(bundle, "android.support.customtabs.extra.SESSION", iBinder);
            if (pendingIntent != null) {
                bundle.putParcelable("android.support.customtabs.extra.SESSION_ID", pendingIntent);
            }
            this.f1608a.putExtras(bundle);
        }

        /* renamed from: a */
        public C0392b m21065a() {
            if (!this.f1608a.hasExtra("android.support.customtabs.extra.SESSION")) {
                m21064a(null, null);
            }
            if (this.f1610c != null) {
                this.f1608a.putParcelableArrayListExtra("android.support.customtabs.extra.MENU_ITEMS", this.f1610c);
            }
            if (this.f1612e != null) {
                this.f1608a.putParcelableArrayListExtra("android.support.customtabs.extra.TOOLBAR_ITEMS", this.f1612e);
            }
            this.f1608a.putExtra("android.support.customtabs.extra.EXTRA_ENABLE_INSTANT_APPS", this.f1613f);
            this.f1608a.putExtras(this.f1609b.m21067a().m21068a());
            if (this.f1614g != null) {
                Bundle bundle = new Bundle();
                bundle.putSparseParcelableArray("androidx.browser.customtabs.extra.COLOR_SCHEME_PARAMS", this.f1614g);
                this.f1608a.putExtras(bundle);
            }
            return new C0392b(this.f1608a, this.f1611d);
        }
    }

    C0392b(Intent intent, Bundle bundle) {
        this.f1606a = intent;
        this.f1607b = bundle;
    }

    /* renamed from: a */
    public void m21066a(Context context, Uri uri) {
        this.f1606a.setData(uri);
        C0438a.m20899a(context, this.f1606a, this.f1607b);
    }
}
