package p193e.p194a.p1342w4;

import com.huawei.hms.actions.SearchIntents;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.truecaller.data.dto.ContactDto;
import com.truecaller.search.KeyedContactDto;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p194a.p372b0.p394b.AbstractC8371e;
import x3.b;
import x3.h0.f;
import x3.h0.t;
import x3.h0.x;
@Metadata(bv = {1, 0, 3}, d1 = {"��:\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0006\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\bf\u0018��2\u00020\u0001J«\u0001\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00140\u00132\b\b\u0001\u0010\u0003\u001a\u00020\u00022\b\b\u0001\u0010\u0005\u001a\u00020\u00042\n\b\u0001\u0010\u0006\u001a\u0004\u0018\u00010\u00022\b\b\u0001\u0010\u0007\u001a\u00020\u00022\n\b\u0001\u0010\b\u001a\u0004\u0018\u00010\u00022\n\b\u0001\u0010\n\u001a\u0004\u0018\u00010\t2\n\b\u0001\u0010\u000b\u001a\u0004\u0018\u00010\t2\n\b\u0001\u0010\f\u001a\u0004\u0018\u00010\t2\n\b\u0001\u0010\r\u001a\u0004\u0018\u00010\t2\n\b\u0001\u0010\u000e\u001a\u0004\u0018\u00010\u00022\n\b\u0001\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\n\b\u0001\u0010\u0011\u001a\u0004\u0018\u00010\u00022\n\b\u0001\u0010\u0012\u001a\u0004\u0018\u00010\u0002H'¢\u0006\u0004\b\u0015\u0010\u0016J5\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00170\u00132\b\b\u0001\u0010\u0003\u001a\u00020\u00022\n\b\u0001\u0010\u0006\u001a\u0004\u0018\u00010\u00022\b\b\u0001\u0010\u0007\u001a\u00020\u0002H'¢\u0006\u0004\b\u0018\u0010\u0019J\u001f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u00140\u00132\b\b\u0001\u0010\u001a\u001a\u00020\u0002H'¢\u0006\u0004\b\u001b\u0010\u001cJ)\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u00140\u00132\b\b\u0001\u0010\u0003\u001a\u00020\u00022\b\b\u0001\u0010\u0007\u001a\u00020\u0002H'¢\u0006\u0004\b\u001d\u0010\u001eJ)\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u00170\u00132\b\b\u0001\u0010\u0003\u001a\u00020\u00022\b\b\u0001\u0010\u0007\u001a\u00020\u0002H'¢\u0006\u0004\b\u001f\u0010\u001e¨\u0006 "}, d2 = {"Le/a/w4/m;", "", "", SearchIntents.EXTRA_QUERY, "Le/a/b0/b/e;", "targetDomain", "countryCode", "type", "locAddr", "", "locLat", "locLong", "orgLat", "orgLong", "pageId", "", "pageSize", "placement", "addId", "Lx3/b;", "Lcom/truecaller/data/dto/ContactDto;", AbstractC2405c.f7629a, "(Ljava/lang/String;Le/a/b0/b/e;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Lx3/b;", "Lcom/truecaller/search/KeyedContactDto;", "a", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lx3/b;", "tcId", "e", "(Ljava/lang/String;)Lx3/b;", C22021b.f61237c, "(Ljava/lang/String;Ljava/lang/String;)Lx3/b;", "d", "search_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.w4.m */
/* loaded from: classes13-dex2jar.jar:e/a/w4/m.class */
public interface AbstractC21215m {
    @f("/v2/bulk")
    /* renamed from: a */
    b<KeyedContactDto> m10127a(@t("q") String str, @t("countryCode") String str2, @t("type") String str3);

    @f("/v2/im/search")
    /* renamed from: b */
    b<ContactDto> m10126b(@t("q") String str, @t("type") String str2);

    @f("/v2/search")
    /* renamed from: c */
    b<ContactDto> m10125c(@t("q") String str, @x AbstractC8371e abstractC8371e, @t("countryCode") String str2, @t("type") String str3, @t("locAddr") String str4, @t("locLat") Double d, @t("locLong") Double d2, @t("orgLat") Double d3, @t("orgLong") Double d4, @t("pageId") String str5, @t("pageSize") Integer num, @t("placement") String str6, @t("adId") String str7);

    @f("/v2/im/bulk")
    /* renamed from: d */
    b<KeyedContactDto> m10124d(@t("q") String str, @t("type") String str2);

    @f("/v2/search/private")
    /* renamed from: e */
    b<ContactDto> m10123e(@t("q") String str);
}
