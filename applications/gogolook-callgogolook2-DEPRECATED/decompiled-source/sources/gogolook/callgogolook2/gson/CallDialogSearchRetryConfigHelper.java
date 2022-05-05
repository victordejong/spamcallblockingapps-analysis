package gogolook.callgogolook2.gson;

import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import p081h.p203i.p384e.C10099e;
import p081h.p203i.p384e.p390x.C10173a;
import p459j.p460a.p568u.C13640c;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0018\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007¨\u0006\u0007"}, m815d2 = {"Lgogolook/callgogolook2/gson/CallDialogSearchRetryConfigHelper;", "", "()V", "getConfig", "Lgogolook/callgogolook2/gson/CallDialogSearchRetryConfig;", "region", "", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/gson/CallDialogSearchRetryConfigHelper.class */
public final class CallDialogSearchRetryConfigHelper {
    public static final CallDialogSearchRetryConfigHelper INSTANCE = new CallDialogSearchRetryConfigHelper();

    /* renamed from: a */
    public static final CallDialogSearchRetryConfig m28550a(String str) {
        C15149k.m377b(str, "region");
        List list = (List) new C10099e().m13388a().m30981a(C13640c.m3745d().m3744d("call_dialog_search_retry"), new C10173a<List<? extends CallDialogSearchRetryConfig>>() { // from class: gogolook.callgogolook2.gson.CallDialogSearchRetryConfigHelper$getConfig$list$1
        }.m13276b());
        CallDialogSearchRetryConfig callDialogSearchRetryConfig = null;
        Object obj = null;
        if (list != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                obj = it.next();
                List<String> a = ((CallDialogSearchRetryConfig) obj).m28553a();
                if (a != null ? a.contains(str) : false) {
                    break;
                }
            }
            callDialogSearchRetryConfig = (CallDialogSearchRetryConfig) obj;
        }
        return callDialogSearchRetryConfig;
    }
}
