package com.truecaller.ads.provider.adunitid;

import androidx.annotation.Keep;
import com.huawei.hms.push.constant.RemoteMessageConst;
import java.util.List;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��,\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u000b\b\u0087\b\u0018��2\u00020\u0001B-\u0012\u0006\u0010\u000b\u001a\u00020\u0002\u0012\u0006\u0010\f\u001a\u00020\u0002\u0012\u0006\u0010\r\u001a\u00020\u0002\u0012\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\u0004\b\u001f\u0010 J\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0005\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0006\u0010\u0004J\u0016\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u0007HÆ\u0003¢\u0006\u0004\b\t\u0010\nJ>\u0010\u000f\u001a\u00020��2\b\b\u0002\u0010\u000b\u001a\u00020\u00022\b\b\u0002\u0010\f\u001a\u00020\u00022\b\b\u0002\u0010\r\u001a\u00020\u00022\u000e\b\u0002\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\b0\u0007HÆ\u0001¢\u0006\u0004\b\u000f\u0010\u0010J\u0010\u0010\u0011\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u0011\u0010\u0004J\u0010\u0010\u0013\u001a\u00020\u0012HÖ\u0001¢\u0006\u0004\b\u0013\u0010\u0014J\u001a\u0010\u0017\u001a\u00020\u00162\b\u0010\u0015\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0017\u0010\u0018R\u001f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\b0\u00078\u0006@\u0006¢\u0006\f\n\u0004\b\u000e\u0010\u0019\u001a\u0004\b\u001a\u0010\nR\u0019\u0010\f\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\f\u0010\u001b\u001a\u0004\b\u001c\u0010\u0004R\u0019\u0010\u000b\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u000b\u0010\u001b\u001a\u0004\b\u001d\u0010\u0004R\u0019\u0010\r\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\r\u0010\u001b\u001a\u0004\b\u001e\u0010\u0004¨\u0006!"}, d2 = {"Lcom/truecaller/ads/provider/adunitid/ExchangeConfig;", "", "", "component1", "()Ljava/lang/String;", "component2", "component3", "", "Lcom/truecaller/ads/provider/adunitid/Rate;", "component4", "()Ljava/util/List;", "base", RemoteMessageConst.FROM, RemoteMessageConst.f7718TO, "rates", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/truecaller/ads/provider/adunitid/ExchangeConfig;", "toString", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "Ljava/util/List;", "getRates", "Ljava/lang/String;", "getFrom", "getBase", "getTo", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V", "ads_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes3-dex2jar.jar:com/truecaller/ads/provider/adunitid/ExchangeConfig.class */
public final class ExchangeConfig {
    private final String base;
    private final String from;
    private final List<Rate> rates;

    /* renamed from: to */
    private final String f9887to;

    public ExchangeConfig(String str, String str2, String str3, List<Rate> list) {
        l.e(str, "base");
        l.e(str2, RemoteMessageConst.FROM);
        l.e(str3, RemoteMessageConst.f7718TO);
        l.e(list, "rates");
        this.base = str;
        this.from = str2;
        this.f9887to = str3;
        this.rates = list;
    }

    public static /* synthetic */ ExchangeConfig copy$default(ExchangeConfig exchangeConfig, String str, String str2, String str3, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            str = exchangeConfig.base;
        }
        if ((i & 2) != 0) {
            str2 = exchangeConfig.from;
        }
        if ((i & 4) != 0) {
            str3 = exchangeConfig.f9887to;
        }
        if ((i & 8) != 0) {
            list = exchangeConfig.rates;
        }
        return exchangeConfig.copy(str, str2, str3, list);
    }

    public final String component1() {
        return this.base;
    }

    public final String component2() {
        return this.from;
    }

    public final String component3() {
        return this.f9887to;
    }

    public final List<Rate> component4() {
        return this.rates;
    }

    public final ExchangeConfig copy(String str, String str2, String str3, List<Rate> list) {
        l.e(str, "base");
        l.e(str2, RemoteMessageConst.FROM);
        l.e(str3, RemoteMessageConst.f7718TO);
        l.e(list, "rates");
        return new ExchangeConfig(str, str2, str3, list);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof ExchangeConfig)) {
                return false;
            }
            ExchangeConfig exchangeConfig = (ExchangeConfig) obj;
            return l.a(this.base, exchangeConfig.base) && l.a(this.from, exchangeConfig.from) && l.a(this.f9887to, exchangeConfig.f9887to) && l.a(this.rates, exchangeConfig.rates);
        }
        return true;
    }

    public final String getBase() {
        return this.base;
    }

    public final String getFrom() {
        return this.from;
    }

    public final List<Rate> getRates() {
        return this.rates;
    }

    public final String getTo() {
        return this.f9887to;
    }

    public int hashCode() {
        String str = this.base;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.from;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.f9887to;
        int hashCode3 = str3 != null ? str3.hashCode() : 0;
        List<Rate> list = this.rates;
        if (list != null) {
            i = list.hashCode();
        }
        return (((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("ExchangeConfig(base=");
        m8728C.append(this.base);
        m8728C.append(", from=");
        m8728C.append(this.from);
        m8728C.append(", to=");
        m8728C.append(this.f9887to);
        m8728C.append(", rates=");
        return C22128a.m8602l(m8728C, this.rates, ")");
    }
}
