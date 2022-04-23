package p459j.p460a.p474c0.p475c;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import p459j.p460a.p474c0.p499h.C12151d;
/* renamed from: j.a.c0.c.f */
/* loaded from: classes2-dex2jar.jar:j/a/c0/c/f.class */
public class C11527f {

    /* renamed from: a */
    public final Uri f25748a;

    /* renamed from: b */
    public final String[] f25749b;

    /* renamed from: c */
    public final String f25750c;

    /* renamed from: d */
    public final String[] f25751d;

    /* renamed from: e */
    public final String f25752e;

    /* renamed from: f */
    public final Context f25753f;

    public C11527f(Context context, Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        this.f25753f = context;
        this.f25748a = uri;
        this.f25749b = strArr;
        this.f25750c = str;
        this.f25751d = strArr2;
        this.f25752e = str2;
    }

    /* renamed from: b */
    public static C11527f m9266b() {
        return new C11527f(null, null, null, null, null, null);
    }

    /* renamed from: a */
    public Cursor m9267a() {
        C12151d.m7002b();
        if (this.f25748a == null) {
            return null;
        }
        return this.f25753f.getContentResolver().query(this.f25748a, this.f25749b, this.f25750c, this.f25751d, this.f25752e);
    }

    /* renamed from: a */
    public C11520b mo9204a(String str) {
        return new C11520b(str, this.f25753f, this.f25748a, this.f25749b, this.f25750c, this.f25751d, this.f25752e);
    }
}
