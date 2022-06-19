package androidx.browser.trusted;

import android.app.Notification;
import android.content.ComponentName;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.p006a.p007a.AbstractC0012b;
/* renamed from: androidx.browser.trusted.g */
/* loaded from: classes-dex2jar.jar:androidx/browser/trusted/g.class */
public final class C0475g {

    /* renamed from: a */
    private final AbstractC0012b f1827a;

    /* renamed from: b */
    private final ComponentName f1828b;

    /* renamed from: androidx.browser.trusted.g$a */
    /* loaded from: classes-dex2jar.jar:androidx/browser/trusted/g$a.class */
    static final class C0476a {

        /* renamed from: a */
        public final Parcelable[] f1829a;

        public C0476a(Parcelable[] parcelableArr) {
            this.f1829a = parcelableArr;
        }
    }

    /* renamed from: androidx.browser.trusted.g$b */
    /* loaded from: classes-dex2jar.jar:androidx/browser/trusted/g$b.class */
    static final class C0477b {

        /* renamed from: a */
        public final String f1830a;

        /* renamed from: b */
        public final int f1831b;

        public C0477b(String str, int i) {
            this.f1830a = str;
            this.f1831b = i;
        }
    }

    /* renamed from: androidx.browser.trusted.g$c */
    /* loaded from: classes-dex2jar.jar:androidx/browser/trusted/g$c.class */
    static final class C0478c {

        /* renamed from: a */
        public final String f1832a;

        public C0478c(String str) {
            this.f1832a = str;
        }
    }

    /* renamed from: androidx.browser.trusted.g$d */
    /* loaded from: classes-dex2jar.jar:androidx/browser/trusted/g$d.class */
    static final class C0479d {

        /* renamed from: a */
        public final String f1833a;

        /* renamed from: b */
        public final int f1834b;

        /* renamed from: c */
        public final Notification f1835c;

        /* renamed from: d */
        public final String f1836d;

        public C0479d(String str, int i, Notification notification, String str2) {
            this.f1833a = str;
            this.f1834b = i;
            this.f1835c = notification;
            this.f1836d = str2;
        }
    }

    /* renamed from: androidx.browser.trusted.g$e */
    /* loaded from: classes-dex2jar.jar:androidx/browser/trusted/g$e.class */
    static final class C0480e {

        /* renamed from: a */
        public final boolean f1837a;

        public C0480e(boolean z) {
            this.f1837a = z;
        }

        /* renamed from: a */
        public final Bundle m45432a() {
            Bundle bundle = new Bundle();
            bundle.putBoolean("android.support.customtabs.trusted.NOTIFICATION_SUCCESS", this.f1837a);
            return bundle;
        }
    }

    C0475g(AbstractC0012b abstractC0012b, ComponentName componentName) {
        this.f1827a = abstractC0012b;
        this.f1828b = componentName;
    }

    /* renamed from: a */
    public static void m45433a(Bundle bundle, String str) {
        if (bundle.containsKey(str)) {
            return;
        }
        throw new IllegalArgumentException("Bundle must contain ".concat(String.valueOf(str)));
    }
}
