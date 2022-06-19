package p193e.p194a.p1053m0;

import android.content.ContentValues;
import android.net.Uri;
import p193e.p194a.p1053m0.p1058d1.AbstractC18091a;
import p193e.p194a.p372b0.p413i.AbstractC8448a;
import p193e.p194a.p372b0.p413i.p414e.C8456a;
import s1.z.c.l;
/* renamed from: e.a.m0.r */
/* loaded from: classes8-dex2jar.jar:e/a/m0/r.class */
public final class C18122r implements C8456a.AbstractC8459c {

    /* renamed from: a */
    public final AbstractC18091a f51040a;

    public C18122r(AbstractC18091a abstractC18091a) {
        l.e(abstractC18091a, "historyChangeListener");
        this.f51040a = abstractC18091a;
    }

    /* renamed from: a */
    public int m15479a(AbstractC8448a abstractC8448a, C8456a c8456a, Uri uri, ContentValues contentValues, String str, String[] strArr, int i) {
        l.e(abstractC8448a, "provider");
        l.e(c8456a, "helper");
        l.e(uri, "uri");
        l.e(contentValues, "values");
        if (i > 0) {
            this.f51040a.mo15495a(contentValues);
        }
        return i;
    }
}
