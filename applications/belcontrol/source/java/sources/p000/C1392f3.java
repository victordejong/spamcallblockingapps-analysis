package p000;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.IBinder;
import android.util.SparseArray;
import java.util.ArrayList;
import p000.C0282c3;
/* renamed from: f3 */
/* loaded from: classes-dex2jar.jar:f3.class */
public final class C1392f3 {

    /* renamed from: a */
    public final Intent f6503a;

    /* renamed from: b */
    public final Bundle f6504b;

    /* renamed from: f3$a */
    /* loaded from: classes-dex2jar.jar:f3$a.class */
    public static final class C1393a {

        /* renamed from: c */
        public ArrayList<Bundle> f6507c;

        /* renamed from: d */
        public Bundle f6508d;

        /* renamed from: e */
        public ArrayList<Bundle> f6509e;

        /* renamed from: f */
        public SparseArray<Bundle> f6510f;

        /* renamed from: g */
        public Bundle f6511g;

        /* renamed from: a */
        public final Intent f6505a = new Intent("android.intent.action.VIEW");

        /* renamed from: b */
        public final C0282c3.C0283a f6506b = new C0282c3.C0283a();

        /* renamed from: h */
        public int f6512h = 0;

        /* renamed from: i */
        public boolean f6513i = true;

        public C1393a() {
        }

        public C1393a(h3 h3Var) {
            if (h3Var != null) {
                m1998b(h3Var);
            }
        }

        /* renamed from: a */
        public C1392f3 m1999a() {
            if (!this.f6505a.hasExtra("android.support.customtabs.extra.SESSION")) {
                m1997c(null, null);
            }
            ArrayList<Bundle> arrayList = this.f6507c;
            if (arrayList != null) {
                this.f6505a.putParcelableArrayListExtra("android.support.customtabs.extra.MENU_ITEMS", arrayList);
            }
            ArrayList<Bundle> arrayList2 = this.f6509e;
            if (arrayList2 != null) {
                this.f6505a.putParcelableArrayListExtra("android.support.customtabs.extra.TOOLBAR_ITEMS", arrayList2);
            }
            this.f6505a.putExtra("android.support.customtabs.extra.EXTRA_ENABLE_INSTANT_APPS", this.f6513i);
            this.f6505a.putExtras(this.f6506b.m5464a().m5465a());
            Bundle bundle = this.f6511g;
            if (bundle != null) {
                this.f6505a.putExtras(bundle);
            }
            if (this.f6510f != null) {
                Bundle bundle2 = new Bundle();
                bundle2.putSparseParcelableArray("androidx.browser.customtabs.extra.COLOR_SCHEME_PARAMS", this.f6510f);
                this.f6505a.putExtras(bundle2);
            }
            this.f6505a.putExtra("androidx.browser.customtabs.extra.SHARE_STATE", this.f6512h);
            return new C1392f3(this.f6505a, this.f6508d);
        }

        /* renamed from: b */
        public C1393a m1998b(h3 h3Var) {
            this.f6505a.setPackage(h3Var.b().getPackageName());
            m1997c(h3Var.a(), h3Var.c());
            return this;
        }

        /* renamed from: c */
        public final void m1997c(IBinder iBinder, PendingIntent pendingIntent) {
            Bundle bundle = new Bundle();
            v7.b(bundle, "android.support.customtabs.extra.SESSION", iBinder);
            if (pendingIntent != null) {
                bundle.putParcelable("android.support.customtabs.extra.SESSION_ID", pendingIntent);
            }
            this.f6505a.putExtras(bundle);
        }
    }

    public C1392f3(Intent intent, Bundle bundle) {
        this.f6503a = intent;
        this.f6504b = bundle;
    }

    /* renamed from: a */
    public void m2000a(Context context, Uri uri) {
        this.f6503a.setData(uri);
        g8.n(context, this.f6503a, this.f6504b);
    }
}
