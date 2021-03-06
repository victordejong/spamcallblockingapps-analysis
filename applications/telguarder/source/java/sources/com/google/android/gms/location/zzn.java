package com.google.android.gms.location;

import com.google.android.gms.common.internal.Preconditions;
import java.util.Comparator;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/location/zzn.class */
final class zzn implements Comparator<ActivityTransition> {
    @Override // java.util.Comparator
    public final /* bridge */ /* synthetic */ int compare(ActivityTransition activityTransition, ActivityTransition activityTransition2) {
        ActivityTransition activityTransition3 = activityTransition;
        ActivityTransition activityTransition4 = activityTransition2;
        Preconditions.checkNotNull(activityTransition3);
        Preconditions.checkNotNull(activityTransition4);
        int activityType = activityTransition3.getActivityType();
        int activityType2 = activityTransition4.getActivityType();
        int i = 1;
        if (activityType == activityType2) {
            int transitionType = activityTransition3.getTransitionType();
            int transitionType2 = activityTransition4.getTransitionType();
            if (transitionType == transitionType2) {
                i = 0;
            } else if (transitionType < transitionType2) {
                i = -1;
            }
        } else if (activityType < activityType2) {
            return -1;
        }
        return i;
    }
}
