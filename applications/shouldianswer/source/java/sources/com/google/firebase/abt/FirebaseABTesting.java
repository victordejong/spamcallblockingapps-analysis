package com.google.firebase.abt;

import android.content.Context;
import android.text.TextUtils;
import com.google.firebase.analytics.connector.AnalyticsConnector;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/firebase/abt/FirebaseABTesting.class */
public class FirebaseABTesting {
    private final AnalyticsConnector zzj;
    private final String zzk;
    private Integer zzl = null;

    public FirebaseABTesting(Context context, AnalyticsConnector analyticsConnector, String str) {
        this.zzj = analyticsConnector;
        this.zzk = str;
    }

    private final void zza(String str) {
        this.zzj.clearConditionalUserProperty(str, null, null);
    }

    private final void zza(Collection<AnalyticsConnector.ConditionalUserProperty> collection) {
        for (AnalyticsConnector.ConditionalUserProperty conditionalUserProperty : collection) {
            zza(conditionalUserProperty.name);
        }
    }

    private final void zzg() {
        if (this.zzj != null) {
            return;
        }
        throw new AbtException("The Analytics SDK is not available. Please check that the Analytics SDK is included in your app dependencies.");
    }

    private final List<AnalyticsConnector.ConditionalUserProperty> zzh() {
        return this.zzj.getConditionalUserProperties(this.zzk, "");
    }

    public void removeAllExperiments() {
        zzg();
        zza(zzh());
    }

    public void replaceAllExperiments(List<Map<String, String>> list) {
        zzg();
        if (list != null) {
            ArrayList arrayList = new ArrayList();
            for (Map<String, String> map : list) {
                arrayList.add(zza.zza(map));
            }
            if (arrayList.isEmpty()) {
                removeAllExperiments();
                return;
            }
            HashSet hashSet = new HashSet();
            ArrayList arrayList2 = arrayList;
            int size = arrayList2.size();
            int i = 0;
            while (i < size) {
                i++;
                hashSet.add(((zza) arrayList2.get(i)).zza());
            }
            List<AnalyticsConnector.ConditionalUserProperty> zzh = zzh();
            HashSet hashSet2 = new HashSet();
            for (AnalyticsConnector.ConditionalUserProperty conditionalUserProperty : zzh) {
                hashSet2.add(conditionalUserProperty.name);
            }
            ArrayList arrayList3 = new ArrayList();
            for (AnalyticsConnector.ConditionalUserProperty conditionalUserProperty2 : zzh) {
                if (!hashSet.contains(conditionalUserProperty2.name)) {
                    arrayList3.add(conditionalUserProperty2);
                }
            }
            zza(arrayList3);
            ArrayList arrayList4 = new ArrayList();
            int size2 = arrayList2.size();
            int i2 = 0;
            while (i2 < size2) {
                Object obj = arrayList2.get(i2);
                int i3 = i2 + 1;
                zza zzaVar = (zza) obj;
                i2 = i3;
                if (!hashSet2.contains(zzaVar.zza())) {
                    arrayList4.add(zzaVar);
                    i2 = i3;
                }
            }
            ArrayDeque arrayDeque = new ArrayDeque(zzh());
            if (this.zzl == null) {
                this.zzl = Integer.valueOf(this.zzj.getMaxUserProperties(this.zzk));
            }
            int intValue = this.zzl.intValue();
            ArrayList arrayList5 = arrayList4;
            int size3 = arrayList5.size();
            int i4 = 0;
            while (i4 < size3) {
                i4++;
                zza zzaVar2 = (zza) arrayList5.get(i4);
                while (arrayDeque.size() >= intValue) {
                    zza(((AnalyticsConnector.ConditionalUserProperty) arrayDeque.pollFirst()).name);
                }
                AnalyticsConnector.ConditionalUserProperty conditionalUserProperty3 = new AnalyticsConnector.ConditionalUserProperty();
                conditionalUserProperty3.origin = this.zzk;
                conditionalUserProperty3.creationTimestamp = zzaVar2.zzd();
                conditionalUserProperty3.name = zzaVar2.zza();
                conditionalUserProperty3.value = zzaVar2.zzb();
                conditionalUserProperty3.triggerEventName = TextUtils.isEmpty(zzaVar2.zzc()) ? null : zzaVar2.zzc();
                conditionalUserProperty3.triggerTimeout = zzaVar2.zze();
                conditionalUserProperty3.timeToLive = zzaVar2.zzf();
                this.zzj.setConditionalUserProperty(conditionalUserProperty3);
                arrayDeque.offer(conditionalUserProperty3);
            }
            return;
        }
        throw new IllegalArgumentException("The replacementExperiments list is null.");
    }
}
