package com.callapp.contacts.recorder.enums;

import android.os.Build;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.recorder.encoder.AudioEncoder;
import com.callapp.contacts.recorder.encoder.AudioEncoderFactory;
import com.callapp.contacts.recorder.enums.RecordConfigurationDevices;
import com.callapp.contacts.util.Activities;
import io.objectbox.converter.PropertyConverter;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/recorder/enums/RecordConfiguration.class */
public class RecordConfiguration {
    private AudioEncoder audioEncoder;
    private int audioEncoderType;
    private METHOD audioMethod;
    private AUDIO_SOURCE audioSource;
    private int emptyBufferCounter;
    private boolean forceIncommunicationMode;
    private boolean isInRecorderTest;
    private FILE_FORMAT outputFormat;
    private int volumeLevel;

    /* renamed from: com.callapp.contacts.recorder.enums.RecordConfiguration$1  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/recorder/enums/RecordConfiguration$1.class */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$callapp$contacts$recorder$enums$RecordConfiguration$FILE_FORMAT;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[FILE_FORMAT.values().length];
            $SwitchMap$com$callapp$contacts$recorder$enums$RecordConfiguration$FILE_FORMAT = iArr;
            try {
                iArr[FILE_FORMAT.AMR.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$callapp$contacts$recorder$enums$RecordConfiguration$FILE_FORMAT[FILE_FORMAT.WAV.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$callapp$contacts$recorder$enums$RecordConfiguration$FILE_FORMAT[FILE_FORMAT.MPEG_4.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE.class */
    public enum AUDIO_SOURCE {
        DEFAULT(0, "Default"),
        MIC(1, "Mic"),
        VOICE_CALL(4, "Voice Call"),
        VOICE_RECOGNITION(6, "Voice Recognition"),
        VOICE_COMMUNICATION(7, "Voice Communication");
        
        private final int source;
        private final String title;

        AUDIO_SOURCE(int i, String str) {
            this.source = i;
            this.title = str;
        }

        public final int getSource() {
            return this.source;
        }

        public final String getTitle() {
            return this.title;
        }

        @Override // java.lang.Enum
        public final String toString() {
            return "AUDIO_SOURCE{title='" + this.title + "', source=" + this.source + '}';
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/recorder/enums/RecordConfiguration$AudioSourceConverter.class */
    public static class AudioSourceConverter implements PropertyConverter<AUDIO_SOURCE, Integer> {
        public Integer convertToDatabaseValue(AUDIO_SOURCE audio_source) {
            if (audio_source == null) {
                return null;
            }
            return Integer.valueOf(audio_source.source);
        }

        public AUDIO_SOURCE convertToEntityProperty(Integer num) {
            AUDIO_SOURCE[] values;
            if (num == null) {
                return null;
            }
            for (AUDIO_SOURCE audio_source : AUDIO_SOURCE.values()) {
                if (audio_source.source == num.intValue()) {
                    return audio_source;
                }
            }
            return AUDIO_SOURCE.DEFAULT;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT.class */
    public enum FILE_FORMAT {
        AMR(3, "amr", "AMR"),
        WAV(0, "wav", "WAV"),
        MPEG_4(2, "mp4", "MPEG4");
        
        private final String fileSuffix;
        private final int format;
        private final String title;

        FILE_FORMAT(int i, String str, String str2) {
            this.format = i;
            this.fileSuffix = str;
            this.title = str2;
        }

        public final String getFileSuffix() {
            return this.fileSuffix;
        }

        public final int getFormat() {
            return this.format;
        }

        public final String getTitle() {
            return this.title;
        }

        @Override // java.lang.Enum
        public final String toString() {
            return "FILE_FORMAT{format=" + this.format + ", fileSuffix='" + this.fileSuffix + "', title='" + this.title + "'}";
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/recorder/enums/RecordConfiguration$FileFormatConverter.class */
    public static class FileFormatConverter implements PropertyConverter<FILE_FORMAT, Integer> {
        public Integer convertToDatabaseValue(FILE_FORMAT file_format) {
            if (file_format == null) {
                return null;
            }
            return Integer.valueOf(file_format.format);
        }

        public FILE_FORMAT convertToEntityProperty(Integer num) {
            FILE_FORMAT[] values;
            if (num == null) {
                return null;
            }
            for (FILE_FORMAT file_format : FILE_FORMAT.values()) {
                if (file_format.format == num.intValue()) {
                    return file_format;
                }
            }
            return FILE_FORMAT.WAV;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/recorder/enums/RecordConfiguration$METHOD.class */
    public enum METHOD {
        METHOD_NATIVE(0, "AudioRecorder"),
        METHOD_NON_NATIVE(1, "MediaRecorder");
        
        private final String title;
        private final int value;

        METHOD(int i, String str) {
            this.title = str;
            this.value = i;
        }

        public final String getTitle() {
            return this.title;
        }

        public final int getValue() {
            return this.value;
        }

        @Override // java.lang.Enum
        public final String toString() {
            return "METHOD{title='" + this.title + "', value=" + this.value + '}';
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/recorder/enums/RecordConfiguration$MethodConverter.class */
    public static class MethodConverter implements PropertyConverter<METHOD, Integer> {
        public Integer convertToDatabaseValue(METHOD method) {
            if (method == null) {
                return null;
            }
            return Integer.valueOf(method.value);
        }

        public METHOD convertToEntityProperty(Integer num) {
            METHOD[] values;
            if (num == null) {
                return null;
            }
            for (METHOD method : METHOD.values()) {
                if (method.value == num.intValue()) {
                    return method;
                }
            }
            return METHOD.METHOD_NATIVE;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/recorder/enums/RecordConfiguration$RecorderStatusConverter.class */
    public static class RecorderStatusConverter implements PropertyConverter<STATUS, Integer> {
        public Integer convertToDatabaseValue(STATUS status) {
            if (status == null) {
                return null;
            }
            return Integer.valueOf(status.value);
        }

        public STATUS convertToEntityProperty(Integer num) {
            STATUS[] values;
            if (num == null) {
                return null;
            }
            for (STATUS status : STATUS.values()) {
                if (status.value == num.intValue()) {
                    return status;
                }
            }
            return STATUS.IDLE;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/recorder/enums/RecordConfiguration$STATUS.class */
    public enum STATUS {
        IDLE(0, "Idle"),
        STARTED(1, "Started"),
        STOPPED(2, "Stopped"),
        FAILED(3, Constants.FAILED),
        DONE(4, "Done"),
        APPLIED(5, "Applied"),
        DELETED(6, "Deleted");
        
        private final String status;
        private final int value;

        STATUS(int i, String str) {
            this.status = str;
            this.value = i;
        }

        public final String getStatus() {
            return this.status;
        }

        public final int getValue() {
            return this.value;
        }

        @Override // java.lang.Enum
        public final String toString() {
            return "STATUS{status='" + this.status + "', value=" + this.value + '}';
        }
    }

    public RecordConfiguration() {
        this.audioMethod = (METHOD) Prefs.eO.get();
        this.audioSource = (AUDIO_SOURCE) Prefs.eP.get();
        this.outputFormat = (FILE_FORMAT) Prefs.eQ.get();
        this.volumeLevel = Prefs.eT.get().intValue();
        if (Build.VERSION.SDK_INT < 28) {
            this.forceIncommunicationMode = true;
        } else {
            this.forceIncommunicationMode = Prefs.eR.get().booleanValue();
        }
        int i = AnonymousClass1.$SwitchMap$com$callapp$contacts$recorder$enums$RecordConfiguration$FILE_FORMAT[this.outputFormat.ordinal()];
        if (i == 1) {
            this.audioEncoderType = 1;
        } else if (i == 2 || i == 3) {
            this.audioEncoderType = 3;
        } else {
            this.audioEncoderType = -1;
        }
        this.audioEncoder = AudioEncoderFactory.a(this.outputFormat);
    }

    public RecordConfiguration(METHOD method, AUDIO_SOURCE audio_source, FILE_FORMAT file_format, int i, boolean z) {
        this.audioMethod = method;
        this.audioSource = audio_source;
        this.outputFormat = file_format;
        this.isInRecorderTest = true;
        this.volumeLevel = i;
        this.forceIncommunicationMode = z;
        int i2 = AnonymousClass1.$SwitchMap$com$callapp$contacts$recorder$enums$RecordConfiguration$FILE_FORMAT[file_format.ordinal()];
        if (i2 == 1) {
            this.audioEncoderType = 1;
        } else if (i2 == 2 || i2 == 3) {
            this.audioEncoderType = 3;
        } else {
            this.audioEncoderType = -1;
        }
        this.audioEncoder = AudioEncoderFactory.a(file_format);
    }

    public static void migrateOldConfiguration() {
        switch (Prefs.eN.get().intValue()) {
            case 1:
                Prefs.eO.set(METHOD.METHOD_NATIVE);
                Prefs.eP.set(AUDIO_SOURCE.VOICE_COMMUNICATION);
                Prefs.eQ.set(FILE_FORMAT.AMR);
                return;
            case 2:
                Prefs.eO.set(METHOD.METHOD_NATIVE);
                Prefs.eP.set(AUDIO_SOURCE.VOICE_COMMUNICATION);
                Prefs.eQ.set(FILE_FORMAT.WAV);
                return;
            case 3:
                Prefs.eO.set(METHOD.METHOD_NON_NATIVE);
                Prefs.eP.set(AUDIO_SOURCE.VOICE_COMMUNICATION);
                Prefs.eQ.set(FILE_FORMAT.AMR);
                return;
            case 4:
                Prefs.eO.set(METHOD.METHOD_NON_NATIVE);
                Prefs.eP.set(AUDIO_SOURCE.VOICE_CALL);
                Prefs.eQ.set(FILE_FORMAT.AMR);
                return;
            case 5:
                Prefs.eO.set(METHOD.METHOD_NON_NATIVE);
                Prefs.eP.set(AUDIO_SOURCE.VOICE_COMMUNICATION);
                Prefs.eQ.set(FILE_FORMAT.MPEG_4);
                return;
            case 6:
                Prefs.eO.set(METHOD.METHOD_NON_NATIVE);
                Prefs.eP.set(AUDIO_SOURCE.VOICE_COMMUNICATION);
                Prefs.eQ.set(FILE_FORMAT.AMR);
                return;
            case 7:
                Prefs.eO.set(METHOD.METHOD_NON_NATIVE);
                Prefs.eP.set(AUDIO_SOURCE.MIC);
                Prefs.eQ.set(FILE_FORMAT.AMR);
                return;
            case 8:
                Prefs.eO.set(METHOD.METHOD_NATIVE);
                Prefs.eP.set(AUDIO_SOURCE.VOICE_RECOGNITION);
                Prefs.eQ.set(FILE_FORMAT.AMR);
                return;
            case 9:
                Prefs.eO.set(METHOD.METHOD_NATIVE);
                Prefs.eP.set(AUDIO_SOURCE.VOICE_RECOGNITION);
                Prefs.eQ.set(FILE_FORMAT.WAV);
                return;
            case 10:
                Prefs.eO.set(METHOD.METHOD_NATIVE);
                Prefs.eP.set(AUDIO_SOURCE.MIC);
                Prefs.eQ.set(FILE_FORMAT.AMR);
                return;
            case 11:
                Prefs.eO.set(METHOD.METHOD_NATIVE);
                Prefs.eP.set(AUDIO_SOURCE.MIC);
                Prefs.eQ.set(FILE_FORMAT.WAV);
                return;
            default:
                Prefs.eO.set(METHOD.METHOD_NATIVE);
                Prefs.eP.set(AUDIO_SOURCE.VOICE_COMMUNICATION);
                Prefs.eQ.set(FILE_FORMAT.AMR);
                return;
        }
    }

    public static void setDefaults() {
        RecordConfigurationDevices.ConfigurationResult recordingConfiguration = RecordConfigurationDevices.getRecordingConfiguration();
        Prefs.eO.set(recordingConfiguration.method);
        Prefs.eP.set(recordingConfiguration.audio_source);
        Prefs.eR.set(Boolean.valueOf(recordingConfiguration.fic));
        Prefs.eQ.set(FILE_FORMAT.AMR);
    }

    public AudioEncoder getAudioEncoder() {
        return this.audioEncoder;
    }

    public int getAudioEncoderType() {
        return this.audioEncoderType;
    }

    public METHOD getAudioMethod() {
        return this.audioMethod;
    }

    public AUDIO_SOURCE getAudioSource() {
        return this.audioSource;
    }

    public String getFileSuffix() {
        return this.outputFormat.getFileSuffix();
    }

    public FILE_FORMAT getOutputFormat() {
        return this.outputFormat;
    }

    public int getVolumeLevel() {
        return this.volumeLevel;
    }

    public boolean isEmptyRecord() {
        return this.emptyBufferCounter == 10;
    }

    public boolean isForceIncommunicationMode() {
        return this.forceIncommunicationMode;
    }

    public boolean isInRecorderTest() {
        return this.isInRecorderTest;
    }

    public void setEmptyBufferCounter(boolean z) {
        if (z) {
            this.emptyBufferCounter++;
        } else {
            this.emptyBufferCounter = 0;
        }
    }

    public void setVolumeLevel(int i) {
        this.volumeLevel = i;
    }

    public String toString() {
        return "RecordConfiguration{audioMethod=" + this.audioMethod + ", audioSource=" + this.audioSource + ", outputFormat=" + this.outputFormat + ", audioEncoderType=" + this.audioEncoderType + ", audioEncoder=" + this.audioEncoder + ", forceIncommunicationMode=" + this.forceIncommunicationMode + ", accessiblityServiceEnabled=" + Activities.isCallAppAccessibilityServiceEnabled() + '}';
    }
}
