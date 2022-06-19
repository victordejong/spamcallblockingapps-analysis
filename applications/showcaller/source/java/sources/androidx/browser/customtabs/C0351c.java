package androidx.browser.customtabs;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import androidx.core.app.C0561e;
import androidx.core.content.C0586a;
import java.util.ArrayList;
/* renamed from: androidx.browser.customtabs.c */
/* loaded from: classes-dex2jar.jar:androidx/browser/customtabs/c.class */
public final class C0351c {

    /* renamed from: a */
    public final Intent f1470a;

    /* renamed from: b */
    public final Bundle f1471b;

    /* renamed from: androidx.browser.customtabs.c$a */
    /* loaded from: classes-dex2jar.jar:androidx/browser/customtabs/c$a.class */
    public static final class C0352a {

        /* renamed from: a */
        private final Intent f1472a;

        /* renamed from: b */
        private ArrayList<Bundle> f1473b;

        /* renamed from: c */
        private Bundle f1474c;

        /* renamed from: d */
        private ArrayList<Bundle> f1475d;

        /* renamed from: e */
        private boolean f1476e;

        public C0352a() {
            this(null);
        }

        public C0352a(C0355e c0355e) {
            Intent intent = new Intent("android.intent.action.VIEW");
            this.f1472a = intent;
            this.f1473b = null;
            this.f1474c = null;
            this.f1475d = null;
            this.f1476e = true;
            if (c0355e != null) {
                intent.setPackage(c0355e.m34651b().getPackageName());
            }
            Bundle bundle = new Bundle();
            C0561e.m33460b(bundle, "android.support.customtabs.extra.SESSION", c0355e == null ? null : c0355e.m34652a());
            intent.putExtras(bundle);
        }

        /* renamed from: a */
        public C0351c m34653a() {
            ArrayList<Bundle> arrayList = this.f1473b;
            if (arrayList != null) {
                this.f1472a.putParcelableArrayListExtra("android.support.customtabs.extra.MENU_ITEMS", arrayList);
            }
            ArrayList<Bundle> arrayList2 = this.f1475d;
            if (arrayList2 != null) {
                this.f1472a.putParcelableArrayListExtra("android.support.customtabs.extra.TOOLBAR_ITEMS", arrayList2);
            }
            this.f1472a.putExtra("android.support.customtabs.extra.EXTRA_ENABLE_INSTANT_APPS", this.f1476e);
            return new C0351c(this.f1472a, this.f1474c);
        }
    }

    C0351c(Intent intent, Bundle bundle) {
        this.f1470a = intent;
        this.f1471b = bundle;
    }

    /* renamed from: a */
    public void m34654a(Context context, Uri uri) {
        this.f1470a.setData(uri);
        C0586a.m33343k(context, this.f1470a, this.f1471b);
    }
}
