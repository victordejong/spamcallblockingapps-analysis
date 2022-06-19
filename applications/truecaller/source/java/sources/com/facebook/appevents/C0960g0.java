package com.facebook.appevents;

import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import android.util.Patterns;
import com.facebook.appevents.p025h0.C0966e;
import com.facebook.internal.C1168q0;
import com.facebook.internal.p037u0.p040m.C1220a;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.mopub.common.AdType;
import com.mopub.network.ImpressionData;
import com.razorpay.AnalyticsConstants;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import p193e.p1538j.C23228f0;
import s1.f0.h;
import s1.z.c.l;
@Metadata(d1 = {"��P\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010$\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u000f\bÇ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u001f\u001a\u00020 H\u0007J\b\u0010!\u001a\u00020\u0004H\u0007J\r\u0010\"\u001a\u00020\u0004H\u0001¢\u0006\u0002\b#J\b\u0010$\u001a\u00020 H\u0002J\b\u0010%\u001a\u00020 H\u0007J\u0010\u0010&\u001a\u00020'2\u0006\u0010(\u001a\u00020\u0004H\u0002J\u0018\u0010)\u001a\u00020\u00042\u0006\u0010*\u001a\u00020\u00042\u0006\u0010(\u001a\u00020\u0004H\u0002J\u001c\u0010+\u001a\u00020 2\u0012\u0010,\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u0015H\u0007J\u0012\u0010-\u001a\u00020 2\b\u0010,\u001a\u0004\u0018\u00010.H\u0007Jl\u0010-\u001a\u00020 2\b\u0010/\u001a\u0004\u0018\u00010\u00042\b\u00100\u001a\u0004\u0018\u00010\u00042\b\u00101\u001a\u0004\u0018\u00010\u00042\b\u00102\u001a\u0004\u0018\u00010\u00042\b\u00103\u001a\u0004\u0018\u00010\u00042\b\u00104\u001a\u0004\u0018\u00010\u00042\b\u00105\u001a\u0004\u0018\u00010\u00042\b\u00106\u001a\u0004\u0018\u00010\u00042\b\u00107\u001a\u0004\u0018\u00010\u00042\b\u00108\u001a\u0004\u0018\u00010\u0004H\u0007J\u0012\u00109\u001a\u00020 2\b\u0010,\u001a\u0004\u0018\u00010.H\u0002J\u0018\u0010:\u001a\u00020 2\u0006\u0010;\u001a\u00020\u00042\u0006\u0010<\u001a\u00020\u0004H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\n\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u000b\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\r\u001a\u00020\u000eX\u0082T¢\u0006\u0002\n��R\u000e\u0010\u000f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0010\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0011\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0012\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0013\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R$\u0010\u0014\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u00158BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0016\u0010\u0017R\u001e\u0010\u0018\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0019X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u001a\u001a\u00020\u001bX\u0082\u0004¢\u0006\u0002\n��R\u001e\u0010\u001c\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0019X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u001d\u001a\u00020\u001eX\u0082.¢\u0006\u0002\n��¨\u0006="}, d2 = {"Lcom/facebook/appevents/UserDataStore;", "", "()V", "CITY", "", "COUNTRY", "DATA_SEPARATOR", "DATE_OF_BIRTH", "EMAIL", "FIRST_NAME", "GENDER", "INTERNAL_USER_DATA_KEY", "LAST_NAME", "MAX_NUM", "", "PHONE", "STATE", "TAG", "USER_DATA_KEY", "ZIP", "enabledInternalUserData", "", "getEnabledInternalUserData", "()Ljava/util/Map;", "externalHashedUserData", "Ljava/util/concurrent/ConcurrentHashMap;", "initialized", "Ljava/util/concurrent/atomic/AtomicBoolean;", "internalHashedUserData", "sharedPreferences", "Landroid/content/SharedPreferences;", AdType.CLEAR, "", "getAllHashedUserData", "getHashedUserData", "getHashedUserData$facebook_core_release", "initAndWait", "initStore", "maybeSHA256Hashed", "", RemoteMessageConst.DATA, "normalizeData", "type", "setInternalUd", "ud", "setUserDataAndHash", "Landroid/os/Bundle;", AnalyticsConstants.EMAIL, "firstName", "lastName", AnalyticsConstants.PHONE, "dateOfBirth", "gender", "city", "state", "zip", ImpressionData.COUNTRY, "updateHashUserData", "writeDataIntoCache", AnalyticsConstants.KEY, "value", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* renamed from: com.facebook.appevents.g0 */
/* loaded from: classes2-dex2jar.jar:com/facebook/appevents/g0.class */
public final class C0960g0 {

    /* renamed from: b */
    public static final String f2646b;

    /* renamed from: c */
    public static SharedPreferences f2647c;

    /* renamed from: a */
    public static final C0960g0 f2645a = new C0960g0();

    /* renamed from: d */
    public static final AtomicBoolean f2648d = new AtomicBoolean(false);

    /* renamed from: e */
    public static final ConcurrentHashMap<String, String> f2649e = new ConcurrentHashMap<>();

    /* renamed from: f */
    public static final ConcurrentHashMap<String, String> f2650f = new ConcurrentHashMap<>();

    static {
        String simpleName = C0960g0.class.getSimpleName();
        l.d(simpleName, "UserDataStore::class.java.simpleName");
        f2646b = simpleName;
    }

    /* renamed from: a */
    public final Map<String, String> m41971a() {
        if (C1220a.m41623b(this)) {
            return null;
        }
        try {
            HashMap hashMap = new HashMap();
            C0966e c0966e = C0966e.f2659d;
            HashSet hashSet = new HashSet();
            for (C0966e c0966e2 : C0966e.m41963a()) {
                hashSet.add(c0966e2.m41960d());
            }
            for (String str : f2650f.keySet()) {
                if (hashSet.contains(str)) {
                    hashMap.put(str, f2650f.get(str));
                }
            }
            return hashMap;
        } catch (Throwable th) {
            C1220a.m41624a(th, this);
            return null;
        }
    }

    /* renamed from: b */
    public final void m41970b() {
        synchronized (this) {
            if (C1220a.m41623b(this)) {
                return;
            }
            AtomicBoolean atomicBoolean = f2648d;
            if (atomicBoolean.get()) {
                return;
            }
            C23228f0 c23228f0 = C23228f0.f64291a;
            SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(C23228f0.m7354a());
            l.d(defaultSharedPreferences, "getDefaultSharedPreferences(FacebookSdk.getApplicationContext())");
            f2647c = defaultSharedPreferences;
            if (defaultSharedPreferences == null) {
                l.l("sharedPreferences");
                throw null;
            }
            String string = defaultSharedPreferences.getString("com.facebook.appevents.UserDataStore.userData", "");
            String str = string;
            if (string == null) {
                str = "";
            }
            SharedPreferences sharedPreferences = f2647c;
            if (sharedPreferences == null) {
                l.l("sharedPreferences");
                throw null;
            }
            String string2 = sharedPreferences.getString("com.facebook.appevents.UserDataStore.internalUserData", "");
            String str2 = string2;
            if (string2 == null) {
                str2 = "";
            }
            f2649e.putAll(C1168q0.m41697E(str));
            f2650f.putAll(C1168q0.m41697E(str2));
            atomicBoolean.set(true);
        }
    }

    /* renamed from: c */
    public final String m41969c(String str, String str2) {
        String str3;
        if (C1220a.m41623b(this)) {
            return null;
        }
        try {
            int length = str2.length() - 1;
            int i = 0;
            boolean z = false;
            while (i <= length) {
                boolean z2 = l.g(str2.charAt(!z ? i : length), 32) <= 0;
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
            String obj = str2.subSequence(i, length + 1).toString();
            if (obj == null) {
                throw new NullPointerException("null cannot be cast to non-null type java.lang.String");
            }
            String lowerCase = obj.toLowerCase();
            l.d(lowerCase, "(this as java.lang.String).toLowerCase()");
            String str4 = "";
            if (l.a("em", str)) {
                return Patterns.EMAIL_ADDRESS.matcher(lowerCase).matches() ? lowerCase : "";
            } else if (l.a("ph", str)) {
                return new h("[^0-9]").e(lowerCase, "");
            } else {
                if (!l.a("ge", str)) {
                    return lowerCase;
                }
                if (lowerCase.length() > 0) {
                    str3 = lowerCase.substring(0, 1);
                    l.d(str3, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                } else {
                    str3 = "";
                }
                if (l.a("f", str3) || l.a("m", str3)) {
                    str4 = str3;
                }
                return str4;
            }
        } catch (Throwable th) {
            C1220a.m41624a(th, this);
            return null;
        }
    }
}
