package p193e.p194a.p1053m0;

import android.content.ContentValues;
import android.database.Cursor;
import android.net.Uri;
import android.os.CancellationSignal;
import p193e.p194a.p372b0.p413i.AbstractC8448a;
import p193e.p194a.p372b0.p413i.p414e.C8456a;
import s1.f0.q;
import s1.z.c.l;
/* renamed from: e.a.m0.g0 */
/* loaded from: classes8-dex2jar.jar:e/a/m0/g0.class */
public final class C18097g0 implements C8456a.AbstractC8463g, C8456a.AbstractC8464h, C8456a.AbstractC8461e {
    @Override // p193e.p194a.p372b0.p413i.p414e.C8456a.AbstractC8464h
    /* renamed from: a */
    public int mo15463a(AbstractC8448a abstractC8448a, C8456a c8456a, Uri uri, ContentValues contentValues, String str, String[] strArr) {
        l.e(abstractC8448a, "provider");
        l.e(c8456a, "helper");
        l.e(uri, "uri");
        l.e(contentValues, "values");
        return abstractC8448a.m28528m().update("msg_messages", contentValues, m15489d(uri, str), strArr);
    }

    @Override // p193e.p194a.p372b0.p413i.p414e.C8456a.AbstractC8461e
    /* renamed from: b */
    public int mo15465b(AbstractC8448a abstractC8448a, C8456a c8456a, Uri uri, String str, String[] strArr) {
        l.e(abstractC8448a, "provider");
        l.e(c8456a, "helper");
        l.e(uri, "uri");
        return abstractC8448a.m28528m().delete("msg_messages", m15489d(uri, str), strArr);
    }

    @Override // p193e.p194a.p372b0.p413i.p414e.C8456a.AbstractC8463g
    /* renamed from: c */
    public Cursor mo15459c(AbstractC8448a abstractC8448a, C8456a c8456a, Uri uri, String[] strArr, String str, String[] strArr2, String str2, CancellationSignal cancellationSignal) {
        l.e(abstractC8448a, "provider");
        l.e(c8456a, "helper");
        l.e(uri, "uri");
        return abstractC8448a.m28528m().query("msg_messages", strArr, m15489d(uri, str), strArr2, null, null, str2);
    }

    /* renamed from: d */
    public final String m15489d(Uri uri, String str) {
        String queryParameter = uri.getQueryParameter("transport");
        Integer h = queryParameter != null ? q.h(queryParameter) : null;
        if (h != null) {
            if (str == null) {
                str = "transport = " + h;
            } else {
                str = '(' + str + ") AND transport = " + h;
            }
        }
        return str;
    }
}
