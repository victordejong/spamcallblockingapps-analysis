package p459j.p460a.p474c0.p475c.p478y;

import android.database.Cursor;
import p081h.p093b.p099c.p100a.C5607h;
import p459j.p460a.p474c0.p499h.C12151d;
import p459j.p460a.p474c0.p499h.C12195p;
import p459j.p460a.p474c0.p499h.C12197q;
/* renamed from: j.a.c0.c.y.a */
/* loaded from: classes2-dex2jar.jar:j/a/c0/c/y/a.class */
public class C11593a {

    /* renamed from: a */
    public C5607h f25908a;

    /* renamed from: b */
    public CharSequence f25909b;

    /* renamed from: c */
    public CharSequence f25910c;

    /* renamed from: d */
    public String f25911d;

    /* renamed from: a */
    public String m9030a() {
        return this.f25911d;
    }

    /* renamed from: a */
    public void m9029a(Cursor cursor, String str) {
        long j = cursor.getLong(7);
        boolean z = false;
        long j2 = cursor.getLong(0);
        String string = cursor.getString(6);
        String string2 = cursor.getString(1);
        String string3 = cursor.getString(2);
        String string4 = cursor.getString(3);
        int i = cursor.getInt(4);
        String string5 = cursor.getString(5);
        this.f25909b = null;
        this.f25910c = null;
        this.f25911d = str;
        if (cursor.isFirst() || !cursor.moveToPrevious()) {
            z = true;
        } else {
            if (j2 != cursor.getLong(0)) {
                z = true;
            }
            cursor.moveToNext();
        }
        this.f25908a = C12197q.m6825a(string2, 40, string4, i, string5, j2, string, j, string3, z);
    }

    /* renamed from: a */
    public void m9028a(C5607h hVar, CharSequence charSequence, CharSequence charSequence2, boolean z) {
        C12151d.m6999b(hVar.m25016n());
        this.f25908a = hVar;
        this.f25909b = charSequence;
        this.f25910c = charSequence2;
        this.f25911d = null;
    }

    /* renamed from: b */
    public long m9027b() {
        return this.f25908a.m25039a();
    }

    /* renamed from: c */
    public CharSequence m9026c() {
        CharSequence charSequence = this.f25910c;
        if (charSequence == null) {
            charSequence = C12195p.m6841a(this.f25908a);
        }
        CharSequence charSequence2 = charSequence;
        if (charSequence == null) {
            charSequence2 = "";
        }
        return charSequence2;
    }

    /* renamed from: d */
    public String m9025d() {
        return this.f25908a.m25026d();
    }

    /* renamed from: e */
    public int m9024e() {
        return this.f25908a.m25025e();
    }

    /* renamed from: f */
    public CharSequence m9023f() {
        CharSequence charSequence = this.f25909b;
        if (charSequence == null) {
            charSequence = C12195p.m6838b(this.f25908a);
        }
        CharSequence charSequence2 = charSequence;
        if (charSequence == null) {
            charSequence2 = "";
        }
        return charSequence2;
    }

    /* renamed from: g */
    public boolean m9022g() {
        return C12195p.m6836c(this.f25908a) || C12195p.m6835d(this.f25908a);
    }

    /* renamed from: h */
    public String m9021h() {
        return this.f25908a.m25021i();
    }

    /* renamed from: i */
    public C5607h m9020i() {
        return this.f25908a;
    }
}
