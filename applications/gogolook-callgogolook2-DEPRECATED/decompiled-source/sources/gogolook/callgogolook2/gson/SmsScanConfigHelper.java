package gogolook.callgogolook2.gson;

import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import p081h.p203i.p384e.C10099e;
import p081h.p203i.p384e.C10108n;
import p081h.p203i.p384e.p390x.C10173a;
import p459j.p460a.p568u.C13640c;
import p459j.p460a.p582w0.C13973d4;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0018\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007¨\u0006\u0007"}, m815d2 = {"Lgogolook/callgogolook2/gson/SmsScanConfigHelper;", "", "()V", "getConfig", "Lgogolook/callgogolook2/gson/SmsScanConfig;", "region", "", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/gson/SmsScanConfigHelper.class */
public final class SmsScanConfigHelper {
    public static final SmsScanConfigHelper INSTANCE = new SmsScanConfigHelper();

    /* renamed from: a */
    public static final SmsScanConfig m28183a(String str) {
        SmsScanConfig smsScanConfig;
        Object obj;
        C15149k.m377b(str, "region");
        try {
            List list = (List) new C10099e().m13388a().m30981a(C13640c.m3745d().m3744d("sms_scan_config"), new C10173a<List<? extends SmsScanConfig>>() { // from class: gogolook.callgogolook2.gson.SmsScanConfigHelper$getConfig$list$1
            }.m13276b());
            smsScanConfig = null;
            if (list != null) {
                Iterator it = list.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        obj = null;
                        break;
                    }
                    Object next = it.next();
                    String a = ((SmsScanConfig) next).m28187a();
                    if (a != null ? a.equals(str) : false) {
                        obj = next;
                        break;
                    }
                }
                smsScanConfig = (SmsScanConfig) obj;
            }
        } catch (C10108n e) {
            C13973d4.m2952a(new Exception("Parse sms scan config jason exception: " + e + ".toString()"));
            smsScanConfig = null;
        }
        return smsScanConfig;
    }
}
