package com.asus.privatecontacts.a;

import android.content.ContentValues;
import android.content.Context;
import com.android.contacts.model.a;
import com.android.contacts.model.a.b;
import com.android.contacts.vcard.SelectAccountActivity;
/* loaded from: classes-dex2jar.jar:com/asus/privatecontacts/a/d.class */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    public Context f2995a;

    /* renamed from: b  reason: collision with root package name */
    public f f2996b;
    public c c;
    private b d = null;

    public d(Context context, f fVar, c cVar) {
        this.f2995a = context;
        this.f2996b = fVar;
        this.c = cVar;
    }

    public final ContentValues a() {
        return this.c != null ? this.c.f2994a : null;
    }

    public final String b() {
        return this.c != null ? this.c.f2994a.getAsString("mimetype") : null;
    }

    public final boolean c() {
        return this.c != null ? this.c.f2994a.getAsBoolean("is_primary").booleanValue() : false;
    }

    public final b d() {
        b bVar;
        if (this.f2995a == null || this.f2996b == null || this.c == null) {
            bVar = null;
        } else {
            a a2 = a.a(this.f2995a);
            if (this.d == null && a2 != null) {
                this.d = a2.a(this.f2996b.f2998a.getAsString(SelectAccountActivity.ACCOUNT_TYPE), this.f2996b.f2998a.getAsString(SelectAccountActivity.DATA_SET), this.c.f2994a.getAsString("mimetype"));
            }
            bVar = this.d;
        }
        return bVar;
    }

    public final String e() {
        if (this.f2996b == null) {
            throw new IllegalStateException("mRawContact must be non-null to call getDataKind()");
        }
        b d = d();
        String str = null;
        if (d != null) {
            if (d.j == null) {
                str = null;
            } else {
                CharSequence a2 = d.j.a(this.f2995a, this.c.f2994a);
                str = null;
                if (a2 != null) {
                    str = a2.toString();
                }
            }
        }
        return str;
    }
}
