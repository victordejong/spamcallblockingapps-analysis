package p081h.p203i.p325c.p331k.p332a.p333c;

import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.measurement.AppMeasurement;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import kotlinx.coroutines.DebugKt;
import p081h.p203i.p204a.p224e.p235d.p249s.C7070b;
import p081h.p203i.p204a.p224e.p285m.p287b.C8959c4;
import p081h.p203i.p325c.p331k.p332a.AbstractC9452a;
/* renamed from: h.i.c.k.a.c.c */
/* loaded from: classes2-dex2jar.jar:h/i/c/k/a/c/c.class */
public final class C9460c {

    /* renamed from: a */
    public static final Set<String> f21595a = new HashSet(Arrays.asList("_in", "_xa", "_xu", "_aq", "_aa", "_ai", "_ac", "campaign_details", "_ug", "_iapx", "_exp_set", "_exp_clear", "_exp_activate", "_exp_timeout", "_exp_expire"));

    /* renamed from: b */
    public static final List<String> f21596b = Arrays.asList("_e", "_f", "_iap", "_s", "_au", "_ui", "_cd", "app_open");

    /* renamed from: c */
    public static final List<String> f21597c = Arrays.asList(DebugKt.DEBUG_PROPERTY_VALUE_AUTO, "app", "am");

    /* renamed from: d */
    public static final List<String> f21598d = Arrays.asList("_r", "_dbg");

    /* renamed from: e */
    public static final List<String> f21599e = Arrays.asList((String[]) C7070b.m21161a(new String[]{AppMeasurement.C3587e.f7140a, AppMeasurement.C3587e.f7141b}));

    /* renamed from: f */
    public static final List<String> f21600f = Arrays.asList("^_ltv_[A-Z]{3}$", "^_cc[1-5]{1}$");

    /* renamed from: a */
    public static AbstractC9452a.C9455c m15114a(AppMeasurement.ConditionalUserProperty conditionalUserProperty) {
        AbstractC9452a.C9455c cVar = new AbstractC9452a.C9455c();
        cVar.f21576a = conditionalUserProperty.mOrigin;
        cVar.f21589n = conditionalUserProperty.mActive;
        cVar.f21588m = conditionalUserProperty.mCreationTimestamp;
        cVar.f21586k = conditionalUserProperty.mExpiredEventName;
        Bundle bundle = conditionalUserProperty.mExpiredEventParams;
        if (bundle != null) {
            cVar.f21587l = new Bundle(bundle);
        }
        cVar.f21577b = conditionalUserProperty.mName;
        cVar.f21581f = conditionalUserProperty.mTimedOutEventName;
        Bundle bundle2 = conditionalUserProperty.mTimedOutEventParams;
        if (bundle2 != null) {
            cVar.f21582g = new Bundle(bundle2);
        }
        cVar.f21585j = conditionalUserProperty.mTimeToLive;
        cVar.f21583h = conditionalUserProperty.mTriggeredEventName;
        Bundle bundle3 = conditionalUserProperty.mTriggeredEventParams;
        if (bundle3 != null) {
            cVar.f21584i = new Bundle(bundle3);
        }
        cVar.f21590o = conditionalUserProperty.mTriggeredTimestamp;
        cVar.f21579d = conditionalUserProperty.mTriggerEventName;
        cVar.f21580e = conditionalUserProperty.mTriggerTimeout;
        Object obj = conditionalUserProperty.mValue;
        if (obj != null) {
            cVar.f21578c = C8959c4.m16716b(obj);
        }
        return cVar;
    }

    /* renamed from: a */
    public static boolean m15113a(AbstractC9452a.C9455c cVar) {
        String str;
        if (cVar == null || (str = cVar.f21576a) == null || str.isEmpty()) {
            return false;
        }
        Object obj = cVar.f21578c;
        if ((obj != null && C8959c4.m16716b(obj) == null) || !m15112a(str) || !m15110a(str, cVar.f21577b)) {
            return false;
        }
        String str2 = cVar.f21586k;
        if (str2 != null && (!m15111a(str2, cVar.f21587l) || !m15109a(str, cVar.f21586k, cVar.f21587l))) {
            return false;
        }
        String str3 = cVar.f21583h;
        if (str3 != null && (!m15111a(str3, cVar.f21584i) || !m15109a(str, cVar.f21583h, cVar.f21584i))) {
            return false;
        }
        String str4 = cVar.f21581f;
        if (str4 != null) {
            return m15111a(str4, cVar.f21582g) && m15109a(str, cVar.f21581f, cVar.f21582g);
        }
        return true;
    }

    /* renamed from: a */
    public static boolean m15112a(@NonNull String str) {
        return !f21597c.contains(str);
    }

    /* renamed from: a */
    public static boolean m15111a(@NonNull String str, @Nullable Bundle bundle) {
        if (f21596b.contains(str)) {
            return false;
        }
        if (bundle == null) {
            return true;
        }
        for (String str2 : f21598d) {
            if (bundle.containsKey(str2)) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: a */
    public static boolean m15110a(@NonNull String str, @NonNull String str2) {
        if ("_ce1".equals(str2) || "_ce2".equals(str2)) {
            return str.equals("fcm") || str.equals("frc");
        }
        if ("_ln".equals(str2)) {
            return str.equals("fcm") || str.equals("fiam");
        }
        if (f21599e.contains(str2)) {
            return false;
        }
        for (String str3 : f21600f) {
            if (str2.matches(str3)) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: a */
    public static boolean m15109a(@NonNull String str, @NonNull String str2, @Nullable Bundle bundle) {
        if (!"_cmp".equals(str2)) {
            return true;
        }
        if (!m15112a(str) || bundle == null) {
            return false;
        }
        for (String str3 : f21598d) {
            if (bundle.containsKey(str3)) {
                return false;
            }
        }
        char c = 65535;
        int hashCode = str.hashCode();
        if (hashCode != 101200) {
            if (hashCode != 101230) {
                if (hashCode == 3142703 && str.equals("fiam")) {
                    c = 2;
                }
            } else if (str.equals("fdl")) {
                c = 1;
            }
        } else if (str.equals("fcm")) {
            c = 0;
        }
        if (c == 0) {
            bundle.putString("_cis", "fcm_integration");
            return true;
        } else if (c == 1) {
            bundle.putString("_cis", "fdl_integration");
            return true;
        } else if (c != 2) {
            return false;
        } else {
            bundle.putString("_cis", "fiam_integration");
            return true;
        }
    }

    /* renamed from: b */
    public static AppMeasurement.ConditionalUserProperty m15108b(AbstractC9452a.C9455c cVar) {
        AppMeasurement.ConditionalUserProperty conditionalUserProperty = new AppMeasurement.ConditionalUserProperty();
        conditionalUserProperty.mOrigin = cVar.f21576a;
        conditionalUserProperty.mActive = cVar.f21589n;
        conditionalUserProperty.mCreationTimestamp = cVar.f21588m;
        conditionalUserProperty.mExpiredEventName = cVar.f21586k;
        Bundle bundle = cVar.f21587l;
        if (bundle != null) {
            conditionalUserProperty.mExpiredEventParams = new Bundle(bundle);
        }
        conditionalUserProperty.mName = cVar.f21577b;
        conditionalUserProperty.mTimedOutEventName = cVar.f21581f;
        Bundle bundle2 = cVar.f21582g;
        if (bundle2 != null) {
            conditionalUserProperty.mTimedOutEventParams = new Bundle(bundle2);
        }
        conditionalUserProperty.mTimeToLive = cVar.f21585j;
        conditionalUserProperty.mTriggeredEventName = cVar.f21583h;
        Bundle bundle3 = cVar.f21584i;
        if (bundle3 != null) {
            conditionalUserProperty.mTriggeredEventParams = new Bundle(bundle3);
        }
        conditionalUserProperty.mTriggeredTimestamp = cVar.f21590o;
        conditionalUserProperty.mTriggerEventName = cVar.f21579d;
        conditionalUserProperty.mTriggerTimeout = cVar.f21580e;
        Object obj = cVar.f21578c;
        if (obj != null) {
            conditionalUserProperty.mValue = C8959c4.m16716b(obj);
        }
        return conditionalUserProperty;
    }

    /* renamed from: b */
    public static boolean m15107b(@NonNull String str) {
        return !f21595a.contains(str);
    }

    /* renamed from: c */
    public static String m15106c(String str) {
        String a = AppMeasurement.C3583a.m31670a(str);
        return a != null ? a : str;
    }
}
