package p1727n3.p1758e.p1759a.p1761e.p1762k2;

import android.hardware.camera2.CameraAccessException;
import com.huawei.updatesdk.service.otaupdate.UpdateDialogStatusCode;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
/* renamed from: n3.e.a.e.k2.a */
/* loaded from: classes-dex2jar.jar:n3/e/a/e/k2/a.class */
public class C25764a extends Exception {

    /* renamed from: b */
    public static final Set<Integer> f72156b = Collections.unmodifiableSet(new HashSet(Arrays.asList(4, 5, 1, 2, 3)));

    /* renamed from: a */
    public final int f72157a;

    static {
        Collections.unmodifiableSet(new HashSet(Arrays.asList(10001, Integer.valueOf((int) UpdateDialogStatusCode.SHOW))));
    }

    public C25764a(int i, Throwable th) {
        super(i != 1 ? i != 2 ? i != 3 ? i != 4 ? i != 5 ? i != 10001 ? i != 10002 ? null : "Failed to create CameraCharacteristics." : "Some API 28 devices cannot access the camera when the device is in \"Do Not Disturb\" mode. The camera will not be accessible until \"Do Not Disturb\" mode is disabled." : "The system-wide limit for number of open cameras has been reached, and more camera devices cannot be opened until previous instances are closed." : "The camera device is in use already" : "The camera device is currently in the error state; no further calls to it will succeed." : "The camera device is removable and has been disconnected from the Android device, or the camera service has shut down the connection due to a higher-priority access request for the camera device." : "The camera is disabled due to a device policy, and cannot be opened.", th);
        this.f72157a = i;
        if (f72156b.contains(Integer.valueOf(i))) {
            new CameraAccessException(i, null, th);
        }
    }

    public C25764a(CameraAccessException cameraAccessException) {
        super(cameraAccessException.getMessage(), cameraAccessException.getCause());
        this.f72157a = cameraAccessException.getReason();
    }
}
