package p1727n3.p1807k.p1808a;

import android.app.Person;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.PorterDuff;
import android.os.Bundle;
import android.os.Parcelable;
import androidx.core.graphics.drawable.IconCompat;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import java.util.Objects;
/* renamed from: n3.k.a.y */
/* loaded from: classes-dex2jar.jar:n3/k/a/y.class */
public class C26464y {

    /* renamed from: a */
    public CharSequence f74216a;

    /* renamed from: b */
    public IconCompat f74217b;

    /* renamed from: c */
    public String f74218c;

    /* renamed from: d */
    public String f74219d;

    /* renamed from: e */
    public boolean f74220e;

    /* renamed from: f */
    public boolean f74221f;

    /* renamed from: n3.k.a.y$a */
    /* loaded from: classes-dex2jar.jar:n3/k/a/y$a.class */
    public static class C26465a {

        /* renamed from: a */
        public CharSequence f74222a;

        /* renamed from: b */
        public IconCompat f74223b;

        /* renamed from: c */
        public String f74224c;

        /* renamed from: d */
        public String f74225d;

        /* renamed from: e */
        public boolean f74226e;

        /* renamed from: f */
        public boolean f74227f;
    }

    public C26464y(C26465a c26465a) {
        this.f74216a = c26465a.f74222a;
        this.f74217b = c26465a.f74223b;
        this.f74218c = c26465a.f74224c;
        this.f74219d = c26465a.f74225d;
        this.f74220e = c26465a.f74226e;
        this.f74221f = c26465a.f74227f;
    }

    /* renamed from: a */
    public static C26464y m1805a(Person person) {
        C26465a c26465a = new C26465a();
        c26465a.f74222a = person.getName();
        c26465a.f74223b = person.getIcon() != null ? IconCompat.f(person.getIcon()) : null;
        c26465a.f74224c = person.getUri();
        c26465a.f74225d = person.getKey();
        c26465a.f74226e = person.isBot();
        c26465a.f74227f = person.isImportant();
        return new C26464y(c26465a);
    }

    /* renamed from: b */
    public static C26464y m1804b(Bundle bundle) {
        IconCompat iconCompat;
        Bundle bundle2 = bundle.getBundle(RemoteMessageConst.Notification.ICON);
        C26465a c26465a = new C26465a();
        c26465a.f74222a = bundle.getCharSequence(AnalyticsConstants.NAME);
        if (bundle2 != null) {
            PorterDuff.Mode mode = IconCompat.k;
            int i = bundle2.getInt("type");
            iconCompat = new IconCompat(i);
            iconCompat.e = bundle2.getInt("int1");
            iconCompat.f = bundle2.getInt("int2");
            iconCompat.j = bundle2.getString("string1");
            if (bundle2.containsKey("tint_list")) {
                iconCompat.g = (ColorStateList) bundle2.getParcelable("tint_list");
            }
            if (bundle2.containsKey("tint_mode")) {
                iconCompat.h = PorterDuff.Mode.valueOf(bundle2.getString("tint_mode"));
            }
            switch (i) {
                case -1:
                case 1:
                case 5:
                    iconCompat.b = bundle2.getParcelable("obj");
                    break;
                case 2:
                case 4:
                case 6:
                    iconCompat.b = bundle2.getString("obj");
                    break;
                case 3:
                    iconCompat.b = bundle2.getByteArray("obj");
                    break;
            }
            c26465a.f74223b = iconCompat;
            c26465a.f74224c = bundle.getString("uri");
            c26465a.f74225d = bundle.getString(AnalyticsConstants.KEY);
            c26465a.f74226e = bundle.getBoolean("isBot");
            c26465a.f74227f = bundle.getBoolean("isImportant");
            return new C26464y(c26465a);
        }
        iconCompat = null;
        c26465a.f74223b = iconCompat;
        c26465a.f74224c = bundle.getString("uri");
        c26465a.f74225d = bundle.getString(AnalyticsConstants.KEY);
        c26465a.f74226e = bundle.getBoolean("isBot");
        c26465a.f74227f = bundle.getBoolean("isImportant");
        return new C26464y(c26465a);
    }

    /* renamed from: c */
    public Person m1803c() {
        Person.Builder name = new Person.Builder().setName(this.f74216a);
        IconCompat iconCompat = this.f74217b;
        return name.setIcon(iconCompat != null ? iconCompat.u() : null).setUri(this.f74218c).setKey(this.f74219d).setBot(this.f74220e).setImportant(this.f74221f).build();
    }

    /* renamed from: d */
    public Bundle m1802d() {
        Bundle bundle;
        Bundle bundle2 = new Bundle();
        bundle2.putCharSequence(AnalyticsConstants.NAME, this.f74216a);
        IconCompat iconCompat = this.f74217b;
        if (iconCompat != null) {
            Objects.requireNonNull(iconCompat);
            Bundle bundle3 = new Bundle();
            switch (iconCompat.a) {
                case -1:
                    bundle3.putParcelable("obj", (Parcelable) iconCompat.b);
                    break;
                case 0:
                default:
                    throw new IllegalArgumentException("Invalid icon");
                case 1:
                case 5:
                    bundle3.putParcelable("obj", (Bitmap) iconCompat.b);
                    break;
                case 2:
                case 4:
                case 6:
                    bundle3.putString("obj", (String) iconCompat.b);
                    break;
                case 3:
                    bundle3.putByteArray("obj", (byte[]) iconCompat.b);
                    break;
            }
            bundle3.putInt("type", iconCompat.a);
            bundle3.putInt("int1", iconCompat.e);
            bundle3.putInt("int2", iconCompat.f);
            bundle3.putString("string1", iconCompat.j);
            ColorStateList colorStateList = iconCompat.g;
            if (colorStateList != null) {
                bundle3.putParcelable("tint_list", colorStateList);
            }
            PorterDuff.Mode mode = iconCompat.h;
            bundle = bundle3;
            if (mode != IconCompat.k) {
                bundle3.putString("tint_mode", mode.name());
                bundle = bundle3;
            }
        } else {
            bundle = null;
        }
        bundle2.putBundle(RemoteMessageConst.Notification.ICON, bundle);
        bundle2.putString("uri", this.f74218c);
        bundle2.putString(AnalyticsConstants.KEY, this.f74219d);
        bundle2.putBoolean("isBot", this.f74220e);
        bundle2.putBoolean("isImportant", this.f74221f);
        return bundle2;
    }
}
