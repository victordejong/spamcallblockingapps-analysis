package gogolook.callgogolook2.gson;

import com.mopub.network.ImpressionData;
import java.util.List;
import kotlin.Metadata;
import p081h.p203i.p384e.p385v.AbstractC10120c;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u001c\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u000b\u0018��2\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u0018\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\b\n��\u001a\u0004\b\u0005\u0010\u0006R&\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\b8\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n��\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR&\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\b8\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n��\u001a\u0004\b\u000e\u0010\n\"\u0004\b\u000f\u0010\fR&\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\b8\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0011\u0010\n\"\u0004\b\u0012\u0010\f¨\u0006\u0013"}, m815d2 = {"Lgogolook/callgogolook2/gson/SmsScanConfig;", "", "()V", ImpressionData.COUNTRY, "", "getCountry", "()Ljava/lang/String;", "maliciousUrlMatcherList", "", "getMaliciousUrlMatcherList", "()Ljava/util/List;", "setMaliciousUrlMatcherList", "(Ljava/util/List;)V", "suspiciousKeywordList", "getSuspiciousKeywordList", "setSuspiciousKeywordList", "suspiciousUrlMatcherList", "getSuspiciousUrlMatcherList", "setSuspiciousUrlMatcherList", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/gson/SmsScanConfig.class */
public final class SmsScanConfig {
    @AbstractC10120c(ImpressionData.COUNTRY)
    public final String country;
    @AbstractC10120c("malicious_url_matcher")
    public List<String> maliciousUrlMatcherList;
    @AbstractC10120c("suspicious_keyword")
    public List<String> suspiciousKeywordList;
    @AbstractC10120c("suspicious_url_matcher")
    public List<String> suspiciousUrlMatcherList;

    /* renamed from: a */
    public final String m28187a() {
        return this.country;
    }

    /* renamed from: b */
    public final List<String> m28186b() {
        return this.maliciousUrlMatcherList;
    }

    /* renamed from: c */
    public final List<String> m28185c() {
        return this.suspiciousKeywordList;
    }

    /* renamed from: d */
    public final List<String> m28184d() {
        return this.suspiciousUrlMatcherList;
    }
}
