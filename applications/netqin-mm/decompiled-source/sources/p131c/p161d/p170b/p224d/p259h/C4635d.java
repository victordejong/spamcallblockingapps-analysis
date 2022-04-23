package p131c.p161d.p170b.p224d.p259h;

import com.google.android.gms.location.DetectedActivity;
import java.util.Comparator;
/* renamed from: c.d.b.d.h.d */
/* loaded from: classes-dex2jar.jar:c/d/b/d/h/d.class */
public final class C4635d implements Comparator<DetectedActivity> {
    @Override // java.util.Comparator
    public final /* synthetic */ int compare(DetectedActivity detectedActivity, DetectedActivity detectedActivity2) {
        DetectedActivity detectedActivity3 = detectedActivity;
        DetectedActivity detectedActivity4 = detectedActivity2;
        int compareTo = Integer.valueOf(detectedActivity4.m9418f()).compareTo(Integer.valueOf(detectedActivity3.m9418f()));
        return compareTo == 0 ? Integer.valueOf(detectedActivity3.m9417i()).compareTo(Integer.valueOf(detectedActivity4.m9417i())) : compareTo;
    }
}
