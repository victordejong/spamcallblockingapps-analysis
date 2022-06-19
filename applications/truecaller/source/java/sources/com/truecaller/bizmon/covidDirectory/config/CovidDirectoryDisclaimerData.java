package com.truecaller.bizmon.covidDirectory.config;

import androidx.annotation.Keep;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\t\b\u0087\b\u0018��2\u00020\u0001B%\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0018\u0010\u0019J\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u0005\u0010\u0004J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u0006\u0010\u0004J4\u0010\n\u001a\u00020��2\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0002HÆ\u0001¢\u0006\u0004\b\n\u0010\u000bJ\u0010\u0010\f\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\f\u0010\u0004J\u0010\u0010\u000e\u001a\u00020\rHÖ\u0001¢\u0006\u0004\b\u000e\u0010\u000fJ\u001a\u0010\u0012\u001a\u00020\u00112\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0012\u0010\u0013R\u001b\u0010\b\u001a\u0004\u0018\u00010\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\b\u0010\u0014\u001a\u0004\b\u0015\u0010\u0004R\u001b\u0010\t\u001a\u0004\u0018\u00010\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\t\u0010\u0014\u001a\u0004\b\u0016\u0010\u0004R\u001b\u0010\u0007\u001a\u0004\u0018\u00010\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0007\u0010\u0014\u001a\u0004\b\u0017\u0010\u0004¨\u0006\u001a"}, d2 = {"Lcom/truecaller/bizmon/covidDirectory/config/CovidDirectoryDisclaimerData;", "", "", "component1", "()Ljava/lang/String;", "component2", "component3", "text", "url", "hyperlinkText", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/truecaller/bizmon/covidDirectory/config/CovidDirectoryDisclaimerData;", "toString", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "Ljava/lang/String;", "getUrl", "getHyperlinkText", "getText", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "bizmon_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes6-dex2jar.jar:com/truecaller/bizmon/covidDirectory/config/CovidDirectoryDisclaimerData.class */
public final class CovidDirectoryDisclaimerData {
    private final String hyperlinkText;
    private final String text;
    private final String url;

    public CovidDirectoryDisclaimerData(String str, String str2, String str3) {
        this.text = str;
        this.url = str2;
        this.hyperlinkText = str3;
    }

    public static /* synthetic */ CovidDirectoryDisclaimerData copy$default(CovidDirectoryDisclaimerData covidDirectoryDisclaimerData, String str, String str2, String str3, int i, Object obj) {
        if ((i & 1) != 0) {
            str = covidDirectoryDisclaimerData.text;
        }
        if ((i & 2) != 0) {
            str2 = covidDirectoryDisclaimerData.url;
        }
        if ((i & 4) != 0) {
            str3 = covidDirectoryDisclaimerData.hyperlinkText;
        }
        return covidDirectoryDisclaimerData.copy(str, str2, str3);
    }

    public final String component1() {
        return this.text;
    }

    public final String component2() {
        return this.url;
    }

    public final String component3() {
        return this.hyperlinkText;
    }

    public final CovidDirectoryDisclaimerData copy(String str, String str2, String str3) {
        return new CovidDirectoryDisclaimerData(str, str2, str3);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof CovidDirectoryDisclaimerData)) {
                return false;
            }
            CovidDirectoryDisclaimerData covidDirectoryDisclaimerData = (CovidDirectoryDisclaimerData) obj;
            return l.a(this.text, covidDirectoryDisclaimerData.text) && l.a(this.url, covidDirectoryDisclaimerData.url) && l.a(this.hyperlinkText, covidDirectoryDisclaimerData.hyperlinkText);
        }
        return true;
    }

    public final String getHyperlinkText() {
        return this.hyperlinkText;
    }

    public final String getText() {
        return this.text;
    }

    public final String getUrl() {
        return this.url;
    }

    public int hashCode() {
        String str = this.text;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.url;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.hyperlinkText;
        if (str3 != null) {
            i = str3.hashCode();
        }
        return (((hashCode * 31) + hashCode2) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("CovidDirectoryDisclaimerData(text=");
        m8728C.append(this.text);
        m8728C.append(", url=");
        m8728C.append(this.url);
        m8728C.append(", hyperlinkText=");
        return C22128a.m8618h(m8728C, this.hyperlinkText, ")");
    }
}
