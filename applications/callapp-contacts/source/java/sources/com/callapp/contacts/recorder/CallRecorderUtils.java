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
    /* JADX WARN: Type inference failed for: r0v51, types: [long] */
    /* renamed from: a */
    public static CallRecorder m27850a(File file) {
        CallRecorder callRecorder;
        try {
            String[] split = StringUtils.m26023h(file.getName(), "recording-").split("_");
            callRecorder = null;
            if (split.length > 2) {
                int i = 0;
                String str = split[0];
                Date parse = new SimpleDateFormat("dd-MM-yyyy_HH-mm-ss").parse(StringUtils.m26054a(split[1] + "_" + split[2], 0, 19));
                boolean m26030e = split.length > 3 ? StringUtils.m26030e(split[3], "1") : true;
                Phone m28239a = PhoneManager.get().m28239a(str);
                char c = 0;
                try {
                    c = DeviceIdLoader.m28854a(m28239a, 1000);
                } catch (DeviceIdLoader.OperationFailedException e) {
                }
                CallRecorderManager.get();
                long m27872a = CallRecorderManager.m27872a(file.getAbsolutePath());
                callRecorder = null;
                if (m27872a >= 5) {
                    callRecorder = new CallRecorder();
                    try {
                        callRecorder.setPhoneOrIdKey(ContactData.generateId(m28239a, c));
                        callRecorder.setDuration(m27872a);
                        callRecorder.setFileName(file.getAbsolutePath());
                        callRecorder.setDate(parse.getTime());
                        if (m26030e) {
                            i = 1;
                        }
                        callRecorder.setCallType(i);
                        callRecorder.setContactId(c);
                    } catch (Exception e2) {
                    }
                }
            }
        } catch (Exception e3) {
            callRecorder = null;
        }
        return callRecorder;
    }

    /* renamed from: a */
    public static String m27852a(int i, long j) {
        return Activities.m27697a(2131887525, DateUtils.formatElapsedTime(i), DateUtils.formatElapsedTime(j));
    }

    /* renamed from: a */
    public static String m27851a(RecordConfiguration recordConfiguration, String str, boolean z) {
        File file;
        String str2 = "recording-" + RegexUtils.m31895h(str) + new SimpleDateFormat("_dd-MM-yyyy_HH-mm-ss").format(new Date()) + "_" + (z ? 1 : 0) + "_";
        if (!recordConfiguration.isInRecorderTest()) {
            file = IoUtils.m27507a(str2, "." + recordConfiguration.getFileSuffix(), "CallAppRecording");
        } else {
            file = IoUtils.m27503b("CallAppRecordingTest" + File.separator + str2 + "." + recordConfiguration.getFileSuffix());
        }
        return file.getAbsolutePath();
    }

    public static File getAudioRecordingFolder() {
        return IoUtils.m27501c("CallAppRecording");
    }
}
