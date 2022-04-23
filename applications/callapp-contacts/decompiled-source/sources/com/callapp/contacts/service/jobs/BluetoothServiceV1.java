package com.callapp.contacts.service.jobs;

import androidx.core.app.SafeJobIntentService;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.contact.details.overlay.driveMode.DriveModePopUp;
import com.callapp.contacts.manager.popup.PopupManager;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/service/jobs/BluetoothServiceV1.class */
public class BluetoothServiceV1 extends SafeJobIntentService {
    public static AtomicBoolean j = new AtomicBoolean();

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(List list) {
        PopupManager.get().a(CallAppApplication.get(), new DriveModePopUp(null, list, true, DriveModePopUp.CarViewType.GENERAL));
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x0260, code lost:
        if (r15 != false) goto L_0x0263;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x0263, code lost:
        r9 = true;
        r14 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x0295, code lost:
        if (r15 != false) goto L_0x0263;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x02c7, code lost:
        if (r15 != false) goto L_0x0263;
     */
    @Override // androidx.core.app.JobIntentService
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(android.content.Intent r7) {
        /*
            Method dump skipped, instructions count: 767
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.service.jobs.BluetoothServiceV1.a(android.content.Intent):void");
    }
}
