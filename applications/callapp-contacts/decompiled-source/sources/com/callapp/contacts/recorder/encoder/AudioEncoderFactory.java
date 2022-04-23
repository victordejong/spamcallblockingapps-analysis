package com.callapp.contacts.recorder.encoder;

import com.callapp.contacts.recorder.enums.RecordConfiguration;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/recorder/encoder/AudioEncoderFactory.class */
public class AudioEncoderFactory {
    public static AudioEncoder a(RecordConfiguration.FILE_FORMAT file_format) {
        return file_format == RecordConfiguration.FILE_FORMAT.AMR ? new AMREncoder() : new WaveEncoder();
    }
}
