package com.android.contacts.model.a;

import android.content.ContentValues;
import android.util.Log;
import com.android.contacts.model.e;
import com.asus.updatesdk.BuildConfig;
/* loaded from: classes-dex2jar.jar:com/android/contacts/model/a/a.class */
public class a {

    /* renamed from: a  reason: collision with root package name */
    public final ContentValues f1994a;

    /* renamed from: b  reason: collision with root package name */
    public final e f1995b;
    public boolean c = false;
    private b d;

    /* JADX INFO: Access modifiers changed from: protected */
    public a(e eVar, ContentValues contentValues) {
        this.f1994a = contentValues;
        this.f1995b = eVar;
    }

    public static a a(e eVar, ContentValues contentValues) {
        String asString = contentValues.getAsString("mimetype");
        return "vnd.android.cursor.item/group_membership".equals(asString) ? new e(eVar, contentValues) : "vnd.android.cursor.item/name".equals(asString) ? new o(eVar, contentValues) : "vnd.android.cursor.item/phone_v2".equals(asString) ? new k(eVar, contentValues) : "vnd.android.cursor.item/email_v2".equals(asString) ? new c(eVar, contentValues) : "vnd.android.cursor.item/postal-address_v2".equals(asString) ? new p(eVar, contentValues) : "vnd.android.cursor.item/im".equals(asString) ? new g(eVar, contentValues) : "vnd.android.cursor.item/organization".equals(asString) ? new j(eVar, contentValues) : "vnd.android.cursor.item/nickname".equals(asString) ? new h(eVar, contentValues) : "vnd.android.cursor.item/note".equals(asString) ? new i(eVar, contentValues) : "vnd.android.cursor.item/website".equals(asString) ? new q(eVar, contentValues) : "vnd.android.cursor.item/sip_address".equals(asString) ? new n(eVar, contentValues) : "vnd.android.cursor.item/contact_event".equals(asString) ? new d(eVar, contentValues) : "vnd.android.cursor.item/relation".equals(asString) ? new m(eVar, contentValues) : "vnd.android.cursor.item/identity".equals(asString) ? new f(eVar, contentValues) : "vnd.android.cursor.item/photo".equals(asString) ? new l(eVar, contentValues) : new a(eVar, contentValues);
    }

    public final long a() {
        return this.f1994a.getAsLong("_id").longValue();
    }

    public final void a(long j) {
        this.f1994a.put("raw_contact_id", Long.valueOf(j));
    }

    public final String b() {
        return this.f1994a.getAsString("mimetype");
    }

    public final boolean c() {
        Integer asInteger = this.f1994a.getAsInteger("is_primary");
        return (asInteger == null || asInteger.intValue() == 0) ? false : true;
    }

    public final boolean d() {
        Integer asInteger = this.f1994a.getAsInteger("is_super_primary");
        return (asInteger == null || asInteger.intValue() == 0) ? false : true;
    }

    public final b e() {
        if (this.f1995b == null) {
            throw new IllegalStateException("mRawContact must be non-null to call getDataKind()");
        }
        if (this.d == null) {
            this.d = (this.f1995b == null ? null : this.f1995b.a()).a(this.f1995b.d(), this.f1995b.e(), b());
        }
        return this.d;
    }

    public final boolean f() {
        String str = e().l;
        return str != null && this.f1994a.containsKey(str);
    }

    public final int g() {
        int i;
        String str = e().l;
        Object obj = this.f1994a.get(str);
        if (obj != null) {
            try {
                i = ((Number) obj) == null ? 0 : ((Number) obj).intValue();
            } catch (ClassCastException e) {
                if (obj instanceof CharSequence) {
                    try {
                        i = Integer.valueOf(obj.toString()).intValue();
                    } catch (NumberFormatException e2) {
                        Log.e("DataItem", "Cannot parse Integer value for " + obj + " at key " + str);
                        i = 0;
                    }
                } else {
                    Log.e("DataItem", "Cannot cast value for " + str + " to a Integer: " + obj, e);
                    i = 0;
                }
            }
        } else {
            i = 0;
        }
        return i;
    }

    public final String h() {
        if (this.f1995b == null) {
            throw new IllegalStateException("mRawContact must be non-null to call getDataKind()");
        }
        b e = e();
        String str = null;
        if (e != null) {
            if (e.j == null) {
                str = null;
            } else {
                CharSequence a2 = e.j.a(this.f1995b.f2031a, this.f1994a);
                str = null;
                if (a2 != null) {
                    str = a2.toString();
                }
            }
        }
        return str;
    }

    public String i() {
        return h();
    }

    public final String j() {
        b e = e();
        return (e.c == -1 || e.c == 0) ? BuildConfig.FLAVOR : this.f1995b.f2031a.getString(e.c);
    }
}
