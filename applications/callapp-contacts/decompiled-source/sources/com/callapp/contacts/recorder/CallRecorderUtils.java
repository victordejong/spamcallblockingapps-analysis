package com.callapp.contacts.recorder;

import android.text.format.DateUtils;
import com.callapp.common.util.RegexUtils;
import com.callapp.contacts.loader.device.DeviceIdLoader;
import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.objectbox.CallRecorder;
import com.callapp.contacts.recorder.enums.RecordConfiguration;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.IoUtils;
import com.callapp.framework.phone.Phone;
import com.callapp.framework.util.StringUtils;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/recorder/CallRecorderUtils.class */
public class CallRecorderUtils {
    public static CallRecorder a(File file) {
        CallRecorder callRecorder;
        try {
            String[] split = StringUtils.h(file.getName(), "recording-").split("_");
            callRecorder = null;
            if (split.length > 2) {
                int i = 0;
                String str = split[0];
                Date parse = new SimpleDateFormat("dd-MM-yyyy_HH-mm-ss").parse(StringUtils.a(split[1] + "_" + split[2], 0, 19));
                boolean e = split.length > 3 ? StringUtils.e(split[3], "1") : true;
                Phone a2 = PhoneManager.get().a(str);
                long j = 0;
                try {
                    j = DeviceIdLoader.a(a2, 1000);
                } catch (DeviceIdLoader.OperationFailedException e2) {
                }
                CallRecorderManager.get();
                long a3 = CallRecorderManager.a(file.getAbsolutePath());
                callRecorder = null;
                if (a3 >= 5) {
                    callRecorder = new CallRecorder();
                    try {
                        callRecorder.setPhoneOrIdKey(ContactData.generateId(a2, j));
                        callRecorder.setDuration(a3);
                        callRecorder.setFileName(file.getAbsolutePath());
                        callRecorder.setDate(parse.getTime());
                        if (e) {
                            i = 1;
                        }
                        callRecorder.setCallType(i);
                        callRecorder.setContactId(j);
                    } catch (Exception e3) {
                    }
                }
            }
        } catch (Exception e4) {
            callRecorder = null;
        }
        return callRecorder;
    }

    public static String a(int i, long j) {
        return Activities.a(2131887525, DateUtils.formatElapsedTime(i), DateUtils.formatElapsedTime(j));
    }

    public static String a(RecordConfiguration recordConfiguration, String str, boolean z) {
        File file;
        String str2 = "recording-" + RegexUtils.h(str) + new SimpleDateFormat("_dd-MM-yyyy_HH-mm-ss").format(new Date()) + "_" + (z ? 1 : 0) + "_";
        if (!recordConfiguration.isInRecorderTest()) {
            file = IoUtils.a(str2, "." + recordConfiguration.getFileSuffix(), "CallAppRecording");
        } else {
            file = IoUtils.b("CallAppRecordingTest" + File.separator + str2 + "." + recordConfiguration.getFileSuffix());
        }
        return file.getAbsolutePath();
    }

    public static File getAudioRecordingFolder() {
        return IoUtils.c("CallAppRecording");
    }
}
