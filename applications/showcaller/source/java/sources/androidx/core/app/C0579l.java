package androidx.core.app;

import android.app.Person;
import androidx.core.graphics.drawable.IconCompat;
/* renamed from: androidx.core.app.l */
/* loaded from: classes-dex2jar.jar:androidx/core/app/l.class */
public class C0579l {

    /* renamed from: a */
    CharSequence f2937a;

    /* renamed from: b */
    IconCompat f2938b;

    /* renamed from: c */
    String f2939c;

    /* renamed from: d */
    String f2940d;

    /* renamed from: e */
    boolean f2941e;

    /* renamed from: f */
    boolean f2942f;

    /* renamed from: a */
    public IconCompat m33380a() {
        return this.f2938b;
    }

    /* renamed from: b */
    public String m33379b() {
        return this.f2940d;
    }

    /* renamed from: c */
    public CharSequence m33378c() {
        return this.f2937a;
    }

    /* renamed from: d */
    public String m33377d() {
        return this.f2939c;
    }

    /* renamed from: e */
    public boolean m33376e() {
        return this.f2941e;
    }

    /* renamed from: f */
    public boolean m33375f() {
        return this.f2942f;
    }

    /* renamed from: g */
    public String m33374g() {
        String str = this.f2939c;
        if (str != null) {
            return str;
        }
        if (this.f2937a == null) {
            return "";
        }
        return "name:" + ((Object) this.f2937a);
    }

    /* renamed from: h */
    public Person m33373h() {
        return new Person.Builder().setName(m33378c()).setIcon(m33380a() != null ? m33380a().m33232p() : null).setUri(m33377d()).setKey(m33379b()).setBot(m33376e()).setImportant(m33375f()).build();
    }
}
