package androidx.browser.customtabs;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.IBinder;
import android.util.SparseArray;
import androidx.browser.customtabs.C0447a;
import androidx.core.app.C0741d;
import androidx.core.content.C0790b;
import java.util.ArrayList;
/* renamed from: androidx.browser.customtabs.d */
/* loaded from: classes-dex2jar.jar:androidx/browser/customtabs/d.class */
public final class C0458d {

    /* renamed from: a */
    public final Intent f1796a;

    /* renamed from: b */
    public final Bundle f1797b;

    /* renamed from: androidx.browser.customtabs.d$a */
    /* loaded from: classes-dex2jar.jar:androidx/browser/customtabs/d$a.class */
    public static final class C0459a {

        /* renamed from: a */
        private final Intent f1798a;

        /* renamed from: b */
        private final C0447a.C0448a f1799b;

        /* renamed from: c */
        private ArrayList<Bundle> f1800c;

        /* renamed from: d */
        private Bundle f1801d;

        /* renamed from: e */
        private ArrayList<Bundle> f1802e;

        /* renamed from: f */
        private SparseArray<Bundle> f1803f;

        /* renamed from: g */
        private Bundle f1804g;

        /* renamed from: h */
        private int f1805h;

        /* renamed from: i */
        private boolean f1806i;

        public C0459a() {
            this.f1798a = new Intent("android.intent.action.VIEW");
            this.f1799b = new C0447a.C0448a();
            this.f1805h = 0;
            this.f1806i = true;
        }

        public C0459a(C0462f c0462f) {
            Intent intent = new Intent("android.intent.action.VIEW");
            this.f1798a = intent;
            this.f1799b = new C0447a.C0448a();
            this.f1805h = 0;
            this.f1806i = true;
            if (c0462f != null) {
                intent.setPackage(c0462f.f1810b.getPackageName());
                m45465a(c0462f.f1809a.asBinder(), c0462f.f1811c);
            }
        }

        /* renamed from: a */
        private void m45465a(IBinder iBinder, PendingIntent pendingIntent) {
            Bundle bundle = new Bundle();
            C0741d.m44594a(bundle, "android.support.customtabs.extra.SESSION", iBinder);
            if (pendingIntent != null) {
                bundle.putParcelable("android.support.customtabs.extra.SESSION_ID", pendingIntent);
            }
            this.f1798a.putExtras(bundle);
        }

        /* renamed from: a */
        public final C0458d m45466a() {
            if (!this.f1798a.hasExtra("android.support.customtabs.extra.SESSION")) {
                m45465a(null, null);
            }
            ArrayList<Bundle> arrayList = this.f1800c;
            if (arrayList != null) {
                this.f1798a.putParcelableArrayListExtra("android.support.customtabs.extra.MENU_ITEMS", arrayList);
            }
            ArrayList<Bundle> arrayList2 = this.f1802e;
            if (arrayList2 != null) {
                this.f1798a.putParcelableArrayListExtra("android.support.customtabs.extra.TOOLBAR_ITEMS", arrayList2);
            }
            this.f1798a.putExtra("android.support.customtabs.extra.EXTRA_ENABLE_INSTANT_APPS", this.f1806i);
            Intent intent = this.f1798a;
            C0447a.C0448a c0448a = this.f1799b;
            C0447a c0447a = new C0447a(c0448a.f1769a, c0448a.f1770b, c0448a.f1771c, c0448a.f1772d);
            Bundle bundle = new Bundle();
            if (c0447a.f1765a != null) {
                bundle.putInt("android.support.customtabs.extra.TOOLBAR_COLOR", c0447a.f1765a.intValue());
            }
            if (c0447a.f1766b != null) {
                bundle.putInt("android.support.customtabs.extra.SECONDARY_TOOLBAR_COLOR", c0447a.f1766b.intValue());
            }
            if (c0447a.f1767c != null) {
                bundle.putInt("androidx.browser.customtabs.extra.NAVIGATION_BAR_COLOR", c0447a.f1767c.intValue());
            }
            if (c0447a.f1768d != null) {
                bundle.putInt("androidx.browser.customtabs.extra.NAVIGATION_BAR_DIVIDER_COLOR", c0447a.f1768d.intValue());
            }
            intent.putExtras(bundle);
            Bundle bundle2 = this.f1804g;
            if (bundle2 != null) {
                this.f1798a.putExtras(bundle2);
            }
            if (this.f1803f != null) {
                Bundle bundle3 = new Bundle();
                bundle3.putSparseParcelableArray("androidx.browser.customtabs.extra.COLOR_SCHEME_PARAMS", this.f1803f);
                this.f1798a.putExtras(bundle3);
            }
            this.f1798a.putExtra("androidx.browser.customtabs.extra.SHARE_STATE", this.f1805h);
            return new C0458d(this.f1798a, this.f1801d);
        }
    }

    C0458d(Intent intent, Bundle bundle) {
        this.f1796a = intent;
        this.f1797b = bundle;
    }

    /* renamed from: a */
    public final void m45467a(Context context, Uri uri) {
        this.f1796a.setData(uri);
        C0790b.m44500a(context, this.f1796a, this.f1797b);
    }
}
