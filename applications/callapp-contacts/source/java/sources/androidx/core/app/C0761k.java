package androidx.core.app;

import android.app.Person;
import android.os.Bundle;
import androidx.core.graphics.drawable.IconCompat;
import net.pubnative.lite.sdk.models.APIAsset;
/* renamed from: androidx.core.app.k */
/* loaded from: classes-dex2jar.jar:androidx/core/app/k.class */
public final class C0761k {

    /* renamed from: a */
    CharSequence f3402a;

    /* renamed from: b */
    IconCompat f3403b;

    /* renamed from: c */
    String f3404c;

    /* renamed from: d */
    String f3405d;

    /* renamed from: e */
    boolean f3406e;

    /* renamed from: f */
    boolean f3407f;

    /* renamed from: androidx.core.app.k$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/app/k$a.class */
    public static final class C0762a {

        /* renamed from: a */
        public CharSequence f3408a;

        /* renamed from: b */
        public IconCompat f3409b;

        /* renamed from: c */
        String f3410c;

        /* renamed from: d */
        String f3411d;

        /* renamed from: e */
        boolean f3412e;

        /* renamed from: f */
        boolean f3413f;

        public C0762a() {
        }

        C0762a(C0761k c0761k) {
            this.f3408a = c0761k.f3402a;
            this.f3409b = c0761k.f3403b;
            this.f3410c = c0761k.f3404c;
            this.f3411d = c0761k.f3405d;
            this.f3412e = c0761k.f3406e;
            this.f3413f = c0761k.f3407f;
        }

        /* renamed from: a */
        public final C0761k m44535a() {
            return new C0761k(this);
        }
    }

    C0761k(C0762a c0762a) {
        this.f3402a = c0762a.f3408a;
        this.f3403b = c0762a.f3409b;
        this.f3404c = c0762a.f3410c;
        this.f3405d = c0762a.f3411d;
        this.f3406e = c0762a.f3412e;
        this.f3407f = c0762a.f3413f;
    }

    /* renamed from: a */
    public final Bundle m44537a() {
        Bundle bundle = new Bundle();
        bundle.putCharSequence("name", this.f3402a);
        IconCompat iconCompat = this.f3403b;
        bundle.putBundle(APIAsset.ICON, iconCompat != null ? iconCompat.m44364d() : null);
        bundle.putString("uri", this.f3404c);
        bundle.putString("key", this.f3405d);
        bundle.putBoolean("isBot", this.f3406e);
        bundle.putBoolean("isImportant", this.f3407f);
        return bundle;
    }

    /* renamed from: b */
    public final Person m44536b() {
        Person.Builder name = new Person.Builder().setName(this.f3402a);
        IconCompat iconCompat = this.f3403b;
        return name.setIcon(iconCompat != null ? iconCompat.m44366c() : null).setUri(this.f3404c).setKey(this.f3405d).setBot(this.f3406e).setImportant(this.f3407f).build();
    }
}
