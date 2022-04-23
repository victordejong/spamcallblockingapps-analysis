package androidx.browser.customtabs;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.IBinder;
import android.util.SparseArray;
import androidx.browser.customtabs.a;
import androidx.core.content.b;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:androidx/browser/customtabs/d.class */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    public final Intent f1233a;

    /* renamed from: b  reason: collision with root package name */
    public final Bundle f1234b;

    /* loaded from: classes-dex2jar.jar:androidx/browser/customtabs/d$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final Intent f1235a;

        /* renamed from: b  reason: collision with root package name */
        private final a.C0027a f1236b;

        /* renamed from: c  reason: collision with root package name */
        private ArrayList<Bundle> f1237c;

        /* renamed from: d  reason: collision with root package name */
        private Bundle f1238d;
        private ArrayList<Bundle> e;
        private SparseArray<Bundle> f;
        private Bundle g;
        private int h;
        private boolean i;

        public a() {
            this.f1235a = new Intent("android.intent.action.VIEW");
            this.f1236b = new a.C0027a();
            this.h = 0;
            this.i = true;
        }

        public a(f fVar) {
            Intent intent = new Intent("android.intent.action.VIEW");
            this.f1235a = intent;
            this.f1236b = new a.C0027a();
            this.h = 0;
            this.i = true;
            if (fVar != null) {
                intent.setPackage(fVar.f1242b.getPackageName());
                a(fVar.f1241a.asBinder(), fVar.f1243c);
            }
        }

        private void a(IBinder iBinder, PendingIntent pendingIntent) {
            Bundle bundle = new Bundle();
            androidx.core.app.d.a(bundle, "android.support.customtabs.extra.SESSION", iBinder);
            if (pendingIntent != null) {
                bundle.putParcelable("android.support.customtabs.extra.SESSION_ID", pendingIntent);
            }
            this.f1235a.putExtras(bundle);
        }

        public final d a() {
            if (!this.f1235a.hasExtra("android.support.customtabs.extra.SESSION")) {
                a(null, null);
            }
            ArrayList<Bundle> arrayList = this.f1237c;
            if (arrayList != null) {
                this.f1235a.putParcelableArrayListExtra("android.support.customtabs.extra.MENU_ITEMS", arrayList);
            }
            ArrayList<Bundle> arrayList2 = this.e;
            if (arrayList2 != null) {
                this.f1235a.putParcelableArrayListExtra("android.support.customtabs.extra.TOOLBAR_ITEMS", arrayList2);
            }
            this.f1235a.putExtra("android.support.customtabs.extra.EXTRA_ENABLE_INSTANT_APPS", this.i);
            Intent intent = this.f1235a;
            a.C0027a aVar = this.f1236b;
            androidx.browser.customtabs.a aVar2 = new androidx.browser.customtabs.a(aVar.f1207a, aVar.f1208b, aVar.f1209c, aVar.f1210d);
            Bundle bundle = new Bundle();
            if (aVar2.f1203a != null) {
                bundle.putInt("android.support.customtabs.extra.TOOLBAR_COLOR", aVar2.f1203a.intValue());
            }
            if (aVar2.f1204b != null) {
                bundle.putInt("android.support.customtabs.extra.SECONDARY_TOOLBAR_COLOR", aVar2.f1204b.intValue());
            }
            if (aVar2.f1205c != null) {
                bundle.putInt("androidx.browser.customtabs.extra.NAVIGATION_BAR_COLOR", aVar2.f1205c.intValue());
            }
            if (aVar2.f1206d != null) {
                bundle.putInt("androidx.browser.customtabs.extra.NAVIGATION_BAR_DIVIDER_COLOR", aVar2.f1206d.intValue());
            }
            intent.putExtras(bundle);
            Bundle bundle2 = this.g;
            if (bundle2 != null) {
                this.f1235a.putExtras(bundle2);
            }
            if (this.f != null) {
                Bundle bundle3 = new Bundle();
                bundle3.putSparseParcelableArray("androidx.browser.customtabs.extra.COLOR_SCHEME_PARAMS", this.f);
                this.f1235a.putExtras(bundle3);
            }
            this.f1235a.putExtra("androidx.browser.customtabs.extra.SHARE_STATE", this.h);
            return new d(this.f1235a, this.f1238d);
        }
    }

    d(Intent intent, Bundle bundle) {
        this.f1233a = intent;
        this.f1234b = bundle;
    }

    public final void a(Context context, Uri uri) {
        this.f1233a.setData(uri);
        b.a(context, this.f1233a, this.f1234b);
    }
}
