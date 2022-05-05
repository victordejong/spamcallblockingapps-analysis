package p081h.p160h.p179e.p180a.p187n;

import android.content.ContentValues;
import com.gogolook.whoscallsdk.core.num.data.NumInfo;
import com.google.gson.Gson;
import kotlin.Metadata;
import p081h.p160h.p179e.p180a.C6334a;
import p081h.p160h.p179e.p180a.p190p.C6428a;
import p081h.p160h.p179e.p180a.p190p.C6430c;
import p081h.p160h.p179e.p180a.p190p.C6432e;
import p626l.p631e0.C14938c;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0003\u0018�� \u00032\u00020\u0001:\u0001\u0003B\u0005¢\u0006\u0002\u0010\u0002¨\u0006\u0004"}, m815d2 = {"Lcom/gogolook/whoscallsdk/core/num/SqliteNumDbHelper;", "", "()V", "Companion", "whoscallSDK_core_whoscallDebug"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: h.h.e.a.n.f */
/* loaded from: classes2-dex2jar.jar:h/h/e/a/n/f.class */
public final class C6397f {

    /* renamed from: d */
    public static final C6398a f15922d = new C6398a(null);

    /* renamed from: a */
    public static final Gson f15919a = new Gson();

    /* renamed from: b */
    public static final String f15920b = f15920b;

    /* renamed from: b */
    public static final String f15920b = f15920b;

    /* renamed from: c */
    public static final String f15921c = f15921c;

    /* renamed from: c */
    public static final String f15921c = f15921c;

    /* renamed from: h.h.e.a.n.f$a */
    /* loaded from: classes2-dex2jar.jar:h/h/e/a/n/f$a.class */
    public static final class C6398a {
        public C6398a() {
        }

        public /* synthetic */ C6398a(C15145g gVar) {
            this();
        }

        /* renamed from: a */
        public final NumInfo m22814a(byte[] bArr) {
            byte[] a;
            if (bArr == null || (a = C6428a.m22652a(C6430c.m22640b(256), bArr)) == null) {
                return null;
            }
            return (NumInfo) m22820a().m30982a(new String(a, C14938c.f32979a), (Class<Object>) NumInfo.class);
        }

        /* renamed from: a */
        public final Gson m22820a() {
            return C6397f.f15919a;
        }

        /* JADX WARN: Type inference failed for: r0v23, types: [long] */
        /* JADX WARN: Type inference failed for: r14v2 */
        /* JADX WARN: Type inference failed for: r14v3 */
        /* JADX WARN: Type inference failed for: r14v4 */
        /* JADX WARN: Type inference failed for: r14v5 */
        /* JADX WARN: Unknown variable types count: 2 */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final p626l.C14984n<com.gogolook.whoscallsdk.core.num.data.NumInfo, java.lang.Long, java.lang.String> m22817a(java.lang.String r10) {
            /*
                Method dump skipped, instructions count: 201
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p081h.p160h.p179e.p180a.p187n.C6397f.C6398a.m22817a(java.lang.String):l.n");
        }

        /* renamed from: a */
        public final void m22819a(long j) {
            C6334a.m23211s().m23245a("numinfo", m22812c(), new String[]{String.valueOf(j)});
        }

        /* renamed from: a */
        public final void m22816a(String str, String str2, long j, NumInfo numInfo) {
            C15149k.m377b(str, "e164");
            C15149k.m377b(str2, "etag");
            C15149k.m377b(numInfo, "numInfo");
            byte[] a = m22818a(numInfo);
            if (a != null) {
                String b = C6432e.m22598b(str);
                ContentValues contentValues = new ContentValues();
                contentValues.put("e164", b);
                contentValues.put("etag", str2);
                contentValues.put("expiredtime", Long.valueOf(j));
                contentValues.put("data", a);
                C6334a.m23211s().m23251a("numinfo", contentValues);
            }
        }

        /* renamed from: a */
        public final void m22815a(String str, String str2, Long l, NumInfo numInfo) {
            byte[] a;
            C15149k.m377b(str, "e164");
            String b = C6432e.m22598b(str);
            ContentValues contentValues = new ContentValues();
            if (!(str2 == null || str2.length() == 0)) {
                contentValues.put("etag", str2);
            }
            if (l != null && l.longValue() > 0) {
                contentValues.put("expiredtime", l);
            }
            if (!(numInfo == null || (a = m22818a(numInfo)) == null)) {
                contentValues.put("data", a);
            }
            C6334a.m23211s().m23250a("numinfo", contentValues, m22813b(), new String[]{b});
        }

        /* renamed from: a */
        public final byte[] m22818a(NumInfo numInfo) {
            String a;
            if (numInfo == null || (a = m22820a().m30988a(numInfo)) == null) {
                return null;
            }
            byte[] b = C6430c.m22640b(256);
            byte[] bytes = a.getBytes(C14938c.f32979a);
            C15149k.m383a((Object) bytes, "(this as java.lang.String).getBytes(charset)");
            return C6428a.m22649b(b, bytes);
        }

        /* renamed from: b */
        public final String m22813b() {
            return C6397f.f15920b;
        }

        /* renamed from: c */
        public final String m22812c() {
            return C6397f.f15921c;
        }

        /* renamed from: d */
        public final void m22811d() {
            C6334a.m23211s().m23245a("numinfo", (String) null, (String[]) null);
        }
    }
}
