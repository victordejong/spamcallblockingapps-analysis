package p459j.p460a.p582w0;

import com.gogolook.whoscallsdk.core.num.data.NumInfo;
import gogolook.callgogolook2.gson.NumberInfo;
import gogolook.callgogolook2.gson.UserProfile;
import java.util.HashMap;
import java.util.Map;
import p459j.p460a.p515i0.p516a.C12419d;
import p459j.p460a.p515i0.p516a.C12430i;
import p626l.p641z.p643d.C15149k;
/* renamed from: j.a.w0.w2 */
/* loaded from: classes3-dex2jar.jar:j/a/w0/w2.class */
public final class C14201w2 {
    static {
        new C14201w2();
    }

    /* renamed from: a */
    public static final NumberInfo m2236a(NumberInfo numberInfo) {
        C15149k.m377b(numberInfo, UserProfile.KEY_CONTACT_INFO_VALUE);
        NumberInfo numberInfo2 = new NumberInfo();
        m2235a(numberInfo2, numberInfo);
        return numberInfo2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x00f3, code lost:
        if ((!r0.isEmpty()) != false) goto L_0x00f6;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m2235a(gogolook.callgogolook2.gson.NumberInfo r33, gogolook.callgogolook2.gson.NumberInfo r34) {
        /*
            Method dump skipped, instructions count: 486
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p582w0.C14201w2.m2235a(gogolook.callgogolook2.gson.NumberInfo, gogolook.callgogolook2.gson.NumberInfo):void");
    }

    /* renamed from: a */
    public static final void m2234a(NumberInfo numberInfo, C12430i iVar, String str) {
        C15149k.m377b(numberInfo, "receiver$0");
        C15149k.m377b(iVar, "offlineDbItem");
        String str2 = iVar.f28019a;
        C15149k.m383a((Object) str2, "offlineDbItem.number");
        Map<String, Object> map = iVar.f28023e;
        Map<String, Object> map2 = map;
        if (!(map instanceof HashMap)) {
            map2 = null;
        }
        HashMap hashMap = (HashMap) map2;
        if (hashMap == null) {
            hashMap = new HashMap();
        }
        String str3 = iVar.f28020b;
        C15149k.m383a((Object) str3, "offlineDbItem.name");
        numberInfo.m28366a(new NumInfo(str3, null, null, null, null, null, null, null, null, null, null, hashMap, null, 0, 0, null, null, null, null, str2, 0, null, 0L, null, null, null, 0, 133691390, null));
        if (C12419d.m6220a(iVar.f28021c, 2)) {
            numberInfo.m28323h(1);
            if (str == null) {
                str = "";
            }
            numberInfo.m28326g(str);
        }
        if (C12419d.m6220a(iVar.f28021c, 1)) {
            numberInfo.m28323h(2);
        }
        numberInfo.m28315j(C12419d.m6220a(iVar.f28021c, 4) ? NumInfo.TYPE_WHOSCALLCARDV3 : NumberInfo.InfoType.MASSES.toString());
        numberInfo.m28364a(NumberInfo.InfoSource.OFFLINE_DB);
    }
}
