package androidx.core.app;

import android.app.Person;
import android.os.Bundle;
import androidx.core.graphics.drawable.IconCompat;
import net.pubnative.lite.sdk.models.APIAsset;
/* loaded from: classes-dex2jar.jar:androidx/core/app/k.class */
public final class k {

    /* renamed from: a  reason: collision with root package name */
    CharSequence f1765a;

    /* renamed from: b  reason: collision with root package name */
    IconCompat f1766b;

    /* renamed from: c  reason: collision with root package name */
    String f1767c;

    /* renamed from: d  reason: collision with root package name */
    String f1768d;
    boolean e;
    boolean f;

    /* loaded from: classes-dex2jar.jar:androidx/core/app/k$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public CharSequence f1769a;

        /* renamed from: b  reason: collision with root package name */
        public IconCompat f1770b;

        /* renamed from: c  reason: collision with root package name */
        String f1771c;

        /* renamed from: d  reason: collision with root package name */
        String f1772d;
        boolean e;
        boolean f;

        public a() {
        }

        a(k kVar) {
            this.f1769a = kVar.f1765a;
            this.f1770b = kVar.f1766b;
            this.f1771c = kVar.f1767c;
            this.f1772d = kVar.f1768d;
            this.e = kVar.e;
            this.f = kVar.f;
        }

        public final k a() {
            return new k(this);
        }
    }

    k(a aVar) {
        this.f1765a = aVar.f1769a;
        this.f1766b = aVar.f1770b;
        this.f1767c = aVar.f1771c;
        this.f1768d = aVar.f1772d;
        this.e = aVar.e;
        this.f = aVar.f;
    }

    public final Bundle a() {
        Bundle bundle = new Bundle();
        bundle.putCharSequence("name", this.f1765a);
        IconCompat iconCompat = this.f1766b;
        bundle.putBundle(APIAsset.ICON, iconCompat != null ? iconCompat.d() : null);
        bundle.putString("uri", this.f1767c);
        bundle.putString("key", this.f1768d);
        bundle.putBoolean("isBot", this.e);
        bundle.putBoolean("isImportant", this.f);
        return bundle;
    }

    public final Person b() {
        Person.Builder name = new Person.Builder().setName(this.f1765a);
        IconCompat iconCompat = this.f1766b;
        return name.setIcon(iconCompat != null ? iconCompat.c() : null).setUri(this.f1767c).setKey(this.f1768d).setBot(this.e).setImportant(this.f).build();
    }
}
