package gogolook.callgogolook2.gson;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import p081h.p203i.p384e.C10099e;
import p081h.p203i.p384e.C10108n;
import p081h.p203i.p384e.p390x.C10173a;
import p459j.p460a.p568u.C13640c;
import p459j.p460a.p582w0.C13973d4;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018��2\u00020\u0001:\u0001\nB\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u00072\b\b\u0001\u0010\t\u001a\u00020\u0004H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��¨\u0006\u000b"}, m815d2 = {"Lgogolook/callgogolook2/gson/SmsFilterRulesHelper;", "", "()V", "KEYWORD", "", "KEYWORD_AND_PATTERN", "getRuleData", "", "Lgogolook/callgogolook2/gson/RuleData;", "type", "Type", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/gson/SmsFilterRulesHelper.class */
public final class SmsFilterRulesHelper {
    public static final SmsFilterRulesHelper INSTANCE = new SmsFilterRulesHelper();
    public static final String KEYWORD = "keyword";
    public static final String KEYWORD_AND_PATTERN = "keyword_and_pattern";

    @Retention(RetentionPolicy.RUNTIME)
    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\n\n\u0002\u0018\u0002\n\u0002\u0010\u001b\n��\b\u0086\u0002\u0018��2\u00020\u0001B��¨\u0006\u0002"}, m815d2 = {"Lgogolook/callgogolook2/gson/SmsFilterRulesHelper$Type;", "", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/gson/SmsFilterRulesHelper$Type.class */
    public @interface Type {
    }

    /* renamed from: a */
    public static final List<RuleData> m28188a(@Type String str) {
        List<RuleData> list;
        Object obj;
        C15149k.m377b(str, "type");
        try {
            List list2 = (List) new C10099e().m13388a().m30981a(C13640c.m3745d().m3744d("sms_filter_rules"), new C10173a<List<? extends Rules>>() { // from class: gogolook.callgogolook2.gson.SmsFilterRulesHelper$getRuleData$list$1
            }.m13276b());
            list = null;
            if (list2 != null) {
                Iterator it = list2.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        obj = null;
                        break;
                    }
                    Object next = it.next();
                    if (C15149k.m384a((Object) str, (Object) ((Rules) next).m28190b())) {
                        obj = next;
                        break;
                    }
                }
                Rules rules = (Rules) obj;
                list = null;
                if (rules != null) {
                    list = rules.m28191a();
                }
            }
        } catch (C10108n e) {
            C13973d4.m2952a(e);
            list = null;
        }
        return list;
    }
}
