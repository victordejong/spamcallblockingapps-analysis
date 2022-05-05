package p459j.p460a.p474c0.p491g.p496e0;

import android.content.Context;
import android.net.Uri;
import gogolook.callgogolook2.messaging.datamodel.MediaScratchFileProvider;
import p459j.p460a.p474c0.p491g.p496e0.C12010c;
import p459j.p460a.p474c0.p499h.AbstractAsyncTaskC12189n0;
import p459j.p460a.p474c0.p499h.C12151d;
/* renamed from: j.a.c0.g.e0.i */
/* loaded from: classes3-dex2jar.jar:j/a/c0/g/e0/i.class */
public class AsyncTaskC12042i extends AbstractAsyncTaskC12189n0<Void, Void, Void> {

    /* renamed from: e */
    public int f26975e;

    /* renamed from: f */
    public int f26976f;

    /* renamed from: g */
    public final float f26977g;

    /* renamed from: h */
    public final byte[] f26978h;

    /* renamed from: i */
    public final Context f26979i;

    /* renamed from: j */
    public final C12010c.AbstractC12022l f26980j;

    /* renamed from: k */
    public Uri f26981k;

    /* renamed from: l */
    public Exception f26982l;

    public AsyncTaskC12042i(int i, int i2, float f, byte[] bArr, Context context, C12010c.AbstractC12022l lVar) {
        C12151d.m6999b(f >= 0.0f && f <= 1.0f);
        C12151d.m7000b(bArr);
        C12151d.m7000b(context);
        C12151d.m7000b(lVar);
        this.f26975e = i;
        this.f26976f = i2;
        this.f26977g = f;
        this.f26978h = bArr;
        this.f26979i = context;
        this.f26980j = lVar;
        this.f26981k = MediaScratchFileProvider.m27783b("jpg");
    }

    /* JADX WARN: Not initialized variable reg: 14, insn: 0x032c: MOVE  (r0 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r14 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]), block:B:110:0x0326 */
    /* JADX WARN: Not initialized variable reg: 15, insn: 0x0326: MOVE  (r0 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r15 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]), block:B:110:0x0326 */
    /* JADX WARN: Removed duplicated region for block: B:113:0x0333  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x033c  */
    /* JADX WARN: Removed duplicated region for block: B:140:0x0345 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:152:0x02e1 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:171:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:95:0x02d1  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x02d9  */
    /* renamed from: a  reason: avoid collision after fix types in other method */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Void mo6854a(java.lang.Void... r6) {
        /*
            Method dump skipped, instructions count: 932
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p474c0.p491g.p496e0.AsyncTaskC12042i.mo6854a(java.lang.Void[]):java.lang.Void");
    }

    /* renamed from: a */
    public void onPostExecute(Void r7) {
        Uri uri = this.f26981k;
        if (uri != null) {
            this.f26980j.mo7467a(uri, "image/jpeg", this.f26975e, this.f26976f);
            return;
        }
        C12151d.m7000b(this.f26982l);
        this.f26980j.mo7466a(this.f26982l);
    }
}
