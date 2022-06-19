package androidx.browser.customtabs;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import androidx.core.app.C0247e;
import androidx.core.content.C0265a;
import java.util.ArrayList;
/* renamed from: androidx.browser.customtabs.c */
/* loaded from: classes-dex2jar.jar:androidx/browser/customtabs/c.class */
public final class C0165c {

    /* renamed from: a */
    public final Intent f752a;

    /* renamed from: b */
    public final Bundle f753b;

    /* renamed from: androidx.browser.customtabs.c$a */
    /* loaded from: classes-dex2jar.jar:androidx/browser/customtabs/c$a.class */
    public static final class C0166a {

        /* renamed from: a */
        private final Intent f754a;

        /* renamed from: b */
        private ArrayList<Bundle> f755b;

        /* renamed from: c */
        private Bundle f756c;

        /* renamed from: d */
        private ArrayList<Bundle> f757d;

        /* renamed from: e */
        private boolean f758e;

        public C0166a() {
            this(null);
        }

        public C0166a(C0168e c0168e) {
            Intent intent = new Intent("android.intent.action.VIEW");
            this.f754a = intent;
            this.f755b = null;
            this.f756c = null;
            this.f757d = null;
            this.f758e = true;
            if (c0168e != null) {
                intent.setPackage(c0168e.m14379b().getPackageName());
            }
            Bundle bundle = new Bundle();
            C0247e.m13652b(bundle, "android.support.customtabs.extra.SESSION", c0168e == null ? null : c0168e.m14380a());
            intent.putExtras(bundle);
        }

        /* renamed from: a */
        public C0165c m14382a() {
            ArrayList<Bundle> arrayList = this.f755b;
            if (arrayList != null) {
                this.f754a.putParcelableArrayListExtra("android.support.customtabs.extra.MENU_ITEMS", arrayList);
            }
            ArrayList<Bundle> arrayList2 = this.f757d;
            if (arrayList2 != null) {
                this.f754a.putParcelableArrayListExtra("android.support.customtabs.extra.TOOLBAR_ITEMS", arrayList2);
            }
            this.f754a.putExtra("android.support.customtabs.extra.EXTRA_ENABLE_INSTANT_APPS", this.f758e);
            return new C0165c(this.f754a, this.f756c);
        }
    }

    C0165c(Intent intent, Bundle bundle) {
        this.f752a = intent;
        this.f753b = bundle;
    }

    /* renamed from: a */
    public void m14383a(Context context, Uri uri) {
        this.f752a.setData(uri);
        C0265a.m13546k(context, this.f752a, this.f753b);
    }
}
