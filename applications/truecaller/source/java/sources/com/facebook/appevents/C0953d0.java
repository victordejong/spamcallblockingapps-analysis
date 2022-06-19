package com.facebook.appevents;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import com.facebook.AccessToken;
import com.facebook.internal.C1168q0;
import com.facebook.internal.p037u0.p040m.C1220a;
import com.mopub.network.ImpressionData;
import com.razorpay.AnalyticsConstants;
import java.util.Arrays;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Metadata;
import p193e.p1538j.C23228f0;
import s1.f0.h;
import s1.u.i;
import s1.z.c.l;
@Metadata(d1 = {"��P\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0006\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018�� !2\u00020\u0001:\u0001!B\u0011\b\u0016\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0004B\u001b\b\u0016\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\u0002\u0010\u0007B#\b\u0016\u0012\u0006\u0010\b\u001a\u00020\u0006\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\t\u001a\u0004\u0018\u00010\n¢\u0006\u0002\u0010\u000bB\u000f\b��\u0012\u0006\u0010\f\u001a\u00020\r¢\u0006\u0002\u0010\u000eJ\u0006\u0010\u000f\u001a\u00020\u0010J\u000e\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u0013J\u001a\u0010\u0014\u001a\u00020\u00102\b\u0010\u0015\u001a\u0004\u0018\u00010\u00062\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013J\"\u0010\u0014\u001a\u00020\u00102\b\u0010\u0015\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0016\u001a\u00020\u00172\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013J\u001a\u0010\u0018\u001a\u00020\u00102\b\u0010\u0015\u001a\u0004\u0018\u00010\u00062\b\u0010\u0019\u001a\u0004\u0018\u00010\u0006J\u0010\u0010\u001a\u001a\u00020\u00102\b\u0010\u0015\u001a\u0004\u0018\u00010\u0006J\u001a\u0010\u001a\u001a\u00020\u00102\b\u0010\u0015\u001a\u0004\u0018\u00010\u00062\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013J.\u0010\u001a\u001a\u00020\u00102\b\u0010\u0015\u001a\u0004\u0018\u00010\u00062\b\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001e2\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013J)\u0010\u001a\u001a\u00020\u00102\b\u0010\u0015\u001a\u0004\u0018\u00010\u00062\b\u0010\u0016\u001a\u0004\u0018\u00010\u00172\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013¢\u0006\u0002\u0010\u001fJ$\u0010 \u001a\u00020\u00102\b\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001e2\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013R\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n��¨\u0006\""}, d2 = {"Lcom/facebook/appevents/InternalAppEventsLogger;", "", AnalyticsConstants.CONTEXT, "Landroid/content/Context;", "(Landroid/content/Context;)V", "applicationId", "", "(Landroid/content/Context;Ljava/lang/String;)V", "activityName", "accessToken", "Lcom/facebook/AccessToken;", "(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/AccessToken;)V", "loggerImpl", "Lcom/facebook/appevents/AppEventsLoggerImpl;", "(Lcom/facebook/appevents/AppEventsLoggerImpl;)V", "flush", "", "logChangedSettingsEvent", "parameters", "Landroid/os/Bundle;", "logEvent", "eventName", "valueToSum", "", "logEventFromSE", "buttonText", "logEventImplicitly", "purchaseAmount", "Ljava/math/BigDecimal;", ImpressionData.CURRENCY, "Ljava/util/Currency;", "(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V", "logPurchaseImplicitly", "Companion", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* renamed from: com.facebook.appevents.d0 */
/* loaded from: classes2-dex2jar.jar:com/facebook/appevents/d0.class */
public final class C0953d0 {

    /* renamed from: a */
    public final C1096x f2628a;

    public C0953d0(Context context) {
        this(new C1096x(context, (String) null, (AccessToken) null));
    }

    public C0953d0(C1096x c1096x) {
        l.e(c1096x, "loggerImpl");
        this.f2628a = c1096x;
    }

    /* renamed from: b */
    public static final void m41977b(Map<String, String> map) {
        String[] strArr;
        l.e(map, "ud");
        C0960g0 c0960g0 = C0960g0.f2645a;
        if (C1220a.m41623b(C0960g0.class)) {
            return;
        }
        try {
            l.e(map, "ud");
            if (!C0960g0.f2648d.get()) {
                c0960g0.m41970b();
            }
            for (Map.Entry<String, String> entry : map.entrySet()) {
                String key = entry.getKey();
                String value = entry.getValue();
                int length = value.length() - 1;
                int i = 0;
                boolean z = false;
                while (i <= length) {
                    boolean z2 = l.g(value.charAt(!z ? i : length), 32) <= 0;
                    if (!z) {
                        if (!z2) {
                            z = true;
                        } else {
                            i++;
                        }
                    } else if (!z2) {
                        break;
                    } else {
                        length--;
                    }
                }
                String m41684R = C1168q0.m41684R(c0960g0.m41969c(key, value.subSequence(i, length + 1).toString()));
                ConcurrentHashMap<String, String> concurrentHashMap = C0960g0.f2650f;
                if (concurrentHashMap.containsKey(key)) {
                    String str = concurrentHashMap.get(key);
                    if (str == null) {
                        strArr = null;
                    } else {
                        Object[] array = new h(",").f(str, 0).toArray(new String[0]);
                        if (array == null) {
                            throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T>");
                        }
                        strArr = (String[]) array;
                    }
                    String[] strArr2 = strArr;
                    if (strArr == null) {
                        strArr2 = new String[0];
                    }
                    Set f0 = i.f0(Arrays.copyOf(strArr2, strArr2.length));
                    if (f0.contains(m41684R)) {
                        return;
                    }
                    StringBuilder sb = new StringBuilder();
                    if (strArr2.length == 0) {
                        sb.append(m41684R);
                    } else {
                        int i2 = 1;
                        if (strArr2.length < 5) {
                            sb.append(str);
                            sb.append(",");
                            sb.append(m41684R);
                        } else {
                            while (true) {
                                int i3 = i2 + 1;
                                sb.append(strArr2[i2]);
                                sb.append(",");
                                if (i3 >= 5) {
                                    break;
                                }
                                i2 = i3;
                            }
                            sb.append(m41684R);
                            f0.remove(strArr2[0]);
                        }
                    }
                    C0960g0.f2650f.put(key, sb.toString());
                } else {
                    concurrentHashMap.put(key, m41684R);
                }
            }
            final String m41694H = C1168q0.m41694H(C0960g0.f2650f);
            if (C1220a.m41623b(c0960g0)) {
                return;
            }
            C23228f0 c23228f0 = C23228f0.f64291a;
            C23228f0.m7350e().execute(new Runnable() { // from class: com.facebook.appevents.o
                @Override // java.lang.Runnable
                public final void run() {
                    String str2 = r4;
                    String str3 = m41694H;
                    if (C1220a.m41623b(C0960g0.class)) {
                        return;
                    }
                    try {
                        l.e(str2, "$key");
                        l.e(str3, "$value");
                        if (!C0960g0.f2648d.get()) {
                            C0960g0.f2645a.m41970b();
                        }
                        SharedPreferences sharedPreferences = C0960g0.f2647c;
                        if (sharedPreferences != null) {
                            sharedPreferences.edit().putString(str2, str3).apply();
                        } else {
                            l.l("sharedPreferences");
                            throw null;
                        }
                    } catch (Throwable th) {
                        C1220a.m41624a(th, C0960g0.class);
                    }
                }
            });
        } catch (Throwable th) {
            C1220a.m41624a(th, C0960g0.class);
        }
    }

    /* renamed from: a */
    public final void m41978a(String str, Bundle bundle) {
        C23228f0 c23228f0 = C23228f0.f64291a;
        if (C23228f0.m7352c()) {
            this.f2628a.m41761g(str, null, bundle);
        }
    }
}
