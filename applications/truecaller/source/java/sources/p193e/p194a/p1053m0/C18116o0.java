package p193e.p194a.p1053m0;

import android.content.ContentValues;
import android.net.Uri;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p372b0.p413i.AbstractC8448a;
import p193e.p194a.p372b0.p413i.p414e.C8456a;
import p193e.p194a.p372b0.p430q.C8582g0;
import s1.z.c.l;
/* renamed from: e.a.m0.o0 */
/* loaded from: classes8-dex2jar.jar:e/a/m0/o0.class */
public final class C18116o0 implements C8456a.AbstractC8464h {
    @Override // p193e.p194a.p372b0.p413i.p414e.C8456a.AbstractC8464h
    /* renamed from: a */
    public int mo15463a(AbstractC8448a abstractC8448a, C8456a c8456a, Uri uri, ContentValues contentValues, String str, String[] strArr) {
        l.e(abstractC8448a, "provider");
        l.e(c8456a, "helper");
        l.e(uri, "uri");
        l.e(contentValues, "values");
        contentValues.remove("_id");
        contentValues.remove("normalized_destination");
        contentValues.remove("raw_destination");
        contentValues.remove("type");
        contentValues.remove("tc_im_peer_id");
        int update = abstractC8448a.m28528m().update("msg_participants", contentValues, str, strArr);
        if (update != 0) {
            abstractC8448a.m28532i(C17891a1.C17902k.m15675H());
            abstractC8448a.m28532i(C17891a1.C17902k.m15672I());
            abstractC8448a.m28532i(C8582g0.m28294z());
        }
        return update;
    }
}
