package com.google.android.gms.location;

import android.content.Intent;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.C12041m;
import com.google.android.gms.common.internal.C12045o;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C12050a;
import com.google.android.gms.common.internal.safeparcel.C12051b;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/location/ActivityRecognitionResult.class */
public class ActivityRecognitionResult extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<ActivityRecognitionResult> CREATOR = new C13740al();
    List<DetectedActivity> zza;
    long zzb;
    long zzc;
    int zzd;
    Bundle zze;

    public ActivityRecognitionResult(DetectedActivity detectedActivity, long j, long j2) {
        this(Collections.singletonList(detectedActivity), j, j2, 0, null);
    }

    public ActivityRecognitionResult(List<DetectedActivity> list, long j, long j2) {
        this(list, j, j2, 0, null);
    }

    public ActivityRecognitionResult(List<DetectedActivity> list, long j, long j2, int i, Bundle bundle) {
        C12045o.m19153b(list != null && list.size() > 0, "Must have at least 1 detected activity");
        C12045o.m19153b(j > 0 && j2 > 0, "Must set times");
        this.zza = list;
        this.zzb = j;
        this.zzc = j2;
        this.zzd = i;
        this.zze = bundle;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0049  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.gms.location.ActivityRecognitionResult extractResult(android.content.Intent r4) {
        /*
            r0 = r4
            boolean r0 = hasResult(r0)
            if (r0 != 0) goto Lc
        L7:
            r0 = 0
            r5 = r0
            goto L43
        Lc:
            r0 = r4
            android.os.Bundle r0 = r0.getExtras()
            r5 = r0
            r0 = r5
            if (r0 != 0) goto L18
            goto L7
        L18:
            r0 = r5
            java.lang.String r1 = "com.google.android.location.internal.EXTRA_ACTIVITY_RESULT"
            java.lang.Object r0 = r0.get(r1)
            r5 = r0
            r0 = r5
            boolean r0 = r0 instanceof byte[]
            if (r0 == 0) goto L37
            r0 = r5
            byte[] r0 = (byte[]) r0
            android.os.Parcelable$Creator<com.google.android.gms.location.ActivityRecognitionResult> r1 = com.google.android.gms.location.ActivityRecognitionResult.CREATOR
            com.google.android.gms.common.internal.safeparcel.SafeParcelable r0 = com.google.android.gms.common.internal.safeparcel.C12051b.m19089a(r0, r1)
            com.google.android.gms.location.ActivityRecognitionResult r0 = (com.google.android.gms.location.ActivityRecognitionResult) r0
            r5 = r0
            goto L43
        L37:
            r0 = r5
            boolean r0 = r0 instanceof com.google.android.gms.location.ActivityRecognitionResult
            if (r0 == 0) goto L7
            r0 = r5
            com.google.android.gms.location.ActivityRecognitionResult r0 = (com.google.android.gms.location.ActivityRecognitionResult) r0
            r5 = r0
        L43:
            r0 = r5
            if (r0 == 0) goto L49
            r0 = r5
            return r0
        L49:
            r0 = r4
            java.util.List r0 = zza(r0)
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L70
            r0 = r4
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L5e
            goto L70
        L5e:
            r0 = r4
            r1 = r4
            int r1 = r1.size()
            r2 = 1
            int r1 = r1 - r2
            java.lang.Object r0 = r0.get(r1)
            com.google.android.gms.location.ActivityRecognitionResult r0 = (com.google.android.gms.location.ActivityRecognitionResult) r0
            return r0
        L70:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.location.ActivityRecognitionResult.extractResult(android.content.Intent):com.google.android.gms.location.ActivityRecognitionResult");
    }

    public static boolean hasResult(Intent intent) {
        if (intent == null) {
            return false;
        }
        if (intent.hasExtra("com.google.android.location.internal.EXTRA_ACTIVITY_RESULT")) {
            return true;
        }
        List<ActivityRecognitionResult> zza = zza(intent);
        return zza != null && !zza.isEmpty();
    }

    public static List<ActivityRecognitionResult> zza(Intent intent) {
        ArrayList arrayList = null;
        if (intent != null && intent.hasExtra("com.google.android.location.internal.EXTRA_ACTIVITY_RESULT_LIST")) {
            Parcelable.Creator<ActivityRecognitionResult> creator = CREATOR;
            ArrayList arrayList2 = (ArrayList) intent.getSerializableExtra("com.google.android.location.internal.EXTRA_ACTIVITY_RESULT_LIST");
            if (arrayList2 != null) {
                ArrayList arrayList3 = new ArrayList(arrayList2.size());
                int size = arrayList2.size();
                int i = 0;
                while (true) {
                    arrayList = arrayList3;
                    if (i >= size) {
                        break;
                    }
                    arrayList3.add(C12051b.m19089a((byte[]) arrayList2.get(i), creator));
                    i++;
                }
            } else {
                return null;
            }
        }
        return arrayList;
    }

    private static boolean zzb(Bundle bundle, Bundle bundle2) {
        int length;
        if (bundle == null) {
            return bundle2 == null;
        } else if (bundle2 == null || bundle.size() != bundle2.size()) {
            return false;
        } else {
            for (String str : bundle.keySet()) {
                if (!bundle2.containsKey(str)) {
                    return false;
                }
                Object obj = bundle.get(str);
                Object obj2 = bundle2.get(str);
                if (obj == null) {
                    if (obj2 != null) {
                        return false;
                    }
                } else if (obj instanceof Bundle) {
                    if (!zzb(bundle.getBundle(str), bundle2.getBundle(str))) {
                        return false;
                    }
                } else if (obj.getClass().isArray()) {
                    if (obj2 == null || !obj2.getClass().isArray() || (length = Array.getLength(obj)) != Array.getLength(obj2)) {
                        return false;
                    }
                    for (int i = 0; i < length; i++) {
                        if (!C12041m.m19168a(Array.get(obj, i), Array.get(obj2, i))) {
                            return false;
                        }
                    }
                    continue;
                } else if (!obj.equals(obj2)) {
                    return false;
                }
            }
            return true;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        ActivityRecognitionResult activityRecognitionResult = (ActivityRecognitionResult) obj;
        return this.zzb == activityRecognitionResult.zzb && this.zzc == activityRecognitionResult.zzc && this.zzd == activityRecognitionResult.zzd && C12041m.m19168a(this.zza, activityRecognitionResult.zza) && zzb(this.zze, activityRecognitionResult.zze);
    }

    public int getActivityConfidence(int i) {
        for (DetectedActivity detectedActivity : this.zza) {
            if (detectedActivity.getType() == i) {
                return detectedActivity.getConfidence();
            }
        }
        return 0;
    }

    public long getElapsedRealtimeMillis() {
        return this.zzc;
    }

    public DetectedActivity getMostProbableActivity() {
        return this.zza.get(0);
    }

    public List<DetectedActivity> getProbableActivities() {
        return this.zza;
    }

    public long getTime() {
        return this.zzb;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Long.valueOf(this.zzb), Long.valueOf(this.zzc), Integer.valueOf(this.zzd), this.zza, this.zze});
    }

    public String toString() {
        String valueOf = String.valueOf(this.zza);
        long j = this.zzb;
        long j2 = this.zzc;
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 124);
        sb.append("ActivityRecognitionResult [probableActivities=");
        sb.append(valueOf);
        sb.append(", timeMillis=");
        sb.append(j);
        sb.append(", elapsedRealtimeMillis=");
        sb.append(j2);
        sb.append("]");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int m19116a = C12050a.m19116a(parcel, 20293);
        C12050a.m19102a(parcel, 1, (List) this.zza, false);
        C12050a.m19111a(parcel, 2, this.zzb);
        C12050a.m19111a(parcel, 3, this.zzc);
        C12050a.m19112a(parcel, 4, this.zzd);
        C12050a.m19110a(parcel, 5, this.zze, false);
        C12050a.m19095b(parcel, m19116a);
    }
}
