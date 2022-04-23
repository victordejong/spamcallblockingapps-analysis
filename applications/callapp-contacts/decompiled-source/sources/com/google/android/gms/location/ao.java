package com.google.android.gms.location;

import com.google.android.gms.common.internal.o;
import java.util.Comparator;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/location/ao.class */
final class ao implements Comparator<ActivityTransition> {
    @Override // java.util.Comparator
    public final /* synthetic */ int compare(ActivityTransition activityTransition, ActivityTransition activityTransition2) {
        ActivityTransition activityTransition3 = activityTransition;
        ActivityTransition activityTransition4 = activityTransition2;
        o.a(activityTransition3);
        o.a(activityTransition4);
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
