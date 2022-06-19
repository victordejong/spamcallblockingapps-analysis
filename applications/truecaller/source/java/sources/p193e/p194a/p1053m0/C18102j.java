package p193e.p194a.p1053m0;

import android.content.ContentValues;
import android.net.Uri;
import com.truecaller.log.AssertionUtil;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p372b0.p413i.AbstractC8448a;
import p193e.p194a.p372b0.p413i.p414e.C8456a;
import p193e.p194a.p372b0.p430q.C8582g0;
/* renamed from: e.a.m0.j */
/* loaded from: classes8-dex2jar.jar:e/a/m0/j.class */
public class C18102j implements C8456a.AbstractC8462f, C8456a.AbstractC8464h, C8456a.AbstractC8461e {

    /* renamed from: e.a.m0.j$b */
    /* loaded from: classes8-dex2jar.jar:e/a/m0/j$b.class */
    public static class C18104b {

        /* renamed from: a */
        public final long f51020a;

        /* renamed from: b */
        public final int f51021b;

        /* renamed from: c */
        public final String f51022c;

        /* renamed from: d */
        public final boolean f51023d;

        public C18104b(long j, int i, String str, boolean z, C18103a c18103a) {
            this.f51020a = j;
            this.f51021b = i;
            this.f51022c = str;
            this.f51023d = z;
        }
    }

    @Override // p193e.p194a.p372b0.p413i.p414e.C8456a.AbstractC8464h
    /* renamed from: a */
    public int mo15463a(AbstractC8448a abstractC8448a, C8456a c8456a, Uri uri, ContentValues contentValues, String str, String[] strArr) {
        for (String str2 : contentValues.keySet()) {
            if (!C25225a.m3976Q(C17891a1.C17897f.f50893a, str2)) {
                AssertionUtil.AlwaysFatal.fail(C22128a.m8725C2("The ", str2, " column should never be updated directly"));
                return 0;
            }
        }
        return abstractC8448a.m28528m().update("msg_conversations", contentValues, str, strArr);
    }

    @Override // p193e.p194a.p372b0.p413i.p414e.C8456a.AbstractC8461e
    /* renamed from: b */
    public int mo15465b(AbstractC8448a abstractC8448a, C8456a c8456a, Uri uri, String str, String[] strArr) {
        AssertionUtil.AlwaysFatal.isNull(str, new String[0]);
        return abstractC8448a.m28528m().delete("msg_conversations", null, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x01cc  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0214  */
    /* JADX WARN: Type inference failed for: r0v81, types: [long] */
    @Override // p193e.p194a.p372b0.p413i.p414e.C8456a.AbstractC8462f
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.net.Uri mo15464c(p193e.p194a.p372b0.p413i.AbstractC8448a r12, p193e.p194a.p372b0.p413i.p414e.C8456a r13, android.net.Uri r14, android.content.ContentValues r15) {
        /*
            Method dump skipped, instructions count: 814
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1053m0.C18102j.mo15464c(e.a.b0.i.a, e.a.b0.i.e.a, android.net.Uri, android.content.ContentValues):android.net.Uri");
    }

    /* renamed from: d */
    public final int m15487d(C18104b[] c18104bArr, String str) {
        if (c18104bArr.length == 1 && str == null) {
            if (C8582g0.m28317c(c18104bArr[0].f51022c, c18104bArr[0].f51021b, C8582g0.m28330K(c18104bArr[0].f51022c))) {
                return 2;
            }
            return c18104bArr[0].f51023d ? 3 : 0;
        }
        return 1;
    }
}
