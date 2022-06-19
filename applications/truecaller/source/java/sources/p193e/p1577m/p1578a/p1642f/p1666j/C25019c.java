package p193e.p1577m.p1578a.p1642f.p1666j;

import com.google.android.gms.location.ActivityTransition;
import java.util.Comparator;
/* renamed from: e.m.a.f.j.c */
/* loaded from: classes3-dex2jar.jar:e/m/a/f/j/c.class */
public final class C25019c implements Comparator<ActivityTransition> {
    @Override // java.util.Comparator
    public final int compare(ActivityTransition activityTransition, ActivityTransition activityTransition2) {
        ActivityTransition activityTransition3 = activityTransition;
        ActivityTransition activityTransition4 = activityTransition2;
        int i = activityTransition3.a;
        int i2 = activityTransition4.a;
        if (i != i2) {
            return i < i2 ? -1 : 1;
        }
        int i3 = activityTransition3.b;
        int i4 = activityTransition4.b;
        if (i3 == i4) {
            return 0;
        }
        return i3 < i4 ? -1 : 1;
    }
}
