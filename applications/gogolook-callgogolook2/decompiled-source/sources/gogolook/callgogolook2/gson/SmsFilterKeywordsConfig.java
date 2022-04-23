package gogolook.callgogolook2.gson;

import java.util.List;
import kotlin.Metadata;
import p081h.p203i.p384e.p385v.AbstractC10120c;
import p626l.p641z.p643d.C15145g;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0016\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0004\u0018��2\u00020\u0001B\u0017\u0012\u0010\b\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0005R\u001e\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n��\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, m815d2 = {"Lgogolook/callgogolook2/gson/SmsFilterKeywordsConfig;", "", "otpKeywordsList", "", "", "(Ljava/util/List;)V", "getOtpKeywordsList", "()Ljava/util/List;", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/gson/SmsFilterKeywordsConfig.class */
public final class SmsFilterKeywordsConfig {
    @AbstractC10120c("otp")
    public final List<String> otpKeywordsList;

    public SmsFilterKeywordsConfig() {
        this(null, 1, null);
    }

    public SmsFilterKeywordsConfig(List<String> list) {
        this.otpKeywordsList = list;
    }

    public /* synthetic */ SmsFilterKeywordsConfig(List list, int i, C15145g gVar) {
        this((i & 1) != 0 ? null : list);
    }

    /* renamed from: a */
    public final List<String> m28189a() {
        return this.otpKeywordsList;
    }
}
