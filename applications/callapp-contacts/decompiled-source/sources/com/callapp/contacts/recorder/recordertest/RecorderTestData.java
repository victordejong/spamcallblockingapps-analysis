package com.callapp.contacts.recorder.recordertest;

import android.os.Parcel;
import android.os.Parcelable;
import com.callapp.contacts.manager.CallAppRemoteConfigManager;
import com.callapp.contacts.model.objectbox.CallRecorder;
import com.callapp.contacts.recorder.enums.RecordConfiguration;
import io.objectbox.BoxStore;
import io.objectbox.model.PropertyFlags;
import io.objectbox.relation.ToOne;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b.\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018��2\u00020\u0001B\u0007\b\u0016¢\u0006\u0002\u0010\u0002BY\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\n\u0012\b\b\u0002\u0010\u000b\u001a\u00020\f\u0012\u0006\u0010\r\u001a\u00020\u000e\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u000e\u0012\b\b\u0002\u0010\u0011\u001a\u00020\u0012¢\u0006\u0002\u0010\u0013J\t\u0010?\u001a\u00020\u0004HÆ\u0003J\t\u0010@\u001a\u00020\u0006HÆ\u0003J\t\u0010A\u001a\u00020\bHÆ\u0003J\t\u0010B\u001a\u00020\nHÆ\u0003J\t\u0010C\u001a\u00020\fHÆ\u0003J\t\u0010D\u001a\u00020\u000eHÆ\u0003J\t\u0010E\u001a\u00020\u0004HÆ\u0003J\u0010\u0010F\u001a\u0004\u0018\u00010\u000eHÆ\u0003¢\u0006\u0002\u0010;J\t\u0010G\u001a\u00020\u0012HÆ\u0003Jj\u0010H\u001a\u00020��2\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\n2\b\b\u0002\u0010\u000b\u001a\u00020\f2\b\b\u0002\u0010\r\u001a\u00020\u000e2\b\b\u0002\u0010\u000f\u001a\u00020\u00042\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u000e2\b\b\u0002\u0010\u0011\u001a\u00020\u0012HÆ\u0001¢\u0006\u0002\u0010IJ\t\u0010J\u001a\u00020\u000eHÖ\u0001J\u0013\u0010K\u001a\u00020\u00122\b\u0010L\u001a\u0004\u0018\u00010MHÖ\u0003J\t\u0010N\u001a\u00020\u000eHÖ\u0001J\t\u0010O\u001a\u00020PHÖ\u0001J\u0019\u0010Q\u001a\u00020R2\u0006\u0010S\u001a\u00020T2\u0006\u0010U\u001a\u00020\u000eHÖ\u0001R\u001e\u0010\u0005\u001a\u00020\u00068\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\u001e\u0010\u0007\u001a\u00020\b8\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bR&\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u001e0\u001dX\u0086.¢\u0006\u0014\n��\u0012\u0004\b\u001f\u0010\u0002\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R\u001a\u0010\u0011\u001a\u00020\u0012X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b$\u0010%\"\u0004\b&\u0010'R\u001e\u0010\u0003\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n��\u001a\u0004\b(\u0010)\"\u0004\b*\u0010+R\u001e\u0010\t\u001a\u00020\n8\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n��\u001a\u0004\b,\u0010-\"\u0004\b.\u0010/R\u001a\u0010\u000f\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b0\u0010)\"\u0004\b1\u0010+R\u001a\u0010\r\u001a\u00020\u000eX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b2\u00103\"\u0004\b4\u00105R\u001e\u0010\u000b\u001a\u00020\f8\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n��\u001a\u0004\b6\u00107\"\u0004\b8\u00109R\u001e\u0010\u0010\u001a\u0004\u0018\u00010\u000eX\u0086\u000e¢\u0006\u0010\n\u0002\u0010>\u001a\u0004\b:\u0010;\"\u0004\b<\u0010=¨\u0006V"}, d2 = {"Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;", "Landroid/os/Parcelable;", "()V", "id", "", "audioMethod", "Lcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;", "audioSource", "Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;", "outputFormat", "Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;", "testStatus", "Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;", "testPriority", "", "recordTime", "volumeLevel", "forceInCommunicationMode", "", "(JLcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;IJLjava/lang/Integer;Z)V", "getAudioMethod", "()Lcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;", "setAudioMethod", "(Lcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;)V", "getAudioSource", "()Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;", "setAudioSource", "(Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;)V", "callRecorder", "Lio/objectbox/relation/ToOne;", "Lcom/callapp/contacts/model/objectbox/CallRecorder;", "getCallRecorder$annotations", "getCallRecorder", "()Lio/objectbox/relation/ToOne;", "setCallRecorder", "(Lio/objectbox/relation/ToOne;)V", "getForceInCommunicationMode", "()Z", "setForceInCommunicationMode", "(Z)V", "getId", "()J", "setId", "(J)V", "getOutputFormat", "()Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;", "setOutputFormat", "(Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;)V", "getRecordTime", "setRecordTime", "getTestPriority", "()I", "setTestPriority", "(I)V", "getTestStatus", "()Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;", "setTestStatus", "(Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;)V", "getVolumeLevel", "()Ljava/lang/Integer;", "setVolumeLevel", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(JLcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;IJLjava/lang/Integer;Z)Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;", "describeContents", "equals", "other", "", "hashCode", "toString", "", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/recorder/recordertest/RecorderTestData.class */
public final class RecorderTestData implements Parcelable {
    public static final Parcelable.Creator<RecorderTestData> CREATOR = new Creator();
    transient BoxStore __boxStore;
    private RecordConfiguration.METHOD audioMethod;
    private RecordConfiguration.AUDIO_SOURCE audioSource;
    public ToOne<CallRecorder> callRecorder;
    private boolean forceInCommunicationMode;
    private long id;
    private RecordConfiguration.FILE_FORMAT outputFormat;
    private long recordTime;
    private int testPriority;
    private RecordConfiguration.STATUS testStatus;
    private Integer volumeLevel;

    @Metadata(bv = {1, 0, 3}, k = 3, mv = {1, 4, 2})
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/recorder/recordertest/RecorderTestData$Creator.class */
    public static final class Creator implements Parcelable.Creator<RecorderTestData> {
        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ RecorderTestData createFromParcel(Parcel in) {
            p.d(in, "in");
            return new RecorderTestData(in.readLong(), (RecordConfiguration.METHOD) Enum.valueOf(RecordConfiguration.METHOD.class, in.readString()), (RecordConfiguration.AUDIO_SOURCE) Enum.valueOf(RecordConfiguration.AUDIO_SOURCE.class, in.readString()), (RecordConfiguration.FILE_FORMAT) Enum.valueOf(RecordConfiguration.FILE_FORMAT.class, in.readString()), (RecordConfiguration.STATUS) Enum.valueOf(RecordConfiguration.STATUS.class, in.readString()), in.readInt(), in.readLong(), in.readInt() != 0 ? Integer.valueOf(in.readInt()) : null, in.readInt() != 0);
        }

        @Override // android.os.Parcelable.Creator
        public final /* bridge */ /* synthetic */ RecorderTestData[] newArray(int i) {
            return new RecorderTestData[i];
        }
    }

    public RecorderTestData() {
        this(0L, RecordConfiguration.METHOD.METHOD_NATIVE, RecordConfiguration.AUDIO_SOURCE.VOICE_CALL, RecordConfiguration.FILE_FORMAT.WAV, RecordConfiguration.STATUS.IDLE, 0, 10000L, 1, false);
    }

    public RecorderTestData(long j, RecordConfiguration.METHOD audioMethod, RecordConfiguration.AUDIO_SOURCE audioSource, RecordConfiguration.FILE_FORMAT outputFormat, RecordConfiguration.STATUS testStatus, int i, long j2, Integer num, boolean z) {
        p.d(audioMethod, "audioMethod");
        p.d(audioSource, "audioSource");
        p.d(outputFormat, "outputFormat");
        p.d(testStatus, "testStatus");
        this.callRecorder = new ToOne<>(this, RecorderTestData_.q);
        this.id = j;
        this.audioMethod = audioMethod;
        this.audioSource = audioSource;
        this.outputFormat = outputFormat;
        this.testStatus = testStatus;
        this.testPriority = i;
        this.recordTime = j2;
        this.volumeLevel = num;
        this.forceInCommunicationMode = z;
    }

    public /* synthetic */ RecorderTestData(long j, RecordConfiguration.METHOD method, RecordConfiguration.AUDIO_SOURCE audio_source, RecordConfiguration.FILE_FORMAT file_format, RecordConfiguration.STATUS status, int i, long j2, Integer num, boolean z, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? 0L : j, method, audio_source, file_format, (i2 & 16) != 0 ? RecordConfiguration.STATUS.IDLE : status, i, (i2 & 64) != 0 ? CallAppRemoteConfigManager.get().b("RecorderTestRecordTime") : j2, (i2 & 128) != 0 ? 4 : num, (i2 & PropertyFlags.INDEX_PARTIAL_SKIP_NULL) != 0 ? false : z);
    }

    public static /* synthetic */ RecorderTestData copy$default(RecorderTestData recorderTestData, long j, RecordConfiguration.METHOD method, RecordConfiguration.AUDIO_SOURCE audio_source, RecordConfiguration.FILE_FORMAT file_format, RecordConfiguration.STATUS status, int i, long j2, Integer num, boolean z, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            j = recorderTestData.id;
        }
        if ((i2 & 2) != 0) {
            method = recorderTestData.audioMethod;
        }
        if ((i2 & 4) != 0) {
            audio_source = recorderTestData.audioSource;
        }
        if ((i2 & 8) != 0) {
            file_format = recorderTestData.outputFormat;
        }
        if ((i2 & 16) != 0) {
            status = recorderTestData.testStatus;
        }
        if ((i2 & 32) != 0) {
            i = recorderTestData.testPriority;
        }
        if ((i2 & 64) != 0) {
            j2 = recorderTestData.recordTime;
        }
        if ((i2 & 128) != 0) {
            num = recorderTestData.volumeLevel;
        }
        if ((i2 & PropertyFlags.INDEX_PARTIAL_SKIP_NULL) != 0) {
            z = recorderTestData.forceInCommunicationMode;
        }
        return recorderTestData.copy(j, method, audio_source, file_format, status, i, j2, num, z);
    }

    public static /* synthetic */ void getCallRecorder$annotations() {
    }

    public final long component1() {
        return this.id;
    }

    public final RecordConfiguration.METHOD component2() {
        return this.audioMethod;
    }

    public final RecordConfiguration.AUDIO_SOURCE component3() {
        return this.audioSource;
    }

    public final RecordConfiguration.FILE_FORMAT component4() {
        return this.outputFormat;
    }

    public final RecordConfiguration.STATUS component5() {
        return this.testStatus;
    }

    public final int component6() {
        return this.testPriority;
    }

    public final long component7() {
        return this.recordTime;
    }

    public final Integer component8() {
        return this.volumeLevel;
    }

    public final boolean component9() {
        return this.forceInCommunicationMode;
    }

    public final RecorderTestData copy(long j, RecordConfiguration.METHOD audioMethod, RecordConfiguration.AUDIO_SOURCE audioSource, RecordConfiguration.FILE_FORMAT outputFormat, RecordConfiguration.STATUS testStatus, int i, long j2, Integer num, boolean z) {
        p.d(audioMethod, "audioMethod");
        p.d(audioSource, "audioSource");
        p.d(outputFormat, "outputFormat");
        p.d(testStatus, "testStatus");
        return new RecorderTestData(j, audioMethod, audioSource, outputFormat, testStatus, i, j2, num, z);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof RecorderTestData)) {
            return false;
        }
        RecorderTestData recorderTestData = (RecorderTestData) obj;
        return this.id == recorderTestData.id && p.a(this.audioMethod, recorderTestData.audioMethod) && p.a(this.audioSource, recorderTestData.audioSource) && p.a(this.outputFormat, recorderTestData.outputFormat) && p.a(this.testStatus, recorderTestData.testStatus) && this.testPriority == recorderTestData.testPriority && this.recordTime == recorderTestData.recordTime && p.a(this.volumeLevel, recorderTestData.volumeLevel) && this.forceInCommunicationMode == recorderTestData.forceInCommunicationMode;
    }

    public final RecordConfiguration.METHOD getAudioMethod() {
        return this.audioMethod;
    }

    public final RecordConfiguration.AUDIO_SOURCE getAudioSource() {
        return this.audioSource;
    }

    public final ToOne<CallRecorder> getCallRecorder() {
        ToOne<CallRecorder> toOne = this.callRecorder;
        if (toOne == null) {
            p.a("callRecorder");
        }
        return toOne;
    }

    public final boolean getForceInCommunicationMode() {
        return this.forceInCommunicationMode;
    }

    public final long getId() {
        return this.id;
    }

    public final RecordConfiguration.FILE_FORMAT getOutputFormat() {
        return this.outputFormat;
    }

    public final long getRecordTime() {
        return this.recordTime;
    }

    public final int getTestPriority() {
        return this.testPriority;
    }

    public final RecordConfiguration.STATUS getTestStatus() {
        return this.testStatus;
    }

    public final Integer getVolumeLevel() {
        return this.volumeLevel;
    }

    public final int hashCode() {
        int hashCode = C$r8$backportedMethods$utility$Long$1$hashCode.hashCode(this.id);
        RecordConfiguration.METHOD method = this.audioMethod;
        int i = 0;
        int hashCode2 = method != null ? method.hashCode() : 0;
        RecordConfiguration.AUDIO_SOURCE audio_source = this.audioSource;
        int hashCode3 = audio_source != null ? audio_source.hashCode() : 0;
        RecordConfiguration.FILE_FORMAT file_format = this.outputFormat;
        int hashCode4 = file_format != null ? file_format.hashCode() : 0;
        RecordConfiguration.STATUS status = this.testStatus;
        int hashCode5 = status != null ? status.hashCode() : 0;
        int i2 = this.testPriority;
        int hashCode6 = C$r8$backportedMethods$utility$Long$1$hashCode.hashCode(this.recordTime);
        Integer num = this.volumeLevel;
        if (num != null) {
            i = num.hashCode();
        }
        boolean z = this.forceInCommunicationMode;
        int i3 = z ? 1 : 0;
        if (z) {
            i3 = 1;
        }
        return (((((((((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + i2) * 31) + hashCode6) * 31) + i) * 31) + i3;
    }

    public final void setAudioMethod(RecordConfiguration.METHOD method) {
        p.d(method, "<set-?>");
        this.audioMethod = method;
    }

    public final void setAudioSource(RecordConfiguration.AUDIO_SOURCE audio_source) {
        p.d(audio_source, "<set-?>");
        this.audioSource = audio_source;
    }

    public final void setCallRecorder(ToOne<CallRecorder> toOne) {
        p.d(toOne, "<set-?>");
        this.callRecorder = toOne;
    }

    public final void setForceInCommunicationMode(boolean z) {
        this.forceInCommunicationMode = z;
    }

    public final void setId(long j) {
        this.id = j;
    }

    public final void setOutputFormat(RecordConfiguration.FILE_FORMAT file_format) {
        p.d(file_format, "<set-?>");
        this.outputFormat = file_format;
    }

    public final void setRecordTime(long j) {
        this.recordTime = j;
    }

    public final void setTestPriority(int i) {
        this.testPriority = i;
    }

    public final void setTestStatus(RecordConfiguration.STATUS status) {
        p.d(status, "<set-?>");
        this.testStatus = status;
    }

    public final void setVolumeLevel(Integer num) {
        this.volumeLevel = num;
    }

    public final String toString() {
        return "RecorderTestData(id=" + this.id + ", audioMethod=" + this.audioMethod + ", audioSource=" + this.audioSource + ", outputFormat=" + this.outputFormat + ", testStatus=" + this.testStatus + ", testPriority=" + this.testPriority + ", recordTime=" + this.recordTime + ", volumeLevel=" + this.volumeLevel + ", forceInCommunicationMode=" + this.forceInCommunicationMode + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int i2;
        p.d(parcel, "parcel");
        parcel.writeLong(this.id);
        parcel.writeString(this.audioMethod.name());
        parcel.writeString(this.audioSource.name());
        parcel.writeString(this.outputFormat.name());
        parcel.writeString(this.testStatus.name());
        parcel.writeInt(this.testPriority);
        parcel.writeLong(this.recordTime);
        Integer num = this.volumeLevel;
        if (num != null) {
            parcel.writeInt(1);
            i2 = num.intValue();
        } else {
            i2 = 0;
        }
        parcel.writeInt(i2);
        parcel.writeInt(this.forceInCommunicationMode ? 1 : 0);
    }
}
