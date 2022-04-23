package androidx.browser.trusted;

import android.app.Notification;
import android.content.ComponentName;
import android.os.Bundle;
import android.os.Parcelable;
/* loaded from: classes-dex2jar.jar:androidx/browser/trusted/g.class */
public final class g {

    /* renamed from: a  reason: collision with root package name */
    private final android.support.a.a.b f1258a;

    /* renamed from: b  reason: collision with root package name */
    private final ComponentName f1259b;

    /* loaded from: classes-dex2jar.jar:androidx/browser/trusted/g$a.class */
    static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final Parcelable[] f1260a;

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(Parcelable[] parcelableArr) {
            this.f1260a = parcelableArr;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/browser/trusted/g$b.class */
    static final class b {

        /* renamed from: a  reason: collision with root package name */
        public final String f1261a;

        /* renamed from: b  reason: collision with root package name */
        public final int f1262b;

        /* JADX INFO: Access modifiers changed from: package-private */
        public b(String str, int i) {
            this.f1261a = str;
            this.f1262b = i;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/browser/trusted/g$c.class */
    static final class c {

        /* renamed from: a  reason: collision with root package name */
        public final String f1263a;

        /* JADX INFO: Access modifiers changed from: package-private */
        public c(String str) {
            this.f1263a = str;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/browser/trusted/g$d.class */
    static final class d {

        /* renamed from: a  reason: collision with root package name */
        public final String f1264a;

        /* renamed from: b  reason: collision with root package name */
        public final int f1265b;

        /* renamed from: c  reason: collision with root package name */
        public final Notification f1266c;

        /* renamed from: d  reason: collision with root package name */
        public final String f1267d;

        /* JADX INFO: Access modifiers changed from: package-private */
        public d(String str, int i, Notification notification, String str2) {
            this.f1264a = str;
            this.f1265b = i;
            this.f1266c = notification;
            this.f1267d = str2;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/browser/trusted/g$e.class */
    static final class e {

        /* renamed from: a  reason: collision with root package name */
        public final boolean f1268a;

        /* JADX INFO: Access modifiers changed from: package-private */
        public e(boolean z) {
            this.f1268a = z;
        }

        public final Bundle a() {
            Bundle bundle = new Bundle();
            bundle.putBoolean("android.support.customtabs.trusted.NOTIFICATION_SUCCESS", this.f1268a);
            return bundle;
        }
    }

    g(android.support.a.a.b bVar, ComponentName componentName) {
        this.f1258a = bVar;
        this.f1259b = componentName;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(Bundle bundle, String str) {
        if (!bundle.containsKey(str)) {
            throw new IllegalArgumentException("Bundle must contain ".concat(String.valueOf(str)));
        }
    }
}
