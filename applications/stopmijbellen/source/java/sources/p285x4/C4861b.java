package p285x4;

import android.os.Bundle;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.measurement.AppMeasurement;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.google.android.gms.measurement.internal.zzgq;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import p285x4.AbstractC4857a;
import p295y4.C5005a;
import p295y4.C5007c;
import p295y4.C5009e;
/* renamed from: x4.b */
/* loaded from: classes-dex2jar.jar:x4/b.class */
public class C4861b implements AbstractC4857a {

    /* renamed from: c */
    public static volatile AbstractC4857a f14904c;
    @VisibleForTesting

    /* renamed from: a */
    public final AppMeasurementSdk f14905a;
    @VisibleForTesting

    /* renamed from: b */
    public final Map<String, Object> f14906b = new ConcurrentHashMap();

    /* renamed from: x4.b$a */
    /* loaded from: classes-dex2jar.jar:x4/b$a.class */
    public class C4862a implements AbstractC4857a.AbstractC4858a {
        public C4862a(C4861b c4861b, String str) {
        }
    }

    public C4861b(AppMeasurementSdk appMeasurementSdk) {
        Preconditions.checkNotNull(appMeasurementSdk);
        this.f14905a = appMeasurementSdk;
    }

    @Override // p285x4.AbstractC4857a
    @KeepForSdk
    /* renamed from: a */
    public AbstractC4857a.AbstractC4858a mo347a(String str, AbstractC4857a.AbstractC4859b abstractC4859b) {
        Preconditions.checkNotNull(abstractC4859b);
        if (!C5005a.m145a(str)) {
            return null;
        }
        if (!str.isEmpty() && this.f14906b.containsKey(str) && this.f14906b.get(str) != null) {
            return null;
        }
        AppMeasurementSdk appMeasurementSdk = this.f14905a;
        C5007c c5007c = AppMeasurement.FIAM_ORIGIN.equals(str) ? new C5007c(appMeasurementSdk, abstractC4859b) : (AppMeasurement.CRASH_ORIGIN.equals(str) || "clx".equals(str)) ? new C5009e(appMeasurementSdk, abstractC4859b) : null;
        if (c5007c == null) {
            return null;
        }
        this.f14906b.put(str, c5007c);
        return new C4862a(this, str);
    }

    @Override // p285x4.AbstractC4857a
    @KeepForSdk
    /* renamed from: b */
    public Map<String, Object> mo346b(boolean z) {
        return this.f14905a.getUserProperties(null, null, z);
    }

    @Override // p285x4.AbstractC4857a
    @KeepForSdk
    /* renamed from: c */
    public List<AbstractC4857a.C4860c> mo345c(String str, String str2) {
        ArrayList arrayList = new ArrayList();
        for (Bundle bundle : this.f14905a.getConditionalUserProperties(str, str2)) {
            Set<String> set = C5005a.f15250a;
            Preconditions.checkNotNull(bundle);
            AbstractC4857a.C4860c c4860c = new AbstractC4857a.C4860c();
            c4860c.f14889a = (String) Preconditions.checkNotNull((String) zzgq.zzb(bundle, AppMeasurementSdk.ConditionalUserProperty.ORIGIN, String.class, null));
            c4860c.f14890b = (String) Preconditions.checkNotNull((String) zzgq.zzb(bundle, AppMeasurementSdk.ConditionalUserProperty.NAME, String.class, null));
            c4860c.f14891c = zzgq.zzb(bundle, AppMeasurementSdk.ConditionalUserProperty.VALUE, Object.class, null);
            c4860c.f14892d = (String) zzgq.zzb(bundle, AppMeasurementSdk.ConditionalUserProperty.TRIGGER_EVENT_NAME, String.class, null);
            c4860c.f14893e = ((Long) zzgq.zzb(bundle, AppMeasurementSdk.ConditionalUserProperty.TRIGGER_TIMEOUT, Long.class, 0L)).longValue();
            c4860c.f14894f = (String) zzgq.zzb(bundle, AppMeasurementSdk.ConditionalUserProperty.TIMED_OUT_EVENT_NAME, String.class, null);
            c4860c.f14895g = (Bundle) zzgq.zzb(bundle, AppMeasurementSdk.ConditionalUserProperty.TIMED_OUT_EVENT_PARAMS, Bundle.class, null);
            c4860c.f14896h = (String) zzgq.zzb(bundle, AppMeasurementSdk.ConditionalUserProperty.TRIGGERED_EVENT_NAME, String.class, null);
            c4860c.f14897i = (Bundle) zzgq.zzb(bundle, AppMeasurementSdk.ConditionalUserProperty.TRIGGERED_EVENT_PARAMS, Bundle.class, null);
            c4860c.f14898j = ((Long) zzgq.zzb(bundle, AppMeasurementSdk.ConditionalUserProperty.TIME_TO_LIVE, Long.class, 0L)).longValue();
            c4860c.f14899k = (String) zzgq.zzb(bundle, AppMeasurementSdk.ConditionalUserProperty.EXPIRED_EVENT_NAME, String.class, null);
            c4860c.f14900l = (Bundle) zzgq.zzb(bundle, AppMeasurementSdk.ConditionalUserProperty.EXPIRED_EVENT_PARAMS, Bundle.class, null);
            c4860c.f14902n = ((Boolean) zzgq.zzb(bundle, AppMeasurementSdk.ConditionalUserProperty.ACTIVE, Boolean.class, Boolean.FALSE)).booleanValue();
            c4860c.f14901m = ((Long) zzgq.zzb(bundle, AppMeasurementSdk.ConditionalUserProperty.CREATION_TIMESTAMP, Long.class, 0L)).longValue();
            c4860c.f14903o = ((Long) zzgq.zzb(bundle, AppMeasurementSdk.ConditionalUserProperty.TRIGGERED_TIMESTAMP, Long.class, 0L)).longValue();
            arrayList.add(c4860c);
        }
        return arrayList;
    }

    @Override // p285x4.AbstractC4857a
    @KeepForSdk
    public void clearConditionalUserProperty(String str, String str2, Bundle bundle) {
        this.f14905a.clearConditionalUserProperty(str, null, null);
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0076, code lost:
        if (r0.equals(com.google.android.gms.measurement.AppMeasurement.FIAM_ORIGIN) == false) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00c5, code lost:
        if (r0.equals("frc") == false) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x015a, code lost:
        if (p295y4.C5005a.m143c(r0, r6.f14894f, r6.f14895g) == false) goto L4;
     */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0165 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0166  */
    @Override // p285x4.AbstractC4857a
    @com.google.android.gms.common.annotation.KeepForSdk
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo344d(p285x4.AbstractC4857a.C4860c r6) {
        /*
            Method dump skipped, instructions count: 617
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p285x4.C4861b.mo344d(x4.a$c):void");
    }

    @Override // p285x4.AbstractC4857a
    @KeepForSdk
    /* renamed from: e */
    public void mo343e(String str, String str2, Bundle bundle) {
        Bundle bundle2 = bundle;
        if (bundle == null) {
            bundle2 = new Bundle();
        }
        if (C5005a.m145a(str) && C5005a.m144b(str2, bundle2) && C5005a.m143c(str, str2, bundle2)) {
            if ("clx".equals(str) && "_ae".equals(str2)) {
                bundle2.putLong("_r", 1L);
            }
            this.f14905a.logEvent(str, str2, bundle2);
        }
    }

    @Override // p285x4.AbstractC4857a
    @KeepForSdk
    /* renamed from: f */
    public int mo342f(String str) {
        return this.f14905a.getMaxUserProperties(str);
    }
}
