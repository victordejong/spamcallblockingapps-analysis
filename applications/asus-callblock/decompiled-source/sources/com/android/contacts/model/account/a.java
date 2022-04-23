package com.android.contacts.model.account;

import android.content.ContentValues;
import android.content.Context;
import android.graphics.drawable.Drawable;
import com.android.contacts.b;
import com.android.contacts.util.PhoneCapabilityTester;
import com.asus.updatesdk.BuildConfig;
import com.google.a.b.s;
import java.text.Collator;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/android/contacts/model/account/a.class */
public abstract class a {
    private static Comparator<com.android.contacts.model.a.b> k = new Comparator<com.android.contacts.model.a.b>() { // from class: com.android.contacts.model.account.a.1
        @Override // java.util.Comparator
        public final /* bridge */ /* synthetic */ int compare(com.android.contacts.model.a.b bVar, com.android.contacts.model.a.b bVar2) {
            return bVar.f - bVar2.f;
        }
    };
    public String c;
    public String d;
    public int e;
    public int f;
    protected boolean h;

    /* renamed from: a  reason: collision with root package name */
    public String f2000a = null;

    /* renamed from: b  reason: collision with root package name */
    public String f2001b = null;
    public boolean g = false;
    private ArrayList<com.android.contacts.model.a.b> i = new ArrayList<>();
    private HashMap<String, com.android.contacts.model.a.b> j = s.a();

    /* renamed from: com.android.contacts.model.account.a$a  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/model/account/a$a.class */
    protected static final class C0050a extends Exception {
        public C0050a(String str) {
            super(str);
        }

        public C0050a(String str, Exception exc) {
            super(str, exc);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/model/account/a$b.class */
    public static final class b implements Comparator<a> {

        /* renamed from: a  reason: collision with root package name */
        private final Context f2002a;

        /* renamed from: b  reason: collision with root package name */
        private final Collator f2003b = Collator.getInstance();

        public b(Context context) {
            this.f2002a = context;
        }

        private String a(a aVar) {
            CharSequence a2 = aVar.a(this.f2002a);
            return a2 == null ? BuildConfig.FLAVOR : a2.toString();
        }

        @Override // java.util.Comparator
        public final /* synthetic */ int compare(a aVar, a aVar2) {
            return this.f2003b.compare(a(aVar), a(aVar2));
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/model/account/a$c.class */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        public String f2004a;

        /* renamed from: b  reason: collision with root package name */
        public int f2005b;
        public int c;
        public int d;
        public boolean e;
        public boolean f;
        public boolean g;

        private c(String str, int i) {
            this.f2004a = str;
            this.f2005b = i;
        }

        public c(String str, int i, int i2) {
            this(str, i);
            this.c = i2;
        }

        public final String toString() {
            return getClass().getSimpleName() + ": column=" + this.f2004a + " titleRes=" + this.f2005b + " inputType=" + this.c + " minLines=" + this.d + " optional=" + this.e + " shortForm=" + this.f + " longForm=" + this.g;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/model/account/a$d.class */
    public static class d {

        /* renamed from: a  reason: collision with root package name */
        public int f2006a;

        /* renamed from: b  reason: collision with root package name */
        public int f2007b;
        public boolean c;
        public int d = -1;
        public String e;

        public d(int i, int i2) {
            this.f2006a = i;
            this.f2007b = i2;
        }

        public boolean equals(Object obj) {
            boolean z = false;
            if (obj instanceof d) {
                z = false;
                if (((d) obj).f2006a == this.f2006a) {
                    z = true;
                }
            }
            return z;
        }

        public int hashCode() {
            return this.f2006a;
        }

        public String toString() {
            return getClass().getSimpleName() + " rawValue=" + this.f2006a + " labelRes=" + this.f2007b + " secondary=" + this.c + " specificMax=" + this.d + " customColumn=" + this.e;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/model/account/a$e.class */
    public static final class e extends d {
        public boolean f;

        public e(int i, int i2) {
            super(i, i2);
        }

        @Override // com.android.contacts.model.account.a.d
        public final String toString() {
            return super.toString() + " mYearOptional=" + this.f;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/model/account/a$f.class */
    public interface f {
        CharSequence a(Context context, ContentValues contentValues);
    }

    private static CharSequence a(Context context, String str, int i, String str2) {
        CharSequence charSequence;
        if (i == -1 || str == null) {
            charSequence = str2;
            if (i != -1) {
                if (!PhoneCapabilityTester.IsAsusDevice() && str2 != null) {
                    if (str2.equals(b.a.d)) {
                        charSequence = context.getText(2131756143);
                    } else if (str2.equals(b.a.f612b)) {
                        charSequence = PhoneCapabilityTester.isVerizon() ? PhoneCapabilityTester.isVerizonPad() ? context.getText(2131755022) : context.getText(2131755739) : context.getText(2131755021);
                    }
                }
                charSequence = context.getText(i);
            }
        } else {
            charSequence = context.getPackageManager().getText(str, i, null);
        }
        return charSequence;
    }

    public final Drawable a(Context context, String str) {
        Drawable drawable = null;
        if (this.e != -1 && this.d != null) {
            drawable = context.getPackageManager().getDrawable(this.d, this.f, null);
        } else if (this.e != -1) {
            if (this.f2000a != null) {
                if (this.f2000a.equals(b.a.d)) {
                    drawable = (str == null || !str.equals(b.a.c)) ? (str == null || !str.equals("SIM2")) ? context.getResources().getDrawable(2131165294) : context.getResources().getDrawable(2131165293) : context.getResources().getDrawable(2131165292);
                } else if (this.f2000a.equals(b.a.f612b)) {
                    drawable = context.getResources().getDrawable(2131165312);
                }
            }
            drawable = context.getResources().getDrawable(this.f);
        }
        return drawable;
    }

    public final com.android.contacts.model.a.b a(com.android.contacts.model.a.b bVar) {
        if (bVar.f1997b == null) {
            throw new C0050a("null is not a valid mime type");
        } else if (this.j.get(bVar.f1997b) != null) {
            throw new C0050a("mime type '" + bVar.f1997b + "' is already registered");
        } else {
            bVar.f1996a = this.c;
            this.i.add(bVar);
            this.j.put(bVar.f1997b, bVar);
            return bVar;
        }
    }

    public final com.android.contacts.model.a.b a(String str) {
        return this.j.get(str);
    }

    public final CharSequence a(Context context) {
        return a(context, this.d, this.e, this.f2000a);
    }

    public final boolean a() {
        return this.h;
    }

    public final CharSequence b(Context context) {
        return a(context, this.d, m(), BuildConfig.FLAVOR);
    }

    public boolean b() {
        return true;
    }

    public final CharSequence c(Context context) {
        CharSequence a2 = a(context, this.d, n(), null);
        CharSequence charSequence = a2;
        if (a2 == null) {
            charSequence = context.getText(2131756457);
        }
        return charSequence;
    }

    public boolean c() {
        return false;
    }

    public final Drawable d(Context context) {
        Drawable drawable = null;
        if (this.e != -1 && this.d != null) {
            drawable = context.getPackageManager().getDrawable(this.d, this.f, null);
        } else if (this.e != -1) {
            drawable = context.getResources().getDrawable(this.f);
        }
        return drawable;
    }

    public abstract boolean d();

    public String e() {
        return null;
    }

    public String f() {
        return null;
    }

    public String g() {
        return null;
    }

    public String h() {
        return null;
    }

    public String i() {
        return this.d;
    }

    public String j() {
        return null;
    }

    public String k() {
        return null;
    }

    public String l() {
        return null;
    }

    protected int m() {
        return -1;
    }

    protected int n() {
        return -1;
    }

    public final com.android.contacts.model.account.b o() {
        return com.android.contacts.model.account.b.a(this.f2000a, this.f2001b);
    }

    public List<String> p() {
        return new ArrayList();
    }

    public abstract boolean q();

    public final ArrayList<com.android.contacts.model.a.b> r() {
        Collections.sort(this.i, k);
        return this.i;
    }
}
