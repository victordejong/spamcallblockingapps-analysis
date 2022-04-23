package com.callapp.contacts.recorder.recordertest;

import com.callapp.contacts.model.objectbox.CallRecorder;
import com.callapp.contacts.recorder.enums.RecordConfiguration;
import com.callapp.contacts.recorder.recordertest.RecorderTestData_;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import io.objectbox.BoxStore;
import io.objectbox.Cursor;
import io.objectbox.Transaction;
import io.objectbox.b.b;
import io.objectbox.relation.ToOne;
import java.io.Closeable;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/recorder/recordertest/RecorderTestDataCursor.class */
public final class RecorderTestDataCursor extends Cursor<RecorderTestData> {

    /* renamed from: a  reason: collision with root package name */
    private static final RecorderTestData_.RecorderTestDataIdGetter f15695a = RecorderTestData_.f15703c;
    private static final int f = RecorderTestData_.f.f36237c;
    private static final int g = RecorderTestData_.g.f36237c;
    private static final int h = RecorderTestData_.h.f36237c;
    private static final int i = RecorderTestData_.i.f36237c;
    private static final int j = RecorderTestData_.j.f36237c;
    private static final int k = RecorderTestData_.k.f36237c;
    private static final int l = RecorderTestData_.l.f36237c;
    private static final int m = RecorderTestData_.m.f36237c;
    private static final int n = RecorderTestData_.n.f36237c;

    /* renamed from: b  reason: collision with root package name */
    private final RecordConfiguration.MethodConverter f15696b = new RecordConfiguration.MethodConverter();

    /* renamed from: c  reason: collision with root package name */
    private final RecordConfiguration.AudioSourceConverter f15697c = new RecordConfiguration.AudioSourceConverter();

    /* renamed from: d  reason: collision with root package name */
    private final RecordConfiguration.FileFormatConverter f15698d = new RecordConfiguration.FileFormatConverter();
    private final RecordConfiguration.RecorderStatusConverter e = new RecordConfiguration.RecorderStatusConverter();

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/recorder/recordertest/RecorderTestDataCursor$Factory.class */
    static final class Factory implements b<RecorderTestData> {
        @Override // io.objectbox.b.b
        public final Cursor<RecorderTestData> createCursor(Transaction transaction, long j, BoxStore boxStore) {
            return new RecorderTestDataCursor(transaction, j, boxStore);
        }
    }

    public RecorderTestDataCursor(Transaction transaction, long j2, BoxStore boxStore) {
        super(transaction, j2, RecorderTestData_.f15704d, boxStore);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public long put(RecorderTestData recorderTestData) {
        RecordConfiguration.METHOD audioMethod;
        Integer volumeLevel;
        ToOne<CallRecorder> toOne = recorderTestData.callRecorder;
        if (toOne != 0 && toOne.c()) {
            Closeable relationTargetCursor = getRelationTargetCursor(CallRecorder.class);
            try {
                toOne.a((Cursor<CallRecorder>) relationTargetCursor);
            } finally {
                relationTargetCursor.close();
            }
        }
        int i2 = recorderTestData.getAudioMethod() != null ? f : 0;
        RecordConfiguration.AUDIO_SOURCE audioSource = recorderTestData.getAudioSource();
        int i3 = audioSource != null ? g : 0;
        RecordConfiguration.FILE_FORMAT outputFormat = recorderTestData.getOutputFormat();
        int i4 = outputFormat != null ? h : 0;
        RecordConfiguration.STATUS testStatus = recorderTestData.getTestStatus();
        int i5 = testStatus != null ? i : 0;
        long j2 = 0;
        collect313311(this.cursor, 0L, 1, 0, null, 0, null, 0, null, 0, null, k, recorderTestData.getRecordTime(), n, recorderTestData.callRecorder.b(), i2, i2 != 0 ? this.f15696b.convertToDatabaseValue(audioMethod).intValue() : 0L, i3, i3 != 0 ? this.f15697c.convertToDatabaseValue(audioSource).intValue() : 0, i4, i4 != 0 ? this.f15698d.convertToDatabaseValue(outputFormat).intValue() : 0, i5, i5 != 0 ? this.e.convertToDatabaseValue(testStatus).intValue() : 0, 0, BitmapDescriptorFactory.HUE_RED, 0, 0.0d);
        int i6 = recorderTestData.getVolumeLevel() != null ? l : 0;
        long j3 = this.cursor;
        long id = recorderTestData.getId();
        int i7 = j;
        long testPriority = recorderTestData.getTestPriority();
        long intValue = i6 != 0 ? volumeLevel.intValue() : 0L;
        int i8 = m;
        if (recorderTestData.getForceInCommunicationMode()) {
            j2 = 1;
        }
        long collect004000 = collect004000(j3, id, 2, i7, testPriority, i6, intValue, i8, j2, 0, 0L);
        recorderTestData.setId(collect004000);
        recorderTestData.__boxStore = this.boxStoreForEntities;
        return collect004000;
    }

    @Override // io.objectbox.Cursor
    public final /* synthetic */ long getId(RecorderTestData recorderTestData) {
        return RecorderTestData_.RecorderTestDataIdGetter.a(recorderTestData);
    }
}
