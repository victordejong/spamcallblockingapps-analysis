package p081h.p203i.p204a.p224e.p280k;

import com.google.android.gms.location.DetectedActivity;
import java.util.Comparator;
/* renamed from: h.i.a.e.k.b0 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/k/b0.class */
public final class C8816b0 implements Comparator<DetectedActivity> {
    @Override // java.util.Comparator
    public final /* synthetic */ int compare(DetectedActivity detectedActivity, DetectedActivity detectedActivity2) {
        DetectedActivity detectedActivity3 = detectedActivity;
        DetectedActivity detectedActivity4 = detectedActivity2;
        int compareTo = Integer.valueOf(detectedActivity4.m31815c()).compareTo(Integer.valueOf(detectedActivity3.m31815c()));
        return compareTo == 0 ? Integer.valueOf(detectedActivity3.m31816H()).compareTo(Integer.valueOf(detectedActivity4.m31816H())) : compareTo;
    }
}
