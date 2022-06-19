package com.facebook.login;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.internal.C1146l0;
import com.facebook.internal.C1190t;
import com.facebook.internal.C1225v;
import com.facebook.internal.p037u0.p040m.C1220a;
import com.facebook.login.LoginClient;
import com.razorpay.AnalyticsConstants;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import org.json.JSONException;
import org.json.JSONObject;
import p193e.p1538j.C23228f0;
import s1.z.c.l;
@Metadata(d1 = {"��8\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0007\u0018�� \u00132\u00020\u0001:\u0001\u0013B\u000f\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004B\u000f\b\u0016\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\b\u0010\f\u001a\u00020\rH\u0016J\b\u0010\u000e\u001a\u00020\u000fH\u0016J\u0010\u0010\u0010\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u0012H\u0016R\u0014\u0010\b\u001a\u00020\tX\u0096D¢\u0006\b\n��\u001a\u0004\b\n\u0010\u000b¨\u0006\u0014"}, d2 = {"Lcom/facebook/login/KatanaProxyLoginMethodHandler;", "Lcom/facebook/login/NativeAppLoginMethodHandler;", "loginClient", "Lcom/facebook/login/LoginClient;", "(Lcom/facebook/login/LoginClient;)V", "source", "Landroid/os/Parcel;", "(Landroid/os/Parcel;)V", "nameForLogging", "", "getNameForLogging", "()Ljava/lang/String;", "describeContents", "", "shouldKeepTrackOfMultipleIntents", "", "tryAuthorize", "request", "Lcom/facebook/login/LoginClient$Request;", "Companion", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes2-dex2jar.jar:com/facebook/login/KatanaProxyLoginMethodHandler.class */
public final class KatanaProxyLoginMethodHandler extends NativeAppLoginMethodHandler {
    public static final Parcelable.Creator<KatanaProxyLoginMethodHandler> CREATOR = new C1246a();

    /* renamed from: d */
    public final String f3365d = "katana_proxy_auth";

    @Metadata(d1 = {"��%\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0011\n��\n\u0002\u0010\b\n\u0002\b\u0002*\u0001��\b\n\u0018��2\b\u0012\u0004\u0012\u00020\u00020\u0001J\u0010\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u001d\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u00072\u0006\u0010\b\u001a\u00020\tH\u0016¢\u0006\u0002\u0010\n¨\u0006\u000b"}, d2 = {"com/facebook/login/KatanaProxyLoginMethodHandler$Companion$CREATOR$1", "Landroid/os/Parcelable$Creator;", "Lcom/facebook/login/KatanaProxyLoginMethodHandler;", "createFromParcel", "source", "Landroid/os/Parcel;", "newArray", "", "size", "", "(I)[Lcom/facebook/login/KatanaProxyLoginMethodHandler;", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* renamed from: com.facebook.login.KatanaProxyLoginMethodHandler$a */
    /* loaded from: classes2-dex2jar.jar:com/facebook/login/KatanaProxyLoginMethodHandler$a.class */
    public static final class C1246a implements Parcelable.Creator<KatanaProxyLoginMethodHandler> {
        @Override // android.os.Parcelable.Creator
        public KatanaProxyLoginMethodHandler createFromParcel(Parcel parcel) {
            l.e(parcel, "source");
            return new KatanaProxyLoginMethodHandler(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public KatanaProxyLoginMethodHandler[] newArray(int i) {
            return new KatanaProxyLoginMethodHandler[i];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public KatanaProxyLoginMethodHandler(Parcel parcel) {
        super(parcel);
        l.e(parcel, "source");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public KatanaProxyLoginMethodHandler(LoginClient loginClient) {
        super(loginClient);
        l.e(loginClient, "loginClient");
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.facebook.login.LoginMethodHandler
    /* renamed from: h */
    public String mo41565h() {
        return this.f3365d;
    }

    @Override // com.facebook.login.LoginMethodHandler
    /* renamed from: p */
    public boolean mo41577p() {
        return true;
    }

    @Override // com.facebook.login.LoginMethodHandler
    /* renamed from: r */
    public int mo41563r(LoginClient.Request request) {
        ArrayList<Intent> arrayList;
        l.e(request, "request");
        boolean z = C23228f0.f64305o && C1225v.m41622a() != null && request.f3378a.f3483e;
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(AnalyticsConstants.INIT, System.currentTimeMillis());
        } catch (JSONException e) {
        }
        String jSONObject2 = jSONObject.toString();
        l.d(jSONObject2, "e2e.toString()");
        C1146l0 c1146l0 = C1146l0.f3146a;
        m41582g().m41594e();
        String str = request.f3381d;
        Set<String> set = request.f3379b;
        boolean m41589a = request.m41589a();
        EnumC1271j enumC1271j = request.f3380c;
        EnumC1271j enumC1271j2 = enumC1271j;
        if (enumC1271j == null) {
            enumC1271j2 = EnumC1271j.NONE;
        }
        EnumC1271j enumC1271j3 = enumC1271j2;
        String m41583f = m41583f(request.f3382e);
        String str2 = request.f3385h;
        String str3 = request.f3387j;
        boolean z2 = request.f3388k;
        boolean z3 = request.f3390m;
        boolean z4 = request.f3391n;
        String str4 = request.f3392o;
        EnumC1268h enumC1268h = request.f3395r;
        if (enumC1268h != null) {
            enumC1268h.name();
        }
        if (C1220a.m41623b(C1146l0.class)) {
            arrayList = null;
        } else {
            try {
                l.e(str, "applicationId");
                l.e(set, "permissions");
                l.e(jSONObject2, "e2e");
                l.e(enumC1271j3, "defaultAudience");
                l.e(m41583f, "clientState");
                l.e(str2, "authType");
                List<C1146l0.AbstractC1151e> list = C1146l0.f3148c;
                ArrayList arrayList2 = new ArrayList();
                for (C1146l0.AbstractC1151e abstractC1151e : list) {
                    Intent m41724c = C1146l0.f3146a.m41724c(abstractC1151e, str, set, jSONObject2, m41589a, enumC1271j3, m41583f, str2, z, str3, z2, EnumC1290x.FACEBOOK, z3, z4, str4);
                    if (m41724c != null) {
                        arrayList2.add(m41724c);
                    }
                }
                arrayList = arrayList2;
            } catch (Throwable th) {
                C1220a.m41624a(th, C1146l0.class);
                arrayList = null;
            }
        }
        m41587a("e2e", jSONObject2);
        int i = 0;
        for (Intent intent : arrayList) {
            int i2 = i + 1;
            i = i2;
            if (m41569z(intent, C1190t.EnumC1193c.Login.m41639a())) {
                return i2;
            }
        }
        return 0;
    }
}
