package com.callapp.contacts.service.jobs;

import android.content.Intent;
import androidx.core.app.SafeJobIntentService;
import com.callapp.contacts.util.aws.AWSUtils;
import com.callapp.framework.util.StringUtils;
import java.io.File;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/service/jobs/UploadFileService.class */
public class UploadFileService extends SafeJobIntentService {
    @Override // androidx.core.app.JobIntentService
    public final void a(Intent intent) {
        String stringExtra = intent.getStringExtra("uploadFile");
        String stringExtra2 = intent.getStringExtra("uploadFileName");
        File file = new File(stringExtra);
        if (file.exists()) {
            String str = stringExtra2;
            if (StringUtils.a((CharSequence) stringExtra2)) {
                str = AWSUtils.b(null);
            }
            AWSUtils.a(file, str, "image/jpg", "callapp");
            file.delete();
        }
    }
}
