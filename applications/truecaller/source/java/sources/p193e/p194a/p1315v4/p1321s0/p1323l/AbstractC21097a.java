package p193e.p194a.p1315v4.p1321s0.p1323l;

import com.huawei.hms.opendevice.AbstractC2405c;
import com.truecaller.sdk.oAuth.networking.data.AuthCodeRequest;
import com.truecaller.sdk.oAuth.networking.data.AuthCodeResponse;
import com.truecaller.sdk.oAuth.networking.data.PartnerDetailsResponse;
import com.truecaller.sdk.oAuth.networking.data.RejectRequest;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import s1.w.d;
import u3.l0;
import x3.a0;
import x3.h0.a;
import x3.h0.f;
import x3.h0.i;
import x3.h0.o;
import x3.h0.t;
@Metadata(bv = {1, 0, 3}, d1 = {"��8\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018��2\u00020\u0001J_\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\n2\b\b\u0001\u0010\u0003\u001a\u00020\u00022\b\b\u0001\u0010\u0004\u001a\u00020\u00022\b\b\u0001\u0010\u0005\u001a\u00020\u00022\b\b\u0001\u0010\u0006\u001a\u00020\u00022\b\b\u0001\u0010\u0007\u001a\u00020\u00022\b\b\u0001\u0010\b\u001a\u00020\u00022\b\b\u0001\u0010\t\u001a\u00020\u0002H§@ø\u0001��¢\u0006\u0004\b\f\u0010\rJ#\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00100\n2\b\b\u0001\u0010\u000f\u001a\u00020\u000eH§@ø\u0001��¢\u0006\u0004\b\u0011\u0010\u0012J#\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00150\n2\b\b\u0001\u0010\u0014\u001a\u00020\u0013H§@ø\u0001��¢\u0006\u0004\b\u0016\u0010\u0017\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0018"}, d2 = {"Le/a/v4/s0/l/a;", "", "", "clientId", "scopes", "fingerprint", "language", "sdkVersion", "sdkVariant", "sdkVariantVersion", "Lx3/a0;", "Lcom/truecaller/sdk/oAuth/networking/data/PartnerDetailsResponse;", AbstractC2405c.f7629a, "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;", "Lcom/truecaller/sdk/oAuth/networking/data/AuthCodeRequest;", "authCodeRequest", "Lcom/truecaller/sdk/oAuth/networking/data/AuthCodeResponse;", "a", "(Lcom/truecaller/sdk/oAuth/networking/data/AuthCodeRequest;Ls1/w/d;)Ljava/lang/Object;", "Lcom/truecaller/sdk/oAuth/networking/data/RejectRequest;", "rejectRequest", "Lu3/l0;", C22021b.f61237c, "(Lcom/truecaller/sdk/oAuth/networking/data/RejectRequest;Ls1/w/d;)Ljava/lang/Object;", "sdk-internal_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.v4.s0.l.a */
/* loaded from: classes12-dex2jar.jar:e/a/v4/s0/l/a.class */
public interface AbstractC21097a {
    @o("v1/auth")
    /* renamed from: a */
    Object m10332a(@a AuthCodeRequest authCodeRequest, d<? super a0<AuthCodeResponse>> dVar);

    @o("v1/consent/reject")
    /* renamed from: b */
    Object m10331b(@a RejectRequest rejectRequest, d<? super a0<l0>> dVar);

    @f("v1/project/consent")
    /* renamed from: c */
    Object m10330c(@t("client_id") String str, @t("scopes") String str2, @t("fingerprint") String str3, @t("language") String str4, @i("X-Sdk-Version") String str5, @i("X-Sdk-Variant") String str6, @i("X-Sdk-Variant-Version") String str7, d<? super a0<PartnerDetailsResponse>> dVar);
}
