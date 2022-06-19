package com.truecaller.insights.repository;

import androidx.annotation.Keep;
import e.m.e.d0.b;
import java.util.List;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u000b\b\u0081\b\u0018��2\u00020\u0001B%\u0012\u0006\u0010\u000b\u001a\u00020\u0002\u0012\u0006\u0010\f\u001a\u00020\u0005\u0012\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00050\b¢\u0006\u0004\b\u001c\u0010\u001dJ\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0005HÆ\u0003¢\u0006\u0004\b\u0006\u0010\u0007J\u0016\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00050\bHÆ\u0003¢\u0006\u0004\b\t\u0010\nJ4\u0010\u000e\u001a\u00020��2\b\b\u0002\u0010\u000b\u001a\u00020\u00022\b\b\u0002\u0010\f\u001a\u00020\u00052\u000e\b\u0002\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00050\bHÆ\u0001¢\u0006\u0004\b\u000e\u0010\u000fJ\u0010\u0010\u0010\u001a\u00020\u0005HÖ\u0001¢\u0006\u0004\b\u0010\u0010\u0007J\u0010\u0010\u0011\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u0011\u0010\u0004J\u001a\u0010\u0014\u001a\u00020\u00132\b\u0010\u0012\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0014\u0010\u0015R\"\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00050\b8\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\r\u0010\u0016\u001a\u0004\b\u0017\u0010\nR\u001c\u0010\f\u001a\u00020\u00058\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\f\u0010\u0018\u001a\u0004\b\u0019\u0010\u0007R\u001c\u0010\u000b\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u000b\u0010\u001a\u001a\u0004\b\u001b\u0010\u0004¨\u0006\u001e"}, d2 = {"Lcom/truecaller/insights/repository/BrandSearchKeyword;", "", "", "component1", "()I", "", "component2", "()Ljava/lang/String;", "", "component3", "()Ljava/util/List;", "version", "brandId", "keywordList", "copy", "(ILjava/lang/String;Ljava/util/List;)Lcom/truecaller/insights/repository/BrandSearchKeyword;", "toString", "hashCode", "other", "", "equals", "(Ljava/lang/Object;)Z", "Ljava/util/List;", "getKeywordList", "Ljava/lang/String;", "getBrandId", "I", "getVersion", "<init>", "(ILjava/lang/String;Ljava/util/List;)V", "insights_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes10-dex2jar.jar:com/truecaller/insights/repository/BrandSearchKeyword.class */
public final class BrandSearchKeyword {
    @b("brand_id")
    private final String brandId;
    @b("keyword_list")
    private final List<String> keywordList;
    @b("version")
    private final int version;

    public BrandSearchKeyword(int i, String str, List<String> list) {
        l.e(str, "brandId");
        l.e(list, "keywordList");
        this.version = i;
        this.brandId = str;
        this.keywordList = list;
    }

    public static /* synthetic */ BrandSearchKeyword copy$default(BrandSearchKeyword brandSearchKeyword, int i, String str, List list, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = brandSearchKeyword.version;
        }
        if ((i2 & 2) != 0) {
            str = brandSearchKeyword.brandId;
        }
        if ((i2 & 4) != 0) {
            list = brandSearchKeyword.keywordList;
        }
        return brandSearchKeyword.copy(i, str, list);
    }

    public final int component1() {
        return this.version;
    }

    public final String component2() {
        return this.brandId;
    }

    public final List<String> component3() {
        return this.keywordList;
    }

    public final BrandSearchKeyword copy(int i, String str, List<String> list) {
        l.e(str, "brandId");
        l.e(list, "keywordList");
        return new BrandSearchKeyword(i, str, list);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof BrandSearchKeyword)) {
                return false;
            }
            BrandSearchKeyword brandSearchKeyword = (BrandSearchKeyword) obj;
            return this.version == brandSearchKeyword.version && l.a(this.brandId, brandSearchKeyword.brandId) && l.a(this.keywordList, brandSearchKeyword.keywordList);
        }
        return true;
    }

    public final String getBrandId() {
        return this.brandId;
    }

    public final List<String> getKeywordList() {
        return this.keywordList;
    }

    public final int getVersion() {
        return this.version;
    }

    public int hashCode() {
        int i = this.version;
        String str = this.brandId;
        int i2 = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        List<String> list = this.keywordList;
        if (list != null) {
            i2 = list.hashCode();
        }
        return (((i * 31) + hashCode) * 31) + i2;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("BrandSearchKeyword(version=");
        m8728C.append(this.version);
        m8728C.append(", brandId=");
        m8728C.append(this.brandId);
        m8728C.append(", keywordList=");
        return C22128a.m8602l(m8728C, this.keywordList, ")");
    }
}
